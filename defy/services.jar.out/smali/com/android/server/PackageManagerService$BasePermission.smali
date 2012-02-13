.class final Lcom/android/server/PackageManagerService$BasePermission;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BasePermission"
.end annotation


# static fields
.field static final TYPE_BUILTIN:I = 0x1

.field static final TYPE_DYNAMIC:I = 0x2

.field static final TYPE_NORMAL:I


# instance fields
.field gids:[I

.field final name:Ljava/lang/String;

.field packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

.field pendingInfo:Landroid/content/pm/PermissionInfo;

.field perm:Landroid/content/pm/PackageParser$Permission;

.field protectionLevel:I

.field sourcePackage:Ljava/lang/String;

.field final type:I

.field uid:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "_name"
    .parameter "_sourcePackage"
    .parameter "_type"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasePermission{"

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

    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
