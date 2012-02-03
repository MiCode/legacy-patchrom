.class public Landroid/widget/ZoomControls;
.super Landroid/widget/LinearLayout;
.source "ZoomControls.java"


# instance fields
.field private final mZoomIn:Landroid/widget/ZoomButton;

.field private final mZoomOut:Landroid/widget/ZoomButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ZoomControls;->setFocusable(Z)V

    .line 47
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090075

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    const v1, 0x1020264

    invoke-virtual {p0, v1}, Landroid/widget/ZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ZoomButton;

    iput-object v1, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    .line 53
    const v1, 0x1020263

    invoke-virtual {p0, v1}, Landroid/widget/ZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ZoomButton;

    iput-object v1, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    .line 54
    return-void
.end method

.method private fade(IFF)V
    .locals 3
    .parameter "visibility"
    .parameter "startAlpha"
    .parameter "endAlpha"

    .prologue
    .line 91
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 92
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/ZoomControls;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 95
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Landroid/widget/ZoomButton;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Landroid/widget/ZoomButton;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 87
    const/16 v0, 0x8

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ZoomControls;->fade(IFF)V

    .line 88
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public setIsZoomInEnabled(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setEnabled(Z)V

    .line 99
    return-void
.end method

.method public setIsZoomOutEnabled(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setEnabled(Z)V

    .line 103
    return-void
.end method

.method public setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public setZoomSpeed(J)V
    .locals 1
    .parameter "speed"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomButton;->setZoomSpeed(J)V

    .line 70
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomButton;->setZoomSpeed(J)V

    .line 71
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ZoomControls;->fade(IFF)V

    .line 84
    return-void
.end method
