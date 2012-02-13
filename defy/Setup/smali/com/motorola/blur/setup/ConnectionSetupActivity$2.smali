.class Lcom/motorola/blur/setup/ConnectionSetupActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/ConnectionSetupActivity;->registerConnectionChangeReceiver(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

.field final synthetic val$callBack:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ConnectionSetupActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$2;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    iput-object p2, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$2;->val$callBack:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 139
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 140
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 141
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$2;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    #getter for: Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->access$100(Lcom/motorola/blur/setup/ConnectionSetupActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$2;->val$callBack:Ljava/lang/Runnable;

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 143
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$2;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    #getter for: Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->access$100(Lcom/motorola/blur/setup/ConnectionSetupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
