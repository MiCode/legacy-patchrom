.class Lcom/android/settings/applications/RunningState$MergedItem;
.super Lcom/android/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MergedItem"
.end annotation


# instance fields
.field private mLastNumProcesses:I

.field private mLastNumServices:I

.field final mOtherProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

.field final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 456
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/RunningState$BaseItem;-><init>(Z)V

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 453
    iput v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    iput v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    .line 457
    return-void
.end method


# virtual methods
.method update(Landroid/content/Context;Z)Z
    .locals 10
    .parameter "context"
    .parameter "background"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 460
    iget-object v5, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v5, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 461
    iget-object v5, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 462
    iget-object v5, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 463
    iput-boolean p2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    .line 465
    iget-boolean v5, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-nez v5, :cond_2

    .line 466
    iget-object v5, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v5, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v5, :cond_4

    move v5, v8

    :goto_0
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int v1, v5, v6

    .line 467
    .local v1, numProcesses:I
    iget-object v5, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 468
    .local v2, numServices:I
    iget v5, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    if-ne v5, v1, :cond_0

    iget v5, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    if-eq v5, v2, :cond_2

    .line 469
    :cond_0
    iput v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    .line 470
    iput v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    .line 471
    const v3, 0x7f0803b6

    .line 472
    .local v3, resid:I
    if-eq v1, v8, :cond_6

    .line 473
    if-eq v2, v8, :cond_5

    const v5, 0x7f0803b9

    move v3, v5

    .line 479
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v3, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    .line 484
    .end local v1           #numProcesses:I
    .end local v2           #numServices:I
    .end local v3           #resid:I
    :cond_2
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    .line 485
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v5, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 486
    iget-object v5, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 487
    .local v4, si:Lcom/android/settings/applications/RunningState$ServiceItem;
    iget-wide v5, v4, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_3

    iget-wide v5, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    iget-wide v7, v4, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    .line 488
    iget-wide v5, v4, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v5, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    .line 485
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v4           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_4
    move v5, v9

    .line 466
    goto :goto_0

    .line 473
    .restart local v1       #numProcesses:I
    .restart local v2       #numServices:I
    .restart local v3       #resid:I
    :cond_5
    const v5, 0x7f0803b8

    move v3, v5

    goto :goto_1

    .line 476
    :cond_6
    if-eq v2, v8, :cond_1

    .line 477
    const v3, 0x7f0803b7

    goto :goto_1

    .line 492
    .end local v1           #numProcesses:I
    .end local v2           #numServices:I
    .end local v3           #resid:I
    .restart local v0       #i:I
    :cond_7
    return v9
.end method

.method updateSize(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 496
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-wide v2, v2, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    iput-wide v2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    .line 497
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 498
    iget-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    iget-object v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-wide v5, v2, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    add-long v2, v3, v5

    iput-wide v2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_0
    iget-wide v2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, sizeStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 504
    iput-object v1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    move v2, v7

    .line 510
    :goto_1
    return v2

    :cond_1
    move v2, v7

    goto :goto_1
.end method
