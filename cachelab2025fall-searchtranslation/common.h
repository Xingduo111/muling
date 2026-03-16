#pragma once
#include <iomanip>
#include <iostream>
#include <stdexcept>
#include <vector>

#define NDEBUG

#ifdef USE_EXPLICIT
#define EXPLICIT_HINT explicit
#else
#define EXPLICIT_HINT
#endif

template <typename T>
class RegisterWrapper;

template <typename T>
class MemoryWrapper;

template <typename T>
class PtrWrapper;

template <typename T>
class BaseRegisterWrapper;

enum class MemoryAccessType
{
  UNKOWN = 0,
  READ,
  WRITE,
  READ_WRITE
};

enum class RegisterWrapperState
{
  ACTIVE,
  INACTIVE,
  TMP // deprecated
};

class CachelabException : public std::exception
{
public:
  CachelabException(const char *msg)
      : msg_(msg) {}
  const char *what() const noexcept override
  {
    return msg_;
  }

private:
  const char *msg_;
};

class MemoryDataCalculationException : public CachelabException
{
public:
  MemoryDataCalculationException(const char *msg = "you can't directly calculate the data in memory")
      : CachelabException(msg) {}
};

class InactiveRegisterException : public CachelabException
{
public:
  InactiveRegisterException(const char *msg = "you can't operate on an inactive register")
      : CachelabException(msg) {}
};

class MemoryToMemoryAssignmentException : public CachelabException
{
public:
  MemoryToMemoryAssignmentException(const char *msg = "you can't assign a memory to another memory directly")
      : CachelabException(msg) {}
};

class OutOfRegistersException : public CachelabException
{
public:
  OutOfRegistersException(const char *msg = "no more available registers")
      : CachelabException(msg) {}
};

inline int max_reg_count = 0;
inline int current_reg_count = 0;

namespace
{
  constexpr int reg_num = 36;

  bool reg_map[reg_num] = {0};

  inline int find_reg()
  {
    for (int i = 0; i < reg_num; i++)
    {
      if (!reg_map[i])
      {
        reg_map[i] = true;
#ifndef NDEBUG
        std::cerr << "allocate reg: " << i << std::endl;
#endif
        current_reg_count++;
        max_reg_count = std::max(max_reg_count, current_reg_count);
        return i;
      }
    }
    throw OutOfRegistersException();
  }

  inline void free_reg(int reg_id)
  {
#ifndef NDEBUG
    std::cerr << "free reg: " << reg_id << std::endl;
#endif
    reg_map[reg_id] = false;
    current_reg_count--;
  }

} // namespace

template <typename T>
class BaseRegisterWrapper
{
protected:
  T reg_;
  RegisterWrapperState state_;
  int reg_id_;

  // you can't set state directly
  BaseRegisterWrapper(T reg, RegisterWrapperState state, int reg_id = -2)
      : reg_(reg), state_(state), reg_id_(reg_id)
  {
    if (state == RegisterWrapperState::ACTIVE)
    {
      reg_id_ = find_reg();
    }
  }

public:
  EXPLICIT_HINT BaseRegisterWrapper(T reg = 0)
      : reg_(reg), state_(RegisterWrapperState::ACTIVE), reg_id_(find_reg())
  {
  }

  EXPLICIT_HINT BaseRegisterWrapper(const MemoryWrapper<T> &other)
      : reg_(*other.ptr_), state_(RegisterWrapperState::ACTIVE), reg_id_(find_reg())
  {
    PtrWrapper<T>::access_logs.push_back({MemoryAccessType::READ, other.ptr_, reg_id_});
  }

  EXPLICIT_HINT BaseRegisterWrapper(const MemoryWrapper<T> &&other)
      : reg_(*other.ptr_), state_(RegisterWrapperState::ACTIVE), reg_id_(find_reg())
  {
    PtrWrapper<T>::access_logs.push_back({MemoryAccessType::READ, other.ptr_, reg_id_});
  }

  EXPLICIT_HINT BaseRegisterWrapper(const BaseRegisterWrapper<T> &other)
      : reg_(other.reg_), state_(RegisterWrapperState::ACTIVE), reg_id_(find_reg())
  {
  }

  EXPLICIT_HINT BaseRegisterWrapper(BaseRegisterWrapper<T> &&other)
      : reg_(other.reg_), state_(other.state_), reg_id_(other.reg_id_)
  {
    if (other.state_ == RegisterWrapperState::ACTIVE)
    {
      other.state_ = RegisterWrapperState::INACTIVE;
      other.reg_ = rand();
    }
    else if (other.state_ == RegisterWrapperState::INACTIVE)
    {
      throw InactiveRegisterException();
    }
  }

  operator int() const
  {
    return reg_;
  }

  ~BaseRegisterWrapper()
  {
    if (state_ == RegisterWrapperState::ACTIVE)
    {
      free_reg(reg_id_);
    }
  }

  void check_valid() const
  {
    if (state_ != RegisterWrapperState::ACTIVE)
    {
      throw InactiveRegisterException();
    }
  }

  BaseRegisterWrapper<T> &operator=(T other)
  {
    check_valid();
    reg_ = other;
    return *this;
  }

  BaseRegisterWrapper<T> &operator=(const BaseRegisterWrapper<T> &other)
  {
    check_valid();
    reg_ = other.reg_;
    return *this;
  }

  BaseRegisterWrapper<T> &operator=(BaseRegisterWrapper<T> &&other)
  {
    // TODO:
    check_valid();
    reg_ = other.reg_;
    if (other.state_ == RegisterWrapperState::ACTIVE)
    {
      other.state_ = RegisterWrapperState::INACTIVE;
    }
    return *this;
  }

  BaseRegisterWrapper<T> &operator=(const MemoryWrapper<T> &other)
  {
    check_valid();
    reg_ = *(other.ptr_);
    PtrWrapper<T>::access_logs.push_back({MemoryAccessType::READ, other.ptr_, reg_id_});
    return *this;
  }

  BaseRegisterWrapper<T> &operator=(const MemoryWrapper<T> &&other)
  {
    check_valid();
    reg_ = *(other.ptr_);
    PtrWrapper<T>::access_logs.push_back({MemoryAccessType::READ, other.ptr_, reg_id_});
    return *this;
  }

  /* <=> */
  bool operator<(const BaseRegisterWrapper<T> &other) const
  {
    check_valid();
    other.check_valid();
    return reg_ < other.reg_;
  }
  bool operator<(const BaseRegisterWrapper<T> &&other) const
  {
    check_valid();
    other.check_valid();
    return reg_ < other.reg_;
  }
  bool operator<(const T &other) const
  {
    check_valid();
    return reg_ < other;
  }
  bool operator<(const T &&other) const
  {
    check_valid();
    return reg_ < other;
  }

  bool operator>(const BaseRegisterWrapper<T> &other) const
  {
    check_valid();
    other.check_valid();
    return reg_ > other.reg_;
  }
  bool operator>(const BaseRegisterWrapper<T> &&other) const
  {
    check_valid();
    other.check_valid();
    return reg_ > other.reg_;
  }
  bool operator>(const T &other) const
  {
    check_valid();
    return reg_ > other;
  }
  bool operator>(const T &&other) const
  {
    check_valid();
    return reg_ > other;
  }

  bool operator<=(const BaseRegisterWrapper<T> &other) const
  {
    check_valid();
    other.check_valid();
    return reg_ <= other.reg_;
  }
  bool operator<=(const BaseRegisterWrapper<T> &&other) const
  {
    check_valid();
    other.check_valid();
    return reg_ <= other.reg_;
  }
  bool operator<=(const T &other) const
  {
    check_valid();
    return reg_ <= other;
  }
  bool operator<=(const T &&other) const
  {
    check_valid();
    return reg_ <= other;
  }

  bool operator>=(const BaseRegisterWrapper<T> &other) const
  {
    check_valid();
    other.check_valid();
    return reg_ >= other.reg_;
  }
  bool operator>=(const BaseRegisterWrapper<T> &&other) const
  {
    check_valid();
    other.check_valid();
    return reg_ >= other.reg_;
  }
  bool operator>=(const T &other) const
  {
    check_valid();
    return reg_ >= other;
  }
  bool operator>=(const T &&other) const
  {
    check_valid();
    return reg_ >= other;
  }

  bool operator==(const BaseRegisterWrapper<T> &other) const
  {
    check_valid();
    other.check_valid();
    return reg_ == other.reg_;
  }
  bool operator==(const BaseRegisterWrapper<T> &&other) const
  {
    check_valid();
    other.check_valid();
    return reg_ == other.reg_;
  }
  bool operator==(const T &other) const
  {
    check_valid();
    return reg_ == other;
  }
  bool operator==(const T &&other) const
  {
    check_valid();
    return reg_ == other;
  }

  friend std::ostream &operator<<(std::ostream &os, const RegisterWrapper<T> &reg)
  {
    os << reg.reg_;
    return os;
  }
  friend std::ostream &operator<<(std::ostream &os, const RegisterWrapper<T> &&reg)
  {
    os << reg.reg_;
    return os;
  }

  std::string info() const
  {
    std::string state;
    switch (state_)
    {
    case RegisterWrapperState::ACTIVE:
      state = "ACTIVE";
      break;
    case RegisterWrapperState::INACTIVE:
      state = "INACTIVE";
      break;
    case RegisterWrapperState::TMP:
      state = "TMP";
      break;
    default:
      state = "UNKOWN";
      break;
    }
    return "$" + std::to_string(reg_id_) + "(" + state + "): " + std::to_string(reg_);
  }

  friend class MemoryWrapper<T>;
  // friend class PtrWrapper<T>;
};

template <typename T>
class MemoryAccessLog
{
public:
  MemoryAccessType type_;
  T *addr_;
  int reg_id_;
};

/************************************************************************************/

template <typename T>
class PtrWrapper : public BaseRegisterWrapper<int>
{
  // 本来 PtrWrapper 设计是不占用寄存器的，后来决定改成占用一个寄存器
  // 为了不修改原有代码，我们只借用 BaseRegisterWrapper<int> 的构造和析构，以让他占用一个寄存器，而不真的使用它
public:
  static std::vector<MemoryAccessLog<T>> access_logs;
  static T *base;
  static T *base_offset;
  T *ptr_;
  PtrWrapper(T *ptr)
      : BaseRegisterWrapper(), ptr_(ptr)
  {
  }

  using BaseRegisterWrapper<int>::operator=;
  using BaseRegisterWrapper<int>::operator==;
  using BaseRegisterWrapper<int>::operator<;
  using BaseRegisterWrapper<int>::operator>;
  using BaseRegisterWrapper<int>::operator<=;
  using BaseRegisterWrapper<int>::operator>=;

  MemoryWrapper<T> operator*() const
  {
    return MemoryWrapper<T>(ptr_);
  }
  MemoryWrapper<T> operator[](int offset) const
  {
    return MemoryWrapper<T>(ptr_ + offset);
  }
  MemoryWrapper<T> operator[](const RegisterWrapper<T> &offset) const
  {
    return MemoryWrapper<T>(ptr_ + offset.reg_);
  }
  MemoryWrapper<T> operator[](const RegisterWrapper<T> &&offset) const
  {
    return MemoryWrapper<T>(ptr_ + offset.reg_);
  }

  PtrWrapper<T> operator+(int offset) const
  {
    return PtrWrapper<T>(ptr_ + offset);
  }
  PtrWrapper<T> operator+(const RegisterWrapper<T> &offset) const
  {
    return PtrWrapper<T>(ptr_ + offset.reg_);
  }
  PtrWrapper<T> operator+(const RegisterWrapper<T> &&offset) const
  {
    return PtrWrapper<T>(ptr_ + offset.reg_);
  }

  PtrWrapper<T> operator-(int offset) const
  {
    return PtrWrapper<T>(ptr_ - offset);
  }
  PtrWrapper<T> operator-(const RegisterWrapper<T> &offset) const
  {
    return PtrWrapper<T>(ptr_ - offset.reg_);
  }
  PtrWrapper<T> operator-(const RegisterWrapper<T> &&offset) const
  {
    return PtrWrapper<T>(ptr_ - offset.reg_);
  }

  T operator-(PtrWrapper<T> other) const
  {
    return ptr_ - other.ptr_;
  }

  PtrWrapper<T> operator++()
  {
    ptr_++;
    return *this;
  }
  // don't implement this
  // PtrWrapper<T> operator++(int) {
  // }

  PtrWrapper<T> operator--()
  {
    ptr_--;
    return *this;
  }
  // don't implement this
  // PtrWrapper<T> operator--(int) {
  // }

  PtrWrapper<T> operator+=(int offset)
  {
    ptr_ += offset;
    return *this;
  }
  PtrWrapper<T> operator+=(const RegisterWrapper<T> &offset)
  {
    ptr_ += offset.reg_;
    return *this;
  }
  PtrWrapper<T> operator+=(const RegisterWrapper<T> &&offset)
  {
    ptr_ += offset.reg_;
    return *this;
  }

  PtrWrapper<T> operator-=(int offset)
  {
    ptr_ -= offset;
    return *this;
  }
  PtrWrapper<T> operator-=(const RegisterWrapper<T> &offset)
  {
    ptr_ -= offset.reg_;
    return *this;
  }
  PtrWrapper<T> operator-=(const RegisterWrapper<T> &&offset)
  {
    ptr_ -= offset.reg_;
    return *this;
  }

  friend std::ostream &operator<<(std::ostream &os, const PtrWrapper<T> &ptr)
  {
    os << ptr.ptr_ - PtrWrapper<T>::base + PtrWrapper<T>::base_offset;
    return os;
  }
  friend std::ostream &operator<<(std::ostream &os, const PtrWrapper<T> &&ptr)
  {
    os << ptr.ptr_ - PtrWrapper<T>::base + PtrWrapper<T>::base_offset;
    return os;
  }

  std::string info() const
  {
    std::string state;
    switch (state_)
    {
    case RegisterWrapperState::ACTIVE:
      state = "ACTIVE";
      break;
    case RegisterWrapperState::INACTIVE:
      state = "INACTIVE";
      break;
    case RegisterWrapperState::TMP:
      state = "TMP";
      break;
    default:
      state = "UNKOWN";
      break;
    }
    return "$" + std::to_string(reg_id_) + "(" + state + "): " + std::to_string(reinterpret_cast<size_t>(ptr_ - PtrWrapper<T>::base + PtrWrapper<T>::base_offset));
  }
};

template <typename T>
std::vector<MemoryAccessLog<T>> PtrWrapper<T>::access_logs;

template <typename T>
T *PtrWrapper<T>::base = 0;

template <typename T>
T *PtrWrapper<T>::base_offset = 0;

template <typename T>
class MemoryWrapper
{
public:
  T *ptr_;
  explicit MemoryWrapper(T *ptr)
      : ptr_(ptr) {}
  explicit MemoryWrapper(const MemoryWrapper &other) = delete;
  explicit MemoryWrapper(MemoryWrapper &&other) = delete;

  const T &operator=(const T &other)
  {
    *ptr_ = other;
    PtrWrapper<T>::access_logs.push_back({MemoryAccessType::WRITE, ptr_, -1});
    return other;
  }
  const T &operator=(const T &&other)
  {
    *ptr_ = other;
    PtrWrapper<T>::access_logs.push_back({MemoryAccessType::WRITE, ptr_, -1});
    return other;
  }

  const RegisterWrapper<T> &operator=(const RegisterWrapper<T> &other)
  {
    *ptr_ = other.reg_;
    PtrWrapper<T>::access_logs.push_back({MemoryAccessType::WRITE, ptr_, other.reg_id_});
    return other;
  }
  const RegisterWrapper<T> &operator=(const RegisterWrapper<T> &&other)
  {
    *ptr_ = other.reg_;
    PtrWrapper<T>::access_logs.push_back({MemoryAccessType::WRITE, ptr_, other.reg_id_});
    return other;
  }

  friend std::ostream &operator<<(std::ostream &os, const MemoryWrapper<T> &mem)
  {
    os << *mem.ptr_;
    return os;
  }
  friend std::ostream &operator<<(std::ostream &os, const MemoryWrapper<T> &&mem)
  {
    os << *mem.ptr_;
    return os;
  }
};

template <typename T>
class RegisterWrapper : public BaseRegisterWrapper<int>
{
  static_assert(std::is_same<T, int>::value, "T must be int, may be fixed in the future");

private:
  // you can't set state directly
  RegisterWrapper(T reg, RegisterWrapperState state, int reg_id = -2)
      : BaseRegisterWrapper<T>(reg, state, reg_id)
  {
  }

public:
  using BaseRegisterWrapper<T>::BaseRegisterWrapper;
  using BaseRegisterWrapper<T>::operator=;
  using BaseRegisterWrapper<T>::operator==;
  using BaseRegisterWrapper<T>::operator<;
  using BaseRegisterWrapper<T>::operator>;
  using BaseRegisterWrapper<T>::operator<=;
  using BaseRegisterWrapper<T>::operator>=;

  /* + */

  T operator+(const RegisterWrapper<T> &other) const
  {
    check_valid();
    other.check_valid();
    return reg_ + other.reg_;
  }
  T operator+(const RegisterWrapper<T> &&other) const
  {
    check_valid();
    other.check_valid();
    return reg_ + other.reg_;
  }
  T operator+(const T other) const
  {
    check_valid();
    return reg_ + other;
  }
  friend T operator+(const T other, const RegisterWrapper<T> &reg)
  {
    reg.check_valid();
    return other + reg.reg_;
  }
  T operator+(const MemoryWrapper<T> &other) const = delete;
  T operator+(const MemoryWrapper<T> &&other) const = delete;

  T operator+=(const RegisterWrapper<T> &other)
  {
    check_valid();
    other.check_valid();
    reg_ += other.reg_;
    return reg_;
  }
  T operator+=(const RegisterWrapper<T> &&other)
  {
    check_valid();
    other.check_valid();
    reg_ += other.reg_;
    return reg_;
  }
  T operator+=(const T other)
  {
    check_valid();
    reg_ += other;
    return reg_;
  }
  T operator+=(const MemoryWrapper<T> &other) = delete;
  T operator+=(const MemoryWrapper<T> &&other) = delete;

  T operator++()
  {
    check_valid();
    reg_++;
    return reg_;
  }

  // don't implement this
  // RegisterWrapper operator++(int) {
  // }

  /* - */

  T operator-(const RegisterWrapper<T> &other) const
  {
    check_valid();
    other.check_valid();
    return reg_ - other.reg_;
  }
  T operator-(const RegisterWrapper<T> &&other) const
  {
    check_valid();
    other.check_valid();
    return reg_ - other.reg_;
  }
  T operator-(const T other) const
  {
    check_valid();
    other.check_valid();
    return reg_ - other;
  }
  friend T operator-(const T other, const RegisterWrapper<T> &reg)
  {
    reg.check_valid();
    return other - reg.reg_;
  }
  T operator-(const MemoryWrapper<T> &other) const = delete;
  T operator-(const MemoryWrapper<T> &&other) const = delete;

  T operator-=(const RegisterWrapper<T> &other)
  {
    check_valid();
    other.check_valid();
    reg_ -= other.reg_;
    return reg_;
  }
  T operator-=(const RegisterWrapper<T> &&other)
  {
    check_valid();
    other.check_valid();
    reg_ -= other.reg_;
    return reg_;
  }
  T operator-=(const MemoryWrapper<T> &other) const = delete;
  T operator-=(const MemoryWrapper<T> &&other) const = delete;
  T operator-=(const T other)
  {
    check_valid();
    reg_ -= other;
    return reg_;
  }
  T operator--()
  {
    check_valid();
    reg_--;
    return reg_;
  }

  // don't implement this
  // RegisterWrapper operator--(int) {
  // }

  /* * */
  T operator*(const RegisterWrapper<T> &other) const
  {
    check_valid();
    other.check_valid();
    return reg_ * other.reg_;
  }
  T operator*(const RegisterWrapper<T> &&other) const
  {
    check_valid();
    other.check_valid();
    return reg_ * other.reg_;
  }
  T operator*(const T other) const
  {
    check_valid();
    return reg_ * other;
  }
  friend T operator*(const T other, const RegisterWrapper<T> &reg)
  {
    reg.check_valid();
    return other * reg.reg_;
  }
  T operator*(const MemoryWrapper<T> &other) const = delete;
  T operator*(const MemoryWrapper<T> &&other) const = delete;

  T operator*=(const RegisterWrapper<T> &other)
  {
    check_valid();
    other.check_valid();
    reg_ *= other.reg_;
    return reg_;
  }
  T operator*=(const RegisterWrapper<T> &&other)
  {
    check_valid();
    other.check_valid();
    reg_ *= other.reg_;
    return reg_;
  }
  T operator*=(const T other)
  {
    check_valid();
    reg_ *= other;
    return reg_;
  }
  T operator*=(const MemoryWrapper<T> &other) const = delete;
  T operator*=(const MemoryWrapper<T> &&other) const = delete;

  /* / */
  T operator/(const RegisterWrapper<T> &other) const
  {
    check_valid();
    other.check_valid();
    return reg_ / other.reg_;
  }
  T operator/(const RegisterWrapper<T> &&other) const
  {
    check_valid();
    other.check_valid();
    return reg_ / other.reg_;
  }
  T operator/(const T other) const
  {
    check_valid();
    return reg_ / other;
  }
  friend T operator/(const T other, const RegisterWrapper<T> &reg)
  {
    reg.check_valid();
    return other / reg.reg_;
  }
  T operator/(const MemoryWrapper<T> &other) const = delete;
  T operator/(const MemoryWrapper<T> &&other) const = delete;

  T operator/=(const RegisterWrapper<T> &other)
  {
    check_valid();
    other.check_valid();
    reg_ /= other.reg_;
    return reg_;
  }
  T operator/=(const RegisterWrapper<T> &&other)
  {
    check_valid();
    other.check_valid();
    reg_ /= other.reg_;
    return reg_;
  }
  T operator/=(const T other)
  {
    check_valid();
    reg_ /= other;
    return reg_;
  }
  T operator/=(const MemoryWrapper<T> &other) const = delete;
  T operator/=(const MemoryWrapper<T> &&other) const = delete;

  /* % */
  T operator%(const RegisterWrapper<T> &other) const
  {
    check_valid();
    other.check_valid();
    return reg_ % other.reg_;
  }
  T operator%(const RegisterWrapper<T> &&other) const
  {
    check_valid();
    other.check_valid();
    return reg_ % other.reg_;
  }
  T operator%(const T other) const
  {
    check_valid();
    return reg_ % other;
  }
  friend T operator%(const T other, const RegisterWrapper<T> &reg)
  {
    reg.check_valid();
    return other % reg.reg_;
  }
  T operator%(const MemoryWrapper<T> &other) const = delete;
  T operator%(const MemoryWrapper<T> &&other) const = delete;

  T operator%=(const RegisterWrapper<T> &other)
  {
    check_valid();
    other.check_valid();
    reg_ %= other.reg_;
    return reg_;
  }
  T operator%=(const RegisterWrapper<T> &&other)
  {
    check_valid();
    other.check_valid();
    reg_ %= other.reg_;
    return reg_;
  }
  T operator%=(const T other)
  {
    check_valid();
    reg_ %= other;
    return reg_;
  }
  T operator%=(const MemoryWrapper<T> &other) const = delete;
  T operator%=(const MemoryWrapper<T> &&other) const = delete;

  friend class MemoryWrapper<T>;
  friend class PtrWrapper<T>;
};

using reg = RegisterWrapper<int>;
using ptr_reg = PtrWrapper<int>;

inline int get_max_reg_count()
{
  return max_reg_count;
}

inline int get_current_reg_count()
{
  return current_reg_count;
}

inline void print_log()
{
  for (auto &log : ptr_reg::access_logs)
  {
    switch (log.type_)
    {
    case MemoryAccessType::READ:
      std::cout << " L ";
      break;
    case MemoryAccessType::WRITE:
      std::cout << " S ";
      break;
    case MemoryAccessType::READ_WRITE:
      std::cout << " M ";
      break;
    default:
      throw std::runtime_error("unkown memory access type");
    }
    std::cout << std::noshowbase << std::hex << log.addr_ - ptr_reg::base + ptr_reg::base_offset;
    std::cout << std::dec << ",4 " << log.reg_id_ << std::endl;
  }
}