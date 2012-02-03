.class final Landroid/graphics/drawable/ColorDrawable$ColorState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ColorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorState"
.end annotation


# instance fields
.field mBaseColor:I

.field mChangingConfigurations:I

.field mUseColor:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    iput v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    .line 147
    iget v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    iput v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/graphics/drawable/ColorDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    .line 158
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/graphics/drawable/ColorDrawable$1;)V

    return-object v0
.end method
