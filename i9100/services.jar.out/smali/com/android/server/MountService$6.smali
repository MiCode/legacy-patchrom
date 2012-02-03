.class Lcom/android/server/MountService$6;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V
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
    .line 1618
    iput-object p1, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-string v5, ")"

    const-string v10, "MountService"

    .line 1622
    :try_start_0
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disabling UMS after cable disconnect : enabling ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getUmsEnabling()Z
    invoke-static {v7}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v5, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getUmsEnabling()Z
    invoke-static {v5}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1625
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    .line 1626
    iget-object v5, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getUmsEnabling()Z
    invoke-static {v5}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1632
    .end local v2           #i:I
    :cond_0
    iget-object v5, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    const-string v6, "share"

    #calls: Lcom/android/server/MountService;->isUsbMassStorageEnabled(Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1635
    iget-object v5, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getUmsDisabling()Z
    invoke-static {v5}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1636
    const-string v5, "MountService"

    const-string v6, "notifyShareAvailabilityChange -> skip (disabling ums mode by other process)"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_1
    :goto_1
    return-void

    .line 1627
    .restart local v2       #i:I
    :cond_2
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 1628
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyShareAvailabilityChange -> waiting to finish ums connection..("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1639
    .end local v2           #i:I
    :cond_3
    iget-object v5, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    const/4 v6, 0x1

    #calls: Lcom/android/server/MountService;->setUmsDisabling(Z)V
    invoke-static {v5, v6}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;Z)V

    .line 1640
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1641
    .local v1, firstPath:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    const-string v6, "ums"

    const/4 v7, 0x0

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v5, v1, v6, v7}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1643
    iget-object v5, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v5, v1}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v3

    .local v3, rc:I
    if-eqz v3, :cond_4

    .line 1644
    const-string v5, "MountService"

    const-string v6, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_4
    sget-boolean v5, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v5, :cond_6

    .line 1647
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1648
    .local v4, secondPath:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v5, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "shared"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v5, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "unmounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1650
    :cond_5
    iget-object v5, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    const-string v6, "ums"

    const/4 v7, 0x0

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1652
    iget-object v5, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v5, v4}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6

    .line 1653
    const-string v5, "MountService"

    const-string v6, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    .end local v4           #secondPath:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    const/4 v6, 0x0

    #calls: Lcom/android/server/MountService;->setUmsDisabling(Z)V
    invoke-static {v5, v6}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1659
    .end local v1           #firstPath:Ljava/lang/String;
    .end local v3           #rc:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1660
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "MountService"

    const-string v5, "Failed to mount media on UMS enabled-disconnect"

    invoke-static {v10, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method
