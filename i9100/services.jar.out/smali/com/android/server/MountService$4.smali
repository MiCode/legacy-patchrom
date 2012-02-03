.class Lcom/android/server/MountService$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-string v4, "inserted"

    const-string v9, "MountService"

    .line 1046
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    const-string v6, "inserted"

    #calls: Lcom/android/server/MountService;->actionStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v4, v5, v6}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1047
    .local v0, Ret:I
    const/16 v4, -0x64

    if-eq v0, v4, :cond_1

    .line 1048
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doMountVolume :: actionStorageAskPermission with = inserted, result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v4, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    const-string v6, "inserted"

    #calls: Lcom/android/server/MountService;->askPermissionFakedState(Ljava/lang/String;Ljava/lang/String;I)I
    invoke-static {v4, v5, v6, v0}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;I)I

    .line 1075
    .end local v0           #Ret:I
    :cond_0
    :goto_0
    return-void

    .line 1054
    .restart local v0       #Ret:I
    :cond_1
    iget-object v4, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->isVolumeStateShared()Z
    invoke-static {v4}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1055
    const-string v4, "MountService"

    const-string v5, "Do not mount %s and prepare SharedVolume Mode"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v4, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    const-string v6, "ums"

    const/4 v7, 0x1

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1072
    .end local v0           #Ret:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1073
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "MountService"

    const-string v4, "Failed to mount media on insertion"

    invoke-static {v9, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1062
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #Ret:I
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v4, 0x6

    if-ge v2, v4, :cond_4

    .line 1063
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;
    invoke-static {v4}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Lcom/android/server/MountService$VolumeList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/MountService$VolumeList;->getPendingState(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1064
    const-string v4, "MountService"

    const-string v5, "path : %s waiting over pending state "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 1062
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1069
    :cond_4
    iget-object v4, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v3

    .local v3, rc:I
    if-eqz v3, :cond_0

    .line 1070
    const-string v4, "MountService"

    const-string v5, "Insertion mount failed (%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
