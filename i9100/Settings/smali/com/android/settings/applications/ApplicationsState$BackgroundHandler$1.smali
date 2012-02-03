.class Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 10
    .parameter "stats"
    .parameter "succeeded"

    .prologue
    .line 658
    const/4 v4, 0x0

    .line 659
    .local v4, sizeChanged:Z
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 661
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 662
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_2

    .line 663
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 664
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 665
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 666
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    #calls: Lcom/android/settings/applications/ApplicationsState;->getTotalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v6, p1}, Lcom/android/settings/applications/ApplicationsState;->access$100(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v2

    .line 667
    .local v2, newSize:J
    iget-wide v6, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    iget-wide v6, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    iget-wide v6, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    iget-wide v6, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 671
    :cond_0
    iput-wide v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    .line 672
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v6, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    .line 673
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v6, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    .line 674
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v6, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    .line 675
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-wide v7, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    #calls: Lcom/android/settings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v6, v7, v8}, Lcom/android/settings/applications/ApplicationsState;->access$200(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    .line 678
    const/4 v4, 0x1

    .line 680
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    if-eqz v4, :cond_2

    .line 682
    :try_start_2
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v7, 0x4

    iget-object v8, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 684
    .local v1, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v6, v1}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 687
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #newSize:J
    :cond_2
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 689
    :cond_3
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 690
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 693
    :cond_4
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 694
    return-void

    .line 680
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 693
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6
.end method
