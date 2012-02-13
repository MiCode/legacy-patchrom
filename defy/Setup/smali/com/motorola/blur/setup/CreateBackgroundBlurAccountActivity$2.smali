.class Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "CreateBackgroundBlurAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$2;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$2;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$000(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    monitor-enter v1

    .line 159
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, action:Ljava/lang/String;
    const-string v2, "SilentRegActionAccomplished"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$2;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$200(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    :cond_0
    :goto_0
    monitor-exit v1

    .line 180
    return-void

    .line 167
    :cond_1
    const-string v2, "SilentRegActionTemplyFailed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$2;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$200(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 179
    .end local v0           #action:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 172
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v2, "com.motorola.blur.setup.starttimer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$2;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$200(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$2;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mQASilentLoginReqd:Ljava/lang/Boolean;
    invoke-static {v4}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$100(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/32 v4, 0x2bf20

    :goto_1
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    const-wide/32 v4, 0xea60

    goto :goto_1
.end method
