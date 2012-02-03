.class public Lcom/android/server/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final WALLPAPER_IMAGE:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field private static final WALLPAPER_INFO:Ljava/lang/String; = "/data/system/wallpaper_info.xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "wallpaper"

    const-string v5, "/data/system/wallpaper_info.xml"

    .line 48
    const-string v2, "wallpaper"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService;

    .line 50
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "/data/data/com.android.settings/files/wallpaper"

    aput-object v2, v0, v3

    const-string v2, "/data/system/wallpaper_info.xml"

    aput-object v5, v0, v4

    .line 51
    .local v0, files:[Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 55
    new-array v0, v4, [Ljava/lang/String;

    .end local v0           #files:[Ljava/lang/String;
    const-string v2, "/data/system/wallpaper_info.xml"

    aput-object v5, v0, v3

    .line 57
    .restart local v0       #files:[Ljava/lang/String;
    :cond_0
    const-string v2, "wallpaper"

    new-instance v2, Landroid/app/backup/AbsoluteFileBackupHelper;

    invoke-direct {v2, p0, v0}, Landroid/app/backup/AbsoluteFileBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v6, v2}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 59
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 11
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string v10, "wallpaper"

    const-string v9, "/data/system/wallpaper_info.xml"

    const-string v7, "/data/data/com.android.settings/files/wallpaper"

    .line 65
    const-string v3, "wallpaper"

    new-instance v3, Landroid/app/backup/AbsoluteFileBackupHelper;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "/data/data/com.android.settings/files/wallpaper"

    aput-object v7, v4, v8

    const-string v5, "/data/system/wallpaper_info.xml"

    aput-object v9, v4, v6

    invoke-direct {v3, p0, v4}, Landroid/app/backup/AbsoluteFileBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v10, v3}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 67
    const-string v3, "system_files"

    new-instance v4, Landroid/app/backup/AbsoluteFileBackupHelper;

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "/data/data/com.android.settings/files/wallpaper"

    aput-object v7, v5, v8

    invoke-direct {v4, p0, v5}, Landroid/app/backup/AbsoluteFileBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, success:Z
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 74
    const-string v3, "wallpaper"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService;

    .line 76
    .local v2, wallpaper:Lcom/android/server/WallpaperManagerService;
    invoke-virtual {v2}, Lcom/android/server/WallpaperManagerService;->settingsRestored()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v2           #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 80
    .local v0, ex:Ljava/io/IOException;
    const-string v3, "SystemBackupAgent"

    const-string v4, "restore failed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 82
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
