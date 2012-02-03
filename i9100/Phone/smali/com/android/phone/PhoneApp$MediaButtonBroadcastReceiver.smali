.class Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field private isLongPress:Z

.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 1
    .parameter

    .prologue
    .line 1873
    iput-object p1, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->isLongPress:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1873
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x4f

    const/4 v4, 0x1

    const-string v6, "PhoneApp"

    .line 1884
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 1885
    .local v0, event:Landroid/view/KeyEvent;
    const-string v2, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaButtonBroadcastReceiver.onReceive()...  event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v2, v5, :cond_1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 1891
    iget-object v2, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_1

    .line 1892
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1893
    const-string v2, "PhoneApp"

    const-string v2, "MediaButtonBroadcastReceiver.onReceive()... Long pressed "

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iput-boolean v4, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->isLongPress:Z

    .line 1897
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->abortBroadcast()V

    .line 1901
    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v2, v5, :cond_5

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 1905
    iget-object v2, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_4

    .line 1906
    iget-boolean v2, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->isLongPress:Z

    if-eqz v2, :cond_7

    .line 1908
    iget-object v2, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_6

    .line 1909
    iget-object v2, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 1924
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1925
    iget-object v2, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->updateInCallScreenTouchUi()V

    .line 1927
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->abortBroadcast()V

    .line 1929
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->isLongPress:Z

    .line 1931
    :cond_5
    return-void

    .line 1912
    :cond_6
    iget-object v2, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1913
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eq v2, v4, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 1917
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 1921
    .end local v1           #foregroundCall:Lcom/android/internal/telephony/Call;
    :cond_7
    iget-object v2, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method
