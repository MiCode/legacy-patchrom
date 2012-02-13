.class public Landroid/graphics/drawable/shapes/RoundRectShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "RoundRectShape.java"


# instance fields
.field private mInnerRadii:[F

.field private mInnerRect:Landroid/graphics/RectF;

.field private mInset:Landroid/graphics/RectF;

.field private mOuterRadii:[F

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>([FLandroid/graphics/RectF;[F)V
    .locals 2
    .parameter "outerRadii"
    .parameter "inset"
    .parameter "innerRadii"

    .prologue
    const/16 v1, 0x8

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    array-length v0, p1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "outer radii must have >= 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p3, :cond_1

    array-length v0, p3

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "inner radii must have >= 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    iput-object p2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iput-object p3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    if-eqz p2, :cond_2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    :cond_2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/RectShape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->clone()Landroid/graphics/drawable/shapes/RoundRectShape;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/graphics/drawable/shapes/RoundRectShape;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    .local v0, shape:Landroid/graphics/drawable/shapes/RoundRectShape;
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->clone()Landroid/graphics/drawable/shapes/RoundRectShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->clone()Landroid/graphics/drawable/shapes/RoundRectShape;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "canvas"
    .parameter "paint"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onResize(FF)V
    .locals 7
    .parameter "w"
    .parameter "h"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/RectShape;->onResize(FF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->rect()Landroid/graphics/RectF;

    move-result-object v0

    .local v0, r:Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_1
.end method
