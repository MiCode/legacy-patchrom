.class final Landroid/graphics/drawable/ScaleDrawable$ScaleState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ScaleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ScaleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScaleState"
.end annotation


# instance fields
.field private mCanConstantState:Z

.field mChangingConfigurations:I

.field private mCheckedConstantState:Z

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field mGravity:I

.field mScaleHeight:F

.field mScaleWidth:F


# direct methods
.method constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/graphics/drawable/ScaleDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "orig"
    .parameter "owner"
    .parameter "res"

    .prologue
    .line 265
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 266
    if-eqz p1, :cond_0

    .line 267
    if-eqz p3, :cond_1

    .line 268
    iget-object v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    :goto_0
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 273
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 274
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 275
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mCanConstantState:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mCheckedConstantState:Z

    .line 278
    :cond_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method canConstantState()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 296
    iget-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mCheckedConstantState:Z

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mCanConstantState:Z

    .line 298
    iput-boolean v1, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mCheckedConstantState:Z

    .line 301
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mCanConstantState:Z

    return v0

    .line 297
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    .line 287
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable$1;)V

    return-object v0
.end method
