.class Lcom/android/phone/EmergencyCallbackModeExitDialog$1;
.super Ljava/lang/Object;
.source "EmergencyCallbackModeExitDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyCallbackModeExitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 139
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 142
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    const-class v4, Lcom/android/phone/EmergencyCallbackModeService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    #getter for: Lcom/android/phone/EmergencyCallbackModeExitDialog;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->access$000(Lcom/android/phone/EmergencyCallbackModeExitDialog;)Landroid/content/ServiceConnection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 146
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v2, v2, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    if-nez v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v1, v1, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v2, v2, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyCallbackModeService;->getEmergencyCallbackModeTimeout()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmTimeout:J

    .line 161
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v2, v2, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyCallbackModeService;->getEmergencyCallbackModeCallState()Z

    move-result v2

    #setter for: Lcom/android/phone/EmergencyCallbackModeExitDialog;->mInEmergencyCall:Z
    invoke-static {v1, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->access$102(Lcom/android/phone/EmergencyCallbackModeExitDialog;Z)Z

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    #getter for: Lcom/android/phone/EmergencyCallbackModeExitDialog;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->access$000(Lcom/android/phone/EmergencyCallbackModeExitDialog;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->unbindService(Landroid/content/ServiceConnection;)V

    .line 168
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v1, v1, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/EmergencyCallbackModeExitDialog$1$1;

    invoke-direct {v2, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$1$1;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void

    .line 151
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 152
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "ECM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmergencyCallbackModeExitDialog InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
