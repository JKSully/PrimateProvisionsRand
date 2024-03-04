#include <cstdint>
#include <exception>

template <typename T>
class StackAllocator {
public:
    using value_type = T;

    StackAllocator() noexcept = default;

    template <class U>
    StackAllocator(const StackAllocator<U>&) noexcept {}

    T* allocate(std::size_t n) {
        if (n > max_size()) {
            throw std::bad_alloc();
        }
        return reinterpret_cast<T*>(memory);
    }

    void deallocate(T* p, std::size_t) noexcept {}

    std::size_t max_size() const noexcept {
        return sizeof(memory) / sizeof(T);
    }

private:
    alignas(alignof(T)) unsigned char memory[sizeof(T)];
};