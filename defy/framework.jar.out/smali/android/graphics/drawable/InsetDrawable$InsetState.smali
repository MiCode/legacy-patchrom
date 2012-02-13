.class final Landroid/graphics/drawable/InsetDrawable$InsetState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "InsetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/InsetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InsetState"
.end annotation


# instance fields
.field mCanConstantState:Z

.field mChangingConfigurations:I

.field mCheckedConstantState:Z

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field mInsetBottom:I

.field mInsetLeft:I

.field mInsetRight:I

.field mInsetTop:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/graphics/drawable/InsetDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "orig"
    .parameter "owner"
    .parameter "res"

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCanConstantState:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCheckedConstantState:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method canConstantState()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCheckedConstantState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCanConstantState:Z

    iput-boolean v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCheckedConstantState:Z

    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCanConstantState:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable$1;)V

    return-object v0
.end method
