.class Lcom/android/server/PackageManagerService$SdInstallArgs;
.super Lcom/android/server/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SdInstallArgs"
.end annotation


# static fields
.field static final RES_FILE_NAME:Ljava/lang/String; = "pkg.apk"


# instance fields
.field cid:Ljava/lang/String;

.field libraryPath:Ljava/lang/String;

.field packagePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "packageURI"
    .parameter "cid"

    .prologue
    const/4 v1, 0x0

    .line 5511
    iput-object p1, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    .line 5512
    const/16 v0, 0x8

    invoke-direct {p0, p2, v1, v0, v1}, Lcom/android/server/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 5513
    iput-object p3, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 5514
    return-void
.end method

.method constructor <init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)V
    .locals 4
    .parameter
    .parameter "params"

    .prologue
    .line 5490
    iput-object p1, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    .line 5491
    iget-object v0, p2, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    iget-object v1, p2, Lcom/android/server/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    iget v2, p2, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    iget-object v3, p2, Lcom/android/server/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 5493
    return-void
.end method

.method constructor <init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "cid"

    .prologue
    const/4 v1, 0x0

    .line 5505
    iput-object p1, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    .line 5506
    const/16 v0, 0x8

    invoke-direct {p0, v1, v1, v0, v1}, Lcom/android/server/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 5507
    iput-object p2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 5508
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/PackageManagerService$SdInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 5509
    return-void
.end method

.method constructor <init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "fullCodePath"
    .parameter "fullResourcePath"
    .parameter "nativeLibraryPath"

    .prologue
    const/4 v4, 0x0

    const-string v5, "/"

    .line 5495
    iput-object p1, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    .line 5496
    const/16 v3, 0x8

    invoke-direct {p0, v4, v4, v3, v4}, Lcom/android/server/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 5498
    const-string v3, "/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 5499
    .local v0, eidx:I
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5500
    .local v2, subStr1:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 5501
    .local v1, sidx:I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 5502
    invoke-direct {p0, v2}, Lcom/android/server/PackageManagerService$SdInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 5503
    return-void
.end method

.method private cleanUp()V
    .locals 1

    .prologue
    .line 5653
    iget-object v0, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 5654
    return-void
.end method

.method private setCachePath(Ljava/lang/String;)V
    .locals 3
    .parameter "newCachePath"

    .prologue
    .line 5633
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5634
    .local v0, cachePath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "lib"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->libraryPath:Ljava/lang/String;

    .line 5635
    new-instance v1, Ljava/io/File;

    const-string v2, "pkg.apk"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->packagePath:Ljava/lang/String;

    .line 5636
    return-void
.end method


# virtual methods
.method checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .locals 5
    .parameter "imcs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 5522
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.android.defcontainer"

    iget-object v2, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 5524
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/app/IMediaContainerService;->checkFreeStorage(ZLandroid/net/Uri;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 5526
    iget-object v1, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 5524
    return v0

    .line 5526
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v0
.end method

.method cleanUpResourcesLI()V
    .locals 5

    .prologue
    .line 5657
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    .line 5659
    .local v1, sourceFile:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v2, :cond_0

    .line 5660
    iget-object v2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    invoke-virtual {v2, v1}, Lcom/android/server/Installer;->rmdex(Ljava/lang/String;)I

    move-result v0

    .line 5661
    .local v0, retCode:I
    if-gez v0, :cond_0

    .line 5662
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove dex file for package:  at location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5668
    .end local v0           #retCode:I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/PackageManagerService$SdInstallArgs;->cleanUp()V

    .line 5669
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 6
    .parameter "imcs"
    .parameter "temp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 5531
    if-eqz p2, :cond_0

    .line 5532
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$SdInstallArgs;->createCopyFile()V

    .line 5537
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "com.android.defcontainer"

    iget-object v3, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 5539
    iget-object v1, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    #calls: Lcom/android/server/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/PackageManagerService;->access$3000(Lcom/android/server/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pkg.apk"

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/android/internal/app/IMediaContainerService;->copyResourceToContainer(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5542
    .local v0, newCachePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 5545
    if-eqz v0, :cond_1

    .line 5546
    invoke-direct {p0, v0}, Lcom/android/server/PackageManagerService$SdInstallArgs;->setCachePath(Ljava/lang/String;)V

    move v1, v5

    .line 5549
    :goto_0
    return v1

    .line 5542
    .end local v0           #newCachePath:Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v1

    .line 5549
    .restart local v0       #newCachePath:Ljava/lang/String;
    :cond_1
    const/16 v1, -0x12

    goto :goto_0
.end method

.method createCopyFile()V
    .locals 1

    .prologue
    .line 5517
    invoke-static {}, Lcom/android/server/PackageManagerService;->getTempContainerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 5518
    return-void
.end method

.method doPostDeleteLI(Z)Z
    .locals 3
    .parameter "delete"

    .prologue
    .line 5687
    const/4 v1, 0x0

    .line 5688
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 5689
    .local v0, mounted:Z
    if-eqz v0, :cond_0

    .line 5691
    iget-object v2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v1

    .line 5693
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 5694
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$SdInstallArgs;->cleanUpResourcesLI()V

    .line 5696
    :cond_1
    return v1
.end method

.method doPostInstall(I)I
    .locals 4
    .parameter "status"

    .prologue
    .line 5639
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 5640
    invoke-direct {p0}, Lcom/android/server/PackageManagerService$SdInstallArgs;->cleanUp()V

    .line 5648
    :cond_0
    :goto_0
    return p1

    .line 5642
    :cond_1
    iget-object v1, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 5643
    .local v0, mounted:Z
    if-nez v0, :cond_0

    .line 5644
    iget-object v1, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    #calls: Lcom/android/server/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/PackageManagerService;->access$3000(Lcom/android/server/PackageManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_0
.end method

.method doPreInstall(I)I
    .locals 5
    .parameter "status"

    .prologue
    .line 5569
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    .line 5571
    iget-object v2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    move v2, p1

    .line 5584
    :goto_1
    return v2

    .line 5573
    :cond_1
    iget-object v2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 5574
    .local v0, mounted:Z
    if-nez v0, :cond_0

    .line 5575
    iget-object v2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    #calls: Lcom/android/server/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/PackageManagerService;->access$3000(Lcom/android/server/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 5577
    .local v1, newCachePath:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 5578
    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService$SdInstallArgs;->setCachePath(Ljava/lang/String;)V

    goto :goto_0

    .line 5580
    :cond_2
    const/16 v2, -0x12

    goto :goto_1
.end method

.method doRename(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "status"
    .parameter "pkgName"
    .parameter "oldCodePath"

    .prologue
    const/4 v5, 0x0

    const-string v7, "Failed to rename "

    const-string v6, " to "

    const-string v4, "PackageManager"

    .line 5589
    const-string v2, "/pkg.apk"

    #calls: Lcom/android/server/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p3, p2, v2}, Lcom/android/server/PackageManagerService;->access$2800(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5590
    .local v0, newCacheId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 5591
    .local v1, newCachePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5593
    iget-object v2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5594
    const-string v2, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unmount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before renaming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 5629
    :goto_0
    return v2

    .line 5598
    :cond_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5599
    const-string v2, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rename "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " which might be stale. Will try to clean up."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5602
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5603
    const-string v2, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Very strange. Cannot clean up stale container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 5604
    goto :goto_0

    .line 5607
    :cond_1
    iget-object v2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5608
    const-string v2, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rename "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inspite of cleaning it up."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 5610
    goto/16 :goto_0

    .line 5613
    :cond_2
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5614
    const-string v2, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mounting container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5615
    iget-object v2, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    #calls: Lcom/android/server/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/PackageManagerService;->access$3000(Lcom/android/server/PackageManagerService;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 5620
    :goto_1
    if-nez v1, :cond_4

    .line 5621
    const-string v2, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get cache path for  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 5622
    goto/16 :goto_0

    .line 5618
    :cond_3
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5624
    :cond_4
    const-string v2, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Succesfully renamed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at new path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5627
    iput-object v0, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 5628
    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService$SdInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 5629
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5555
    iget-object v0, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->packagePath:Ljava/lang/String;

    return-object v0
.end method

.method getNativeLibraryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5565
    iget-object v0, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->libraryPath:Ljava/lang/String;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5679
    iget-object v1, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 5680
    .local v0, idx:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5681
    iget-object v1, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 5683
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5560
    iget-object v0, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->packagePath:Ljava/lang/String;

    return-object v0
.end method

.method matchContainer(Ljava/lang/String;)Z
    .locals 1
    .parameter "app"

    .prologue
    .line 5672
    iget-object v0, p0, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5673
    const/4 v0, 0x1

    .line 5675
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
