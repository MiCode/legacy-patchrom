.class Lcom/android/server/BackupManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, replacing:Z
    const/4 v1, 0x0

    .local v1, added:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .local v3, extras:Landroid/os/Bundle;
    const/4 v6, 0x0

    .local v6, pkgList:[Ljava/lang/String;
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .local v9, uri:Landroid/net/Uri;
    if-nez v9, :cond_2

    .end local v9           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .restart local v9       #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .local v7, pkgName:Ljava/lang/String;
    if-eqz v7, :cond_3

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    .end local v6           #pkgList:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v7, v6, v10

    .restart local v6       #pkgList:[Ljava/lang/String;
    :cond_3
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v10, "android.intent.extra.REPLACING"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .end local v7           #pkgName:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_4
    :goto_1
    if-eqz v6, :cond_1

    array-length v10, v6

    if-eqz v10, :cond_1

    if-eqz v1, :cond_9

    iget-object v10, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v10

    move-object v2, v6

    .local v2, arr$:[Ljava/lang/String;
    :try_start_0
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_8

    aget-object v7, v2, v4

    .restart local v7       #pkgName:Ljava/lang/String;
    if-eqz v8, :cond_7

    iget-object v11, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v11, v7}, Lcom/android/server/BackupManagerService;->updatePackageParticipantsLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_5
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v1, 0x1

    const-string v10, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_6
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v1, 0x0

    const-string v10, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #pkgName:Ljava/lang/String;
    :cond_7
    :try_start_1
    iget-object v11, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v11, v7}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked(Ljava/lang/String;)V

    goto :goto_3

    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_8
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_9
    if-nez v8, :cond_1

    iget-object v10, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v10

    move-object v2, v6

    .restart local v2       #arr$:[Ljava/lang/String;
    :try_start_3
    array-length v5, v2

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_4
    if-ge v4, v5, :cond_a

    aget-object v7, v2, v4

    .restart local v7       #pkgName:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v11, v7}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLocked(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v7           #pkgName:Ljava/lang/String;
    :cond_a
    monitor-exit v10

    goto :goto_0

    .end local v4           #i$:I
    .end local v5           #len$:I
    :catchall_1
    move-exception v11

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11
.end method
