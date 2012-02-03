.class Landroid/widget/ExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "ExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListConnector$PositionMetadata;,
        Landroid/widget/ExpandableListConnector$GroupMetadata;,
        Landroid/widget/ExpandableListConnector$MyDataSetObserver;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private mMaxExpGroupCount:I

.field private mTotalExpChildrenCount:I


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .parameter "expandableListAdapter"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 70
    new-instance v0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/ExpandableListConnector$MyDataSetObserver;-><init>(Landroid/widget/ExpandableListConnector;)V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ExpandableListConnector;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 13
    .parameter "forceChildrenCountRefresh"
    .parameter "syncGroupPositions"

    .prologue
    const/4 v12, -0x1

    .line 518
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 519
    .local v2, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 520
    .local v3, egmlSize:I
    const/4 v0, 0x0

    .line 523
    .local v0, curFlPos:I
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 525
    if-eqz p2, :cond_3

    .line 527
    const/4 v8, 0x0

    .line 529
    .local v8, positionsChanged:Z
    const/4 v9, 0x1

    sub-int v5, v3, v9

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_2

    .line 530
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 531
    .local v1, curGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-wide v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gId:J

    iget v11, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v9, v10, v11}, Landroid/widget/ExpandableListConnector;->findGroupPosition(JI)I

    move-result v7

    .line 532
    .local v7, newGPos:I
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v7, v9, :cond_1

    .line 533
    if-ne v7, v12, :cond_0

    .line 535
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 536
    add-int/lit8 v3, v3, -0x1

    .line 539
    :cond_0
    iput v7, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 540
    if-nez v8, :cond_1

    const/4 v8, 0x1

    .line 529
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 544
    .end local v1           #curGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v7           #newGPos:I
    :cond_2
    if-eqz v8, :cond_3

    .line 546
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 551
    .end local v5           #i:I
    .end local v8           #positionsChanged:Z
    :cond_3
    const/4 v6, 0x0

    .line 552
    .local v6, lastGPos:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 554
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 560
    .restart local v1       #curGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v9, v12, :cond_4

    if-eqz p1, :cond_5

    .line 561
    :cond_4
    iget-object v9, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v10, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v9, v10}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    .line 570
    .local v4, gChildrenCount:I
    :goto_2
    iget v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v9, v4

    iput v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 577
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v6

    add-int/2addr v0, v9

    .line 578
    iget v6, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 581
    iput v0, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 582
    add-int/2addr v0, v4

    .line 583
    iput v0, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 552
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 566
    .end local v4           #gChildrenCount:I
    :cond_5
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v10, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v4, v9, v10

    .restart local v4       #gChildrenCount:I
    goto :goto_2

    .line 585
    .end local v1           #curGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v4           #gChildrenCount:I
    :cond_6
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method collapseGroup(I)Z
    .locals 4
    .parameter "groupPos"

    .prologue
    const/4 v3, -0x1

    .line 593
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 595
    .local v0, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 599
    :goto_0
    return v2

    .line 597
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v1

    .line 598
    .local v1, retValue:Z
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    move v2, v1

    .line 599
    goto :goto_0
.end method

.method collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .locals 3
    .parameter "posMetadata"

    .prologue
    const/4 v2, 0x0

    .line 612
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-nez v0, :cond_0

    move v0, v2

    .line 626
    :goto_0
    return v0

    .line 615
    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 618
    invoke-direct {p0, v2, v2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 621
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 624
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 626
    const/4 v0, 0x1

    goto :goto_0
.end method

.method expandGroup(I)Z
    .locals 4
    .parameter "groupPos"

    .prologue
    const/4 v3, -0x1

    .line 634
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 636
    .local v0, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v1

    .line 637
    .local v1, retValue:Z
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 638
    return v1
.end method

.method expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .locals 9
    .parameter "posMetadata"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 646
    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    if-gez v3, :cond_0

    .line 648
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Need group"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 651
    :cond_0
    iget v3, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    if-nez v3, :cond_1

    move v3, v6

    .line 690
    :goto_0
    return v3

    .line 654
    :cond_1
    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_0

    .line 657
    :cond_2
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    if-lt v3, v4, :cond_3

    .line 661
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 663
    .local v0, collapsedGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 665
    .local v1, collapsedIndex:I
    iget v3, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v3}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    .line 668
    iget v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v3, v1, :cond_3

    .line 669
    iget v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    sub-int/2addr v3, v8

    iput v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 673
    .end local v0           #collapsedGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v1           #collapsedIndex:I
    :cond_3
    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v5, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v4, v5}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    invoke-static {v7, v7, v3, v4, v5}, Landroid/widget/ExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/ExpandableListConnector$GroupMetadata;

    move-result-object v2

    .line 679
    .local v2, expandedGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 682
    invoke-direct {p0, v6, v6}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 685
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 688
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    move v3, v8

    .line 690
    goto :goto_0
.end method

.method findGroupPosition(JI)I
    .locals 17
    .parameter "groupIdToMatch"
    .parameter "seedGroupPosition"

    .prologue
    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    move-object v13, v0

    invoke-interface {v13}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v3

    .line 775
    .local v3, count:I
    if-nez v3, :cond_0

    .line 776
    const/4 v13, -0x1

    .line 845
    :goto_0
    return v13

    .line 780
    :cond_0
    const-wide/high16 v13, -0x8000

    cmp-long v13, p1, v13

    if-nez v13, :cond_1

    .line 781
    const/4 v13, -0x1

    goto :goto_0

    .line 785
    :cond_1
    const/4 v13, 0x0

    move v0, v13

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 786
    const/4 v13, 0x1

    sub-int v13, v3, v13

    move v0, v13

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 788
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x64

    add-long v4, v13, v15

    .line 793
    .local v4, endTime:J
    move/from16 v6, p3

    .line 796
    .local v6, first:I
    move/from16 v9, p3

    .line 799
    .local v9, last:I
    const/4 v10, 0x0

    .line 809
    .local v10, next:Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    .line 810
    .local v2, adapter:Landroid/widget/ExpandableListAdapter;
    if-nez v2, :cond_4

    .line 811
    const/4 v13, -0x1

    goto :goto_0

    .line 829
    .local v7, hitFirst:Z
    .local v8, hitLast:Z
    .local v11, rowId:J
    :cond_2
    if-nez v7, :cond_3

    if-eqz v10, :cond_9

    if-nez v8, :cond_9

    .line 831
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 832
    move/from16 p3, v9

    .line 834
    const/4 v10, 0x0

    .line 814
    .end local v7           #hitFirst:Z
    .end local v8           #hitLast:Z
    .end local v11           #rowId:J
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    cmp-long v13, v13, v4

    if-gtz v13, :cond_6

    .line 815
    move-object v0, v2

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v11

    .line 816
    .restart local v11       #rowId:J
    cmp-long v13, v11, p1

    if-nez v13, :cond_5

    move/from16 v13, p3

    .line 818
    goto :goto_0

    .line 821
    :cond_5
    const/4 v13, 0x1

    sub-int v13, v3, v13

    if-ne v9, v13, :cond_7

    const/4 v13, 0x1

    move v8, v13

    .line 822
    .restart local v8       #hitLast:Z
    :goto_2
    if-nez v6, :cond_8

    const/4 v13, 0x1

    move v7, v13

    .line 824
    .restart local v7       #hitFirst:Z
    :goto_3
    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    .line 845
    .end local v7           #hitFirst:Z
    .end local v8           #hitLast:Z
    .end local v11           #rowId:J
    :cond_6
    const/4 v13, -0x1

    goto :goto_0

    .line 821
    .restart local v11       #rowId:J
    :cond_7
    const/4 v13, 0x0

    move v8, v13

    goto :goto_2

    .line 822
    .restart local v8       #hitLast:Z
    :cond_8
    const/4 v13, 0x0

    move v7, v13

    goto :goto_3

    .line 835
    .restart local v7       #hitFirst:Z
    :cond_9
    if-nez v8, :cond_a

    if-nez v10, :cond_4

    if-nez v7, :cond_4

    .line 837
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 838
    move/from16 p3, v6

    .line 840
    const/4 v10, 0x1

    goto :goto_1
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 723
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 724
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 725
    check-cast v0, Landroid/widget/Filterable;

    .end local v0           #adapter:Landroid/widget/ExpandableListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 727
    :goto_0
    return-object v1

    .restart local v0       #adapter:Landroid/widget/ExpandableListAdapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 25
    .parameter "pos"

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 260
    .local v20, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 263
    .local v23, numExpGroups:I
    const/4 v13, 0x0

    .line 264
    .local v13, leftExpGroupIndex:I
    const/4 v2, 0x1

    sub-int v19, v23, v2

    .line 265
    .local v19, rightExpGroupIndex:I
    const/16 v22, 0x0

    .line 268
    .local v22, midExpGroupIndex:I
    if-nez v23, :cond_9

    .line 274
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v2, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    move/from16 v7, v22

    .line 364
    .end local v22           #midExpGroupIndex:I
    .local v7, midExpGroupIndex:I
    :goto_0
    return-object v2

    .line 283
    :cond_0
    :goto_1
    move v0, v13

    move/from16 v1, v19

    if-gt v0, v1, :cond_5

    .line 284
    sub-int v2, v19, v13

    div-int/lit8 v2, v2, 0x2

    add-int v7, v2, v13

    .line 285
    move-object/from16 v0, v20

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 287
    .local v6, midExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v2, v0

    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-le v2, v3, :cond_1

    .line 291
    add-int/lit8 v13, v7, 0x1

    goto :goto_1

    .line 292
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v2, v0

    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v3, :cond_2

    .line 296
    const/4 v2, 0x1

    sub-int v19, v7, v2

    goto :goto_1

    .line 297
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v2, v0

    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, v3, :cond_0

    .line 302
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 304
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move v5, v0

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 306
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 308
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move v5, v0

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 312
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 321
    .end local v6           #midExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 323
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 331
    :cond_6
    if-le v13, v7, :cond_7

    .line 342
    const/4 v2, 0x1

    sub-int v2, v13, v2

    move-object/from16 v0, v20

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 343
    .local v21, leftExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move v2, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v3, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move v4, v0

    sub-int/2addr v3, v4

    add-int v8, v2, v3

    .line 347
    .local v8, flPos:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v9, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v10, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move v11, v0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 349
    .end local v8           #flPos:I
    .end local v21           #leftExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_7
    move/from16 v0, v19

    move v1, v7

    if-ge v0, v1, :cond_8

    .line 357
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 358
    .local v24, rightExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move v2, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v4, v0

    sub-int/2addr v3, v4

    sub-int v8, v2, v3

    .line 361
    .restart local v8       #flPos:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v15, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move v14, v8

    invoke-static/range {v14 .. v19}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 364
    .end local v8           #flPos:I
    .end local v24           #rightExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v7           #midExpGroupIndex:I
    .restart local v22       #midExpGroupIndex:I
    :cond_9
    move/from16 v7, v22

    .end local v22           #midExpGroupIndex:I
    .restart local v7       #midExpGroupIndex:I
    goto/16 :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .parameter "flatListPos"

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 403
    .local v0, posMetadata:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 404
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .line 414
    .local v1, retValue:Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 416
    return-object v1

    .line 406
    .end local v1           #retValue:Ljava/lang/Object;
    :cond_0
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 407
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v4, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #retValue:Ljava/lang/Object;
    goto :goto_0

    .line 411
    .end local v1           #retValue:Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Flat list position is of unknown type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getItemId(I)J
    .locals 10
    .parameter "flatListPos"

    .prologue
    .line 420
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 421
    .local v4, posMetadata:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v8, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v2

    .line 424
    .local v2, groupId:J
    iget-object v7, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v7, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 425
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v5

    .line 435
    .local v5, retValue:J
    :goto_0
    invoke-virtual {v4}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 437
    return-wide v5

    .line 426
    .end local v5           #retValue:J
    :cond_0
    iget-object v7, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v7, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 427
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v8, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v9, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v9, v9, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v7, v8, v9}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 429
    .local v0, childId:J
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v5

    .line 430
    .restart local v5       #retValue:J
    goto :goto_0

    .line 432
    .end local v0           #childId:J
    .end local v5           #retValue:J
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Flat list position is of unknown type"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "flatListPos"

    .prologue
    const/4 v5, 0x2

    .line 464
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    iget-object v2, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 467
    .local v2, pos:Landroid/widget/ExpandableListPosition;
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v4, v4, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v4, :cond_1

    .line 468
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 470
    .local v0, adapter:Landroid/widget/HeterogeneousExpandableList;
    iget v4, v2, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v4, v5, :cond_0

    .line 471
    iget v4, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v4}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v3

    .line 484
    .end local v0           #adapter:Landroid/widget/HeterogeneousExpandableList;
    .local v3, retValue:I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 486
    return v3

    .line 473
    .end local v3           #retValue:I
    .restart local v0       #adapter:Landroid/widget/HeterogeneousExpandableList;
    :cond_0
    iget v4, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v5, v2, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v4, v5}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v1

    .line 474
    .local v1, childType:I
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v4

    add-int v3, v4, v1

    .restart local v3       #retValue:I
    goto :goto_0

    .line 477
    .end local v0           #adapter:Landroid/widget/HeterogeneousExpandableList;
    .end local v1           #childType:I
    .end local v3           #retValue:I
    :cond_1
    iget v4, v2, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v4, v5, :cond_2

    .line 478
    const/4 v3, 0x0

    .restart local v3       #retValue:I
    goto :goto_0

    .line 480
    .end local v3           #retValue:I
    :cond_2
    const/4 v3, 0x1

    .restart local v3       #retValue:I
    goto :goto_0
.end method

.method getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 21
    .parameter "flPos"

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object v14, v0

    .line 110
    .local v14, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 113
    .local v18, numExpGroups:I
    const/16 v16, 0x0

    .line 114
    .local v16, leftExpGroupIndex:I
    const/4 v2, 0x1

    sub-int v20, v18, v2

    .line 115
    .local v20, rightExpGroupIndex:I
    const/16 v17, 0x0

    .line 118
    .local v17, midExpGroupIndex:I
    if-nez v18, :cond_7

    .line 124
    const/4 v3, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v2, p1

    move/from16 v4, p1

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    move/from16 v7, v17

    .line 243
    .end local v17           #midExpGroupIndex:I
    .local v7, midExpGroupIndex:I
    :goto_0
    return-object v2

    .line 140
    :cond_0
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    .line 141
    sub-int v2, v20, v16

    div-int/lit8 v2, v2, 0x2

    add-int v7, v2, v16

    .line 144
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 146
    .local v6, midExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    move v1, v2

    if-le v0, v1, :cond_1

    .line 151
    add-int/lit8 v16, v7, 0x1

    goto :goto_1

    .line 152
    :cond_1
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    move v1, v2

    if-ge v0, v1, :cond_2

    .line 157
    const/4 v2, 0x1

    sub-int v20, v7, v2

    goto :goto_1

    .line 158
    :cond_2
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_3

    .line 163
    const/4 v3, 0x2

    iget v4, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v5, -0x1

    move/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 165
    :cond_3
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    move v1, v2

    if-gt v0, v1, :cond_0

    .line 175
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v2, v2, 0x1

    sub-int v5, p1, v2

    .line 176
    .local v5, childPos:I
    const/4 v3, 0x1

    iget v4, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 192
    .end local v5           #childPos:I
    .end local v6           #midExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_4
    const/4 v13, 0x0

    .line 195
    .local v13, insertPosition:I
    const/4 v10, 0x0

    .line 202
    .local v10, groupPos:I
    move/from16 v0, v16

    move v1, v7

    if-le v0, v1, :cond_5

    .line 210
    const/4 v2, 0x1

    sub-int v2, v16, v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 212
    .local v15, leftExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    move/from16 v13, v16

    .line 218
    iget v2, v15, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v2, p1, v2

    iget v3, v15, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    add-int v10, v2, v3

    .line 243
    .end local v15           #leftExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :goto_2
    const/4 v9, 0x2

    const/4 v11, -0x1

    const/4 v12, 0x0

    move/from16 v8, p1

    invoke-static/range {v8 .. v13}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 220
    :cond_5
    move/from16 v0, v20

    move v1, v7

    if-ge v0, v1, :cond_6

    .line 227
    add-int/lit8 v20, v20, 0x1

    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 229
    .local v19, rightExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    move/from16 v13, v20

    .line 237
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move v2, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move v3, v0

    sub-int v3, v3, p1

    sub-int v10, v2, v3

    .line 238
    goto :goto_2

    .line 240
    .end local v19           #rightExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown state"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v7           #midExpGroupIndex:I
    .end local v10           #groupPos:I
    .end local v13           #insertPosition:I
    .restart local v17       #midExpGroupIndex:I
    :cond_7
    move/from16 v7, v17

    .end local v17           #midExpGroupIndex:I
    .restart local v7       #midExpGroupIndex:I
    goto/16 :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "flatListPos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 441
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 444
    .local v6, posMetadata:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 445
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-virtual {v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    invoke-interface {v0, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 457
    .local v7, retValue:Landroid/view/View;
    :goto_0
    invoke-virtual {v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 459
    return-object v7

    .line 447
    .end local v7           #retValue:Landroid/view/View;
    :cond_0
    iget-object v0, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v0, v2, :cond_2

    .line 448
    iget-object v0, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v0, p1, :cond_1

    move v3, v2

    .line 450
    .local v3, isLastChild:Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v2, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 452
    .restart local v7       #retValue:Landroid/view/View;
    goto :goto_0

    .line 448
    .end local v3           #isLastChild:Z
    .end local v7           #retValue:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    .line 454
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flat list position is of unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewTypeCount()I
    .locals 3

    .prologue
    .line 491
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v1, v1, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v1, :cond_0

    .line 492
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 494
    .local v0, adapter:Landroid/widget/HeterogeneousExpandableList;
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 496
    .end local v0           #adapter:Landroid/widget/HeterogeneousExpandableList;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 757
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 758
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .parameter "flatListPos"

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    iget-object v0, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 378
    .local v0, pos:Landroid/widget/ExpandableListPosition;
    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 379
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v3, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v4, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v1

    .line 385
    .local v1, retValue:Z
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 387
    return v1

    .line 382
    .end local v1           #retValue:Z
    :cond_0
    const/4 v1, 0x1

    .restart local v1       #retValue:Z
    goto :goto_0
.end method

.method public isGroupExpanded(I)Z
    .locals 4
    .parameter "groupPosition"

    .prologue
    const/4 v3, 0x1

    .line 700
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 701
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 703
    .local v0, groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_0

    move v2, v3

    .line 708
    .end local v0           #groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :goto_1
    return v2

    .line 700
    .restart local v0       #groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 708
    .end local v0           #groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .parameter "expandableListAdapter"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 91
    :cond_0
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 92
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 93
    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, expandedGroupMetadataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    const/4 v3, 0x1

    .line 737
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v2, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 744
    .local v1, numGroups:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 745
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v1, :cond_0

    .line 744
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 751
    :cond_2
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 752
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    goto :goto_0
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0
    .parameter "maxExpGroupCount"

    .prologue
    .line 715
    iput p1, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 716
    return-void
.end method
