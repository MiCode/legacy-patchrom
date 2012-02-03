.class public Lcom/android/settings/deviceinfo/Memory;
.super Landroid/preference/PreferenceActivity;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private mMountService:Landroid/os/storage/IMountService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSdAvail:Landroid/preference/Preference;

.field private mSdFormat:Landroid/preference/Preference;

.field private mSdInternalAvail:Landroid/preference/Preference;

.field private mSdInternalFormat:Landroid/preference/Preference;

.field private mSdInternalMountPreferenceGroup:Landroid/preference/PreferenceGroup;

.field mSdInternalMountToggleAdded:Z

.field private mSdInternalSize:Landroid/preference/Preference;

.field private mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

.field private mSdMountToggle:Landroid/preference/Preference;

.field mSdMountToggleAdded:Z

.field private mSdSize:Landroid/preference/Preference;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdInternalMountToggleAdded:Z

    .line 114
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 116
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 171
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$1;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 290
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$2;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Memory;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/Memory;->doUnmount(Ljava/lang/String;Z)V

    return-void
.end method

.method private doUnmount(Ljava/lang/String;Z)V
    .locals 5
    .parameter "extStoragePath"
    .parameter "force"

    .prologue
    const-string v4, "Memory"

    .line 341
    const-string v2, "Memory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doUnmount :: extStoragePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", force = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 343
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-nez v1, :cond_1

    .line 344
    const-string v2, "Memory"

    const-string v2, "doUnmount() mountService == null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 351
    const v2, 0x7f0802ab

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 353
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 354
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0802ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0802ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 356
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 367
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0

    .line 357
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const v2, 0x7f0802aa

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 361
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 4
    .parameter "size"

    .prologue
    .line 637
    const-string v0, "Memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatSize :: size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/32 v2, 0x100000

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    const-string v1, "Memory"

    .line 214
    monitor-enter p0

    :try_start_0
    const-string v1, "Memory"

    const-string v2, "getMountService ::"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 216
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 217
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 218
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 223
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 220
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "Memory"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage(Ljava/lang/String;)Z
    .locals 9
    .parameter "extStoragePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 380
    const-string v4, "Memory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasAppsAccessingStorage :: extStoragePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 382
    .local v2, mountService:Landroid/os/storage/IMountService;
    if-nez v2, :cond_0

    move v4, v7

    .line 393
    :goto_0
    return v4

    .line 384
    :cond_0
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v3

    .line 385
    .local v3, stUsers:[I
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    move v4, v8

    .line 386
    goto :goto_0

    .line 388
    :cond_1
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 389
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v1

    .line 390
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    move v4, v8

    .line 391
    goto :goto_0

    :cond_2
    move v4, v7

    .line 393
    goto :goto_0
.end method

.method private mount(Ljava/lang/String;)V
    .locals 6
    .parameter "extStoragePath"

    .prologue
    const-string v5, "Memory"

    .line 427
    const-string v2, "Memory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mount :: extStoragePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 430
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_2

    .line 433
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 435
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0802ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0802af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 437
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 446
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "Memory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in handling mount service, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string v2, "Memory"

    const-string v3, "Mount service is null, can\'t mount"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private showDialogInner(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 373
    const-string v0, "Memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialogInner :: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->showDialog(I)V

    .line 376
    return-void
.end method

.method private unmount(Ljava/lang/String;)V
    .locals 4
    .parameter "extStoragePath"

    .prologue
    const-string v3, "Memory"

    .line 398
    const-string v1, "Memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unmount :: extStoragePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->hasAppsAccessingStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    const-string v1, "Memory"

    const-string v2, "Do have storage users accessing media"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    const-string v1, "Memory"

    const-string v2, "unmount :: doUnmount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/deviceinfo/Memory;->doUnmount(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 420
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Memory"

    const-string v1, "Is MountService running?"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private updateMemoryStatus()V
    .locals 24

    .prologue
    .line 452
    const-string v20, "Memory"

    const-string v21, "updateMemoryStatus :: "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v14

    .line 456
    .local v14, status:Ljava/lang/String;
    const-string v11, ""

    .line 457
    .local v11, readOnly:Ljava/lang/String;
    const-string v20, "mounted_ro"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 458
    const-string v14, "mounted"

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f0802a1

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 460
    const-string v20, "Memory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateMemoryStatus :: status = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", readOnly"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 465
    const-string v20, "Memory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "EXTERNAL updateMemoryStatus :: status = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v20, "mounted"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 467
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovableSd()Z

    move-result v20

    if-nez v20, :cond_1

    .line 470
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 472
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    .line 476
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v10

    .line 477
    .local v10, path:Ljava/io/File;
    new-instance v13, Landroid/os/StatFs;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 478
    .local v13, stat:Landroid/os/StatFs;
    invoke-virtual {v13}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v7, v0

    .line 479
    .local v7, blockSize:J
    invoke-virtual {v13}, Landroid/os/StatFs;->getBlockCount()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 480
    .local v16, totalBlocks:J
    invoke-virtual {v13}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v3, v0

    .line 484
    .local v3, availableBlocks:J
    mul-long v18, v16, v7

    .line 485
    .local v18, totalSpace:J
    mul-long v5, v3, v7

    .line 487
    .local v5, availableSpace:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 489
    const-string v20, "Memory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Storage Path :: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Total space :: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-wide/32 v22, 0x100000

    div-long v22, v18, v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", and Available space :: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-wide/32 v22, 0x100000

    div-long v22, v5, v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f080293

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f080295

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v3           #availableBlocks:J
    .end local v5           #availableSpace:J
    .end local v7           #blockSize:J
    .end local v10           #path:Ljava/io/File;
    .end local v13           #stat:Landroid/os/StatFs;
    .end local v16           #totalBlocks:J
    .end local v18           #totalSpace:J
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v15

    .line 531
    .local v15, statusInternal:Ljava/lang/String;
    const-string v12, ""

    .line 532
    .local v12, readOnlyInternal:Ljava/lang/String;
    const-string v20, "mounted_ro"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 533
    const-string v15, "mounted"

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f0802a1

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 535
    const-string v20, "Memory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateMemoryStatus :: status = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", readOnly"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdInternalFormat:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 541
    const-string v20, "Memory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "INTERNAL updateMemoryStatus :: status = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v20, "mounted"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 552
    const-string v20, "Memory"

    const-string v21, "PATH = Remove Dialog"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 556
    :cond_3
    const-string v20, "mounted"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 557
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v20

    if-nez v20, :cond_4

    .line 568
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 569
    .restart local v10       #path:Ljava/io/File;
    new-instance v13, Landroid/os/StatFs;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 570
    .restart local v13       #stat:Landroid/os/StatFs;
    invoke-virtual {v13}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v7, v0

    .line 571
    .restart local v7       #blockSize:J
    invoke-virtual {v13}, Landroid/os/StatFs;->getBlockCount()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 572
    .restart local v16       #totalBlocks:J
    invoke-virtual {v13}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v3, v0

    .line 576
    .restart local v3       #availableBlocks:J
    mul-long v18, v16, v7

    .line 577
    .restart local v18       #totalSpace:J
    mul-long v5, v3, v7

    .line 579
    .restart local v5       #availableSpace:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdInternalSize:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdInternalAvail:Landroid/preference/Preference;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 581
    const-string v20, "Memory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Storage Path :: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Total space :: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-wide/32 v22, 0x100000

    div-long v22, v18, v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", and Available space :: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-wide/32 v22, 0x100000

    div-long v22, v5, v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 628
    .end local v3           #availableBlocks:J
    .end local v5           #availableSpace:J
    .end local v7           #blockSize:J
    .end local v10           #path:Ljava/io/File;
    .end local v13           #stat:Landroid/os/StatFs;
    .end local v16           #totalBlocks:J
    .end local v18           #totalSpace:J
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    .line 629
    .restart local v10       #path:Ljava/io/File;
    new-instance v13, Landroid/os/StatFs;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 630
    .restart local v13       #stat:Landroid/os/StatFs;
    invoke-virtual {v13}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v7, v0

    .line 631
    .restart local v7       #blockSize:J
    invoke-virtual {v13}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v3, v0

    .line 632
    .restart local v3       #availableBlocks:J
    const-string v20, "memory_internal_avail"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    mul-long v21, v3, v7

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 633
    return-void

    .line 496
    .end local v3           #availableBlocks:J
    .end local v7           #blockSize:J
    .end local v10           #path:Ljava/io/File;
    .end local v12           #readOnlyInternal:Ljava/lang/String;
    .end local v13           #stat:Landroid/os/StatFs;
    .end local v15           #statusInternal:Ljava/lang/String;
    :catch_0
    move-exception v20

    move-object/from16 v9, v20

    .line 500
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v14, "removed"

    .line 501
    goto/16 :goto_0

    .line 504
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0802a0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0802a0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 507
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovableSd()Z

    move-result v20

    if-nez v20, :cond_6

    .line 508
    const-string v20, "unmounted"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 509
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 511
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    .line 516
    :cond_6
    const-string v20, "unmounted"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    const-string v20, "nofs"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    const-string v20, "unmountable"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 518
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f080299

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f08029b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 523
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f080299

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f080297

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 589
    .restart local v12       #readOnlyInternal:Ljava/lang/String;
    .restart local v15       #statusInternal:Ljava/lang/String;
    :catch_1
    move-exception v20

    move-object/from16 v9, v20

    .line 593
    .restart local v9       #e:Ljava/lang/IllegalArgumentException;
    const-string v15, "removed"

    .line 594
    goto/16 :goto_1

    .line 597
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdInternalSize:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0802a0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdInternalAvail:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0802a0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 643
    const-string v0, "Memory"

    const-string v1, "onCancel :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->finish()V

    .line 645
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 125
    const-string v0, "Memory"

    const-string v1, "onCreate ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 129
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 130
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 133
    :cond_0
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    .line 138
    const-string v0, "memory_sd_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    .line 139
    const-string v0, "memory_sd_avail"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    .line 140
    const-string v0, "memory_sd_mount_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    .line 141
    const-string v0, "memory_sd_format"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    .line 143
    const-string v0, "memory_sd"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    .line 146
    const-string v0, "memory_sd_internal_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdInternalSize:Landroid/preference/Preference;

    .line 147
    const-string v0, "memory_sd_internal_avail"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdInternalAvail:Landroid/preference/Preference;

    .line 150
    const-string v0, "memory_sd_internal_format"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdInternalFormat:Landroid/preference/Preference;

    .line 151
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdInternalFormat:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 153
    const-string v0, "memory_sd_internal"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdInternalMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    .line 155
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "id"
    .parameter "args"

    .prologue
    const v5, 0x7f0800dd

    const v4, 0x7f08038b

    const/4 v3, 0x0

    .line 299
    const-string v0, "Memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog :: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    .line 337
    :goto_0
    return-object v0

    .line 302
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802a2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/Memory$3;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Memory$3;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 316
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 321
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802a3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/Memory$4;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Memory$4;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802a5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "Memory"

    const-string v1, "onDestroy ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 209
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 210
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 198
    const-string v0, "Memory"

    const-string v1, "onPause ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const-string v4, "android.intent.action.VIEW"

    const-string v2, "Memory"

    .line 237
    const-string v0, "Memory"

    const-string v0, "onPreferenceTreeClick ::"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "Memory"

    const-string v0, "onPreferenceTreeClick :: mSdMountToggle for unmount"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->unmount(Ljava/lang/String;)V

    :goto_0
    move v0, v3

    .line 287
    :goto_1
    return v0

    .line 248
    :cond_0
    const-string v0, "Memory"

    const-string v0, "onPreferenceTreeClick :: mSdMountToggle for mount"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->mount(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    const-string v0, "Memory"

    const-string v0, "onPreferenceTreeClick :: mSdFormat"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    const-class v1, Lcom/android/settings/MediaFormatSd;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 258
    goto :goto_1

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdInternalFormat:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    const-string v0, "Memory"

    const-string v0, "onPreferenceTreeClick :: mSdInternalFormat"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    const-class v1, Lcom/android/settings/MediaFormat;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 284
    goto :goto_1

    .line 287
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 159
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 162
    const-string v1, "Memory"

    const-string v2, "onResume ::"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/Memory;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V

    .line 169
    return-void
.end method
