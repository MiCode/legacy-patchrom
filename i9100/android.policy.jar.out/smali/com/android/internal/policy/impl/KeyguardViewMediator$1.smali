.class Lcom/android/internal/policy/impl/KeyguardViewMediator$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 745
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 748
    const-string v2, "seq"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 753
    .local v1, sequence:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 756
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$102(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 758
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 782
    .end local v1           #sequence:I
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 761
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$302(Lcom/android/internal/policy/impl/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;

    .line 763
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 771
    const-string v2, "KeyguardViewMediator"

    const-string v3, "screen is off and call ended, let\'s make sure the keyguard is showing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls:Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBar()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 775
    :cond_2
    const-string v2, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 776
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 777
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 779
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0
.end method
