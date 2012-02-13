.class public Landroid/graphics/drawable/shapes/ArcShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "ArcShape.java"


# instance fields
.field private mStart:F

.field private mSweep:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "startAngle"
    .parameter "sweepAngle"

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput p1, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStart:F

    iput p2, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweep:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "paint"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->rect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStart:F

    iget v3, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweep:F

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method
