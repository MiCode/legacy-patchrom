.class public Landroid/opengl/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static frustumM([FIFFFFFF)V
    .locals 6
    .parameter "m"
    .parameter "offset"
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "left == right"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0
    .restart local p1
    :cond_0
    cmpl-float v0, p5, p4

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "top == bottom"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0
    .restart local p1
    :cond_1
    cmpl-float v0, p6, p7

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "near == far"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "near <= 0.0f"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0
    .restart local p1
    :cond_3
    const/4 v0, 0x0

    cmpg-float v0, p7, v0

    if-gtz v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "far <= 0.0f"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0
    .restart local p1
    :cond_4
    const/high16 v0, 0x3f80

    sub-float v1, p3, p2

    div-float v2, v0, v1

    .local v2, r_width:F
    const/high16 v0, 0x3f80

    sub-float v1, p5, p4

    div-float v1, v0, v1

    .local v1, r_height:F
    const/high16 v0, 0x3f80

    sub-float v3, p6, p7

    div-float/2addr v0, v3

    .local v0, r_depth:F
    const/high16 v3, 0x4000

    mul-float v4, p6, v2

    mul-float/2addr v3, v4

    .local v3, x:F
    const/high16 v4, 0x4000

    mul-float v5, p6, v1

    mul-float/2addr v4, v5

    .local v4, y:F
    const/high16 v5, 0x4000

    add-float/2addr p2, p3

    mul-float/2addr p2, v2

    mul-float/2addr p2, v5

    .local p2, A:F
    add-float p3, p5, p4

    mul-float/2addr p3, v1

    .local p3, B:F
    add-float p4, p7, p6

    mul-float/2addr p4, v0

    .local p4, C:F
    const/high16 p5, 0x4000

    mul-float/2addr p6, p7

    mul-float/2addr p6, v0

    mul-float/2addr p5, p6

    .local p5, D:F
    add-int/lit8 p6, p1, 0x0

    aput v3, p0, p6

    .end local p6
    add-int/lit8 p6, p1, 0x5

    aput v4, p0, p6

    add-int/lit8 p6, p1, 0x8

    aput p2, p0, p6

    add-int/lit8 p2, p1, 0x9

    aput p3, p0, p2

    .end local p2           #A:F
    add-int/lit8 p2, p1, 0xa

    aput p4, p0, p2

    add-int/lit8 p2, p1, 0xe

    aput p5, p0, p2

    add-int/lit8 p2, p1, 0xb

    const/high16 p3, -0x4080

    aput p3, p0, p2

    .end local p3           #B:F
    add-int/lit8 p2, p1, 0x1

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x2

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x3

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x4

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x6

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x7

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0xc

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0xd

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p1, p1, 0xf

    const/4 p2, 0x0

    aput p2, p0, p1

    .end local p1
    return-void
.end method

.method public static invertM([FI[FI)Z
    .locals 6
    .parameter "mInv"
    .parameter "mInvOffset"
    .parameter "m"
    .parameter "mOffset"

    .prologue
    const/16 v0, 0x10

    new-array v0, v0, [F

    .local v0, src:[F
    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3}, Landroid/opengl/Matrix;->transposeM([FI[FI)V

    const/16 p2, 0xc

    new-array p2, p2, [F

    .local p2, tmp:[F
    const/4 p3, 0x0

    const/16 v1, 0xa

    aget v1, v0, v1

    .end local p3
    const/16 v2, 0xf

    aget v2, v0, v2

    mul-float/2addr v1, v2

    aput v1, p2, p3

    const/4 p3, 0x1

    const/16 v1, 0xb

    aget v1, v0, v1

    const/16 v2, 0xe

    aget v2, v0, v2

    mul-float/2addr v1, v2

    aput v1, p2, p3

    const/4 p3, 0x2

    const/16 v1, 0x9

    aget v1, v0, v1

    const/16 v2, 0xf

    aget v2, v0, v2

    mul-float/2addr v1, v2

    aput v1, p2, p3

    const/4 p3, 0x3

    const/16 v1, 0xb

    aget v1, v0, v1

    const/16 v2, 0xd

    aget v2, v0, v2

    mul-float/2addr v1, v2

    aput v1, p2, p3

    const/4 p3, 0x4

    const/16 v1, 0x9

    aget v1, v0, v1

    const/16 v2, 0xe

    aget v2, v0, v2

    mul-float/2addr v1, v2

    aput v1, p2, p3

    const/4 p3, 0x5

    const/16 v1, 0xa

    aget v1, v0, v1

    const/16 v2, 0xd

    aget v2, v0, v2

    mul-float/2addr v1, v2

    aput v1, p2, p3

    const/4 p3, 0x6

    const/16 v1, 0x8

    aget v1, v0, v1

    const/16 v2, 0xf

    aget v2, v0, v2

    mul-float/2addr v1, v2

    aput v1, p2, p3

    const/4 p3, 0x7

    const/16 v1, 0xb

    aget v1, v0, v1

    const/16 v2, 0xc

    aget v2, v0, v2

    mul-float/2addr v1, v2

    aput v1, p2, p3

    const/16 p3, 0x8

    const/16 v1, 0x8

    aget v1, v0, v1

    const/16 v2, 0xe

    aget v2, v0, v2

    mul-float/2addr v1, v2

    aput v1, p2, p3

    const/16 p3, 0x9

    const/16 v1, 0xa

    aget v1, v0, v1

    const/16 v2, 0xc

    aget v2, v0, v2

    mul-float/2addr v1, v2

    aput v1, p2, p3

    const/16 p3, 0xa

    const/16 v1, 0x8

    aget v1, v0, v1

    const/16 v2, 0xd

    aget v2, v0, v2

    mul-float/2addr v1, v2

    aput v1, p2, p3

    const/16 p3, 0xb

    const/16 v1, 0x9

    aget v1, v0, v1

    const/16 v2, 0xc

    aget v2, v0, v2

    mul-float/2addr v1, v2

    aput v1, p2, p3

    const/16 p3, 0x10

    new-array p3, p3, [F

    .local p3, dst:[F
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x5

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x3

    aget v3, p2, v3

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x4

    aget v3, p2, v3

    const/4 v4, 0x7

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x0

    aget v2, p3, v1

    const/4 v3, 0x1

    aget v3, p2, v3

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, p2, v4

    const/4 v5, 0x6

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x5

    aget v4, p2, v4

    const/4 v5, 0x7

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, p2, v3

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x9

    aget v3, p2, v3

    const/4 v4, 0x7

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x1

    aget v2, p3, v1

    const/4 v3, 0x0

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x7

    aget v4, p2, v4

    const/4 v5, 0x6

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0x8

    aget v4, p2, v4

    const/4 v5, 0x7

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p2, v3

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aget v3, p2, v3

    const/4 v4, 0x7

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x2

    aget v2, p3, v1

    const/4 v3, 0x3

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x6

    aget v4, p2, v4

    const/4 v5, 0x5

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xb

    aget v4, p2, v4

    const/4 v5, 0x7

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x3

    const/4 v2, 0x5

    aget v2, p2, v2

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p2, v3

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xb

    aget v3, p2, v3

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x3

    aget v2, p3, v1

    const/4 v3, 0x4

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, p2, v4

    const/4 v5, 0x5

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xa

    aget v4, p2, v4

    const/4 v5, 0x6

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p2, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x4

    aget v2, p3, v1

    const/4 v3, 0x0

    aget v3, p2, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x3

    aget v4, p2, v4

    const/4 v5, 0x2

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, p2, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p2, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p2, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x5

    aget v2, p3, v1

    const/4 v3, 0x1

    aget v3, p2, v3

    const/4 v4, 0x0

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x6

    aget v4, p2, v4

    const/4 v5, 0x2

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, p2, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x6

    const/4 v2, 0x3

    aget v2, p2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, p2, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xb

    aget v3, p2, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x6

    aget v2, p3, v1

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x0

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x7

    aget v4, p2, v4

    const/4 v5, 0x1

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xa

    aget v4, p2, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x7

    const/4 v2, 0x4

    aget v2, p2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/16 v3, 0x9

    aget v3, p2, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aget v3, p2, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x7

    aget v2, p3, v1

    const/4 v3, 0x5

    aget v3, p2, v3

    const/4 v4, 0x0

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/16 v4, 0x8

    aget v4, p2, v4

    const/4 v5, 0x1

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xb

    aget v4, p2, v4

    const/4 v5, 0x2

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x7

    aget v3, v0, v3

    mul-float/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    aget v2, v0, v2

    const/4 v3, 0x6

    aget v3, v0, v3

    mul-float/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x7

    aget v3, v0, v3

    mul-float/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    aget v2, v0, v2

    const/4 v3, 0x5

    aget v3, v0, v3

    mul-float/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x6

    aget v3, v0, v3

    mul-float/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x5

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x5

    aget v3, v0, v3

    mul-float/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x6

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x7

    aget v3, v0, v3

    mul-float/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x7

    const/4 v2, 0x3

    aget v2, v0, v2

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x6

    aget v3, v0, v3

    mul-float/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0x9

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0xa

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x5

    aget v3, v0, v3

    mul-float/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0xb

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    aget v2, p2, v2

    const/16 v3, 0xd

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x3

    aget v3, p2, v3

    const/16 v4, 0xe

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x4

    aget v3, p2, v3

    const/16 v4, 0xf

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/16 v1, 0x8

    aget v2, p3, v1

    const/4 v3, 0x1

    aget v3, p2, v3

    const/16 v4, 0xd

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, p2, v4

    const/16 v5, 0xe

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x5

    aget v4, p2, v4

    const/16 v5, 0xf

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p3, v1

    const/16 v1, 0x9

    const/4 v2, 0x1

    aget v2, p2, v2

    const/16 v3, 0xc

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, p2, v3

    const/16 v4, 0xe

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x9

    aget v3, p2, v3

    const/16 v4, 0xf

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/16 v1, 0x9

    aget v2, p3, v1

    const/4 v3, 0x0

    aget v3, p2, v3

    const/16 v4, 0xc

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x7

    aget v4, p2, v4

    const/16 v5, 0xe

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0x8

    aget v4, p2, v4

    const/16 v5, 0xf

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p3, v1

    const/16 v1, 0xa

    const/4 v2, 0x2

    aget v2, p2, v2

    const/16 v3, 0xc

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p2, v3

    const/16 v4, 0xd

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aget v3, p2, v3

    const/16 v4, 0xf

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/16 v1, 0xa

    aget v2, p3, v1

    const/4 v3, 0x3

    aget v3, p2, v3

    const/16 v4, 0xc

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x6

    aget v4, p2, v4

    const/16 v5, 0xd

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xb

    aget v4, p2, v4

    const/16 v5, 0xf

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p3, v1

    const/16 v1, 0xb

    const/4 v2, 0x5

    aget v2, p2, v2

    const/16 v3, 0xc

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p2, v3

    const/16 v4, 0xd

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xb

    aget v3, p2, v3

    const/16 v4, 0xe

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/16 v1, 0xb

    aget v2, p3, v1

    const/4 v3, 0x4

    aget v3, p2, v3

    const/16 v4, 0xc

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, p2, v4

    const/16 v5, 0xd

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xa

    aget v4, p2, v4

    const/16 v5, 0xe

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p3, v1

    const/16 v1, 0xc

    const/4 v2, 0x2

    aget v2, p2, v2

    const/16 v3, 0xa

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p2, v3

    const/16 v4, 0xb

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x1

    aget v3, p2, v3

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/16 v1, 0xc

    aget v2, p3, v1

    const/4 v3, 0x4

    aget v3, p2, v3

    const/16 v4, 0xb

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    aget v4, p2, v4

    const/16 v5, 0x9

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x3

    aget v4, p2, v4

    const/16 v5, 0xa

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p3, v1

    const/16 v1, 0xd

    const/16 v2, 0x8

    aget v2, p2, v2

    const/16 v3, 0xb

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    aget v3, p2, v3

    const/16 v4, 0x8

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p2, v3

    const/16 v4, 0xa

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/16 v1, 0xd

    aget v2, p3, v1

    const/4 v3, 0x6

    aget v3, p2, v3

    const/16 v4, 0xa

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, p2, v4

    const/16 v5, 0xb

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, p2, v4

    const/16 v5, 0x8

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p3, v1

    const/16 v1, 0xe

    const/4 v2, 0x6

    aget v2, p2, v2

    const/16 v3, 0x9

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/16 v3, 0xb

    aget v3, p2, v3

    const/16 v4, 0xb

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x3

    aget v3, p2, v3

    const/16 v4, 0x8

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/16 v1, 0xe

    aget v2, p3, v1

    const/16 v3, 0xa

    aget v3, p2, v3

    const/16 v4, 0xb

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, p2, v4

    const/16 v5, 0x8

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x7

    aget v4, p2, v4

    const/16 v5, 0x9

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p3, v1

    const/16 v1, 0xf

    const/16 v2, 0xa

    aget v2, p2, v2

    const/16 v3, 0xa

    aget v3, v0, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x4

    aget v3, p2, v3

    const/16 v4, 0x8

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x9

    aget v3, p2, v3

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/16 v1, 0xf

    aget v2, p3, v1

    const/16 v3, 0x8

    aget v3, p2, v3

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/16 v4, 0xb

    aget v4, p2, v4

    const/16 v5, 0xa

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x5

    aget p2, p2, v4

    .end local p2           #tmp:[F
    const/16 v4, 0x8

    aget v4, v0, v4

    mul-float/2addr p2, v4

    add-float/2addr p2, v3

    sub-float p2, v2, p2

    aput p2, p3, v1

    const/4 p2, 0x0

    aget p2, v0, p2

    const/4 v1, 0x0

    aget v1, p3, v1

    mul-float/2addr p2, v1

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr p2, v1

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr p2, v1

    const/4 v1, 0x3

    aget v0, v0, v1

    .end local v0           #src:[F
    const/4 v1, 0x3

    aget v1, p3, v1

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    .local p2, det:F
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    :cond_0
    const/high16 v0, 0x3f80

    div-float p2, v0, p2

    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    add-int v1, v0, p1

    aget v2, p3, v0

    mul-float/2addr v2, p2

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .end local p0
    return p0
.end method

.method public static length(FFF)F
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static native multiplyMM([FI[FI[FI)V
.end method

.method public static native multiplyMV([FI[FI[FI)V
.end method

.method public static orthoM([FIFFFFFF)V
    .locals 6
    .parameter "m"
    .parameter "mOffset"
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "left == right"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0
    .restart local p1
    :cond_0
    cmpl-float v0, p4, p5

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "bottom == top"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0
    .restart local p1
    :cond_1
    cmpl-float v0, p6, p7

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "near == far"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0
    .restart local p1
    :cond_2
    const/high16 v0, 0x3f80

    sub-float v1, p3, p2

    div-float v2, v0, v1

    .local v2, r_width:F
    const/high16 v0, 0x3f80

    sub-float v1, p5, p4

    div-float v1, v0, v1

    .local v1, r_height:F
    const/high16 v0, 0x3f80

    sub-float v3, p7, p6

    div-float/2addr v0, v3

    .local v0, r_depth:F
    const/high16 v3, 0x4000

    mul-float/2addr v3, v2

    .local v3, x:F
    const/high16 v4, 0x4000

    mul-float/2addr v4, v1

    .local v4, y:F
    const/high16 v5, -0x4000

    mul-float/2addr v5, v0

    .local v5, z:F
    add-float/2addr p2, p3

    neg-float p2, p2

    mul-float/2addr p2, v2

    .local p2, tx:F
    add-float p3, p5, p4

    neg-float p3, p3

    mul-float/2addr p3, v1

    .local p3, ty:F
    add-float p4, p7, p6

    neg-float p4, p4

    mul-float/2addr p4, v0

    .local p4, tz:F
    add-int/lit8 p5, p1, 0x0

    aput v3, p0, p5

    .end local p5
    add-int/lit8 p5, p1, 0x5

    aput v4, p0, p5

    add-int/lit8 p5, p1, 0xa

    aput v5, p0, p5

    add-int/lit8 p5, p1, 0xc

    aput p2, p0, p5

    add-int/lit8 p2, p1, 0xd

    aput p3, p0, p2

    .end local p2           #tx:F
    add-int/lit8 p2, p1, 0xe

    aput p4, p0, p2

    add-int/lit8 p2, p1, 0xf

    const/high16 p3, 0x3f80

    aput p3, p0, p2

    .end local p3           #ty:F
    add-int/lit8 p2, p1, 0x1

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x2

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x3

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x4

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x6

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x7

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x9

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p1, p1, 0xb

    const/4 p2, 0x0

    aput p2, p0, p1

    .end local p1
    return-void
.end method

.method public static rotateM([FIFFFF)V
    .locals 9
    .parameter "m"
    .parameter "mOffset"
    .parameter "a"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x10

    const/16 v2, 0x20

    new-array v0, v2, [F

    .local v0, temp:[F
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    move-object v2, v0

    move v3, v8

    move-object v4, p0

    move v5, p1

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-static {v0, v8, p0, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static rotateM([FI[FIFFFF)V
    .locals 8
    .parameter "rm"
    .parameter "rmOffset"
    .parameter "m"
    .parameter "mOffset"
    .parameter "a"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x10

    new-array v0, v2, [F

    .local v0, r:[F
    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public static scaleM([FIFFF)V
    .locals 4
    .parameter "m"
    .parameter "mOffset"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    add-int v1, p1, v0

    .local v1, mi:I
    aget v2, p0, v1

    mul-float/2addr v2, p2

    aput v2, p0, v1

    add-int/lit8 v2, v1, 0x4

    aget v3, p0, v2

    mul-float/2addr v3, p3

    aput v3, p0, v2

    add-int/lit8 v2, v1, 0x8

    aget v3, p0, v2

    mul-float/2addr v3, p4

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #mi:I
    :cond_0
    return-void
.end method

.method public static scaleM([FI[FIFFF)V
    .locals 5
    .parameter "sm"
    .parameter "smOffset"
    .parameter "m"
    .parameter "mOffset"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    add-int v2, p1, v0

    .local v2, smi:I
    add-int v1, p3, v0

    .local v1, mi:I
    aget v3, p2, v1

    mul-float/2addr v3, p4

    aput v3, p0, v2

    add-int/lit8 v3, v2, 0x4

    add-int/lit8 v4, v1, 0x4

    aget v4, p2, v4

    mul-float/2addr v4, p5

    aput v4, p0, v3

    add-int/lit8 v3, v2, 0x8

    add-int/lit8 v4, v1, 0x8

    aget v4, p2, v4

    mul-float/2addr v4, p6

    aput v4, p0, v3

    add-int/lit8 v3, v2, 0xc

    add-int/lit8 v4, v1, 0xc

    aget v4, p2, v4

    aput v4, p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #mi:I
    .end local v2           #smi:I
    :cond_0
    return-void
.end method

.method public static setIdentityM([FI)V
    .locals 4
    .parameter "sm"
    .parameter "smOffset"

    .prologue
    const/16 v3, 0x10

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    add-int v1, p1, v0

    const/4 v2, 0x0

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    add-int v1, p1, v0

    const/high16 v2, 0x3f80

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static setLookAtM([FIFFFFFFFFF)V
    .locals 4
    .parameter "rm"
    .parameter "rmOffset"
    .parameter "eyeX"
    .parameter "eyeY"
    .parameter "eyeZ"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "centerZ"
    .parameter "upX"
    .parameter "upY"
    .parameter "upZ"

    .prologue
    sub-float/2addr p5, p2

    .local p5, fx:F
    sub-float/2addr p6, p3

    .local p6, fy:F
    sub-float/2addr p7, p4

    .local p7, fz:F
    const/high16 v0, 0x3f80

    invoke-static {p5, p6, p7}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v1

    div-float/2addr v0, v1

    .local v0, rlf:F
    mul-float/2addr p5, v0

    mul-float/2addr p6, v0

    mul-float/2addr p7, v0

    mul-float v0, p6, p10

    mul-float v1, p7, p9

    sub-float/2addr v0, v1

    .local v0, sx:F
    mul-float v1, p7, p8

    mul-float/2addr p10, p5

    sub-float p10, v1, p10

    .local p10, sy:F
    mul-float/2addr p9, p5

    mul-float/2addr p8, p6

    sub-float v1, p9, p8

    .local v1, sz:F
    const/high16 p8, 0x3f80

    invoke-static {v0, p10, v1}, Landroid/opengl/Matrix;->length(FFF)F

    .end local p8
    .end local p9
    move-result p9

    div-float/2addr p8, p9

    .local p8, rls:F
    mul-float p9, v0, p8

    .end local v0           #sx:F
    .local p9, sx:F
    mul-float/2addr p10, p8

    mul-float/2addr p8, v1

    .end local v1           #sz:F
    .local p8, sz:F
    mul-float v0, p10, p7

    mul-float v1, p8, p6

    sub-float/2addr v0, v1

    .local v0, ux:F
    mul-float v1, p8, p5

    mul-float v2, p9, p7

    sub-float/2addr v1, v2

    .local v1, uy:F
    mul-float v2, p9, p6

    mul-float v3, p10, p5

    sub-float/2addr v2, v3

    .local v2, uz:F
    add-int/lit8 v3, p1, 0x0

    aput p9, p0, v3

    add-int/lit8 p9, p1, 0x1

    aput v0, p0, p9

    .end local p9           #sx:F
    add-int/lit8 p9, p1, 0x2

    neg-float p5, p5

    aput p5, p0, p9

    .end local p5           #fx:F
    add-int/lit8 p5, p1, 0x3

    const/4 p9, 0x0

    aput p9, p0, p5

    add-int/lit8 p5, p1, 0x4

    aput p10, p0, p5

    add-int/lit8 p5, p1, 0x5

    aput v1, p0, p5

    add-int/lit8 p5, p1, 0x6

    neg-float p6, p6

    aput p6, p0, p5

    .end local p6           #fy:F
    add-int/lit8 p5, p1, 0x7

    const/4 p6, 0x0

    aput p6, p0, p5

    add-int/lit8 p5, p1, 0x8

    aput p8, p0, p5

    add-int/lit8 p5, p1, 0x9

    aput v2, p0, p5

    add-int/lit8 p5, p1, 0xa

    neg-float p6, p7

    aput p6, p0, p5

    add-int/lit8 p5, p1, 0xb

    const/4 p6, 0x0

    aput p6, p0, p5

    add-int/lit8 p5, p1, 0xc

    const/4 p6, 0x0

    aput p6, p0, p5

    add-int/lit8 p5, p1, 0xd

    const/4 p6, 0x0

    aput p6, p0, p5

    add-int/lit8 p5, p1, 0xe

    const/4 p6, 0x0

    aput p6, p0, p5

    add-int/lit8 p5, p1, 0xf

    const/high16 p6, 0x3f80

    aput p6, p0, p5

    neg-float p2, p2

    neg-float p3, p3

    neg-float p4, p4

    invoke-static {p0, p1, p2, p3, p4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .end local p2
    .end local p3
    .end local p4
    return-void
.end method

.method public static setRotateEulerM([FIFFF)V
    .locals 7
    .parameter "rm"
    .parameter "rmOffset"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const v0, 0x3c8efa35

    mul-float/2addr p2, v0

    const v0, 0x3c8efa35

    mul-float/2addr p3, v0

    const v0, 0x3c8efa35

    mul-float/2addr p4, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .local v0, cx:F
    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v2, v1

    .local v2, sx:F
    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v1, v3

    .local v1, cy:F
    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    .end local p2
    move-result-wide p2

    double-to-float v3, p2

    .local v3, sy:F
    float-to-double p2, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    double-to-float p3, p2

    .local p3, cz:F
    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .local v4, sz:F
    mul-float p2, v0, v3

    .local p2, cxsy:F
    mul-float p4, v2, v3

    .local p4, sxsy:F
    add-int/lit8 v5, p1, 0x0

    mul-float v6, v1, p3

    aput v6, p0, v5

    add-int/lit8 v5, p1, 0x1

    neg-float v6, v1

    mul-float/2addr v6, v4

    aput v6, p0, v5

    add-int/lit8 v5, p1, 0x2

    aput v3, p0, v5

    add-int/lit8 v3, p1, 0x3

    const/4 v5, 0x0

    aput v5, p0, v3

    .end local v3           #sy:F
    add-int/lit8 v3, p1, 0x4

    mul-float v5, p2, p3

    mul-float v6, v0, v4

    add-float/2addr v5, v6

    aput v5, p0, v3

    add-int/lit8 v3, p1, 0x5

    neg-float p2, p2

    mul-float/2addr p2, v4

    mul-float v5, v0, p3

    add-float/2addr p2, v5

    aput p2, p0, v3

    .end local p2           #cxsy:F
    add-int/lit8 p2, p1, 0x6

    neg-float v3, v2

    mul-float/2addr v3, v1

    aput v3, p0, p2

    add-int/lit8 p2, p1, 0x7

    const/4 v3, 0x0

    aput v3, p0, p2

    add-int/lit8 p2, p1, 0x8

    neg-float v3, p4

    mul-float/2addr v3, p3

    mul-float v5, v2, v4

    add-float/2addr v3, v5

    aput v3, p0, p2

    add-int/lit8 p2, p1, 0x9

    mul-float/2addr p4, v4

    mul-float/2addr p3, v2

    add-float/2addr p3, p4

    aput p3, p0, p2

    .end local p3           #cz:F
    .end local p4           #sxsy:F
    add-int/lit8 p2, p1, 0xa

    mul-float p3, v0, v1

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0xb

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0xc

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0xd

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0xe

    const/4 p3, 0x0

    aput p3, p0, p2

    add-int/lit8 p1, p1, 0xf

    const/high16 p2, 0x3f80

    aput p2, p0, p1

    .end local p1
    return-void
.end method

.method public static setRotateM([FIFFFF)V
    .locals 9
    .parameter "rm"
    .parameter "rmOffset"
    .parameter "a"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    add-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xb

    const/4 v1, 0x0

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xc

    const/4 v1, 0x0

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xd

    const/4 v1, 0x0

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xe

    const/4 v1, 0x0

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xf

    const/high16 v1, 0x3f80

    aput v1, p0, v0

    const v0, 0x3c8efa35

    mul-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v1, v0

    .local v1, s:F
    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    .local p2, c:F
    const/high16 v0, 0x3f80

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, v0, p5

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x5

    aput p2, p0, v0

    add-int/lit8 v0, p1, 0xa

    aput p2, p0, v0

    add-int/lit8 p2, p1, 0x6

    aput v1, p0, p2

    .end local p2           #c:F
    add-int/lit8 p2, p1, 0x9

    neg-float v0, v1

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x2

    const/4 v0, 0x0

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x4

    const/4 v0, 0x0

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x8

    const/4 v0, 0x0

    aput v0, p0, p2

    add-int/lit8 p1, p1, 0x0

    const/high16 p2, 0x3f80

    aput p2, p0, p1

    .end local v1           #s:F
    .end local p1
    :goto_0
    return-void

    .restart local v1       #s:F
    .restart local p1
    .restart local p2       #c:F
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_1

    const/high16 v0, 0x3f80

    cmpl-float v0, v0, p4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, v0, p5

    if-nez v0, :cond_1

    add-int/lit8 v0, p1, 0x0

    aput p2, p0, v0

    add-int/lit8 v0, p1, 0xa

    aput p2, p0, v0

    add-int/lit8 p2, p1, 0x8

    aput v1, p0, p2

    .end local p2           #c:F
    add-int/lit8 p2, p1, 0x2

    neg-float v0, v1

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x4

    const/4 v0, 0x0

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x6

    const/4 v0, 0x0

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x9

    const/4 v0, 0x0

    aput v0, p0, p2

    add-int/lit8 p1, p1, 0x5

    const/high16 p2, 0x3f80

    aput p2, p0, p1

    goto :goto_0

    .restart local p2       #c:F
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_2

    const/high16 v0, 0x3f80

    cmpl-float v0, v0, p5

    if-nez v0, :cond_2

    add-int/lit8 v0, p1, 0x0

    aput p2, p0, v0

    add-int/lit8 v0, p1, 0x5

    aput p2, p0, v0

    add-int/lit8 p2, p1, 0x1

    aput v1, p0, p2

    .end local p2           #c:F
    add-int/lit8 p2, p1, 0x4

    neg-float v0, v1

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x2

    const/4 v0, 0x0

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x6

    const/4 v0, 0x0

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x8

    const/4 v0, 0x0

    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x9

    const/4 v0, 0x0

    aput v0, p0, p2

    add-int/lit8 p1, p1, 0xa

    const/high16 p2, 0x3f80

    aput p2, p0, p1

    goto :goto_0

    .restart local p2       #c:F
    :cond_2
    invoke-static {p3, p4, p5}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v0

    .local v0, len:F
    const/high16 v2, 0x3f80

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f80

    div-float v0, v2, v0

    .local v0, recipLen:F
    mul-float/2addr p3, v0

    mul-float/2addr p4, v0

    mul-float/2addr p5, v0

    .end local v0           #recipLen:F
    :cond_3
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    .local v0, nc:F
    mul-float v3, p3, p4

    .local v3, xy:F
    mul-float v5, p4, p5

    .local v5, yz:F
    mul-float v6, p5, p3

    .local v6, zx:F
    mul-float v2, p3, v1

    .local v2, xs:F
    mul-float v4, p4, v1

    .local v4, ys:F
    mul-float/2addr v1, p5

    .local v1, zs:F
    add-int/lit8 v7, p1, 0x0

    mul-float v8, p3, p3

    mul-float/2addr v8, v0

    add-float/2addr v8, p2

    aput v8, p0, v7

    add-int/lit8 v7, p1, 0x4

    mul-float v8, v3, v0

    sub-float/2addr v8, v1

    aput v8, p0, v7

    add-int/lit8 v7, p1, 0x8

    mul-float v8, v6, v0

    add-float/2addr v8, v4

    aput v8, p0, v7

    add-int/lit8 v7, p1, 0x1

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    aput v1, p0, v7

    .end local v1           #zs:F
    .end local v3           #xy:F
    add-int/lit8 v1, p1, 0x5

    mul-float v3, p4, p4

    mul-float/2addr v3, v0

    add-float/2addr v3, p2

    aput v3, p0, v1

    add-int/lit8 v1, p1, 0x9

    mul-float v3, v5, v0

    sub-float/2addr v3, v2

    aput v3, p0, v1

    add-int/lit8 v1, p1, 0x2

    mul-float v3, v6, v0

    sub-float/2addr v3, v4

    aput v3, p0, v1

    add-int/lit8 v1, p1, 0x6

    mul-float v3, v5, v0

    add-float/2addr v2, v3

    aput v2, p0, v1

    .end local v2           #xs:F
    add-int/lit8 p1, p1, 0xa

    mul-float v1, p5, p5

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    aput p2, p0, p1

    goto/16 :goto_0
.end method

.method public static translateM([FIFFF)V
    .locals 6
    .parameter "m"
    .parameter "mOffset"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    add-int v1, p1, v0

    .local v1, mi:I
    add-int/lit8 v2, v1, 0xc

    aget v3, p0, v2

    aget v4, p0, v1

    mul-float/2addr v4, p2

    add-int/lit8 v5, v1, 0x4

    aget v5, p0, v5

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, 0x8

    aget v5, p0, v5

    mul-float/2addr v5, p4

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #mi:I
    :cond_0
    return-void
.end method

.method public static translateM([FI[FIFFF)V
    .locals 6
    .parameter "tm"
    .parameter "tmOffset"
    .parameter "m"
    .parameter "mOffset"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0xc

    if-ge v0, v3, :cond_0

    add-int v3, p1, v0

    add-int v4, p3, v0

    aget v4, p2, v4

    aput v4, p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    add-int v2, p1, v0

    .local v2, tmi:I
    add-int v1, p3, v0

    .local v1, mi:I
    add-int/lit8 v3, v2, 0xc

    aget v4, p2, v1

    mul-float/2addr v4, p4

    add-int/lit8 v5, v1, 0x4

    aget v5, p2, v5

    mul-float/2addr v5, p5

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, 0x8

    aget v5, p2, v5

    mul-float/2addr v5, p6

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, 0xc

    aget v5, p2, v5

    add-float/2addr v4, v5

    aput v4, p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #mi:I
    .end local v2           #tmi:I
    :cond_1
    return-void
.end method

.method public static transposeM([FI[FI)V
    .locals 4
    .parameter "mTrans"
    .parameter "mTransOffset"
    .parameter "m"
    .parameter "mOffset"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x4

    add-int v1, v2, p3

    .local v1, mBase:I
    add-int v2, v0, p1

    aget v3, p2, v1

    aput v3, p0, v2

    add-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v2, v0, 0x8

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x2

    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v2, v0, 0xc

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x3

    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #mBase:I
    :cond_0
    return-void
.end method
