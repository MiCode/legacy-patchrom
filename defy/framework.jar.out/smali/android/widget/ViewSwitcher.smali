.class public Landroid/widget/ViewSwitcher;
.super Landroid/widget/ViewAnimator;
.source "ViewSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ViewSwitcher$ViewFactory;
    }
.end annotation


# instance fields
.field mFactory:Landroid/widget/ViewSwitcher$ViewFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private obtainView()Landroid/view/View;
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/widget/ViewSwitcher;->mFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    invoke-interface {v2}, Landroid/widget/ViewSwitcher$ViewFactory;->makeView()Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t add more than 2 views to a ViewSwitcher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getNextView()Landroid/view/View;
    .locals 2

    .prologue
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .local v0, which:I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .end local v0           #which:I
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    iput-object p1, p0, Landroid/widget/ViewSwitcher;->mFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    invoke-direct {p0}, Landroid/widget/ViewSwitcher;->obtainView()Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/ViewSwitcher;->obtainView()Landroid/view/View;

    return-void
.end method
