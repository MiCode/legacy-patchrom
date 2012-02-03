.class public Landroid/graphics/PointF;
.super Ljava/lang/Object;
.source "PointF.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/graphics/PointF;->x:F

    .line 33
    iput p2, p0, Landroid/graphics/PointF;->y:F

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 38
    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 39
    return-void
.end method

.method public static length(FF)F
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 85
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public final equals(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 71
    iget v0, p0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final length()F
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    return v0
.end method

.method public final negate()V
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/graphics/PointF;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 59
    iget v0, p0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 60
    return-void
.end method

.method public final offset(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 63
    iget v0, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 64
    iget v0, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 65
    return-void
.end method

.method public final set(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 45
    iput p1, p0, Landroid/graphics/PointF;->x:F

    .line 46
    iput p2, p0, Landroid/graphics/PointF;->y:F

    .line 47
    return-void
.end method

.method public final set(Landroid/graphics/PointF;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 53
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 54
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 55
    return-void
.end method
