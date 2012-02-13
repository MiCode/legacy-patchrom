.class public Landroid/graphics/drawable/shapes/PathShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "PathShape.java"


# instance fields
.field private mPath:Landroid/graphics/Path;

.field private mScaleX:F

.field private mScaleY:F

.field private mStdHeight:F

.field private mStdWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;FF)V
    .locals 0
    .parameter "path"
    .parameter "stdWidth"
    .parameter "stdHeight"

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    iput p2, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    iput p3, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/drawable/shapes/PathShape;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/PathShape;

    .local v0, shape:Landroid/graphics/drawable/shapes/PathShape;
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

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
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/PathShape;->clone()Landroid/graphics/drawable/shapes/PathShape;

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
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/PathShape;->clone()Landroid/graphics/drawable/shapes/PathShape;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "canvas"
    .parameter "paint"

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    iget v1, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onResize(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    div-float v0, p1, v0

    iput v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    div-float v0, p2, v0

    iput v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    return-void
.end method
