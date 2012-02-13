.class Lcom/motorola/blur/setup/SignUpOrLogInActivity$4;
.super Ljava/util/TimerTask;
.source "SignUpOrLogInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/SignUpOrLogInActivity;->sendBOTABroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$4;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$4;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #getter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$800(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    monitor-enter v0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$4;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mRecievedBOTAResponse:Z
    invoke-static {v1, v2}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$102(Lcom/motorola/blur/setup/SignUpOrLogInActivity;Z)Z

    .line 253
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$4;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #getter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$000(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$4;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #getter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$000(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    return-void

    .line 253
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
