.class Lcom/android/settings/wifi/WifiDirectProgressDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDirectProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiDirectProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDirectProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const v4, 0x7f08018d

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, action:Ljava/lang/String;
    const-string v1, "WifiDirectProgressDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v1, "android.net.wifidirect.DIRECT_PEER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifidirect.DIRECT_GO_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    const v2, 0x7f08018a

    #calls: Lcom/android/settings/wifi/WifiDirectProgressDialog;->showWpsToast(I)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->access$000(Lcom/android/settings/wifi/WifiDirectProgressDialog;I)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    #calls: Lcom/android/settings/wifi/WifiDirectProgressDialog;->dismissProgressDialog()V
    invoke-static {v1}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->access$100(Lcom/android/settings/wifi/WifiDirectProgressDialog;)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->finish()V

    .line 110
    :cond_2
    :goto_0
    return-void

    .line 94
    :cond_3
    const-string v1, "android.net.wifidirect.CREATE_LINK_FAIL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    #calls: Lcom/android/settings/wifi/WifiDirectProgressDialog;->showWpsToast(I)V
    invoke-static {v1, v4}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->access$000(Lcom/android/settings/wifi/WifiDirectProgressDialog;I)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    #calls: Lcom/android/settings/wifi/WifiDirectProgressDialog;->dismissProgressDialog()V
    invoke-static {v1}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->access$100(Lcom/android/settings/wifi/WifiDirectProgressDialog;)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->finish()V

    goto :goto_0

    .line 102
    :cond_5
    const-string v1, "android.net.wifidirect.DHCP_Failure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    #calls: Lcom/android/settings/wifi/WifiDirectProgressDialog;->showWpsToast(I)V
    invoke-static {v1, v4}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->access$000(Lcom/android/settings/wifi/WifiDirectProgressDialog;I)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 105
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 107
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    #calls: Lcom/android/settings/wifi/WifiDirectProgressDialog;->dismissProgressDialog()V
    invoke-static {v1}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->access$100(Lcom/android/settings/wifi/WifiDirectProgressDialog;)V

    goto :goto_0
.end method
