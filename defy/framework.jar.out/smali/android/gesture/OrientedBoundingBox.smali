.class public Landroid/gesture/OrientedBoundingBox;
.super Ljava/lang/Object;
.source "OrientedBoundingBox.java"


# instance fields
.field public final centerX:F

.field public final centerY:F

.field public final height:F

.field public final orientation:F

.field public final squareness:F

.field public final width:F


# direct methods
.method constructor <init>(FFFFF)V
    .locals 3
    .parameter "angle"
    .parameter "cx"
    .parameter "cy"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v2, 0x3f80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    iput p4, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    iput p5, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    iput p2, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    iput p3, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    div-float v0, p4, p5

    .local v0, ratio:F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    div-float v1, v2, v0

    iput v1, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    goto :goto_0
.end method


# virtual methods
.method public toPath()Landroid/graphics/Path;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x4000

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .local v1, path:Landroid/graphics/Path;
    const/4 v3, 0x2

    new-array v2, v3, [F

    .local v2, point:[F
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    neg-float v3, v3

    div-float/2addr v3, v5

    aput v3, v2, v6

    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    div-float/2addr v3, v5

    aput v3, v2, v7

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .local v0, matrix:Landroid/graphics/Matrix;
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    iget v4, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v3, v2, v6

    aget v4, v2, v7

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    neg-float v3, v3

    div-float/2addr v3, v5

    aput v3, v2, v6

    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    neg-float v3, v3

    div-float/2addr v3, v5

    aput v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v3, v2, v6

    aget v4, v2, v7

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    div-float/2addr v3, v5

    aput v3, v2, v6

    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    neg-float v3, v3

    div-float/2addr v3, v5

    aput v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v3, v2, v6

    aget v4, v2, v7

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    div-float/2addr v3, v5

    aput v3, v2, v6

    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    div-float/2addr v3, v5

    aput v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v3, v2, v6

    aget v4, v2, v7

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-object v1
.end method
