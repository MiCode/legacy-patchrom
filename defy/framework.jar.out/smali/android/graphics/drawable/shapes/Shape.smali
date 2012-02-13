.class public abstract Landroid/graphics/drawable/shapes/Shape;
.super Ljava/lang/Object;
.source "Shape.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/shapes/Shape;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    return-object v0
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public final getHeight()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    return v0
.end method

.method public final getWidth()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected onResize(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    return-void
.end method

.method public final resize(FF)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_3

    :cond_2
    iput p1, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    iput p2, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/shapes/Shape;->onResize(FF)V

    :cond_3
    return-void
.end method
