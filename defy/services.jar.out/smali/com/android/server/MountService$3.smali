.class Lcom/android/server/MountService$3;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    .local v9, path:Ljava/lang/String;
    const-string v11, "removed"

    .local v11, state:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v17

    const-string v18, "volume list"

    const/16 v19, 0x6e

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .local v13, vols:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    move-object v0, v13

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    #setter for: Lcom/android/server/MountService;->mExternalPaths:[Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/MountService;->access$802(Lcom/android/server/MountService;[Ljava/lang/String;)[Ljava/lang/String;

    const/4 v15, 0x0

    .local v15, volumeIndex:I
    move-object v3, v13

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move/from16 v16, v15

    .end local v15           #volumeIndex:I
    .local v16, volumeIndex:I
    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v14, v3, v7

    .local v14, volstr:Ljava/lang/String;
    const-string v17, " "

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .local v12, tok:[Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v9, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/MountService;->mExternalPaths:[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v17

    add-int/lit8 v15, v16, 0x1

    .end local v16           #volumeIndex:I
    .restart local v15       #volumeIndex:I
    aput-object v9, v17, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/MountService;->mLegacyState:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v17

    const-string v18, "removed"

    move-object/from16 v0, v17

    move-object v1, v9

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x2

    aget-object v17, v12, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .local v10, st:I
    if-nez v10, :cond_1

    const-string v11, "removed"

    :goto_1
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    move-object v2, v11

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    .end local v15           #volumeIndex:I
    .restart local v16       #volumeIndex:I
    goto :goto_0

    .end local v16           #volumeIndex:I
    .restart local v15       #volumeIndex:I
    :cond_1
    const/16 v17, 0x1

    move v0, v10

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    const-string v11, "unmounted"

    goto :goto_1

    :cond_2
    const/16 v17, 0x4

    move v0, v10

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    const-string v11, "mounted"

    const-string v17, "MountService"

    const-string v18, "Media already mounted on daemon connection"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #st:I
    .end local v12           #tok:[Ljava/lang/String;
    .end local v13           #vols:[Ljava/lang/String;
    .end local v14           #volstr:Ljava/lang/String;
    .end local v15           #volumeIndex:I
    :catch_0
    move-exception v17

    move-object/from16 v5, v17

    .local v5, e:Ljava/lang/Exception;
    const-string v17, "MountService"

    const-string v18, "Error processing initial volume state"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    const-string v18, "removed"

    move-object/from16 v0, v17

    move-object v1, v9

    move-object/from16 v2, v18

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .end local v5           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    const-string v18, "ums"

    #calls: Lcom/android/server/MountService;->doGetShareMethodAvailable(Ljava/lang/String;)Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;Ljava/lang/String;)Z

    move-result v4

    .local v4, avail:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    const-string v18, "ums"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move v2, v4

    #calls: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4           #avail:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/android/server/MountService;->mReady:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/MountService;->access$2202(Lcom/android/server/MountService;Z)Z

    return-void

    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v10       #st:I
    .restart local v12       #tok:[Ljava/lang/String;
    .restart local v13       #vols:[Ljava/lang/String;
    .restart local v14       #volstr:Ljava/lang/String;
    .restart local v15       #volumeIndex:I
    :cond_4
    const/16 v17, 0x7

    move v0, v10

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    :try_start_2
    const-string v11, "shared"

    const-string v17, "MountService"

    const-string v18, "Media shared on daemon connection"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    new-instance v17, Ljava/lang/Exception;

    const-string v18, "Unexpected state %s,%d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v9, v19, v20

    const/16 v20, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #st:I
    .end local v12           #tok:[Ljava/lang/String;
    .end local v13           #vols:[Ljava/lang/String;
    .end local v14           #volstr:Ljava/lang/String;
    .end local v15           #volumeIndex:I
    :catch_1
    move-exception v17

    move-object/from16 v6, v17

    .local v6, ex:Ljava/lang/Exception;
    const-string v17, "MountService"

    const-string v18, "Failed to get share availability"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
