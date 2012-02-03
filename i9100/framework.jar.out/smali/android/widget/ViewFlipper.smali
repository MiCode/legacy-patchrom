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

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 45
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 46
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 48
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 49
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 50
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 51
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    .line 69
    new-instance v0, Landroid/widget/ViewFlipper$1;

    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v0, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    iput v2, p0, Landroid/widget/ViewFlipper;->FLIP_MSG:I

    .line 189
    new-instance v0, Landroid/widget/ViewFlipper$2;

    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper$2;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v0, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    .line 55
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

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput v4, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 46
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 48
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 49
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 50
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 51
    iput-boolean v3, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    .line 69
    new-instance v1, Landroid/widget/ViewFlipper$1;

    invoke-direct {v1, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v1, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    iput v3, p0, Landroid/widget/ViewFlipper;->FLIP_MSG:I

    .line 189
    new-instance v1, Landroid/widget/ViewFlipper$2;

    invoke-direct {v1, p0}, Landroid/widget/ViewFlipper$2;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v1, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    .line 60
    sget-object v1, Lcom/android/internal/R$styleable;->ViewFlipper:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 64
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method

.method static synthetic access$002(Landroid/widget/ViewFlipper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/ViewFlipper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/ViewFlipper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/ViewFlipper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    return v0
.end method

.method private updateRunning()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 147
    iget-boolean v2, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    if-eqz v2, :cond_1

    move v1, v3

    .line 148
    .local v1, running:Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    if-eq v1, v2, :cond_0

    .line 149
    if-eqz v1, :cond_2

    .line 150
    iget v2, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v2}, Landroid/widget/ViewFlipper;->showOnly(I)V

    .line 151
    iget-object v2, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 152
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    iget v3, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 156
    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 162
    :cond_0
    return-void

    .line 147
    .end local v1           #running:Z
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 154
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
    .line 184
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public isFlipping()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onAttachedToWindow()V

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 97
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onDetachedFromWindow()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 104
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 106
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->onWindowVisibilityChanged(I)V

    .line 111
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 112
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 113
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoStart(Z)V
    .locals 0
    .parameter "autoStart"

    .prologue
    .line 176
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 177
    return-void
.end method

.method public setFlipInterval(I)V
    .locals 0
    .parameter "milliseconds"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 123
    iput p1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 124
    return-void
.end method

.method public startFlipping()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 131
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 132
    return-void
.end method

.method public stopFlipping()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 139
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 140
    return-void
.end method
