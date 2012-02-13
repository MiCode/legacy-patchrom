.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mSavedUcb:Lcom/android/server/MountService$UnmountCallBack;

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "l"

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mSavedUcb:Lcom/android/server/MountService$UnmountCallBack;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v7, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "MountService"

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/MountService$UnmountCallBack;

    .local v5, ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v6, v5, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    invoke-static {}, Landroid/os/MotoEnvironment;->getExternalAppInstallDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    if-nez v6, :cond_0

    iput-boolean v9, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    iget-object v6, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;
    invoke-static {v6}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Lcom/android/server/PackageManagerService;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    iput-object v5, p0, Lcom/android/server/MountService$MountServiceHandler;->mSavedUcb:Lcom/android/server/MountService$UnmountCallBack;

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v5           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_1
    const-string v6, "activity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .local v0, ams:Lcom/android/server/am/ActivityManagerService;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/MountService$UnmountCallBack;

    .restart local v5       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/MountService$MountServiceHandler;->mSavedUcb:Lcom/android/server/MountService$UnmountCallBack;

    iput-boolean v8, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    :cond_1
    iget-object v3, v5, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .local v3, path:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, done:Z
    iget-boolean v6, v5, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    if-nez v6, :cond_3

    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    iget v6, v5, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    if-ge v6, v7, :cond_7

    const-string v6, "MountService"

    const-string v6, "Retrying to kill storage users again"

    invoke-static {v11, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v5, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    iget-object v6, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x1e

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v6, v3}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v4

    .local v4, pids:[I
    if-eqz v4, :cond_4

    array-length v6, v4

    if-nez v6, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const-string v6, "unmount media"

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;)Z

    move-result v2

    .local v2, killed:Z
    iget-object v6, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v6, v3}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_6

    array-length v6, v4

    if-eqz v6, :cond_6

    if-nez v2, :cond_2

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .end local v2           #killed:Z
    .end local v4           #pids:[I
    :cond_7
    iget v6, v5, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    if-lt v6, v7, :cond_8

    const-string v6, "MountService"

    const-string v6, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static {v11, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v6, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v0           #ams:Lcom/android/server/am/ActivityManagerService;
    .end local v1           #done:Z
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/MountService$UnmountCallBack;

    .restart local v5       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    invoke-virtual {v5}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_0

    .end local v5           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_3
    iget-object v6, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mCmdQueue:Lcom/android/server/MountService$ShareUnshareCmdQueue;
    invoke-static {v6}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Lcom/android/server/MountService$ShareUnshareCmdQueue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/MountService$ShareUnshareCmdQueue;->realExec()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
