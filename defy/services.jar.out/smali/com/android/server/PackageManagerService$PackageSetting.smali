.class final Lcom/android/server/PackageManagerService$PackageSetting;
.super Lcom/android/server/PackageManagerService$PackageSettingBase;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackageSetting"
.end annotation


# instance fields
.field pkg:Landroid/content/pm/PackageParser$Package;

.field sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService$PackageSetting;)V
    .locals 1
    .parameter "orig"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$PackageSettingBase;-><init>(Lcom/android/server/PackageManagerService$PackageSettingBase;)V

    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V
    .locals 0
    .parameter "name"
    .parameter "realName"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "pVersionCode"
    .parameter "pkgFlags"

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/server/PackageManagerService$PackageSettingBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
