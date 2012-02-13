.class Lcom/android/phone/CallNotifier$PhoneAutoAnswerNotifier;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneAutoAnswerNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 3539
    iput-object p1, p0, Lcom/android/phone/CallNotifier$PhoneAutoAnswerNotifier;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "CallNotifier"

    .line 3541
    iget-object v3, p0, Lcom/android/phone/CallNotifier$PhoneAutoAnswerNotifier;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v5

    .line 3542
    .local v2, hasRingingCall:Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallNotifier$PhoneAutoAnswerNotifier;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v5

    .line 3543
    .local v0, hasActiveCall:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallNotifier$PhoneAutoAnswerNotifier;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v5

    .line 3544
    .local v1, hasHoldingCall:Z
    :goto_2
    const-string v3, "CallNotifier"

    const-string v3, "[auto_answer] run"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 3546
    const-string v3, "CallNotifier"

    const-string v3, "[auto_answer] answering"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    iget-object v3, p0, Lcom/android/phone/CallNotifier$PhoneAutoAnswerNotifier;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 3551
    :goto_3
    return-void

    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v2           #hasRingingCall:Z
    :cond_0
    move v2, v4

    .line 3541
    goto :goto_0

    .restart local v2       #hasRingingCall:Z
    :cond_1
    move v0, v4

    .line 3542
    goto :goto_1

    .restart local v0       #hasActiveCall:Z
    :cond_2
    move v1, v4

    .line 3543
    goto :goto_2

    .line 3549
    .restart local v1       #hasHoldingCall:Z
    :cond_3
    const-string v3, "CallNotifier"

    const-string v3, "[auto_answer] no-op"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
