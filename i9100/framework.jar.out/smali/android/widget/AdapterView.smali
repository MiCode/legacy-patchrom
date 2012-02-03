.class public abstract Landroid/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterView$1;,
        Landroid/widget/AdapterView$SelectionNotifier;,
        Landroid/widget/AdapterView$AdapterDataSetObserver;,
        Landroid/widget/AdapterView$AdapterContextMenuInfo;,
        Landroid/widget/AdapterView$OnItemSelectedListener;,
        Landroid/widget/AdapterView$OnItemLongClickListener;,
        Landroid/widget/AdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 59
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 76
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 86
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 118
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 144
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 150
    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 155
    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 161
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 193
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 198
    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 217
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 76
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 86
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 118
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 144
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 150
    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 155
    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 161
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 193
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 198
    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 217
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 76
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 86
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 118
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 144
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 150
    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 155
    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 161
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 193
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 198
    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 217
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 229
    return-void
.end method

.method static synthetic access$000(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 865
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 876
    :goto_0
    return-void

    .line 868
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 869
    .local v3, selection:I
    if-ltz v3, :cond_1

    .line 870
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 871
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 874
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .parameter "empty"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 707
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    const/4 p1, 0x0

    .line 711
    :cond_0
    if-eqz p1, :cond_3

    .line 712
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 713
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 714
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 723
    :goto_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 724
    iget v2, p0, Landroid/view/View;->mLeft:I

    iget v3, p0, Landroid/view/View;->mTop:I

    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 730
    :cond_1
    :goto_1
    return-void

    .line 717
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_0

    .line 727
    :cond_3
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 728
    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 435
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 448
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 476
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 461
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 909
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkFocus()V
    .locals 6

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 688
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 689
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_4

    :cond_0
    move v1, v5

    .line 690
    .local v1, empty:Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    move v2, v5

    .line 694
    .local v2, focusable:Z
    :goto_1
    if-eqz v2, :cond_6

    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_6

    move v3, v5

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 695
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_7

    move v3, v5

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 696
    iget-object v3, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 697
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_2
    move v3, v5

    :goto_4
    invoke-direct {p0, v3}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 699
    :cond_3
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_4
    move v1, v4

    .line 689
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_5
    move v2, v4

    .line 690
    goto :goto_1

    .restart local v2       #focusable:Z
    :cond_6
    move v3, v4

    .line 694
    goto :goto_2

    :cond_7
    move v3, v4

    .line 695
    goto :goto_3

    :cond_8
    move v3, v4

    .line 697
    goto :goto_4
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 976
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 977
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 978
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 979
    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 981
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 880
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    .line 885
    .local v0, populated:Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 886
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 891
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 892
    .local v1, selectedView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 893
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 896
    :cond_1
    if-nez v0, :cond_3

    .line 897
    if-eqz v1, :cond_2

    .line 898
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 900
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 901
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 904
    :cond_3
    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 767
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 768
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 759
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 760
    return-void
.end method

.method findSyncPosition()I
    .locals 20

    .prologue
    .line 992
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v3, v0

    .line 994
    .local v3, count:I
    if-nez v3, :cond_0

    .line 995
    const/16 v16, -0x1

    .line 1067
    :goto_0
    return v16

    .line 998
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/AdapterView;->mSyncRowId:J

    move-wide v9, v0

    .line 999
    .local v9, idToMatch:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    move v15, v0

    .line 1002
    .local v15, seed:I
    const-wide/high16 v16, -0x8000

    cmp-long v16, v9, v16

    if-nez v16, :cond_1

    .line 1003
    const/16 v16, -0x1

    goto :goto_0

    .line 1007
    :cond_1
    const/16 v16, 0x0

    move/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1008
    const/16 v16, 0x1

    sub-int v16, v3, v16

    move/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1010
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .line 1015
    .local v4, endTime:J
    move v6, v15

    .line 1018
    .local v6, first:I
    move v11, v15

    .line 1021
    .local v11, last:I
    const/4 v12, 0x0

    .line 1031
    .local v12, next:Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1032
    .local v2, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v2, :cond_4

    .line 1033
    const/16 v16, -0x1

    goto :goto_0

    .line 1051
    .local v7, hitFirst:Z
    .local v8, hitLast:Z
    .local v13, rowId:J
    :cond_2
    if-nez v7, :cond_3

    if-eqz v12, :cond_9

    if-nez v8, :cond_9

    .line 1053
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 1054
    move v15, v11

    .line 1056
    const/4 v12, 0x0

    .line 1036
    .end local v7           #hitFirst:Z
    .end local v8           #hitLast:Z
    .end local v13           #rowId:J
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gtz v16, :cond_6

    .line 1037
    invoke-interface {v2, v15}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v13

    .line 1038
    .restart local v13       #rowId:J
    cmp-long v16, v13, v9

    if-nez v16, :cond_5

    move/from16 v16, v15

    .line 1040
    goto :goto_0

    .line 1043
    :cond_5
    const/16 v16, 0x1

    sub-int v16, v3, v16

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    const/16 v16, 0x1

    move/from16 v8, v16

    .line 1044
    .restart local v8       #hitLast:Z
    :goto_2
    if-nez v6, :cond_8

    const/16 v16, 0x1

    move/from16 v7, v16

    .line 1046
    .restart local v7       #hitFirst:Z
    :goto_3
    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    .line 1067
    .end local v7           #hitFirst:Z
    .end local v8           #hitLast:Z
    .end local v13           #rowId:J
    :cond_6
    const/16 v16, -0x1

    goto :goto_0

    .line 1043
    .restart local v13       #rowId:J
    :cond_7
    const/16 v16, 0x0

    move/from16 v8, v16

    goto :goto_2

    .line 1044
    .restart local v8       #hitLast:Z
    :cond_8
    const/16 v16, 0x0

    move/from16 v7, v16

    goto :goto_3

    .line 1057
    .restart local v7       #hitFirst:Z
    :cond_9
    if-nez v8, :cond_a

    if-nez v12, :cond_4

    if-nez v7, :cond_4

    .line 1059
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 1060
    move v15, v6

    .line 1062
    const/4 v12, 0x1

    goto :goto_1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 565
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 648
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 608
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 739
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 740
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 744
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 745
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v1, -0x8000

    :goto_0
    return-wide v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 618
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 269
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 332
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 376
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .parameter "view"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v6, -0x1

    .line 578
    move-object v3, p1

    .line 581
    .local v3, listItem:Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, v:Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 582
    move-object v3, v4

    goto :goto_0

    .line 584
    .end local v4           #v:Landroid/view/View;
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/ClassCastException;
    move v5, v6

    .line 598
    .end local v1           #e:Ljava/lang/ClassCastException;
    :goto_1
    return v5

    .line 590
    .restart local v4       #v:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    .line 591
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 592
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 593
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 591
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v5, v6

    .line 598
    goto :goto_1
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 549
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 550
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 551
    .local v1, selection:I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 552
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 554
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 535
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 526
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 913
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 914
    .local v0, count:I
    const/4 v1, 0x0

    .line 916
    .local v1, found:Z
    if-lez v0, :cond_4

    .line 921
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 924
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 928
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v2

    .line 929
    .local v2, newPos:I
    if-ltz v2, :cond_0

    .line 931
    invoke-virtual {p0, v2, v6}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 932
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_0

    .line 934
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 935
    const/4 v1, 0x1

    .line 939
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_0
    if-nez v1, :cond_4

    .line 941
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 944
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_1

    .line 945
    sub-int v2, v0, v6

    .line 947
    :cond_1
    if-gez v2, :cond_2

    .line 948
    const/4 v2, 0x0

    .line 952
    :cond_2
    invoke-virtual {p0, v2, v6}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 953
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_3

    .line 955
    invoke-virtual {p0, v2, v5}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 957
    :cond_3
    if-ltz v3, :cond_4

    .line 958
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 959
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 960
    const/4 v1, 0x1

    .line 964
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_4
    if-nez v1, :cond_5

    .line 966
    iput v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 967
    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 968
    iput v7, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 969
    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 970
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 971
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 973
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 658
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1079
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 823
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 824
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 825
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 516
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    .line 517
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->playSoundEffect(I)V

    .line 284
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 285
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1112
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1113
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1114
    iget v2, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1115
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1117
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1118
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1119
    iget v2, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1120
    if-eqz v1, :cond_0

    .line 1121
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1123
    :cond_0
    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1140
    .end local v1           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1126
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1127
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1128
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1129
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1133
    :goto_1
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1134
    if-eqz v1, :cond_3

    .line 1135
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1137
    :cond_3
    iput v5, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_0

    .line 1131
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 511
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 489
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 501
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 843
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 844
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 849
    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 850
    new-instance v0, Landroid/widget/AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView$1;)V

    iput-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    .line 852
    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 859
    :cond_2
    :goto_0
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 860
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    .line 862
    :cond_3
    return-void

    .line 854
    :cond_4
    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    goto :goto_0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .parameter "emptyView"

    .prologue
    .line 633
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 635
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 636
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    move v1, v2

    .line 637
    .local v1, empty:Z
    :goto_0
    invoke-direct {p0, v1}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 638
    return-void

    .line 636
    .end local v1           #empty:Z
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 663
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 664
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    move v1, v4

    .line 666
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    .line 667
    if-nez p1, :cond_1

    .line 668
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 671
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    move v2, v4

    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 672
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v3

    .line 664
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v2, v3

    .line 671
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 676
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 677
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    move v1, v3

    .line 679
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 680
    if-eqz p1, :cond_1

    .line 681
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    .line 684
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    move v2, v3

    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 685
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v4

    .line 677
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v2, v4

    .line 684
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1097
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1098
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1100
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1101
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1102
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1104
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 750
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 261
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 262
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 321
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setLongClickable(Z)V

    .line 324
    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 325
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 372
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 373
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1087
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1088
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1089
    return-void
.end method

.method public abstract setSelection(I)V
.end method
