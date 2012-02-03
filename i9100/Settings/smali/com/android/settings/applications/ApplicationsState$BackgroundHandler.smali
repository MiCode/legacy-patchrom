.class Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundHandler"
.end annotation


# instance fields
.field mRunning:Z

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic this$0:Lcom/android/settings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 697
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    .line 698
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 656
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 699
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x3

    const/4 v11, 0x6

    .line 704
    iget-object v7, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v7}, Lcom/android/settings/applications/ApplicationsState;->handleRebuildList()V

    .line 706
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 809
    :goto_0
    :pswitch_0
    return-void

    .line 710
    :pswitch_1
    const/4 v6, 0x0

    .line 711
    .local v6, numDone:I
    iget-object v7, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 713
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    if-ge v6, v11, :cond_2

    .line 714
    iget-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v8, :cond_0

    .line 715
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 716
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x6

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 718
    .local v3, m:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v8, v3}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 720
    .end local v3           #m:Landroid/os/Message;
    :cond_0
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 721
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v9, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    .line 722
    add-int/lit8 v6, v6, 0x1

    .line 723
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v8, v2}, Lcom/android/settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 713
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 727
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    if-lt v6, v11, :cond_3

    .line 730
    invoke-virtual {p0, v13}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 727
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 732
    :cond_3
    invoke-virtual {p0, v12}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 736
    .end local v1           #i:I
    .end local v6           #numDone:I
    :pswitch_2
    const/4 v6, 0x0

    .line 737
    .restart local v6       #numDone:I
    iget-object v7, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 739
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    :try_start_2
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_8

    if-ge v6, v13, :cond_8

    .line 740
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 741
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4

    iget-boolean v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v8, :cond_7

    .line 742
    :cond_4
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 743
    :try_start_3
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8, v9}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 744
    iget-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v8, :cond_5

    .line 745
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 746
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x6

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 748
    .restart local v3       #m:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v8, v3}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 750
    .end local v3           #m:Landroid/os/Message;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 752
    :cond_6
    monitor-exit v0

    .line 739
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 752
    :catchall_1
    move-exception v8

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v8

    .line 756
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :catchall_2
    move-exception v8

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v8

    :cond_8
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 757
    if-lez v6, :cond_9

    .line 758
    iget-object v7, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v7, v12}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_9

    .line 759
    iget-object v7, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v7, v12}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 762
    :cond_9
    if-lt v6, v13, :cond_a

    .line 763
    invoke-virtual {p0, v12}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 765
    :cond_a
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 769
    .end local v1           #i:I
    .end local v6           #numDone:I
    :pswitch_3
    iget-object v7, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 771
    :try_start_6
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 773
    monitor-exit v7

    goto/16 :goto_0

    .line 804
    :catchall_3
    move-exception v8

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v8

    .line 776
    :cond_b
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 777
    .local v4, now:J
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_11

    .line 778
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 779
    .restart local v0       #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-wide v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_c

    iget-boolean v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    if-eqz v8, :cond_10

    .line 780
    :cond_c
    iget-wide v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d

    iget-wide v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v10, 0x4e20

    sub-long v10, v4, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_f

    .line 782
    :cond_d
    iget-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v8, :cond_e

    .line 783
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 784
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x6

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 786
    .restart local v3       #m:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v8, v3}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 788
    .end local v3           #m:Landroid/os/Message;
    :cond_e
    iput-wide v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 789
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 790
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 793
    :cond_f
    monitor-exit v7

    goto/16 :goto_0

    .line 777
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 796
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_11
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_12

    .line 797
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 798
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 799
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 801
    .restart local v3       #m:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v8, v3}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 804
    .end local v3           #m:Landroid/os/Message;
    :cond_12
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_0

    .line 706
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
