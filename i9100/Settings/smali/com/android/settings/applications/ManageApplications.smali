.class public Lcom/android/settings/applications/ManageApplications;
.super Landroid/app/TabActivity;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplications$AppViewHolder;
    }
.end annotation


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field mColorBar:Lcom/android/settings/applications/LinearColorBar;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private mCreatedRunning:Z

.field private mCurView:I

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mFilterApps:I

.field mFreeStorageText:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastFreeStorage:J

.field private mLastShowedInternalStorage:Z

.field private mLastUsedStorage:J

.field private mListContainer:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mNonConfigInstance:Ljava/lang/Object;

.field private mResumedRunning:Z

.field private mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

.field private mSDCardFileStats:Landroid/os/StatFs;

.field private mSortOrder:I

.field mStorageChartLabel:Landroid/widget/TextView;

.field mUsedStorageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 112
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 137
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 139
    iput v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 177
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 180
    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$1;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private selectView(I)V
    .locals 7
    .parameter "which"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 801
    if-ne p1, v5, :cond_3

    .line 802
    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    .line 804
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    .line 806
    :cond_0
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    if-eq v1, p1, :cond_1

    .line 807
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v1, v6}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 808
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 809
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 811
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v1, :cond_2

    .line 812
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->resume(II)V

    .line 834
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    .line 835
    return-void

    .line 814
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 815
    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mCreatedRunning:Z

    if-nez v1, :cond_4

    .line 816
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mNonConfigInstance:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 817
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mCreatedRunning:Z

    .line 819
    :cond_4
    const/4 v0, 0x1

    .line 820
    .local v0, haveData:Z
    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    if-nez v1, :cond_5

    .line 821
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningProcessesView;->doResume(Ljava/lang/Runnable;)Z

    move-result v0

    .line 822
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    .line 824
    :cond_5
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 825
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    if-eq v1, p1, :cond_2

    .line 826
    if-eqz v0, :cond_6

    .line 827
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 831
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 829
    :cond_6
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private startApplicationDetailsActivity()V
    .locals 5

    .prologue
    .line 634
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 637
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startActivityForResult(Landroid/content/Intent;I)V

    .line 638
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method handleRunningProcessesAvail()V
    .locals 2

    .prologue
    .line 838
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 841
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/high16 v1, 0x10a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 843
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 846
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 626
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 629
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->finish()V

    .line 712
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x5

    const/4 v10, 0x1

    .line 503
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 505
    new-instance v7, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v8, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v7, p0, v8}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 507
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, action:Ljava/lang/String;
    const-string v1, "Downloaded"

    .line 509
    .local v1, defaultTabTag:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.settings.RunningServices"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 511
    const-string v1, "Running"

    .line 523
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 524
    const-string v7, "sortOrder"

    iget v8, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 525
    const-string v7, "filterApps"

    iget v8, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 526
    const-string v7, "defaultTabTag"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 527
    .local v6, tmp:Ljava/lang/String;
    if-eqz v6, :cond_1

    move-object v1, v6

    .line 530
    .end local v6           #tmp:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mNonConfigInstance:Ljava/lang/Object;

    .line 532
    new-instance v7, Landroid/os/StatFs;

    const-string v8, "/data"

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    .line 533
    new-instance v7, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    .line 536
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/settings/applications/ManageApplications;->requestWindowFeature(I)Z

    .line 537
    invoke-virtual {p0, v9}, Lcom/android/settings/applications/ManageApplications;->requestWindowFeature(I)Z

    .line 538
    const v7, 0x7f080396

    invoke-virtual {p0, v7}, Lcom/android/settings/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 539
    const v7, 0x7f080395

    invoke-virtual {p0, v7}, Lcom/android/settings/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 541
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/applications/ManageApplications;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 542
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03002f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 543
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v8, 0x7f0b0090

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    .line 544
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v8, 0x7f0b0089

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 546
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v8, 0x102000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 547
    .local v4, lv:Landroid/widget/ListView;
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v8, 0x7f0b008a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 548
    .local v2, emptyView:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 549
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 551
    :cond_2
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 552
    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 553
    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 554
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 555
    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 556
    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    .line 557
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 558
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 559
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v8, 0x7f0b008b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/LinearColorBar;

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    .line 560
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v8, 0x7f0b008d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mStorageChartLabel:Landroid/widget/TextView;

    .line 561
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v8, 0x7f0b008c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    .line 562
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v8, 0x7f0b008e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    .line 563
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v8, 0x7f0b008f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningProcessesView;

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getTabHost()Landroid/widget/TabHost;

    move-result-object v5

    .line 567
    .local v5, tabHost:Landroid/widget/TabHost;
    const-string v7, "Downloaded"

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f08037f

    invoke-virtual {p0, v8}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020056

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 571
    const-string v7, "All"

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f08037e

    invoke-virtual {p0, v8}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020055

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 575
    const-string v7, "OnSdCard"

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f080382

    invoke-virtual {p0, v8}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020058

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 579
    const-string v7, "Running"

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f080380

    invoke-virtual {p0, v8}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020057

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 583
    invoke-virtual {v5, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v5, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 585
    return-void

    .line 512
    .end local v2           #emptyView:Landroid/view/View;
    .end local v4           #lv:Landroid/widget/ListView;
    .end local v5           #tabHost:Landroid/widget/TabHost;
    :cond_3
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.settings.applications.StorageUse"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 515
    :cond_4
    iput v9, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 516
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 517
    const-string v1, "All"

    goto/16 :goto_0

    .line 518
    :cond_5
    const-string v7, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 520
    const-string v1, "All"

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 642
    const/4 v0, 0x4

    const v1, 0x7f080377

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 644
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f080378

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 646
    const/4 v0, 0x6

    const v1, 0x7f080379

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 647
    const/4 v0, 0x7

    const v1, 0x7f08037a

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 648
    return v4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 704
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 705
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 706
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 707
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 690
    const/16 v0, 0x54

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 693
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 697
    :cond_0
    const/4 v0, 0x1

    .line 699
    :goto_0
    return v0

    .restart local p0
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/TabActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 674
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 675
    .local v0, menuId:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 676
    :cond_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 677
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 678
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(II)V

    .line 685
    :cond_1
    :goto_0
    return v4

    .line 680
    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 681
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 682
    :cond_3
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 683
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 614
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 615
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 616
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 617
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    .line 619
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    .line 621
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 657
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 658
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 659
    .local v0, showingBackground:Z
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 660
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 661
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 662
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_0

    move v2, v4

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 669
    .end local v0           #showingBackground:Z
    :goto_1
    return v4

    .restart local v0       #showingBackground:Z
    :cond_0
    move v2, v3

    .line 662
    goto :goto_0

    .line 664
    .end local v0           #showingBackground:Z
    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v2, v5, :cond_2

    move v2, v4

    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 665
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v2, v6, :cond_3

    move v2, v4

    :goto_3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 666
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 667
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v2, v3

    .line 664
    goto :goto_2

    :cond_3
    move v2, v3

    .line 665
    goto :goto_3
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 594
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 596
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->showCurrentTab()V

    .line 597
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->doRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 601
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 602
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 603
    const-string v0, "filterApps"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 604
    const-string v0, "defautTabTag"

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 589
    invoke-super {p0}, Landroid/app/TabActivity;->onStart()V

    .line 590
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "tabId"

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->showCurrentTab()V

    .line 874
    return-void
.end method

.method public showCurrentTab()V
    .locals 5

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 851
    .local v1, tabId:Ljava/lang/String;
    const-string v2, "Downloaded"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 852
    const/4 v0, 0x1

    .line 867
    .local v0, newOption:I
    :goto_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 868
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/applications/ManageApplications;->selectView(I)V

    .line 869
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateStorageUsage()V

    .line 870
    .end local v0           #newOption:I
    :cond_0
    :goto_1
    return-void

    .line 853
    :cond_1
    const-string v2, "All"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 854
    const/4 v0, 0x0

    .restart local v0       #newOption:I
    goto :goto_0

    .line 855
    .end local v0           #newOption:I
    :cond_2
    const-string v2, "OnSdCard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 856
    const/4 v0, 0x2

    .restart local v0       #newOption:I
    goto :goto_0

    .line 857
    .end local v0           #newOption:I
    :cond_3
    const-string v2, "Running"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 858
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplications;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 860
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/applications/ManageApplications;->selectView(I)V

    goto :goto_1
.end method

.method updateStorageUsage()V
    .locals 22

    .prologue
    .line 723
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    const-wide/16 v8, 0x0

    .line 728
    .local v8, freeStorage:J
    const-wide/16 v5, 0x0

    .line 729
    .local v5, appStorage:J
    const-wide/16 v13, 0x0

    .line 730
    .local v13, totalStorage:J
    const/4 v11, 0x0

    .line 732
    .local v11, newLabel:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 733
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 734
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 736
    :cond_2
    const v17, 0x7f080386

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 739
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockCount()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v13, v17, v19

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v8, v17, v19

    .line 768
    :goto_1
    if-eqz v11, :cond_3

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mStorageChartLabel:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    :cond_3
    const-wide/16 v17, 0x0

    cmp-long v17, v13, v17

    if-lez v17, :cond_8

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    move-object/from16 v17, v0

    sub-long v18, v13, v8

    sub-long v18, v18, v5

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    move-wide v0, v13

    long-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move-wide v0, v5

    long-to-float v0, v0

    move/from16 v19, v0

    move-wide v0, v13

    long-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move-wide v0, v8

    long-to-float v0, v0

    move/from16 v20, v0

    move-wide v0, v13

    long-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-virtual/range {v17 .. v20}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 774
    sub-long v15, v13, v8

    .line 775
    .local v15, usedStorage:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    move-wide/from16 v17, v0

    cmp-long v17, v17, v15

    if-eqz v17, :cond_4

    .line 776
    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    .line 777
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 778
    .local v12, sizeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0803b3

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v12, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    .end local v12           #sizeStr:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    move-wide/from16 v17, v0

    cmp-long v17, v17, v8

    if-eqz v17, :cond_0

    .line 782
    move-wide v0, v8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    .line 783
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 784
    .restart local v12       #sizeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0803b2

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v12, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 743
    .end local v12           #sizeStr:Ljava/lang/String;
    .end local v15           #usedStorage:J
    :catch_0
    move-exception v17

    move-object/from16 v7, v17

    .line 745
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v17, "ManageApplications"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 748
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 749
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 751
    :cond_6
    const v17, 0x7f080385

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    const-string v18, "/data"

    invoke-virtual/range {v17 .. v18}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 754
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockCount()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v13, v17, v19

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v8, v17, v19

    .line 761
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    .line 762
    .local v3, N:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    if-ge v10, v3, :cond_7

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    .line 764
    .local v4, ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    move-object v0, v4

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    move-wide/from16 v17, v0

    move-object v0, v4

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    add-long v5, v5, v17

    .line 762
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 758
    .end local v3           #N:I
    .end local v4           #ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v10           #i:I
    :catch_1
    move-exception v17

    move-object/from16 v7, v17

    .line 759
    .restart local v7       #e:Ljava/lang/IllegalArgumentException;
    const-string v17, "ManageApplications"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 766
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #N:I
    .restart local v10       #i:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v17

    add-long v8, v8, v17

    goto/16 :goto_1

    .line 788
    .end local v3           #N:I
    .end local v10           #i:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 789
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    move-wide/from16 v17, v0

    const-wide/16 v19, -0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_9

    .line 790
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    move-wide/from16 v17, v0

    const-wide/16 v19, -0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_0

    .line 794
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
