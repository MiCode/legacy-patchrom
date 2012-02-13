.class Lcom/android/server/MountService$2$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$2;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$2;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-string v12, "MountService"

    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v7, v7, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExternalPaths:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .local v4, path:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v7, v7, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, state:Ljava/lang/String;
    const-string v7, "unmounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v7, v7, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v7, v4}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v5

    .local v5, rc:I
    if-eqz v5, :cond_0

    const-string v7, "MountService"

    const-string v8, "Boot-time mount failed (%d)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5           #rc:I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "shared"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v7, v7, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x7

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v7, v8, v4, v9, v10}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v6           #state:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "MountService"

    const-string v7, "Boot-time mount exception"

    invoke-static {v12, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v7, v7, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v7}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v7, v7, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v8, 0x1

    #calls: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static {v7, v8}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Z)V

    iget-object v7, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v7, v7, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v8, 0x0

    #setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v7, v8}, Lcom/android/server/MountService;->access$1002(Lcom/android/server/MountService;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
