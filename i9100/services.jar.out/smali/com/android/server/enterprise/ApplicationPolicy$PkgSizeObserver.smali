.class Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PkgSizeObserver"
.end annotation


# instance fields
.field finished:Z

.field mPkgStats:Landroid/content/pm/PackageStats;

.field result:Z

.field final synthetic this$0:Lcom/android/server/enterprise/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ApplicationPolicy;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1033
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 1034
    iput-boolean v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->finished:Z

    .line 1036
    iput-boolean v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 1
    .parameter "pStats"
    .parameter "succeeded"

    .prologue
    .line 1039
    monitor-enter p0

    .line 1040
    :try_start_0
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 1041
    iput-boolean p2, p0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    .line 1042
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->finished:Z

    .line 1043
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1044
    monitor-exit p0

    .line 1045
    return-void

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
