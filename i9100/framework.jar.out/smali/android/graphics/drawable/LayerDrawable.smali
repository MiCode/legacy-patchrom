.class public Landroid/graphics/drawable/LayerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LayerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/LayerDrawable$LayerState;,
        Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    }
.end annotation


# instance fields
.field mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

.field private mMutated:Z

.field private mPaddingB:[I

.field private mPaddingL:[I

.field private mPaddingR:[I

.field private mPaddingT:[I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-object v1, v0

    invoke-direct {p0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 92
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V
    .locals 2
    .parameter "state"
    .parameter "res"

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 54
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 95
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-result-object v0

    .line 96
    .local v0, as:Landroid/graphics/drawable/LayerDrawable$LayerState;
    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 97
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    if-lez v1, :cond_0

    .line 98
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 100
    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "layers"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    .line 64
    return-void
.end method

.method constructor <init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V
    .locals 6
    .parameter "layers"
    .parameter "state"

    .prologue
    .line 74
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 75
    array-length v1, p1

    .line 76
    .local v1, length:I
    new-array v2, v1, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 78
    .local v2, r:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 79
    new-instance v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>()V

    aput-object v3, v2, v0

    .line 80
    aget-object v3, v2, v0

    aget-object v4, p1, v0

    iput-object v4, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    aget-object v3, p1, v0

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 82
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 85
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 87
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 88
    return-void
.end method

.method private addLayer(Landroid/graphics/drawable/Drawable;IIIII)V
    .locals 8
    .parameter "layer"
    .parameter "id"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    .line 175
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 176
    .local v4, st:Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget-object v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    array-length v5, v5

    move v0, v5

    .line 177
    .local v0, N:I
    :goto_0
    iget v2, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 178
    .local v2, i:I
    if-lt v2, v0, :cond_1

    .line 179
    add-int/lit8 v5, v0, 0xa

    new-array v3, v5, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 180
    .local v3, nu:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    if-lez v2, :cond_0

    .line 181
    iget-object v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-static {v5, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    :cond_0
    iput-object v3, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 186
    .end local v3           #nu:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v6, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 188
    new-instance v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>()V

    .line 189
    .local v1, childDrawable:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aput-object v1, v5, v2

    .line 190
    iput p2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 191
    iput-object p1, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    iput p3, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 193
    iput p4, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 194
    iput p5, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 195
    iput p6, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 196
    iget v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 198
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 199
    return-void

    .end local v0           #N:I
    .end local v1           #childDrawable:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2           #i:I
    :cond_2
    move v0, v6

    .line 176
    goto :goto_0
.end method

.method private ensurePadding()V
    .locals 2

    .prologue
    .line 513
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 514
    .local v0, N:I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    array-length v1, v1

    if-lt v1, v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 517
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    .line 518
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    .line 519
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    .line 520
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    goto :goto_0
.end method

.method private reapplyPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z
    .locals 3
    .parameter "i"
    .parameter "r"

    .prologue
    .line 499
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 500
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 501
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v2, v2, p1

    if-eq v1, v2, :cond_1

    .line 503
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aput v2, v1, p1

    .line 504
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    aput v2, v1, p1

    .line 505
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    aput v2, v1, p1

    .line 506
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    aput v2, v1, p1

    .line 507
    const/4 v1, 0x1

    .line 509
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1
    .parameter "state"
    .parameter "res"

    .prologue
    .line 103
    new-instance v0, Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 318
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 319
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 320
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 321
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_0
    return-void
.end method

.method public findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "id"

    .prologue
    .line 208
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 210
    .local v1, layers:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 211
    aget-object v2, v1, v0

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v2, p1, :cond_0

    .line 212
    aget-object v2, v1, v0

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    :goto_1
    return-object v2

    .line 210
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 216
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 327
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 527
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 529
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "index"

    .prologue
    .line 245
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 256
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 10

    .prologue
    .line 482
    const/4 v3, -0x1

    .line 483
    .local v3, height:I
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v8, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 484
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v8, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 485
    .local v0, N:I
    const/4 v6, 0x0

    .local v6, padT:I
    const/4 v5, 0x0

    .line 486
    .local v5, padB:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 487
    aget-object v7, v1, v4

    .line 488
    .local v7, r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iget v9, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v8, v9

    iget v9, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    add-int/2addr v8, v9

    add-int/2addr v8, v6

    add-int v2, v8, v5

    .line 489
    .local v2, h:I
    if-le v2, v3, :cond_0

    .line 490
    move v3, v2

    .line 492
    :cond_0
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v8, v8, v4

    add-int/2addr v6, v8

    .line 493
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v8, v8, v4

    add-int/2addr v5, v8

    .line 486
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 495
    .end local v2           #h:I
    .end local v7           #r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    return v3
.end method

.method public getIntrinsicWidth()I
    .locals 10

    .prologue
    .line 463
    const/4 v7, -0x1

    .line 464
    .local v7, width:I
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v8, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 465
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v8, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 466
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, padL:I
    const/4 v4, 0x0

    .line 467
    .local v4, padR:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 468
    aget-object v5, v1, v2

    .line 469
    .local v5, r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    iget v9, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    add-int/2addr v8, v9

    add-int/2addr v8, v3

    add-int v6, v8, v4

    .line 471
    .local v6, w:I
    if-le v6, v7, :cond_0

    .line 472
    move v7, v6

    .line 474
    :cond_0
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v8, v8, v2

    add-int/2addr v3, v8

    .line 475
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v8, v8, v2

    add-int/2addr v4, v8

    .line 467
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    .end local v5           #r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v6           #w:I
    :cond_1
    return v7
.end method

.method public getNumberOfLayers()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "padding"

    .prologue
    const/4 v3, 0x0

    .line 337
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 338
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 339
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 340
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 341
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 342
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 343
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 344
    aget-object v3, v1, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->reapplyPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 345
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 346
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 347
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 348
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 12
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
    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 113
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v10, v0, 0x1

    .line 116
    .local v10, innerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, type:I
    const/4 v0, 0x1

    if-eq v11, v0, :cond_4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .local v8, depth:I
    if-ge v8, v10, :cond_1

    const/4 v0, 0x3

    if-eq v11, v0, :cond_4

    .line 117
    :cond_1
    const/4 v0, 0x2

    if-ne v11, v0, :cond_0

    .line 121
    if-gt v8, v10, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 128
    .local v7, a:Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 130
    .local v3, left:I
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 132
    .local v4, top:I
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 134
    .local v5, right:I
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 136
    .local v6, bottom:I
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 138
    .local v9, drawableRes:I
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 141
    .local v2, id:I
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    if-eqz v9, :cond_2

    .line 145
    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, dr:Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object v0, p0

    .line 157
    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/Drawable;IIIII)V

    goto :goto_0

    .line 147
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v0, 0x4

    if-eq v11, v0, :cond_2

    .line 149
    const/4 v0, 0x2

    if-eq v11, v0, :cond_3

    .line 150
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    .end local v2           #id:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    .restart local v2       #id:I
    :cond_3
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 160
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .end local v2           #id:I
    .end local v3           #left:I
    .end local v4           #top:I
    .end local v5           #right:I
    .end local v6           #bottom:I
    .end local v7           #a:Landroid/content/res/TypedArray;
    .end local v8           #depth:I
    .end local v9           #drawableRes:I
    :cond_4
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 161
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    .line 162
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 297
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 534
    iget-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    if-nez v3, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v3, p0, :cond_1

    .line 535
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 536
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 537
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 538
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    .line 542
    .end local v0           #N:I
    .end local v1           #array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2           #i:I
    :cond_1
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 14
    .parameter "bounds"

    .prologue
    .line 445
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v8, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 446
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v8, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 447
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, padL:I
    const/4 v6, 0x0

    .local v6, padT:I
    const/4 v5, 0x0

    .local v5, padR:I
    const/4 v3, 0x0

    .line 448
    .local v3, padB:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 449
    aget-object v7, v1, v2

    .line 450
    .local v7, r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, p1, Landroid/graphics/Rect;->left:I

    iget v10, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    add-int/2addr v9, v10

    add-int/2addr v9, v4

    iget v10, p1, Landroid/graphics/Rect;->top:I

    iget v11, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v10, v11

    add-int/2addr v10, v6

    iget v11, p1, Landroid/graphics/Rect;->right:I

    iget v12, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v5

    iget v12, p1, Landroid/graphics/Rect;->bottom:I

    iget v13, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 454
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v8, v8, v2

    add-int/2addr v4, v8

    .line 455
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v8, v8, v2

    add-int/2addr v5, v8

    .line 456
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v8, v8, v2

    add-int/2addr v6, v8

    .line 457
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v8, v8, v2

    add-int/2addr v3, v8

    .line 448
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    .end local v7           #r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 7
    .parameter "level"

    .prologue
    .line 424
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 425
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 426
    .local v0, N:I
    const/4 v4, 0x0

    .line 427
    .local v4, paddingChanged:Z
    const/4 v2, 0x0

    .line 428
    .local v2, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 429
    aget-object v5, v1, v3

    .line 430
    .local v5, r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 431
    const/4 v2, 0x1

    .line 433
    :cond_0
    invoke-direct {p0, v3, v5}, Landroid/graphics/drawable/LayerDrawable;->reapplyPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 434
    const/4 v4, 0x1

    .line 428
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 437
    .end local v5           #r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    if-eqz v4, :cond_3

    .line 438
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 440
    :cond_3
    return v2
.end method

.method protected onStateChange([I)Z
    .locals 7
    .parameter "state"

    .prologue
    .line 403
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 404
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 405
    .local v0, N:I
    const/4 v4, 0x0

    .line 406
    .local v4, paddingChanged:Z
    const/4 v2, 0x0

    .line 407
    .local v2, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 408
    aget-object v5, v1, v3

    .line 409
    .local v5, r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 410
    const/4 v2, 0x1

    .line 412
    :cond_0
    invoke-direct {p0, v3, v5}, Landroid/graphics/drawable/LayerDrawable;->reapplyPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 413
    const/4 v4, 0x1

    .line 407
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 416
    .end local v5           #r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    if-eqz v4, :cond_3

    .line 417
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 419
    :cond_3
    return v2
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 303
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 306
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 4
    .parameter "alpha"

    .prologue
    .line 375
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 376
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 377
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 378
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 377
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4
    .parameter "cf"

    .prologue
    .line 384
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 385
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 386
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 387
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 4
    .parameter "dither"

    .prologue
    .line 366
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 367
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 368
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 369
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 4
    .parameter "id"
    .parameter "drawable"

    .prologue
    const/4 v3, 0x1

    .line 268
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 270
    .local v1, layers:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 271
    aget-object v2, v1, v0

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v2, p1, :cond_0

    .line 272
    aget-object v2, v1, v0

    iput-object p2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v2, v3

    .line 277
    :goto_1
    return v2

    .line 270
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 277
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setId(II)V
    .locals 1
    .parameter "index"
    .parameter "id"

    .prologue
    .line 226
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 227
    return-void
.end method

.method public setLayerInset(IIIII)V
    .locals 2
    .parameter "index"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 287
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    .line 288
    .local v0, childDrawable:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 289
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 290
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 291
    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 292
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 5
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 355
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v2

    .line 356
    .local v2, changed:Z
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 357
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 358
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 359
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 358
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    :cond_0
    return v2
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 309
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 312
    :cond_0
    return-void
.end method
