#if defined(__ARM_NEON__)
// HACK: current rlottie use pixelman NEON ASM to implements this, however, Xcode does not support Nasm nor Yasm, so we copy the C implementation here
#include "vdrawhelper.h"

void memfill32(uint32_t *dest, uint32_t value, int length)
{
    int n;

    if (length <= 0) return;

    // Cute hack to align future memcopy operation
    // and do unroll the loop a bit. Not sure it is
    // the most efficient, but will do for now.
    n = (length + 7) / 8;
    switch (length & 0x07) {
    case 0:
        do {
            *dest++ = value;
            VECTOR_FALLTHROUGH;
        case 7:
            *dest++ = value;
            VECTOR_FALLTHROUGH;
        case 6:
            *dest++ = value;
            VECTOR_FALLTHROUGH;
        case 5:
            *dest++ = value;
            VECTOR_FALLTHROUGH;
        case 4:
            *dest++ = value;
            VECTOR_FALLTHROUGH;
        case 3:
            *dest++ = value;
            VECTOR_FALLTHROUGH;
        case 2:
            *dest++ = value;
            VECTOR_FALLTHROUGH;
        case 1:
            *dest++ = value;
        } while (--n > 0);
    }
}

void Vcomp_func_solid_SourceOver_neon(uint32_t *dest, int length,
                                       uint32_t color,
                                uint32_t const_alpha)
{
    int ialpha, i;

    if (const_alpha != 255) color = BYTE_MUL(color, const_alpha);
    ialpha = 255 - vAlpha(color);
    for (i = 0; i < length; ++i) dest[i] = color + BYTE_MUL(dest[i], ialpha);
}
#endif
