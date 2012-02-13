.class public Landroid/graphics/drawable/PictureDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PictureDrawable.java"


# instance fields
.field private mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 0
    .parameter "picture"

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    iget-object v1, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/PictureDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, -0x3

    return v0
.end method

.method public getPicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "colorFilter"

    .prologue
    return-void
.end method

.method public setDither(Z)V
    .locals 0
    .parameter "dither"

    .prologue
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 0
    .parameter "filter"

    .prologue
    return-void
.end method

.method public setPicture(Landroid/graphics/Picture;)V
    .locals 0
    .parameter "picture"

    .prologue
    iput-object p1, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    return-void
.end method
