.class public Lcom/android/phone/TimerToast;
.super Landroid/app/Dialog;
.source "TimerToast.java"


# static fields
.field private static final DISMISS_TOAST:I = 0x1


# instance fields
.field private mDuration:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/TimerToast;->mDuration:I

    .line 37
    new-instance v0, Lcom/android/phone/TimerToast$1;

    invoke-direct {v0, p0}, Lcom/android/phone/TimerToast$1;-><init>(Lcom/android/phone/TimerToast;)V

    iput-object v0, p0, Lcom/android/phone/TimerToast;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "duration"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/TimerToast;->mDuration:I

    .line 37
    new-instance v0, Lcom/android/phone/TimerToast$1;

    invoke-direct {v0, p0}, Lcom/android/phone/TimerToast$1;-><init>(Lcom/android/phone/TimerToast;)V

    iput-object v0, p0, Lcom/android/phone/TimerToast;->mHandler:Landroid/os/Handler;

    .line 56
    iput p2, p0, Lcom/android/phone/TimerToast;->mDuration:I

    .line 57
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/phone/TimerToast;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 63
    .local v0, win:Landroid/view/Window;
    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 64
    const/high16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 65
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/TimerToast;->setCancelable(Z)V

    .line 66
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/phone/TimerToast;->dismiss()V

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 71
    iget v0, p0, Lcom/android/phone/TimerToast;->mDuration:I

    if-lez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/phone/TimerToast;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/phone/TimerToast;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    :cond_0
    return-void
.end method
