.class public Landroid/renderscript/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 31
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 32
    return-void
.end method


# virtual methods
.method public get(II)F
    .locals 2
    .parameter "i"
    .parameter "j"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public load(Landroid/renderscript/Matrix4f;)V
    .locals 3
    .parameter "src"

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x10

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    return-void
.end method

.method public loadFrustum(FFFFFF)V
    .locals 5
    .parameter "l"
    .parameter "r"
    .parameter "b"
    .parameter "t"
    .parameter "n"
    .parameter "f"

    .prologue
    const/high16 v4, 0x4000

    .line 151
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 152
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    mul-float v2, v4, p5

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 153
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    mul-float v2, v4, p5

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 154
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x8

    add-float v2, p2, p1

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 155
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x9

    add-float v2, p4, p3

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 156
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    add-float v2, p6, p5

    neg-float v2, v2

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 157
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    const/high16 v2, -0x4080

    aput v2, v0, v1

    .line 158
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    const/high16 v2, -0x4000

    mul-float/2addr v2, p6

    mul-float/2addr v2, p5

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 159
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 160
    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 44
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 45
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 46
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 48
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 49
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 50
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 51
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 53
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 54
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 55
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 56
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 58
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 59
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 60
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 61
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 62
    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V
    .locals 13
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 121
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v12, :cond_1

    .line 122
    const/4 v3, 0x0

    .line 123
    .local v3, ri0:F
    const/4 v4, 0x0

    .line 124
    .local v4, ri1:F
    const/4 v5, 0x0

    .line 125
    .local v5, ri2:F
    const/4 v6, 0x0

    .line 126
    .local v6, ri3:F
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v12, :cond_0

    .line 127
    invoke-virtual {p2, v0, v1}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v2

    .line 128
    .local v2, rhs_ij:F
    invoke-virtual {p1, v1, v8}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v3, v7

    .line 129
    invoke-virtual {p1, v1, v9}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v4, v7

    .line 130
    invoke-virtual {p1, v1, v10}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v5, v7

    .line 131
    invoke-virtual {p1, v1, v11}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    .end local v2           #rhs_ij:F
    :cond_0
    invoke-virtual {p0, v0, v8, v3}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 134
    invoke-virtual {p0, v0, v9, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 135
    invoke-virtual {p0, v0, v10, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 136
    invoke-virtual {p0, v0, v11, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v1           #j:I
    .end local v3           #ri0:F
    .end local v4           #ri1:F
    .end local v5           #ri2:F
    .end local v6           #ri3:F
    :cond_1
    return-void
.end method

.method public loadOrtho(FFFFFF)V
    .locals 4
    .parameter "l"
    .parameter "r"
    .parameter "b"
    .parameter "t"
    .parameter "n"
    .parameter "f"

    .prologue
    const/high16 v3, 0x4000

    .line 141
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 142
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    sub-float v2, p2, p1

    div-float v2, v3, v2

    aput v2, v0, v1

    .line 143
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    sub-float v2, p4, p3

    div-float v2, v3, v2

    aput v2, v0, v1

    .line 144
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    const/high16 v2, -0x4000

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 145
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    add-float v2, p2, p1

    neg-float v2, v2

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 146
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    add-float v2, p4, p3

    neg-float v2, v2

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 147
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    add-float v2, p6, p5

    neg-float v2, v2

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 148
    return-void
.end method

.method public loadRotate(FFFF)V
    .locals 14
    .parameter "rot"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 70
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x3

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 71
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x7

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 72
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xb

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 73
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xc

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 74
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xd

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 75
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xe

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 76
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xf

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    .line 77
    const v11, 0x3c8efa35

    mul-float/2addr p1, v11

    .line 78
    float-to-double v11, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v0, v11

    .line 79
    .local v0, c:F
    float-to-double v11, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v4, v11

    .line 81
    .local v4, s:F
    mul-float v11, p2, p2

    mul-float v12, p3, p3

    add-float/2addr v11, v12

    mul-float v12, p4, p4

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v1, v11

    .line 82
    .local v1, len:F
    const/high16 v11, 0x3f80

    cmpl-float v11, v1, v11

    if-nez v11, :cond_0

    .line 83
    const/high16 v11, 0x3f80

    div-float v3, v11, v1

    .line 84
    .local v3, recipLen:F
    mul-float p2, p2, v3

    .line 85
    mul-float p3, p3, v3

    .line 86
    mul-float p4, p4, v3

    .line 88
    .end local v3           #recipLen:F
    :cond_0
    const/high16 v11, 0x3f80

    sub-float v2, v11, v0

    .line 89
    .local v2, nc:F
    mul-float v6, p2, p3

    .line 90
    .local v6, xy:F
    mul-float v8, p3, p4

    .line 91
    .local v8, yz:F
    mul-float v10, p4, p2

    .line 92
    .local v10, zx:F
    mul-float v5, p2, v4

    .line 93
    .local v5, xs:F
    mul-float v7, p3, v4

    .line 94
    .local v7, ys:F
    mul-float v9, p4, v4

    .line 95
    .local v9, zs:F
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x0

    mul-float v13, p2, p2

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    .line 96
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x4

    mul-float v13, v6, v2

    sub-float/2addr v13, v9

    aput v13, v11, v12

    .line 97
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0x8

    mul-float v13, v10, v2

    add-float/2addr v13, v7

    aput v13, v11, v12

    .line 98
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x1

    mul-float v13, v6, v2

    add-float/2addr v13, v9

    aput v13, v11, v12

    .line 99
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x5

    mul-float v13, p3, p3

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    .line 100
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0x9

    mul-float v13, v8, v2

    sub-float/2addr v13, v5

    aput v13, v11, v12

    .line 101
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x2

    mul-float v13, v10, v2

    sub-float/2addr v13, v7

    aput v13, v11, v12

    .line 102
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x6

    mul-float v13, v8, v2

    add-float/2addr v13, v5

    aput v13, v11, v12

    .line 103
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xa

    mul-float v13, p4, p4

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    .line 104
    return-void
.end method

.method public loadScale(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 108
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 109
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 110
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    aput p3, v0, v1

    .line 111
    return-void
.end method

.method public loadTranslate(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 115
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 116
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 117
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 118
    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix4f;)V
    .locals 1
    .parameter "rhs"

    .prologue
    .line 163
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 164
    .local v0, tmp:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 165
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 166
    return-void
.end method

.method public rotate(FFFF)V
    .locals 1
    .parameter "rot"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 168
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 169
    .local v0, tmp:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 170
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 171
    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 173
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 174
    .local v0, tmp:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 175
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 176
    return-void
.end method

.method public set(IIF)V
    .locals 2
    .parameter "i"
    .parameter "j"
    .parameter "v"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 40
    return-void
.end method

.method public translate(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 178
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 179
    .local v0, tmp:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 180
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 181
    return-void
.end method
