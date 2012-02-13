.class Lcom/android/server/PackageManagerService$PackageInstalledInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstalledInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field pkg:Landroid/content/pm/PackageParser$Package;

.field removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

.field returnCode:I

.field final synthetic this$0:Lcom/android/server/PackageManagerService;

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->this$0:Lcom/android/server/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
