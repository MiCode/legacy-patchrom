.class public Landroid/widget/ViewAnimator;
.super Landroid/widget/FrameLayout;
.source "ViewAnimator.java"


# instance fields
.field mAnimateFirstTime:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/view/animation/Animation;

.field mOutAnimation:Landroid/view/animation/Animation;

.field mWhichChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 38
    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 39
    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ViewAnimator;->initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v3, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 38
    iput-boolean v4, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 39
    iput-boolean v4, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 52
    sget-object v2, Lcom/android/internal/R$styleable;->ViewAnimator:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 54
    .local v1, resource:I
    if-lez v1, :cond_0

    .line 55
    invoke-virtual {p0, p1, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 58
    :cond_0
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 59
    if-lez v1, :cond_1

    .line 60
    invoke-virtual {p0, p1, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    .line 62
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;->initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method private initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 72
    if-nez p2, :cond_0

    .line 74
    iput-boolean v3, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 86
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 84
    .local v1, measureAllChildren:Z
    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setMeasureAllChildren(Z)V

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedChild()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    return v0
.end method

.method public getInAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getOutAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 173
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 178
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 179
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->removeViewAt(I)V

    .line 181
    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 185
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 186
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    .line 187
    .local v0, childCount:I
    if-nez v0, :cond_1

    .line 188
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 189
    iput-boolean v2, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-lt v1, v0, :cond_2

    .line 192
    sub-int v1, v0, v2

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0

    .line 193
    :cond_2
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-ne v1, p1, :cond_0

    .line 195
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->removeView(Landroid/view/View;)V

    .line 201
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    .line 205
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 210
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 215
    invoke-virtual {p0, p1, p2}, Landroid/widget/ViewAnimator;->removeViews(II)V

    .line 216
    return-void
.end method

.method public setAnimateFirstView(Z)V
    .locals 0
    .parameter "animate"

    .prologue
    .line 311
    iput-boolean p1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 312
    return-void
.end method

.method public setDisplayedChild(I)V
    .locals 4
    .parameter "whichChild"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    iput p1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 95
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 96
    iput v2, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    move v0, v3

    .line 102
    .local v0, hasFocus:Z
    :goto_1
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->showOnly(I)V

    .line 103
    if-eqz v0, :cond_1

    .line 105
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->requestFocus(I)Z

    .line 107
    :cond_1
    return-void

    .line 97
    .end local v0           #hasFocus:Z
    :cond_2
    if-gez p1, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    goto :goto_0

    :cond_3
    move v0, v2

    .line 100
    goto :goto_1
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 287
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 288
    return-void
.end method

.method public setInAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "inAnimation"

    .prologue
    .line 250
    iput-object p1, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    .line 251
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 300
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 301
    return-void
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "outAnimation"

    .prologue
    .line 274
    iput-object p1, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    .line 275
    return-void
.end method

.method public showNext()V
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 121
    return-void
.end method

.method showOnly(I)V
    .locals 7
    .parameter "childIndex"

    .prologue
    const/4 v6, 0x0

    .line 138
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v2

    .line 139
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_6

    .line 140
    invoke-virtual {p0, v3}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 141
    .local v1, child:Landroid/view/View;
    iget-boolean v4, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    if-eqz v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .line 142
    .local v0, checkForFirst:Z
    :goto_1
    if-ne v3, p1, :cond_3

    .line 143
    if-eqz v0, :cond_1

    iget-object v4, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_1

    .line 144
    iget-object v4, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    :cond_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iput-boolean v6, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 139
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #checkForFirst:Z
    :cond_2
    move v0, v6

    .line 141
    goto :goto_1

    .line 149
    .restart local v0       #checkForFirst:Z
    :cond_3
    if-eqz v0, :cond_5

    iget-object v4, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 150
    iget-object v4, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    :cond_4
    :goto_3
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 151
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    if-ne v4, v5, :cond_4

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_3

    .line 156
    .end local v0           #checkForFirst:Z
    .end local v1           #child:Landroid/view/View;
    :cond_6
    return-void
.end method

.method public showPrevious()V
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 128
    return-void
.end method
