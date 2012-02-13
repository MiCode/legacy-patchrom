.class public Landroid/widget/ViewFlipper;
.super Landroid/widget/ViewAnimator;
.source "ViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0xbb8

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private final FLIP_MSG:I

.field private mAutoStart:Z

.field private mFlipInterval:I

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistReceiver:Z

.field private mRunning:Z

.field private mStarted:Z

.field private mUserPresent:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xbb8

    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mRegistReceiver:Z

    new-instance v0, Landroid/widget/ViewFlipper$1;

    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v0, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    iput v2, p0, Landroid/widget/ViewFlipper;->FLIP_MSG:I

    new-instance v0, Landroid/widget/ViewFlipper$2;

    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper$2;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v0, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0xbb8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    iput-boolean v3, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mRegistReceiver:Z

    new-instance v1, Landroid/widget/ViewFlipper$1;

    invoke-direct {v1, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v1, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    iput v3, p0, Landroid/widget/ViewFlipper;->FLIP_MSG:I

    new-instance v1, Landroid/widget/ViewFlipper$2;

    invoke-direct {v1, p0}, Landroid/widget/ViewFlipper$2;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v1, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/internal/R$styleable;->ViewFlipper:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$002(Landroid/widget/ViewFlipper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/ViewFlipper;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/ViewFlipper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/ViewFlipper;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    return v0
.end method

.method private updateRunning()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    iget-boolean v2, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    if-eqz v2, :cond_1

    move v1, v3

    .local v1, running:Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_2

    iget v2, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v2}, Landroid/widget/ViewFlipper;->showOnly(I)V

    iget-object v2, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    iget v3, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    :cond_0
    return-void

    .end local v1           #running:Z
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .restart local v1       #running:Z
    :cond_2
    iget-object v2, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method


# virtual methods
.method public isAutoStart()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public isFlipping()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mRegistReceiver:Z

    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->startFlipping()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/ViewAnimator;->onDetachedFromWindow()V

    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mRegistReceiver:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mRegistReceiver:Z

    :cond_0
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoStart(Z)V
    .locals 0
    .parameter "autoStart"

    .prologue
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    return-void
.end method

.method public setFlipInterval(I)V
    .locals 0
    .parameter "milliseconds"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    return-void
.end method

.method public startFlipping()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    return-void
.end method

.method public stopFlipping()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    return-void
.end method
