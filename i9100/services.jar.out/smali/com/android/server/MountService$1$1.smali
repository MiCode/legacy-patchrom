.class Lcom/android/server/MountService$1$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-string v12, "MountService"

    .line 719
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v7}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)V

    .line 720
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, path:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 723
    .local v6, state:Ljava/lang/String;
    const-string v7, "unmounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 724
    iget-object v7, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const-string v8, "booting"

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v7, v1, v8}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 725
    .local v2, rc:I
    if-eqz v2, :cond_0

    .line 726
    const-string v7, "MountService"

    const-string v8, "First SD Card :: Boot-time mount failed (%d)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    .end local v2           #rc:I
    :cond_0
    :goto_0
    sget-boolean v7, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v7, :cond_5

    .line 739
    const/4 v3, 0x0

    .local v3, retry:I
    :goto_1
    const/4 v7, 0x5

    if-ge v3, v7, :cond_4

    .line 740
    iget-object v7, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 741
    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 742
    const-string v7, "MountService"

    const-string v8, "Second SD Card : %s waiting first sdcard mounted (%s) "

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 739
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 728
    .end local v3           #retry:I
    :cond_2
    const-string v7, "shared"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 733
    iget-object v7, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x7

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v7, v8, v1, v9, v10}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 775
    .end local v1           #path:Ljava/lang/String;
    .end local v6           #state:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 776
    .local v0, ex:Ljava/lang/Exception;
    const-string v7, "MountService"

    const-string v7, "Boot-time mount exception"

    invoke-static {v12, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void

    .line 748
    .restart local v1       #path:Ljava/lang/String;
    .restart local v3       #retry:I
    .restart local v6       #state:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 749
    .local v4, secondPath:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 753
    .local v5, secondState:Ljava/lang/String;
    const-string v7, "unmounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 754
    iget-object v7, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const-string v8, "booting"

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v7, v4, v8}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 755
    .restart local v2       #rc:I
    if-eqz v2, :cond_5

    .line 756
    const-string v7, "MountService"

    const-string v8, "Second SD Card :: Boot-time mount failed (%d)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .end local v2           #rc:I
    .end local v3           #retry:I
    .end local v4           #secondPath:Ljava/lang/String;
    .end local v5           #secondState:Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v7}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 771
    iget-object v7, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v8, 0x1

    #calls: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static {v7, v8}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Z)V

    .line 772
    iget-object v7, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v8, 0x0

    #setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v7, v8}, Lcom/android/server/MountService;->access$1202(Lcom/android/server/MountService;Z)Z

    goto :goto_2

    .line 758
    .restart local v3       #retry:I
    .restart local v4       #secondPath:Ljava/lang/String;
    .restart local v5       #secondState:Ljava/lang/String;
    :cond_6
    const-string v7, "shared"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 763
    iget-object v7, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x7

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v7, v8, v4, v9, v10}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
