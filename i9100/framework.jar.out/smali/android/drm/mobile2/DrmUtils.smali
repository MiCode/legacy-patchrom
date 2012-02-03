.class public Landroid/drm/mobile2/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForFileorDirectoryExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 28
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 30
    :cond_0
    return v0
.end method

.method public static createDir(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 41
    invoke-static {p0}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    const-string v1, "DrmUtils"

    const-string v2, "File/Directory is not Exists"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
