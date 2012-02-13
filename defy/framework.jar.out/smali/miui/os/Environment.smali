.class public Lmiui/os/Environment;
.super Landroid/os/Environment;
.source "Environment.java"


# static fields
.field private static final EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

.field private static final INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

.field private static final INTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v3, "MIUI"

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "MIUI"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    const-string v2, "MIUI"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/os/Environment;-><init>()V

    return-void
.end method

.method public static getInternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    sget-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMIUIExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    sget-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMIUIInternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    sget-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMIUIStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static init(Ljava/io/File;)V
    .locals 3
    .parameter "systemDir"

    .prologue
    const/4 v2, -0x1

    new-instance v0, Ljava/io/File;

    const-string v1, "customized_icons"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v1, 0x3ff

    invoke-static {v0, v1, v2, v2}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    const-string v0, "/cache"

    const/16 v1, 0x1f9

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    const-string v0, "/sys/class/leds/spotlight/brightness"

    const/16 v1, 0x1ff

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    
    return-void
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .prologue
    const-string v0, "mounted"

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInternalStorageLow(Landroid/content/ContentResolver;)Z
    .locals 6
    .parameter "resolver"

    .prologue
    const/4 v5, 0x1

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lmiui/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .local v0, stats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-static {p0}, Lmiui/provider/ExtraSettings$Secure;->getStorageThreshold(Landroid/content/ContentResolver;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    move v1, v5

    .end local v0           #stats:Landroid/os/StatFs;
    :goto_0
    return v1

    .restart local v0       #stats:Landroid/os/StatFs;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #stats:Landroid/os/StatFs;
    :catch_0
    move-exception v1

    move v1, v5

    goto :goto_0
.end method
