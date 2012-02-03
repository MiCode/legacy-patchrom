.class Lcom/android/phone/InCallScreen$3;
.super Landroid/content/BroadcastReceiver;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const-string v8, "Liveshare BroadcastReceiver : action string = "

    const-string v7, "InCallScreen"

    .line 698
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v3, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 702
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    const-string v5, "android.intent.action.COMMAND_ENDCALL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 703
    iget-object v5, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->internalHangup()V

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    const-string v5, "com.skt.intent.action.AUDIOPATH_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 707
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 709
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_3

    const-string v5, "dev_name"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 710
    .local v1, dev_name:Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_4

    const-string v5, "state"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 712
    .local v4, state:Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 713
    iget-object v5, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "mSKTReceiver: ACTION_SKT_AUDIOPATH_STATE"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 714
    iget-object v5, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSKTReceiver: dev_name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 715
    iget-object v5, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSKTReceiver: state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 718
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 719
    const-string v5, "speaker"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 720
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/phone/PhoneInfoSKT;->setSKTTMapIncomingSPKOn(Z)V

    goto :goto_0

    .end local v1           #dev_name:Ljava/lang/String;
    .end local v4           #state:Ljava/lang/String;
    :cond_3
    move-object v1, v6

    .line 709
    goto :goto_1

    .restart local v1       #dev_name:Ljava/lang/String;
    :cond_4
    move-object v4, v6

    .line 710
    goto :goto_2

    .line 727
    .end local v1           #dev_name:Ljava/lang/String;
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_5
    const-string v5, "com.skt.skaf.ims.aoa.intent.action.ENDCALL_LIVESHARE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 728
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "InCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Liveshare BroadcastReceiver : action string = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_6
    iget-object v5, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->internalHangup()V

    goto/16 :goto_0

    .line 740
    :cond_7
    const-string v5, "com.skt.skaf.ims.aoa.intent.action.EVENT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 741
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "InCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Liveshare BroadcastReceiver : action string = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_8
    const-string v5, "LiveshareOption"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/phone/InCallScreen;->liveshare_option:Z

    .line 743
    const-string v5, "InCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received intent: COMMAND_BROADCAST_EVENT liveshare_option = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/phone/InCallScreen;->liveshare_option:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v5, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    goto/16 :goto_0
.end method
