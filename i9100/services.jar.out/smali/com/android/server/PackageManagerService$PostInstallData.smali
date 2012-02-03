.class Lcom/android/server/PackageManagerService$PostInstallData;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostInstallData"
.end annotation


# instance fields
.field public args:Lcom/android/server/PackageManagerService$InstallArgs;

.field public res:Lcom/android/server/PackageManagerService$PackageInstalledInfo;

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .locals 0
    .parameter
    .parameter "_a"
    .parameter "_r"

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PostInstallData;->this$0:Lcom/android/server/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p2, p0, Lcom/android/server/PackageManagerService$PostInstallData;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 422
    iput-object p3, p0, Lcom/android/server/PackageManagerService$PostInstallData;->res:Lcom/android/server/PackageManagerService$PackageInstalledInfo;

    .line 423
    return-void
.end method
