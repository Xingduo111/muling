CC=gcc
CXX=g++
# CFLAGS=-Wall -O0 -g -std=c2x -fsanitize=address -fno-omit-frame-pointer -fdiagnostics-color=always
# CXXFLAGS=-Wall -O0 -g -std=c++23 -fsanitize=address -fno-omit-frame-pointer -fdiagnostics-color=always

CFLAGS=-Wall -O0 -g -std=c2x -fno-omit-frame-pointer -fdiagnostics-color=always
CXXFLAGS=-Wall -O0 -g -std=c++23 -fno-omit-frame-pointer -fdiagnostics-color=always

CSIM_REF_FLAGS=-Wall -O3 -std=c2x

ifeq ($(wildcard csim.cpp), csim.cpp)
	CSIM_CC=$(CXX)
	CSIM_FLAGS=$(CXXFLAGS)
	CSIM_SOURCE=csim.cpp
else ifeq ($(wildcard csim.cc), csim.cc)
	CSIM_CC=$(CXX)
	CSIM_FLAGS=$(CXXFLAGS)
	CSIM_SOURCE=csim.cc
else
	CSIM_CC=$(CC)
	CSIM_FLAGS=$(CFLAGS)
	CSIM_SOURCE=csim.c
endif

case_s=5
case_E=1
case_b=4

# all: csim demo printTrace
all: csim printTrace

printTrace: printTrace.cpp gemm.cpp matrix.cpp simulator.cpp gemm_baseline.cpp gemm.h matrix.h common.h simulator.h cachelab.h
	@echo "Checking gemm.cpp legality..."
	@mkdir -p .legality_gemm
	@cp gemm.cpp .legality_gemm
	@ $(CXX) $(CXXFLAGS) $(CPPFLAGS) -fsyntax-only -Itest/fake_include .legality_gemm/gemm.cpp >.legality_gemm/output.txt 2>.legality_gemm/output.txt || ( \
		sed 's|\.legality_gemm/||g' .legality_gemm/output.txt && rm -rf .legality_gemm && echo "You use something illegal in your gemm.cpp!" && exit 1)
	@rm -rf .legality_gemm
	@echo "Compiling printTrace..."
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -o printTrace printTrace.cpp gemm.cpp gemm_baseline.cpp matrix.cpp simulator.cpp

# demo.o: demo.cpp gemm.h matrix.h common.h cachelab.h
# 	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -c demo.cpp

# demo: demo.o gemm.o matrix.o
# 	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -o demo demo.o gemm.o matrix.o

csim: $(CSIM_SOURCE)
	$(CSIM_CC) $(CSIM_FLAGS) $(CPPFLAGS) -o csim $(CSIM_SOURCE)

csim-ref: csim-ref.c
	$(CC) ${CSIM_REF_FLAGS} $(CPPFLAGS) -o csim-ref csim-ref.c
	strip csim-ref

case%: printTrace
	mkdir -p gemm_traces
	./printTrace $@ > gemm_traces/$@.trace
	@if [ "$(NO_LINUX)" = "true" ]; then \
		./csim -s $(case_s) -E $(case_E) -b $(case_b) -t gemm_traces/$@.trace; \
	else \
		./csim-ref -s $(case_s) -E $(case_E) -b $(case_b) -t gemm_traces/$@.trace; \
	fi

# clean:
# 	rm -rf printTrace demo *.o csim gemm_traces .csim_results .overall_results .autograder_result .last_submit_time workspaces .baseline
clean:
	rm -rf printTrace csim gemm_traces .csim_results .overall_results .autograder_result .last_submit_time workspaces .baseline *.o