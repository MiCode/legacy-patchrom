.class Landroid/media/AudioService$MediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 2973
    iput-object p1, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2973
    invoke-direct {p0, p1}, Landroid/media/AudioService$MediaButtonBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v7, "android.intent.action.MEDIA_BUTTON"

    .line 2976
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2977
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3012
    :cond_0
    :goto_0
    return-void

    .line 2980
    :cond_1
    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 2981
    .local v2, event:Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    .line 2985
    invoke-static {}, Landroid/media/AudioService;->access$5500()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2986
    const/4 v3, 0x0

    .line 2988
    .local v3, isIdle:Z
    :try_start_0
    const-string/jumbo v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 2989
    .local v4, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2993
    .end local v4           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    :goto_1
    :try_start_1
    iget-object v7, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v7}, Landroid/media/AudioService;->access$5600(Landroid/media/AudioService;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v7}, Landroid/media/AudioService;->getMode()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v7}, Landroid/media/AudioService;->getMode()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v7}, Landroid/media/AudioService;->getMode()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v7}, Landroid/media/AudioService;->getMode()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    if-nez v3, :cond_4

    .line 2996
    :cond_3
    monitor-exit v6

    goto :goto_0

    .line 2998
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 2990
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 2991
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "AudioService"

    const-string v8, "Couldn\'t connect to phone service"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2998
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2999
    iget-object v6, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v6}, Landroid/media/AudioService;->access$5900(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v7

    monitor-enter v7

    .line 3000
    :try_start_3
    iget-object v6, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v6}, Landroid/media/AudioService;->access$5900(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Stack;->empty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 3002
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3003
    .local v5, targetedIntent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3004
    iget-object v6, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v6}, Landroid/media/AudioService;->access$5900(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v6, v6, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3006
    invoke-virtual {p0}, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->abortBroadcast()V

    .line 3008
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3010
    .end local v5           #targetedIntent:Landroid/content/Intent;
    :cond_5
    monitor-exit v7

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method
