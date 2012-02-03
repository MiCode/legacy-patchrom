.class Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field finished:Z

.field pkgName:Ljava/lang/String;

.field result:I

.field final synthetic this$0:Lcom/android/server/enterprise/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ApplicationPolicy;)V
    .locals 1
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "status"

    .prologue
    .line 446
    monitor-enter p0

    .line 447
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->finished:Z

    .line 448
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    .line 449
    iput p2, p0, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->result:I

    .line 450
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 451
    monitor-exit p0

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
