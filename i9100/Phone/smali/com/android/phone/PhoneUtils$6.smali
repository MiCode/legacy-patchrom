.class final Lcom/android/phone/PhoneUtils$6;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;I)Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 3472
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 3473
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 3474
    const-string v2, "onCompletion : excuted "

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 3477
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3478
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3479
    const-string v2, " start videocall ringbacktone"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 3481
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v1, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 3482
    .local v1, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->sendPlayRingBackTone()V

    .line 3485
    .end local v1           #notifier:Lcom/android/phone/CallNotifier;
    :cond_1
    return-void
.end method
