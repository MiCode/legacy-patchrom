.class public Landroid/graphics/drawable/ColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ColorDrawable$1;,
        Landroid/graphics/drawable/ColorDrawable$ColorState;
    }
.end annotation


# instance fields
.field private mState:Landroid/graphics/drawable/ColorDrawable$ColorState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "color"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iput p1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    iput p1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V
    .locals 1
    .parameter "state"

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable$ColorState;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable$ColorState;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/graphics/drawable/ColorDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, -0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, -0x2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    sget-object v2, Lcom/android/internal/R$styleable;->ColorDrawable:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v1, v2, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    .local v1, color:I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iput v1, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    iput v1, v2, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 5
    .parameter "alpha"

    .prologue
    shr-int/lit8 v2, p1, 0x7

    add-int/2addr p1, v2

    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v2, v2, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    ushr-int/lit8 v0, v2, 0x18

    .local v0, baseAlpha:I
    mul-int v2, v0, p1

    shr-int/lit8 v1, v2, 0x8

    .local v1, useAlpha:I
    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v3, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    shl-int/lit8 v3, v3, 0x8

    ushr-int/lit8 v3, v3, 0x8

    shl-int/lit8 v4, v1, 0x18

    or-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "colorFilter"

    .prologue
    return-void
.end method
