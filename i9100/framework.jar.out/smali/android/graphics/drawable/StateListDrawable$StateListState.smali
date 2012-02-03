.class final Landroid/graphics/drawable/StateListDrawable$StateListState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/StateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListState"
.end annotation


# instance fields
.field private mStateSets:[[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "orig"
    .parameter "owner"
    .parameter "res"

    .prologue
    .line 257
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p1, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/graphics/drawable/StateListDrawable$StateListState;)[[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    return-object v0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/StateListDrawable$StateListState;[[I)[[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-object p1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    return-object p1
.end method

.method private indexOfStateSet([I)I
    .locals 4
    .parameter "stateSet"

    .prologue
    .line 273
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 274
    .local v2, stateSets:[[I
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    .line 275
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 276
    aget-object v3, v2, v1

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    .line 280
    :goto_1
    return v3

    .line 275
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;)I
    .locals 2
    .parameter "stateSet"
    .parameter "drawable"

    .prologue
    .line 267
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 268
    .local v0, pos:I
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aput-object p1, v1, v0

    .line 269
    return v0
.end method

.method public growArray(II)V
    .locals 3
    .parameter "oldSize"
    .parameter "newSize"

    .prologue
    const/4 v2, 0x0

    .line 295
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 296
    new-array v0, p2, [[I

    .line 297
    .local v0, newStateSets:[[I
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 299
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    .line 290
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable$1;)V

    return-object v0
.end method
