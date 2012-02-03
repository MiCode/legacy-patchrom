.class public Landroid/graphics/RectF;
.super Ljava/lang/Object;
.source "RectF.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 500
    new-instance v0, Landroid/graphics/RectF$1;

    invoke-direct {v0}, Landroid/graphics/RectF$1;-><init>()V

    sput-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 54
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 55
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 56
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 75
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 76
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 77
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 68
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 69
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 70
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 71
    return-void
.end method

.method public static intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 378
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final centerX()F
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    return v0
.end method

.method public final centerY()F
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    return v0
.end method

.method public contains(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 230
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(FFFF)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 248
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, p3

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Landroid/graphics/RectF;)Z
    .locals 2
    .parameter "r"

    .prologue
    .line 264
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public final height()F
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public inset(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 212
    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 213
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 214
    iget v0, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 215
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 216
    return-void
.end method

.method public intersect(FFFF)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 289
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_4

    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p4

    if-gez v0, :cond_4

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_4

    .line 291
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 292
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 294
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1

    .line 295
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 297
    :cond_1
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, p3

    if-lez v0, :cond_2

    .line 298
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 300
    :cond_2
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p4

    if-lez v0, :cond_3

    .line 301
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 303
    :cond_3
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public intersect(Landroid/graphics/RectF;)Z
    .locals 4
    .parameter "r"

    .prologue
    .line 320
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v0

    return v0
.end method

.method public intersects(FFFF)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 363
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p4

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offset(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 182
    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 183
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 184
    iget v0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 185
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 186
    return-void
.end method

.method public offsetTo(FF)V
    .locals 2
    .parameter "newLeft"
    .parameter "newTop"

    .prologue
    .line 196
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 197
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 198
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 199
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 200
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 529
    return-void
.end method

.method public round(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "dst"

    .prologue
    .line 387
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 389
    return-void
.end method

.method public roundOut(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "dst"

    .prologue
    .line 396
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 398
    return-void
.end method

.method public set(FFFF)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 142
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 143
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 144
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 145
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 146
    return-void
.end method

.method public set(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 168
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 169
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 170
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 171
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 172
    return-void
.end method

.method public set(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 155
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 156
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 157
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 158
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 159
    return-void
.end method

.method public setEmpty()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 129
    return-void
.end method

.method public setIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 336
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 338
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 339
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 340
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 341
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 342
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sort()V
    .locals 3

    .prologue
    .line 469
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 470
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 471
    .local v0, temp:F
    iget v1, p0, Landroid/graphics/RectF;->right:F

    iput v1, p0, Landroid/graphics/RectF;->left:F

    .line 472
    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 474
    .end local v0           #temp:F
    :cond_0
    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 475
    iget v0, p0, Landroid/graphics/RectF;->top:F

    .line 476
    .restart local v0       #temp:F
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    iput v1, p0, Landroid/graphics/RectF;->top:F

    .line 477
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 479
    .end local v0           #temp:F
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, ", "

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectF("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public union(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 449
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 450
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 454
    :cond_0
    :goto_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 455
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 459
    :cond_1
    :goto_1
    return-void

    .line 451
    :cond_2
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 452
    iput p1, p0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 456
    :cond_3
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 457
    iput p2, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1
.end method

.method public union(FFFF)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 411
    cmpg-float v0, p1, p3

    if-gez v0, :cond_3

    cmpg-float v0, p2, p4

    if-gez v0, :cond_3

    .line 412
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 413
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    .line 414
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 415
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    .line 416
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 417
    :cond_1
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_2

    .line 418
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 419
    :cond_2
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, p4

    if-gez v0, :cond_3

    .line 420
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 428
    :cond_3
    :goto_0
    return-void

    .line 422
    :cond_4
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 423
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 424
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 425
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public union(Landroid/graphics/RectF;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 438
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->union(FFFF)V

    .line 439
    return-void
.end method

.method public final width()F
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 494
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 495
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 496
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 497
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 498
    return-void
.end method
