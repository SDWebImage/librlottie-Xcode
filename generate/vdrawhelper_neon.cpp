#if defined(__ARM_NEON__)
// HACK: current rlottie use pixelman NEON ASM to implements this, however, Xcode does not support Nasm nor Yasm, so we copy the C implementation here
#include "vdrawhelper.h"

void memfill32(uint32_t *dest, uint32_t value, int length)
{
    // let compiler do the auto vectorization.
    for (int i = 0 ; i < length; i++) {
        *dest++ = value;
    }
}

void RenderFuncTable::neon()
{
    // Do nothing, use C implementation
}

#endif

