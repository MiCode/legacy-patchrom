.class Lcom/motorola/blur/setup/ConnectionSetupActivity$1;
.super Landroid/os/Handler;
.source "ConnectionSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ConnectionSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ConnectionSetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 107
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    #getter for: Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->access$000(Lcom/motorola/blur/setup/ConnectionSetupActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    if-nez v4, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v6, :cond_2

    .line 111
    const/16 v0, 0x64

    .line 112
    .local v0, PROGRESS_DELAY:I
    const/16 v3, 0xa

    .line 113
    .local v3, step:I
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    iget-object v4, v4, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/motorola/blur/setup/SetupProgressDialog;->incrementProgressBy(I)V

    .line 114
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    iget-object v4, v4, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v4}, Lcom/motorola/blur/setup/SetupProgressDialog;->getProgress()I

    move-result v4

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_2

    .line 115
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 116
    .local v2, msg1:Landroid/os/Message;
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    #getter for: Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->access$100(Lcom/motorola/blur/setup/ConnectionSetupActivity;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 121
    .end local v0           #PROGRESS_DELAY:I
    .end local v2           #msg1:Landroid/os/Message;
    .end local v3           #step:I
    :cond_2
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    iget-object v5, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    #getter for: Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->access$000(Lcom/motorola/blur/setup/ConnectionSetupActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    #setter for: Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4, v7}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->access$002(Lcom/motorola/blur/setup/ConnectionSetupActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 124
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    invoke-virtual {v4, v6}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->dismissDialog(I)V

    .line 125
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    invoke-virtual {v4, v6}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->removeDialog(I)V

    .line 126
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    iput-object v7, v4, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 128
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    .line 129
    .local v1, callBack:Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 130
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
