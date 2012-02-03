.class public Landroid/os/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# static fields
.field private static final DATA_DIRECTORY:Ljava/io/File; = null

.field public static DIRECTORY_ALARMS:Ljava/lang/String; = null

.field public static DIRECTORY_DCIM:Ljava/lang/String; = null

.field public static DIRECTORY_DOWNLOADS:Ljava/lang/String; = null

.field public static DIRECTORY_MOVIES:Ljava/lang/String; = null

.field public static DIRECTORY_MUSIC:Ljava/lang/String; = null

.field public static DIRECTORY_NOTIFICATIONS:Ljava/lang/String; = null

.field public static DIRECTORY_PICTURES:Ljava/lang/String; = null

.field public static DIRECTORY_PODCASTS:Ljava/lang/String; = null

.field public static DIRECTORY_RINGTONES:Ljava/lang/String; = null

.field private static final DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_SDCARD_ANDROID_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_SDCARD_ANDROID_MEDIA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_SDCARD_DIRECTORY:Ljava/io/File; = null

.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final MEDIA_PENDING:Ljava/lang/String; = "pending"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field private static final ROOT_DIRECTORY:Ljava/io/File; = null

.field private static final SECURE_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final STORAGE_INSTALLED_PACKAGE_DIRECTORYS:[Ljava/io/File; = null

.field private static final SYSTEM_PROPERTY_EFS_ENABLED:Ljava/lang/String; = "persist.security.efs.enabled"

.field private static final TAG:Ljava/lang/String; = "Environment"

.field private static final USBHOST_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

.field private static final USBHOST_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

.field private static final USBHOST_STORAGE_DIRECTORY:Ljava/io/File;

.field private static mMntSvc:Landroid/os/storage/IMountService;

.field private static mUsbSvc:Landroid/os/storage/IUsbStorageService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const-string v8, "EXTERNAL_STORAGE2"

    const-string v7, "EXTERNAL_STORAGE"

    const-string v6, "/mnt/sdcard/external_sd"

    const-string v5, "/mnt/sdcard"

    const-string v4, "Android"

    .line 35
    const-string v0, "ANDROID_ROOT"

    const-string v1, "/system"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->ROOT_DIRECTORY:Ljava/io/File;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    .line 90
    const-string v0, "ANDROID_DATA"

    const-string v1, "/data"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    .line 96
    const-string v0, "ANDROID_SECURE_DATA"

    const-string v1, "/data/secure"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 100
    const-string v0, "EXTERNAL_STORAGE"

    const-string v0, "/mnt/sdcard"

    invoke-static {v7, v5}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 103
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE"

    const-string v2, "/mnt/sdcard"

    invoke-static {v7, v5}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    .line 106
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE"

    const-string v2, "/mnt/sdcard"

    invoke-static {v7, v5}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    .line 111
    const-string v0, "EXTERNAL_STORAGE2"

    const-string v0, "/mnt/sdcard/external_sd"

    invoke-static {v8, v6}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_DIRECTORY:Ljava/io/File;

    .line 114
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE2"

    const-string v2, "/mnt/sdcard/external_sd"

    invoke-static {v8, v6}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    .line 118
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE2"

    const-string v2, "/mnt/sdcard/external_sd"

    invoke-static {v8, v6}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    .line 123
    const-string v0, "USBHOST_STORAGE"

    const-string v1, "/mnt/sdcard/otg_disk"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->USBHOST_STORAGE_DIRECTORY:Ljava/io/File;

    .line 126
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "USBHOST_STORAGE"

    const-string v3, "/mnt/sdcard/usbStorage"

    invoke-static {v2, v3}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->USBHOST_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    .line 129
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "USBHOST_STORAGE"

    const-string v3, "/mnt/sdcard/usbStorage"

    invoke-static {v2, v3}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->USBHOST_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    .line 133
    const-string v0, "DOWNLOAD_CACHE"

    const-string v1, "/cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    .line 208
    const-string v0, "Music"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 220
    const-string v0, "Podcasts"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    .line 232
    const-string v0, "Ringtones"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .line 244
    const-string v0, "Alarms"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    .line 256
    const-string v0, "Notifications"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    .line 264
    const-string v0, "Pictures"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 272
    const-string v0, "Movies"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 282
    const-string v0, "Download"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 289
    const-string v0, "DCIM"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 506
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_DIRECTORY:Ljava/io/File;

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/Environment;->STORAGE_INSTALLED_PACKAGE_DIRECTORYS:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "variableName"
    .parameter "defaultPath"

    .prologue
    .line 563
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDownloadCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 364
    sget-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalMemoryStatus()Z
    .locals 3

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, mounted:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, statusExternal:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    const/4 v0, 0x1

    .line 596
    :goto_0
    return v0

    .line 592
    :cond_0
    const-string/jumbo v1, "unmounted"

    goto :goto_0
.end method

.method public static getExternalStorageAndroidDataDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 324
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 356
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 332
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 348
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 340
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStorageDirectorySd()Ljava/io/File;
    .locals 2

    .prologue
    .line 185
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_DIRECTORY:Ljava/io/File;

    .line 189
    :goto_0
    return-object v0

    .line 188
    :cond_0
    const-string v0, "Environment"

    const-string v1, "getExternalStorageDirectorySd :: invalid call "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getExternalStorageDirectoryUsbHost()Ljava/io/File;
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Landroid/os/Environment;->isUsbHostStorageInsalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Landroid/os/Environment;->USBHOST_STORAGE_DIRECTORY:Ljava/io/File;

    .line 197
    :goto_0
    return-object v0

    .line 196
    :cond_0
    const-string v0, "Environment"

    const-string v1, "getExternalStorageDirectoryUsbHost :: invalid call "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Landroid/os/Environment;->USBHOST_STORAGE_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "type"

    .prologue
    .line 316
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 429
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 430
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 433
    :cond_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 435
    :goto_0
    return-object v1

    .line 434
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 435
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    goto :goto_0
.end method

.method public static getExternalStorageStateSd()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v3, "removed"

    .line 440
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    const-string v1, "Environment"

    const-string v2, "getExternalStorageStateSd :: invalid call "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string/jumbo v1, "removed"

    move-object v1, v3

    .line 452
    :goto_0
    return-object v1

    .line 446
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_1

    .line 447
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 450
    :cond_1
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 451
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 452
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    move-object v1, v3

    goto :goto_0
.end method

.method public static getExternalStorageStateUsbHost()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v3, "removed"

    .line 458
    invoke-static {}, Landroid/os/Environment;->isUsbHostStorageInsalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    const-string v1, "Environment"

    const-string v2, "getExternalStorageStateUsbHost :: invalid call "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string/jumbo v1, "removed"

    move-object v1, v3

    .line 470
    :goto_0
    return-object v1

    .line 464
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_1

    .line 465
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 468
    :cond_1
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 469
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 470
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    move-object v1, v3

    goto :goto_0
.end method

.method public static getExternalStorageStateUsbHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    const-string/jumbo v3, "removed"

    .line 475
    invoke-static {}, Landroid/os/Environment;->isUsbHostStorageInsalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    const-string v1, "Environment"

    const-string v2, "getExternalStorageStateUsbHost :: invalid call "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string/jumbo v1, "removed"

    move-object v1, v3

    .line 487
    :goto_0
    return-object v1

    .line 481
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    if-nez v1, :cond_1

    .line 482
    const-string/jumbo v1, "usbstorage"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IUsbStorageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IUsbStorageService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    .line 485
    :cond_1
    sget-object v1, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    invoke-interface {v1, p0}, Landroid/os/storage/IUsbStorageService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 486
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 487
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    move-object v1, v3

    goto :goto_0
.end method

.method public static getInstalledStorageDirectory()[Ljava/io/File;
    .locals 1

    .prologue
    .line 508
    sget-object v0, Landroid/os/Environment;->STORAGE_INSTALLED_PACKAGE_DIRECTORYS:[Ljava/io/File;

    return-object v0
.end method

.method public static getInstalledStorageState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "Directory"

    .prologue
    .line 513
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 514
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 517
    :cond_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->getAsecVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 519
    :goto_0
    return-object v1

    .line 518
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 519
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    goto :goto_0
.end method

.method public static getInternalMemoryStatus()Z
    .locals 3

    .prologue
    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, mounted:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, statusInternal:Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    const/4 v0, 0x1

    .line 580
    :goto_0
    return v0

    .line 576
    :cond_0
    const-string/jumbo v1, "unmounted"

    goto :goto_0
.end method

.method public static getRootDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/os/Environment;->ROOT_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getSecureDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getSystemSecureDirectory()Ljava/io/File;
    .locals 4

    .prologue
    const-string/jumbo v3, "system"

    .line 58
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isEncryptedFilesystemEnabled()Z
    .locals 2

    .prologue
    .line 87
    const-string/jumbo v0, "persist.security.efs.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageFirstInsalled()Z
    .locals 2

    .prologue
    .line 548
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageRemovable()Z
    .locals 2

    .prologue
    .line 531
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageRemovableSd()Z
    .locals 2

    .prologue
    .line 536
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageRemovableUsbHost()Z
    .locals 2

    .prologue
    .line 541
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageSecondInsalled()Z
    .locals 2

    .prologue
    .line 553
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isUsbHostStorageInsalled()Z
    .locals 2

    .prologue
    .line 558
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isUsbStorageConnected()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 492
    invoke-static {}, Landroid/os/Environment;->isUsbHostStorageInsalled()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 502
    :goto_0
    return v1

    .line 496
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    if-nez v1, :cond_1

    .line 497
    const-string/jumbo v1, "usbstorage"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IUsbStorageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IUsbStorageService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    .line 500
    :cond_1
    sget-object v1, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    invoke-interface {v1}, Landroid/os/storage/IUsbStorageService;->isUsbStorageConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 501
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, rex:Ljava/lang/Exception;
    move v1, v2

    .line 502
    goto :goto_0
.end method
