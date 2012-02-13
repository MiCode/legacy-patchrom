.class abstract Lcom/android/server/PackageManagerService$InstallArgs;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "InstallArgs"
.end annotation


# instance fields
.field final flags:I

.field final installerPackageName:Ljava/lang/String;

.field final observer:Landroid/content/pm/IPackageInstallObserver;

.field final packageURI:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .locals 0
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    iput p3, p0, Lcom/android/server/PackageManagerService$InstallArgs;->flags:I

    iput-object p2, p0, Lcom/android/server/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    iput-object p4, p0, Lcom/android/server/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method abstract cleanUpResourcesLI()V
.end method

.method abstract copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method abstract createCopyFile()V
.end method

.method abstract doPostDeleteLI(Z)Z
.end method

.method abstract doPostInstall(I)I
.end method

.method abstract doPreInstall(I)I
.end method

.method abstract doRename(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method abstract getCodePath()Ljava/lang/String;
.end method

.method abstract getNativeLibraryPath()Ljava/lang/String;
.end method

.method abstract getResourcePath()Ljava/lang/String;
.end method
