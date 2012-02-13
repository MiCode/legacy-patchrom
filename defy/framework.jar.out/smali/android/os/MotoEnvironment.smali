.class public Landroid/os/MotoEnvironment;
.super Ljava/lang/Object;
.source "MotoEnvironment.java"


# static fields
.field private static final EXTERNAL_ALT_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_ALT_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_ALT_STORAGE_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File; = null

.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final MEDIA_BROKEN:Ljava/lang/String; = "broken"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field private static final TAG:Ljava/lang/String; = "MotoEnvironment"

.field private static mMntSvc:Landroid/os/storage/IMountService;

.field private static sAppInstallDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const-string v6, "EXTERNAL_ALT_STORAGE_MOUNT"

    const-string v5, "Android"

    const-string v4, "/mnt/sdcard-ext"

    sput-object v2, Landroid/os/MotoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    const-string v0, "EXTERNAL_STORAGE"

    const-string v1, "/mnt/sdcard"

    invoke-static {v0, v1}, Landroid/os/MotoEnvironment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/MotoEnvironment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    const-string v0, "EXTERNAL_STORAGE_ALT"

    const-string v1, "/mnt/sdcard-ext"

    invoke-static {v0, v4}, Landroid/os/MotoEnvironment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/MotoEnvironment;->EXTERNAL_ALT_STORAGE_DIRECTORY:Ljava/io/File;

    sput-object v2, Landroid/os/MotoEnvironment;->sAppInstallDirectory:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_ALT_STORAGE_MOUNT"

    const-string v2, "/mnt/sdcard-ext"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/MotoEnvironment;->EXTERNAL_ALT_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_ALT_STORAGE_MOUNT"

    const-string v2, "/mnt/sdcard-ext"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/MotoEnvironment;->EXTERNAL_ALT_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "variableName"
    .parameter "defaultPath"

    .prologue
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

.method public static getExternalAltStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/MotoEnvironment;->EXTERNAL_ALT_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalAltStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/MotoEnvironment;->EXTERNAL_ALT_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalAltStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    sget-object v0, Landroid/os/MotoEnvironment;->EXTERNAL_ALT_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalAltStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    sget-object v1, Landroid/os/MotoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/MotoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    :cond_0
    sget-object v1, Landroid/os/MotoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Landroid/os/MotoEnvironment;->getExternalAltStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, rex:Ljava/lang/Exception;
    const-string v1, "removed"

    goto :goto_0
.end method

.method public static getExternalAppInstallDirectory()Ljava/io/File;
    .locals 7

    .prologue
    const-string v6, "MotoEnvironment"

    const-string v4, ":none:"

    sget-object v4, Landroid/os/MotoEnvironment;->sAppInstallDirectory:Ljava/io/File;

    if-eqz v4, :cond_0

    sget-object v4, Landroid/os/MotoEnvironment;->sAppInstallDirectory:Ljava/io/File;

    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Landroid/os/MotoEnvironment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    sput-object v4, Landroid/os/MotoEnvironment;->sAppInstallDirectory:Ljava/io/File;

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/system/etc/vold.fstab"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, br:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v4, "dev_mount"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, parts:[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, "sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string v5, ":none:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/os/MotoEnvironment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    sput-object v4, Landroid/os/MotoEnvironment;->sAppInstallDirectory:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #parts:[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v4, "MotoEnvironment"

    const-string v4, "Can\'t find vold.fstab"

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_2
    sget-object v4, Landroid/os/MotoEnvironment;->sAppInstallDirectory:Ljava/io/File;

    goto :goto_0

    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #parts:[Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    :try_start_1
    aget-object v4, v3, v4

    const-string v5, "sdcard_ext"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string v5, ":none:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Landroid/os/MotoEnvironment;->EXTERNAL_ALT_STORAGE_DIRECTORY:Ljava/io/File;

    sput-object v4, Landroid/os/MotoEnvironment;->sAppInstallDirectory:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #parts:[Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/io/IOException;
    const-string v4, "MotoEnvironment"

    const-string v4, "Error reading vold.fstab"

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getRemovedExternalStorage()[Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "removed"

    invoke-static {}, Landroid/os/MotoEnvironment;->getExternalAltStorageState()Ljava/lang/String;

    move-result-object v2

    .local v2, state:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .local v3, state_innerSDcard:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, slist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "removed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/os/MotoEnvironment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v4, "removed"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/os/MotoEnvironment;->EXTERNAL_ALT_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .local v0, sarray:[Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #sarray:[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getStorageState(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    const-string v5, "removed"

    const-string v3, "/"

    sget-object v3, Landroid/os/MotoEnvironment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, firstMount:Ljava/lang/String;
    sget-object v3, Landroid/os/MotoEnvironment;->EXTERNAL_ALT_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, secondMount:Ljava/lang/String;
    :try_start_0
    sget-object v3, Landroid/os/MotoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v3, :cond_0

    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    sput-object v3, Landroid/os/MotoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/os/MotoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-interface {v3, v0}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/os/MotoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-interface {v3, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, "removed"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, rex:Ljava/lang/Exception;
    const-string v3, "removed"

    move-object v3, v5

    goto :goto_0
.end method

.method public static isExternalStorageDirectory(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    sget-object v2, Landroid/os/MotoEnvironment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, firstMount:Ljava/lang/String;
    sget-object v2, Landroid/os/MotoEnvironment;->EXTERNAL_ALT_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, secondMount:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isInExternalStorageDirectory(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    const-string v5, "/"

    if-nez p0, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    const-string v2, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/os/MotoEnvironment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, firstMount:Ljava/lang/String;
    sget-object v2, Landroid/os/MotoEnvironment;->EXTERNAL_ALT_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, secondMount:Ljava/lang/String;
    if-eqz p0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0
.end method
