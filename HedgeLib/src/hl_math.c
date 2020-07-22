#include "hedgelib/hl_math.h"
#include "hedgelib/hl_endian.h"

void hlVector2Swap(HlVector2* vec)
{
    hlSwapFloatP(&vec->x);
    hlSwapFloatP(&vec->y);
}

void hlVector3Swap(HlVector3* vec)
{
    hlSwapFloatP(&vec->x);
    hlSwapFloatP(&vec->y);
}

void hlVector4Swap(HlVector4* vec)
{
    hlSwapFloatP(&vec->x);
    hlSwapFloatP(&vec->y);
    hlSwapFloatP(&vec->z);
    hlSwapFloatP(&vec->w);
}
