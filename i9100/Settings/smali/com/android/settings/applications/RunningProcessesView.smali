.class public Lcom/android/settings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;,
        Lcom/android/settings/applications/RunningProcessesView$ViewHolder;,
        Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/settings/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field mBackgroundProcessText:Landroid/widget/TextView;

.field mBuffer:[B

.field mBuilder:Ljava/lang/StringBuilder;

.field mColorBar:Lcom/android/settings/applications/LinearColorBar;

.field mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

.field mDataAvail:Ljava/lang/Runnable;

.field mForegroundProcessText:Landroid/widget/TextView;

.field mLastAvailMemory:J

.field mLastBackgroundProcessMemory:J

.field mLastForegroundProcessMemory:J

.field mLastNumBackgroundProcesses:I

.field mLastNumForegroundProcesses:I

.field mLastNumServiceProcesses:I

.field mLastServiceProcessMemory:J

.field mListView:Landroid/widget/ListView;

.field mState:Lcom/android/settings/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 438
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 78
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 79
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 80
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 81
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 82
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 83
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 84
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 88
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuffer:[B

    .line 439
    return-void
.end method

.method private extractMemValue([BI)J
    .locals 6
    .parameter "buffer"
    .parameter "index"

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 322
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_2

    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 323
    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_1

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_1

    .line 324
    move v0, p2

    .line 325
    .local v0, start:I
    add-int/lit8 p2, p2, 0x1

    .line 327
    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_0

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_0

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_0

    .line 328
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 330
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 331
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 335
    .end local v0           #start:I
    .end local v1           #str:Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 333
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 335
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private matchText([BILjava/lang/String;)Z
    .locals 5
    .parameter "buffer"
    .parameter "index"
    .parameter "text"

    .prologue
    const/4 v4, 0x0

    .line 309
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 310
    .local v0, N:I
    add-int v2, p2, v0

    array-length v3, p1

    if-lt v2, v3, :cond_0

    move v2, v4

    .line 318
    :goto_0
    return v2

    .line 313
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 314
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    move v2, v4

    .line 315
    goto :goto_0

    .line 313
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 318
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private readAvailMem()J
    .locals 14

    .prologue
    const-wide/16 v11, 0x0

    const-string v13, "RunningProcessesView"

    .line 340
    const-wide/16 v7, 0x0

    .line 341
    .local v7, memFree:J
    const-wide/16 v5, 0x0

    .line 342
    .local v5, memCached:J
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v9, "/proc/meminfo"

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 343
    .local v3, is:Ljava/io/FileInputStream;
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuffer:[B

    invoke-virtual {v3, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 344
    .local v4, len:I
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 345
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuffer:[B

    array-length v0, v9

    .line 346
    .local v0, BUFLEN:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    cmp-long v9, v7, v11

    if-eqz v9, :cond_0

    cmp-long v9, v5, v11

    if-nez v9, :cond_4

    .line 347
    :cond_0
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuffer:[B

    const-string v10, "MemFree"

    invoke-direct {p0, v9, v2, v10}, Lcom/android/settings/applications/RunningProcessesView;->matchText([BILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 348
    add-int/lit8 v2, v2, 0x7

    .line 349
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuffer:[B

    invoke-direct {p0, v9, v2}, Lcom/android/settings/applications/RunningProcessesView;->extractMemValue([BI)J

    move-result-wide v7

    .line 354
    :cond_1
    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuffer:[B

    aget-byte v9, v9, v2

    const/16 v10, 0xa

    if-eq v9, v10, :cond_3

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 350
    :cond_2
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuffer:[B

    const-string v10, "Cached"

    invoke-direct {p0, v9, v2, v10}, Lcom/android/settings/applications/RunningProcessesView;->matchText([BILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 351
    add-int/lit8 v2, v2, 0x6

    .line 352
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuffer:[B

    invoke-direct {p0, v9, v2}, Lcom/android/settings/applications/RunningProcessesView;->extractMemValue([BI)J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v5

    goto :goto_1

    .line 346
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    :cond_4
    add-long v9, v7, v5

    .line 364
    .end local v0           #BUFLEN:I
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :goto_2
    return-wide v9

    .line 359
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 360
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v9, "RunningProcessesView"

    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_3
    move-wide v9, v11

    .line 364
    goto :goto_2

    .line 361
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 362
    .local v1, e:Ljava/io/IOException;
    const-string v9, "RunningProcessesView"

    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method


# virtual methods
.method public doCreate(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 6
    .parameter "savedInstanceState"
    .parameter "nonConfigurationInstace"

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 446
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030055

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 447
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    .line 448
    const v2, 0x1020004

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 449
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 450
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 453
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 454
    new-instance v2, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/RunningState;)V

    iput-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    .line 455
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 456
    const v2, 0x7f0b011b

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/LinearColorBar;

    iput-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    .line 457
    const v2, 0x7f0b011d

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 458
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    new-instance v3, Lcom/android/settings/applications/RunningProcessesView$1;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/RunningProcessesView$1;-><init>(Lcom/android/settings/applications/RunningProcessesView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    const v2, 0x7f0b011c

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    .line 465
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    new-instance v3, Lcom/android/settings/applications/RunningProcessesView$2;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/RunningProcessesView$2;-><init>(Lcom/android/settings/applications/RunningProcessesView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    const-string v2, "ro.SECONDARY_SERVER_MEM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1000

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    .line 475
    return-void
.end method

.method public doPause()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 480
    return-void
.end method

.method public doResume(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "dataAvail"

    .prologue
    const/4 v1, 0x1

    .line 483
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/RunningState;->resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 484
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    move v0, v1

    .line 491
    :goto_0
    return v0

    .line 490
    :cond_0
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 491
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 422
    check-cast p1, Landroid/widget/ListView;

    .line 423
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 424
    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 425
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 426
    const-string v2, "uid"

    iget-object v3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v3, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    const-string v2, "process"

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v0, "background"

    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v2, v2, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 431
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 513
    packed-switch p1, :pswitch_data_0

    .line 528
    :goto_0
    return-void

    .line 515
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 518
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 519
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 522
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 12
    .parameter "dataChanged"

    .prologue
    .line 369
    if-eqz p1, :cond_0

    .line 370
    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    move-object v0, v6

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    move-object v1, v0

    .line 371
    .local v1, adapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;
    invoke-virtual {v1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 372
    invoke-virtual {v1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 375
    .end local v1           #adapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v6, :cond_1

    .line 376
    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 377
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 382
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/RunningProcessesView;->readAvailMem()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/settings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    sub-long v2, v6, v8

    .line 383
    .local v2, availMem:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 384
    const-wide/16 v2, 0x0

    .line 387
    :cond_2
    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 388
    :try_start_0
    iget v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v8, v8, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    if-ne v7, v8, :cond_3

    iget-wide v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v9, v9, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    iget-wide v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    cmp-long v7, v7, v2

    if-eqz v7, :cond_4

    .line 391
    :cond_3
    iget-object v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v7, v7, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    iput v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 392
    iget-object v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v7, v7, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    iput-wide v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 393
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    iget-wide v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    add-long/2addr v8, v10

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, sizeStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0803b2

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    .end local v4           #sizeStr:Ljava/lang/String;
    :cond_4
    iget v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v8, v8, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    if-ne v7, v8, :cond_5

    iget-wide v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v9, v9, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    iget v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v8, v8, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    if-ne v7, v8, :cond_5

    iget-wide v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v9, v9, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6

    .line 403
    :cond_5
    iget-object v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v7, v7, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    iput v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 404
    iget-object v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v7, v7, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    iput-wide v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 405
    iget-object v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v7, v7, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    iput v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 406
    iget-object v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v7, v7, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    iput-wide v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    iget-wide v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    add-long/2addr v8, v10

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 409
    .restart local v4       #sizeStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0803b3

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    .end local v4           #sizeStr:Ljava/lang/String;
    :cond_6
    iget-wide v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    add-long/2addr v7, v2

    iget-wide v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    add-long/2addr v7, v9

    iget-wide v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    add-long/2addr v7, v9

    long-to-float v5, v7

    .line 415
    .local v5, totalMem:F
    iget-object v7, p0, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    iget-wide v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    long-to-float v8, v8

    div-float/2addr v8, v5

    iget-wide v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    long-to-float v9, v9

    div-float/2addr v9, v5

    iget-wide v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    long-to-float v10, v10

    div-float/2addr v10, v5

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 418
    monitor-exit v6

    .line 419
    return-void

    .line 418
    .end local v5           #totalMem:F
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 499
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 500
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningProcessesView$ActiveItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 502
    .local v0, ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    iget-object v2, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 504
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 509
    .end local v0           #ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    :cond_1
    return-void
.end method
