.class public Landroid/graphics/drawable/DrawableContainer;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    }
.end annotation


# static fields
.field private static final DEFAULT_DITHER:Z = true


# instance fields
.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 37
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 258
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 50
    :cond_0
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 240
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 242
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantHeight()I

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantWidth()I

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v0

    .line 160
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "padding"

    .prologue
    .line 61
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 62
    .local v0, r:Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 64
    const/4 v1, 0x1

    .line 69
    :goto_0
    return v1

    .line 66
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 69
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 165
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 247
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer;->mMutated:Z

    if-nez v3, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v3, p0, :cond_2

    .line 248
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v0

    .line 249
    .local v0, N:I
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 250
    .local v1, drawables:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 251
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 250
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 255
    .end local v0           #N:I
    .end local v1           #drawables:[Landroid/graphics/drawable/Drawable;
    .end local v2           #i:I
    :cond_2
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 125
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 172
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 175
    :cond_0
    return-void
.end method

.method public selectDrawable(I)Z
    .locals 4
    .parameter "idx"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    if-ne p1, v1, :cond_0

    move v1, v2

    .line 228
    :goto_0
    return v1

    .line 204
    :cond_0
    if-ltz p1, :cond_3

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-ge p1, v1, :cond_3

    .line 205
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v1, p1

    .line 206
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 209
    :cond_1
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 210
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 211
    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 213
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 214
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 215
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 216
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 217
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 218
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 227
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->invalidateSelf()V

    move v1, v3

    .line 228
    goto :goto_0

    .line 221
    :cond_3
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 222
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 224
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 225
    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 75
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 76
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 77
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 96
    iput-object p1, p0, Landroid/graphics/drawable/DrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 97
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 101
    :cond_0
    return-void
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 526
    iput-object p1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 527
    return-void
.end method

.method public setDither(Z)V
    .locals 2
    .parameter "dither"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    if-eq v0, p1, :cond_0

    .line 86
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 87
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 91
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 186
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 187
    .local v0, changed:Z
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 190
    :cond_0
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 179
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 182
    :cond_0
    return-void
.end method
