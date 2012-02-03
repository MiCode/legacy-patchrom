.class Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;
.super Landroid/content/BroadcastReceiver;
.source "StkBIPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/stk/StkBIPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 135
    const-string v1, ">>>>>>>>>> BROADCAST EVENT FROM STK BIP MANAGER <<<<<<<<<<"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->access$000(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->isListening()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent receiver called with not listening : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->access$000(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->getState()Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string/jumbo v1, "noConnectivity"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 144
    .local v0, noConnectivity:Z
    if-eqz v0, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->access$000(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->setState(Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;)V

    .line 150
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->access$000(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-result-object v2

    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->setNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->access$000(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-result-object v2

    const-string/jumbo v1, "otherNetwork"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->setOtherNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->access$000(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-result-object v1

    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->setReason(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->access$000(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-result-object v1

    const-string v2, "isFailover"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->setFailover(Z)V

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive(): mNetworkInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->access$000(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOtherNetworkInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->access$000(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->getOtherNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "[none]"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->access$000(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->getState()Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->access$000(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->notifyHandler()V

    goto/16 :goto_0

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->access$000(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;->CONNECTED:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->setState(Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;)V

    goto/16 :goto_1

    .line 159
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->access$000(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->getOtherNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " noConn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
