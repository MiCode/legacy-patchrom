.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$TwFlingRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_BOUNCE:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final MAX_NUM_POINTERS:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field protected mBounceBlocked:Z

.field protected mBounceController:Landroid/widget/BounceController;

.field protected mBounceEnabled:Z

.field protected mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeGlow;

.field private mEdgeGlowTop:Landroid/widget/EdgeGlow;

.field mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/FastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field private mPointerDownY:[F

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field private mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 664
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 213
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 228
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 238
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 244
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 249
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 254
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 259
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 264
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 269
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 274
    iput v2, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 321
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 352
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 390
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 410
    iput v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 412
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 431
    iput v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 434
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 437
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 479
    iput v2, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 498
    new-array v1, v4, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 508
    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 556
    iput v2, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 633
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    .line 639
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    .line 2268
    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/widget/AbsListView;->mPointerDownY:[F

    .line 665
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 667
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 668
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 669
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 670
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 671
    return-void

    .line 2268
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 674
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 675
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 678
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 228
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 238
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 244
    new-instance v9, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 249
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 254
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 259
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 264
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 269
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 274
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 321
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 352
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 390
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 410
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 412
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 431
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 434
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 437
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 479
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 498
    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 508
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 556
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 633
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    .line 639
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    .line 2268
    const/4 v9, 0x6

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    iput-object v9, p0, Landroid/widget/AbsListView;->mPointerDownY:[F

    .line 679
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 681
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 684
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 685
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 686
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 689
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 692
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 693
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 695
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 696
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 698
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 699
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 701
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 703
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 705
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 707
    .local v1, color:I
    const-string v9, "GT-I9100"

    const-string v10, "SC-02C"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 708
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 713
    :goto_0
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 714
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 716
    const/16 v9, 0x8

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 717
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 719
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 720
    return-void

    .line 710
    .end local v3           #enableFastScroll:Z
    .end local v5           #smoothScrollbar:Z
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    goto :goto_0

    .line 2268
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1148
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Filterable;

    invoke-interface {p0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/AbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/AbsListView;)Landroid/widget/EdgeGlow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/AbsListView;)Landroid/widget/EdgeGlow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 99
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 99
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3500(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3700(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4300(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4400(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4500(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4600(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/AbsListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$702(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const-string v7, "ViewConsistency"

    const-string v6, "AbsListView "

    .line 4983
    if-nez p1, :cond_0

    const/4 v4, 0x1

    .line 5001
    :goto_0
    return v4

    .line 4984
    :cond_0
    const/4 v2, 0x1

    .line 4986
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4987
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 4988
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4989
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4990
    const/4 v2, 0x0

    .line 4991
    const-string v4, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsListView "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4994
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 4995
    const/4 v2, 0x0

    .line 4996
    const-string v4, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsListView "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4987
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #view:Landroid/view/View;
    :cond_3
    move v4, v2

    .line 5001
    goto :goto_0
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 3942
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 3943
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 3958
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3959
    return-void
.end method

.method private contentFits()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 770
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 771
    .local v0, childCount:I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eq v0, v1, :cond_0

    move v1, v3

    .line 775
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_1

    sub-int v1, v0, v4

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mBottom:I

    if-gt v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3934
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 3935
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3936
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3937
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 3939
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 4729
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 4730
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4731
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 4732
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 4734
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x1090070

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 4739
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 4741
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 4742
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4743
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4744
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4745
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 4746
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4747
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4748
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4749
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4750
    iput-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 4751
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4752
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 4754
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 4755
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x1030071

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4759
    :goto_0
    return-void

    .line 4757
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x1030072

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 4505
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 4506
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4508
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1699
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1700
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1701
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1702
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1704
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 5005
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_0

    .line 5006
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->finish()V

    .line 5007
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->finish()V

    .line 5009
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 4551
    sparse-switch p2, :sswitch_data_0

    .line 4577
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4553
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 4554
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 4555
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 4556
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 4580
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 4581
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 4582
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 4559
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 4560
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 4561
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 4562
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 4563
    .restart local v1       #dY:I
    goto :goto_0

    .line 4565
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 4566
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 4567
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 4568
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 4569
    .restart local v1       #dY:I
    goto :goto_0

    .line 4571
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 4572
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 4573
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 4574
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 4575
    .restart local v1       #dY:I
    goto :goto_0

    .line 4551
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 724
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 725
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 726
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 727
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 728
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 730
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 731
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 732
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 733
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 734
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 735
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 737
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 738
    new-instance v1, Landroid/widget/BounceController;

    invoke-direct {v1, p0}, Landroid/widget/BounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    .line 739
    iget-object v1, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v1, v2}, Landroid/widget/BounceController;->getBounceRunnable(I)Landroid/widget/BounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    .line 741
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 3195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 3197
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3198
    .local v1, pointerId:I
    iget v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v3, :cond_1

    .line 3202
    if-nez v2, :cond_2

    const/4 v3, 0x1

    move v0, v3

    .line 3203
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3204
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3205
    iput v5, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3206
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3207
    iget-object v3, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 3208
    iget-object v3, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3217
    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v3, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 3219
    .end local v0           #newPointerIndex:I
    :cond_1
    return-void

    :cond_2
    move v0, v5

    .line 3202
    goto :goto_0
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 2034
    const/4 v6, 0x0

    .line 2036
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2037
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2040
    :cond_0
    if-nez v6, :cond_1

    .line 2041
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2042
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2044
    :cond_1
    if-eqz v6, :cond_2

    .line 2045
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 2047
    :cond_2
    return v6
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 4524
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4525
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 4526
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 4529
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 4530
    .local v0, bottomGap:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4531
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4536
    :goto_0
    return-void

    .line 4534
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1625
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1627
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 4515
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4516
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 4517
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 4519
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 4521
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 8
    .parameter "deltaY"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2207
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2208
    .local v0, distance:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-eqz v4, :cond_3

    move v3, v7

    .line 2209
    .local v3, overscroll:Z
    :goto_0
    if-nez v3, :cond_0

    iget v4, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v0, v4, :cond_5

    .line 2210
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 2211
    if-eqz v3, :cond_4

    const/4 v4, 0x5

    :goto_1
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2212
    iput p1, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2213
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2217
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_1

    .line 2218
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2220
    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2221
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2222
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2223
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 2225
    :cond_2
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2228
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    move v4, v7

    .line 2232
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :goto_2
    return v4

    .end local v3           #overscroll:Z
    :cond_3
    move v3, v6

    .line 2208
    goto :goto_0

    .line 2211
    .restart local v3       #overscroll:Z
    :cond_4
    const/4 v4, 0x3

    goto :goto_1

    :cond_5
    move v4, v6

    .line 2232
    goto :goto_2
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 952
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 954
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3226
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 3227
    .local v2, count:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3228
    .local v3, firstPosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3230
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 3241
    :cond_0
    return-void

    .line 3234
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 3235
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3236
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3237
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3239
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 3234
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 4839
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 4801
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 4720
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 4860
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 4765
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 4766
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4767
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 4768
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4769
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 4772
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1225
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1226
    .local v1, count:I
    if-lez v1, :cond_5

    .line 1227
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_4

    .line 1228
    mul-int/lit8 v2, v1, 0x64

    .line 1230
    .local v2, extent:I
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1231
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1232
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1233
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1234
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 1237
    :cond_0
    sub-int v8, v1, v10

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1238
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1239
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1240
    if-lez v3, :cond_1

    .line 1241
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 1249
    :cond_1
    move v5, v2

    .line 1252
    .local v5, retVal:I
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v8, :cond_3

    .line 1253
    iget-object v8, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v8, v8, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->computeVerticalScrollRange()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 1256
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v9, v9, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 1258
    .local v4, ratio:F
    int-to-float v8, v5

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 1261
    .end local v4           #ratio:F
    :cond_2
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1269
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v5           #retVal:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :goto_0
    return v8

    .restart local v0       #bottom:I
    .restart local v2       #extent:I
    .restart local v3       #height:I
    .restart local v5       #retVal:I
    .restart local v6       #top:I
    .restart local v7       #view:Landroid/view/View;
    :cond_3
    move v8, v5

    .line 1264
    goto :goto_0

    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v5           #retVal:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :cond_4
    move v8, v10

    .line 1266
    goto :goto_0

    :cond_5
    move v8, v9

    .line 1269
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 18

    .prologue
    .line 1274
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    .line 1275
    .local v5, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 1276
    .local v2, childCount:I
    if-ltz v5, :cond_5

    if-lez v2, :cond_5

    .line 1281
    const/4 v9, 0x0

    .line 1282
    .local v9, retVal:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    move v14, v0

    if-eqz v14, :cond_2

    .line 1283
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1284
    .local v13, view:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1285
    .local v12, top:I
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1286
    .local v6, height:I
    if-lez v6, :cond_0

    .line 1289
    mul-int/lit8 v14, v5, 0x64

    mul-int/lit8 v15, v12, 0x64

    div-int/2addr v15, v6

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v15, v0

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x42c8

    mul-float v15, v15, v16

    float-to-int v15, v15

    add-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1293
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v14, v0

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v14, v0

    iget v14, v14, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v14, v0

    iget v10, v14, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1295
    .local v10, savedBounceExtent:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->computeVerticalScrollExtent()I

    move-result v11

    .line 1296
    .local v11, shrinkedScrollExtent:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v14, v0

    const/4 v15, 0x0

    iput v15, v14, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1297
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->computeVerticalScrollExtent()I

    move-result v8

    .line 1298
    .local v8, normalScrollExtent:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v14, v0

    iput v10, v14, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1300
    sub-int v4, v8, v11

    .line 1302
    .local v4, delta:I
    add-int/2addr v9, v4

    .end local v4           #delta:I
    .end local v8           #normalScrollExtent:I
    .end local v10           #savedBounceExtent:F
    .end local v11           #shrinkedScrollExtent:I
    :cond_1
    move v14, v9

    .line 1323
    .end local v6           #height:I
    .end local v9           #retVal:I
    .end local v12           #top:I
    .end local v13           #view:Landroid/view/View;
    :goto_0
    return v14

    .line 1312
    .restart local v9       #retVal:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v3, v0

    .line 1313
    .local v3, count:I
    if-nez v5, :cond_3

    .line 1314
    const/4 v7, 0x0

    .line 1320
    .local v7, index:I
    :goto_1
    int-to-float v14, v5

    int-to-float v15, v2

    move v0, v7

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v14, v14

    goto :goto_0

    .line 1315
    .end local v7           #index:I
    :cond_3
    add-int v14, v5, v2

    if-ne v14, v3, :cond_4

    .line 1316
    move v7, v3

    .restart local v7       #index:I
    goto :goto_1

    .line 1318
    .end local v7           #index:I
    :cond_4
    div-int/lit8 v14, v2, 0x2

    add-int v7, v5, v14

    .restart local v7       #index:I
    goto :goto_1

    .line 1323
    .end local v3           #count:I
    .end local v7           #index:I
    .end local v9           #retVal:I
    :cond_5
    const/4 v14, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1329
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 1330
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1331
    .local v0, result:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_0

    .line 1333
    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1338
    :cond_0
    :goto_0
    return v0

    .line 1336
    .end local v0           #result:I
    :cond_1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .restart local v0       #result:I
    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1946
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1631
    const/4 v2, 0x0

    .line 1632
    .local v2, saveCount:I
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    move v0, v5

    .line 1633
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1634
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1635
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 1636
    .local v3, scrollX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 1637
    .local v4, scrollY:I
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1640
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1643
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1644
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 1645
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1648
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1650
    if-eqz v1, :cond_2

    .line 1651
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1654
    :cond_2
    if-eqz v0, :cond_3

    .line 1655
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1656
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1658
    :cond_3
    return-void

    .line 1632
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 2112
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 3030
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 3033
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v5, :cond_1

    .line 3034
    iget-object v5, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget-object v6, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v6}, Landroid/widget/BounceController;->adjustBounceExtent()F

    move-result v6

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 3036
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v1

    .line 3037
    .local v1, overscrollMode:I
    if-eqz v1, :cond_0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3039
    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_9

    .line 3040
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v6, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v6}, Landroid/widget/BounceController;->getBounceExtentRatio()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EdgeGlow;->onPull2(F)V

    .line 3047
    .end local v1           #overscrollMode:I
    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v5, :cond_7

    .line 3048
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 3049
    .local v3, scrollY:I
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_4

    .line 3050
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3051
    .local v2, restoreCount:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    .line 3057
    .local v4, width:I
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v5, :cond_2

    .line 3061
    :cond_2
    neg-int v5, v4

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    iget v7, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3067
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    mul-int/lit8 v6, v4, 0x2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3068
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3069
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3071
    :cond_3
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3073
    .end local v2           #restoreCount:I
    .end local v4           #width:I
    :cond_4
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_7

    .line 3074
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3075
    .restart local v2       #restoreCount:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    .line 3076
    .restart local v4       #width:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    .line 3082
    .local v0, height:I
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v5, :cond_5

    .line 3087
    :cond_5
    neg-int v5, v4

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v6, v3

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3090
    const/high16 v5, 0x4334

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3094
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    mul-int/lit8 v6, v4, 0x2

    invoke-virtual {v5, v6, v0}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3095
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3096
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3098
    :cond_6
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3101
    .end local v0           #height:I
    .end local v2           #restoreCount:I
    .end local v3           #scrollY:I
    .end local v4           #width:I
    :cond_7
    iget-object v5, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v5, :cond_8

    .line 3102
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 3103
    .restart local v3       #scrollY:I
    if-eqz v3, :cond_a

    .line 3105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3106
    .restart local v2       #restoreCount:I
    int-to-float v5, v3

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3107
    iget-object v5, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v5, p1}, Landroid/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 3108
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3113
    .end local v2           #restoreCount:I
    .end local v3           #scrollY:I
    :cond_8
    :goto_1
    return-void

    .line 3041
    .restart local v1       #overscrollMode:I
    :cond_9
    iget-object v5, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_1

    .line 3042
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget-object v6, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v6}, Landroid/widget/BounceController;->getBounceExtentRatio()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EdgeGlow;->onPull2(F)V

    goto/16 :goto_0

    .line 3110
    .end local v1           #overscrollMode:I
    .restart local v3       #scrollY:I
    :cond_a
    iget-object v5, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v5, p1}, Landroid/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1805
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 1806
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1807
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1809
    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 4239
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4240
    .local v0, childCount:I
    if-nez v0, :cond_0

    .line 4245
    :goto_0
    return v2

    .line 4244
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 4245
    .local v1, motionRow:I
    if-eq v1, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 4850
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 4855
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1373
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1374
    .local v1, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1375
    .local v2, fadeEdge:F
    if-nez v1, :cond_0

    move v5, v2

    .line 1395
    :goto_0
    return v5

    .line 1378
    :cond_0
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_1

    .line 1379
    const/high16 v5, 0x3f80

    goto :goto_0

    .line 1388
    :cond_1
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v5, :cond_2

    .line 1389
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1393
    .local v0, bottom:I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 1394
    .local v4, height:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1395
    .local v3, fadeLength:F
    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_3

    sub-int v5, v0, v4

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    goto :goto_0

    .line 1391
    .end local v0           #bottom:I
    .end local v3           #fadeLength:F
    .end local v4           #height:I
    :cond_2
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .restart local v0       #bottom:I
    goto :goto_1

    .restart local v3       #fadeLength:F
    .restart local v4       #height:I
    :cond_3
    move v5, v2

    .line 1395
    goto :goto_0
.end method

.method public getBounceController()Landroid/widget/BounceController;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    return-object v0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 4916
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2052
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 939
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 940
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 943
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 944
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 949
    :goto_0
    return-void

    .line 947
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 4181
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 4171
    const/4 v0, 0x0

    return v0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1497
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1498
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1500
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1753
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 4889
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1185
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1343
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1344
    .local v0, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1345
    .local v1, fadeEdge:F
    if-nez v0, :cond_0

    move v4, v1

    .line 1367
    :goto_0
    return v4

    .line 1348
    :cond_0
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_1

    .line 1349
    const/high16 v4, 0x3f80

    goto :goto_0

    .line 1357
    :cond_1
    const/4 v3, 0x0

    .line 1358
    .local v3, top:I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v4, :cond_2

    .line 1359
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1360
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    if-lt v3, v4, :cond_3

    .line 1361
    const/4 v4, 0x0

    goto :goto_0

    .line 1363
    :cond_2
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1366
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1367
    .local v2, fadeLength:F
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    if-ge v3, v4, :cond_4

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    goto :goto_0

    :cond_4
    move v4, v1

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 4884
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4370
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 4371
    .local v0, count:I
    if-lez v0, :cond_a

    .line 4378
    iget-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v3, :cond_3

    .line 4380
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 4382
    iget v3, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-eq v3, v9, :cond_0

    iget v3, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v3, v5, :cond_2

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    if-lt v3, v4, :cond_2

    .line 4385
    :cond_0
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4481
    :cond_1
    :goto_0
    return-void

    .line 4389
    :cond_2
    iget v3, p0, Landroid/widget/AdapterView;->mSyncMode:I

    packed-switch v3, :pswitch_data_0

    .line 4437
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_9

    .line 4439
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v1

    .line 4442
    .local v1, newPos:I
    if-lt v1, v0, :cond_4

    .line 4443
    sub-int v1, v0, v5

    .line 4445
    :cond_4
    if-gez v1, :cond_5

    .line 4446
    const/4 v1, 0x0

    .line 4450
    :cond_5
    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 4452
    .local v2, selectablePos:I
    if-ltz v2, :cond_8

    .line 4453
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 4391
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4396
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4397
    iget v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto :goto_0

    .line 4403
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v1

    .line 4404
    .restart local v1       #newPos:I
    if-ltz v1, :cond_3

    .line 4406
    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 4407
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_3

    .line 4409
    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 4411
    iget-wide v3, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 4414
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4422
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 4418
    :cond_7
    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_1

    .line 4430
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_1
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4431
    iget v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto :goto_0

    .line 4457
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_8
    invoke-virtual {p0, v1, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 4458
    if-ltz v2, :cond_a

    .line 4459
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 4466
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_9
    iget v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-gez v3, :cond_1

    .line 4474
    :cond_a
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_b

    const/4 v3, 0x3

    :goto_2
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4475
    iput v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 4476
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 4477
    iput v8, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 4478
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 4479
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 4480
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_b
    move v3, v5

    .line 4474
    goto :goto_2

    .line 4389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 4778
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 4195
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 4196
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 4197
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4199
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 4200
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4202
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 4203
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 4204
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 4205
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4207
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 4252
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 4253
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 4254
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 4255
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4256
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 868
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(Landroid/widget/AbsListView;III)V

    .line 871
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 874
    :cond_1
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 808
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 4587
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 887
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 851
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 964
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 934
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1761
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1796
    :cond_0
    :goto_0
    return-void

    .line 1765
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1766
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1767
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1770
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1772
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 1773
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1774
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1776
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 1778
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    .line 1779
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1780
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 1781
    if-eqz v1, :cond_6

    .line 1782
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1788
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 1789
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 1790
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 1792
    :cond_5
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1793
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1785
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 1458
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v3, 0x0

    .line 1565
    aput-boolean v3, p2, v3

    .line 1568
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1571
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1577
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1584
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_1

    .line 1585
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1586
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1587
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1608
    :cond_0
    :goto_0
    return-object v0

    .line 1594
    :cond_1
    const/4 v2, 0x1

    aput-boolean v2, p2, v3

    .line 1595
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_0

    .line 1598
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1599
    .restart local v0       #child:Landroid/view/View;
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1600
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1852
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 1854
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1855
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1856
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1857
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 1858
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1861
    :cond_0
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 10
    .parameter "consistency"

    .prologue
    .line 4952
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onConsistencyCheck(I)Z

    move-result v4

    .line 4954
    .local v4, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    move v1, v7

    .line 4956
    .local v1, checkLayout:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 4958
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$3900(Landroid/widget/AbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    .line 4959
    .local v0, activeViews:[Landroid/view/View;
    array-length v2, v0

    .line 4960
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 4961
    aget-object v7, v0, v3

    if-eqz v7, :cond_0

    .line 4962
    const/4 v4, 0x0

    .line 4963
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AbsListView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has a view in its active recycler: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4960
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4954
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v1           #checkLayout:Z
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_1
    const/4 v7, 0x0

    move v1, v7

    goto :goto_0

    .line 4970
    .restart local v0       #activeViews:[Landroid/view/View;
    .restart local v1       #checkLayout:Z
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_2
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$4000(Landroid/widget/AbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4971
    .local v5, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v4, 0x0

    .line 4972
    :cond_3
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$4100(Landroid/widget/AbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    .line 4973
    .local v6, scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v2, v6

    .line 4974
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    .line 4975
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v4, 0x0

    .line 4974
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4979
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    return v4
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .parameter "extraSpace"

    .prologue
    const/4 v6, 0x1

    .line 1814
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    .line 1816
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 1842
    :goto_0
    return-object v4

    .line 1822
    :cond_0
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1827
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1828
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1829
    .local v0, enabledPos:I
    array-length v4, v3

    sub-int v2, v4, v6

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_1

    .line 1830
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 1831
    move v0, v2

    .line 1837
    :cond_1
    if-ltz v0, :cond_2

    .line 1838
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v4, v3

    .line 1842
    goto :goto_0

    .line 1829
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 4665
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4669
    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 4670
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 4671
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 4672
    new-instance v0, Landroid/widget/AbsListView$3;

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 4706
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4708
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4709
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 4711
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1865
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 1868
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1871
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 1873
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1874
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1875
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1876
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 1877
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1878
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 1881
    :cond_0
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 4485
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 4486
    sparse-switch p1, :sswitch_data_0

    .line 4498
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 4499
    return-void

    .line 4488
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4489
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 4493
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4494
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 4498
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 4486
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 4842
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 4843
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4844
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 4846
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1193
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1194
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1195
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 1197
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 4782
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4784
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 4785
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 4794
    :cond_0
    :goto_0
    return-void

    .line 4789
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4790
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3120
    .local v0, action:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v8, :cond_0

    .line 3121
    iget-object v8, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v8, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 3122
    .local v1, intercepted:Z
    if-eqz v1, :cond_0

    move v8, v10

    .line 3191
    .end local v1           #intercepted:Z
    :goto_0
    return v8

    .line 3127
    :cond_0
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v8, v9

    .line 3191
    goto :goto_0

    .line 3129
    :pswitch_1
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3130
    .local v4, touchMode:I
    const/4 v8, 0x6

    if-eq v4, v8, :cond_2

    const/4 v8, 0x5

    if-ne v4, v8, :cond_3

    .line 3131
    :cond_2
    iput v9, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move v8, v10

    .line 3132
    goto :goto_0

    .line 3135
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 3136
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 3137
    .local v7, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3139
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v2

    .line 3140
    .local v2, motionPosition:I
    if-eq v4, v12, :cond_4

    if-ltz v2, :cond_4

    .line 3143
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v8, v2, v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3144
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3145
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3146
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3147
    iput v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3148
    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3149
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 3151
    .end local v5           #v:Landroid/view/View;
    :cond_4
    const/high16 v8, -0x8000

    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 3152
    if-ne v4, v12, :cond_1

    move v8, v10

    .line 3153
    goto :goto_0

    .line 3159
    .end local v2           #motionPosition:I
    .end local v4           #touchMode:I
    .end local v6           #x:I
    .end local v7           #y:I
    :pswitch_2
    iget v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    .line 3161
    :pswitch_3
    iget v8, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 3167
    .local v3, pointerIndex:I
    if-gez v3, :cond_5

    move v8, v10

    goto :goto_0

    .line 3169
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 3170
    .restart local v7       #y:I
    iget v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v8, v7, v8

    invoke-direct {p0, v8}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v10

    .line 3171
    goto :goto_0

    .line 3179
    .end local v3           #pointerIndex:I
    .end local v7           #y:I
    :pswitch_4
    iput v11, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3180
    iput v11, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3181
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_1

    .line 3186
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 3127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 3159
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2080
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2085
    sparse-switch p1, :sswitch_data_0

    .line 2105
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 2088
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v5

    .line 2089
    goto :goto_0

    .line 2091
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2095
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2096
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2097
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v2, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2098
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2100
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    move v1, v5

    .line 2101
    goto :goto_0

    .line 2085
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1418
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 1419
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 1420
    if-eqz p1, :cond_1

    .line 1421
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1422
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1423
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 1422
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1425
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 1428
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1429
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 1431
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 1432
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1402
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1403
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 1405
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1406
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1407
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1408
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1409
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1410
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 3016
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 3018
    if-eqz p4, :cond_0

    .line 3020
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 3021
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 3024
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 3025
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .parameter "state"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1118
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    move-object v1, v0

    .line 1120
    .local v1, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v1}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1121
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1123
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1125
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    .line 1126
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1127
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1128
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1129
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1130
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1142
    :cond_0
    :goto_0
    iget-object v2, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1145
    return-void

    .line 1131
    :cond_1
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 1132
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1134
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1135
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1136
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1137
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1138
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1139
    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    const-wide/16 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1060
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1062
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v6

    .line 1064
    .local v6, superState:Landroid/os/Parcelable;
    new-instance v5, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v5, v6}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1066
    .local v5, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v9, :cond_1

    move v2, v12

    .line 1067
    .local v2, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v3

    .line 1068
    .local v3, selectedId:J
    iput-wide v3, v5, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1069
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1071
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-ltz v9, :cond_2

    .line 1073
    iget v9, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1074
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v9

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1075
    iput-wide v13, v5, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1102
    :goto_1
    const/4 v9, 0x0

    iput-object v9, v5, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1103
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v9, :cond_0

    .line 1104
    iget-object v7, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1105
    .local v7, textFilter:Landroid/widget/EditText;
    if-eqz v7, :cond_0

    .line 1106
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1107
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 1108
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1113
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v7           #textFilter:Landroid/widget/EditText;
    :cond_0
    return-object v5

    .end local v2           #haveChildren:Z
    .end local v3           #selectedId:J
    :cond_1
    move v2, v11

    .line 1066
    goto :goto_0

    .line 1077
    .restart local v2       #haveChildren:Z
    .restart local v3       #selectedId:J
    :cond_2
    if-eqz v2, :cond_4

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 1087
    invoke-virtual {p0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1088
    .local v8, v:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1089
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1090
    .local v1, firstPos:I
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v1, v9, :cond_3

    .line 1091
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int v1, v9, v12

    .line 1093
    :cond_3
    iput v1, v5, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1094
    iget-object v9, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    iput-wide v9, v5, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 1096
    .end local v1           #firstPos:I
    .end local v8           #v:Landroid/view/View;
    :cond_4
    iput v11, v5, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1097
    iput-wide v13, v5, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1098
    iput v11, v5, Landroid/widget/AbsListView$SavedState;->position:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1662
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1663
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1664
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1667
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 1668
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 1670
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 4809
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4810
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4811
    .local v1, length:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 4812
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 4814
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 4815
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 4821
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 4822
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 4824
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 4825
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 4832
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 4816
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 4818
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 4819
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 4827
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 61
    .parameter "ev"

    .prologue
    .line 2272
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2275
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 3010
    :goto_0
    return v4

    .line 2275
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2278
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object v4, v0

    if-eqz v4, :cond_3

    .line 2279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    .line 2280
    .local v36, intercepted:Z
    if-eqz v36, :cond_3

    .line 2281
    const/4 v4, 0x1

    goto :goto_0

    .line 2285
    .end local v36           #intercepted:Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    .line 2290
    .local v17, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    if-nez v4, :cond_4

    .line 2291
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2293
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2299
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    iget v4, v4, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 2304
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    .line 2307
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 2308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 2315
    :cond_6
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 3010
    :cond_7
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2317
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_1

    .line 2331
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 2332
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v59, v0

    .line 2333
    .local v59, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v60, v0

    .line 2339
    .local v60, y:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    const/4 v5, 0x5

    if-ge v4, v5, :cond_8

    .line 2340
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPointerDownY:[F

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v5, v0

    move/from16 v0, v60

    int-to-float v0, v0

    move v6, v0

    aput v6, v4, v5

    .line 2349
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v41

    .line 2355
    .local v41, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_9

    .line 2356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v4, v0

    invoke-interface {v4}, Landroid/widget/BounceController$BounceRunnable;->cancel()V

    .line 2357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    .line 2359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    if-eqz v4, :cond_9

    .line 2360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease2()V

    .line 2361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease2()V

    .line 2364
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v4, v0

    if-nez v4, :cond_d

    .line 2369
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_12

    .line 2370
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_f

    if-ltz v41, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    iget v4, v4, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_f

    .line 2375
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    if-nez v4, :cond_a

    .line 2378
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2380
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2457
    :cond_b
    :goto_2
    if-ltz v41, :cond_c

    .line 2459
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v57

    .line 2460
    .local v57, v:Landroid/view/View;
    invoke-virtual/range {v57 .. v57}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2462
    .end local v57           #v:Landroid/view/View;
    :cond_c
    move/from16 v0, v59

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionX:I

    .line 2463
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2464
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2465
    const/high16 v4, -0x8000

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 2480
    .end local v41           #motionPosition:I
    .end local v59           #x:I
    .end local v60           #y:I
    :cond_d
    :goto_3
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v54

    .line 2481
    .local v54, pointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v53

    .line 2483
    .local v53, pointerId:I
    if-ltz v54, :cond_7

    const/4 v4, 0x5

    move/from16 v0, v54

    move v1, v4

    if-ge v0, v1, :cond_7

    if-ltz v53, :cond_7

    const/4 v4, 0x5

    move/from16 v0, v53

    move v1, v4

    if-ge v0, v1, :cond_7

    .line 2485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPointerDownY:[F

    move-object v4, v0

    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    aput v5, v4, v53

    goto/16 :goto_1

    .line 2319
    .end local v53           #pointerId:I
    .end local v54           #pointerIndex:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v4}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 2320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object v4, v0

    if-eqz v4, :cond_e

    .line 2321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2323
    :cond_e
    const/4 v4, 0x5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2324
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2325
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2326
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto :goto_3

    .line 2382
    .restart local v41       #motionPosition:I
    .restart local v59       #x:I
    .restart local v60       #y:I
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    if-eqz v4, :cond_10

    if-gez v41, :cond_10

    .line 2386
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2389
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    .line 2391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    iget v4, v4, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_11

    .line 2392
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 2394
    :cond_11
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2395
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2396
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v41

    .line 2397
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_2

    .line 2401
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_14

    if-ltz v41, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2405
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    if-nez v4, :cond_13

    .line 2408
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2410
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 2412
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    if-eqz v4, :cond_15

    if-gez v41, :cond_15

    .line 2416
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2419
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    .line 2421
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 2422
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2423
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2424
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v41

    .line 2425
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_2

    .line 2492
    .end local v41           #motionPosition:I
    .end local v59           #x:I
    .end local v60           #y:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v54

    .line 2498
    .restart local v54       #pointerIndex:I
    if-gez v54, :cond_16

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2499
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v4, v0

    if-eqz v4, :cond_17

    .line 2500
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v4, v0

    invoke-interface {v4}, Landroid/widget/BounceController$BounceRunnable;->cancel()V

    .line 2503
    :cond_17
    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v60, v0

    .line 2504
    .restart local v60       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move v4, v0

    sub-int v25, v60, v4

    .line 2505
    .local v25, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_2

    :pswitch_5
    goto/16 :goto_1

    .line 2511
    :pswitch_6
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    .line 2517
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_7

    .line 2518
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 2520
    move/from16 v56, v25

    .line 2521
    .local v56, tempY:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v20

    .line 2522
    .local v20, childCount:I
    if-lez v20, :cond_7

    .line 2523
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v5, v0

    sub-int v32, v4, v5

    .line 2524
    .local v32, height:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v30

    .line 2525
    .local v30, firstTop:I
    const/4 v4, 0x1

    sub-int v4, v20, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v37

    .line 2526
    .local v37, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    .line 2527
    .local v39, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    sub-int v27, v4, v5

    .line 2529
    .local v27, end:I
    if-gez v56, :cond_19

    .line 2530
    const/4 v4, 0x1

    sub-int v4, v32, v4

    neg-int v4, v4

    move v0, v4

    move/from16 v1, v56

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v56

    .line 2535
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v29, v0

    .line 2537
    .local v29, firstPosition:I
    if-nez v29, :cond_18

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    move/from16 v0, v30

    move v1, v4

    if-lt v0, v1, :cond_18

    if-ltz v25, :cond_18

    .line 2539
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_1a

    .line 2540
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    iget v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v56

    int-to-float v0, v0

    move v6, v0

    add-float/2addr v5, v6

    iput v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    .line 2546
    :cond_18
    :goto_5
    add-int v4, v29, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v5, v0

    if-ne v4, v5, :cond_7

    move/from16 v0, v37

    move/from16 v1, v27

    if-gt v0, v1, :cond_7

    if-gtz v25, :cond_7

    .line 2548
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_1b

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    iget v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v56

    int-to-float v0, v0

    move v6, v0

    add-float/2addr v5, v6

    iput v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    goto/16 :goto_1

    .line 2532
    .end local v29           #firstPosition:I
    :cond_19
    const/4 v4, 0x1

    sub-int v4, v32, v4

    move v0, v4

    move/from16 v1, v56

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v56

    goto :goto_4

    .line 2542
    .restart local v29       #firstPosition:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    goto :goto_5

    .line 2551
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    goto/16 :goto_1

    .line 2567
    .end local v20           #childCount:I
    .end local v27           #end:I
    .end local v29           #firstPosition:I
    .end local v30           #firstTop:I
    .end local v32           #height:I
    .end local v37           #lastBottom:I
    .end local v39           #listPadding:Landroid/graphics/Rect;
    .end local v56           #tempY:I
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    move/from16 v0, v60

    move v1, v4

    if-eq v0, v1, :cond_7

    .line 2571
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v4, v0

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    if-nez v4, :cond_1c

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    move v5, v0

    if-le v4, v5, :cond_1c

    .line 2573
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 2576
    :cond_1c
    move/from16 v55, v25

    .line 2577
    .local v55, rawDeltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move v4, v0

    sub-int v25, v25, v4

    .line 2578
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    const/high16 v5, -0x8000

    if-eq v4, v5, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    sub-int v4, v60, v4

    move/from16 v34, v4

    .line 2581
    .local v34, incrementalDeltaY:I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    if-ltz v4, :cond_24

    .line 2582
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    sub-int v40, v4, v5

    .line 2589
    .local v40, motionIndex:I
    :goto_7
    const/16 v43, 0x0

    .line 2590
    .local v43, motionViewPrevTop:I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2591
    .local v42, motionView:Landroid/view/View;
    if-eqz v42, :cond_1d

    .line 2592
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTop()I

    move-result v43

    .line 2596
    :cond_1d
    const/16 v18, 0x0

    .line 2597
    .local v18, atEdge:Z
    if-eqz v34, :cond_1e

    .line 2598
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 2602
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2603
    if-eqz v42, :cond_22

    .line 2606
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTop()I

    move-result v44

    .line 2607
    .local v44, motionViewRealTop:I
    if-eqz v18, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-nez v4, :cond_21

    .line 2610
    move/from16 v0, v34

    neg-int v0, v0

    move v4, v0

    sub-int v5, v44, v43

    sub-int v6, v4, v5

    .line 2612
    .local v6, overscroll:I
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v12, v0

    const/4 v13, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v13}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2614
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v4, v5, :cond_1f

    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 2619
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v49

    .line 2620
    .local v49, overscrollMode:I
    if-eqz v49, :cond_20

    const/4 v4, 0x1

    move/from16 v0, v49

    move v1, v4

    if-ne v0, v1, :cond_21

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v4

    if-nez v4, :cond_21

    .line 2623
    :cond_20
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 2624
    const/4 v4, 0x5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2625
    if-lez v55, :cond_25

    .line 2626
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    .end local v6           #overscroll:I
    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2627
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_21

    .line 2628
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2638
    .end local v49           #overscrollMode:I
    :cond_21
    :goto_8
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2639
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2641
    .end local v44           #motionViewRealTop:I
    :cond_22
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_1

    .end local v18           #atEdge:Z
    .end local v34           #incrementalDeltaY:I
    .end local v40           #motionIndex:I
    .end local v42           #motionView:Landroid/view/View;
    .end local v43           #motionViewPrevTop:I
    :cond_23
    move/from16 v34, v25

    .line 2578
    goto/16 :goto_6

    .line 2586
    .restart local v34       #incrementalDeltaY:I
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    div-int/lit8 v40, v4, 0x2

    .restart local v40       #motionIndex:I
    goto/16 :goto_7

    .line 2630
    .restart local v6       #overscroll:I
    .restart local v18       #atEdge:Z
    .restart local v42       #motionView:Landroid/view/View;
    .restart local v43       #motionViewPrevTop:I
    .restart local v44       #motionViewRealTop:I
    .restart local v49       #overscrollMode:I
    :cond_25
    if-gez v55, :cond_21

    .line 2631
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    .end local v6           #overscroll:I
    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2632
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_21

    .line 2633
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_8

    .line 2646
    .end local v18           #atEdge:Z
    .end local v34           #incrementalDeltaY:I
    .end local v40           #motionIndex:I
    .end local v42           #motionView:Landroid/view/View;
    .end local v43           #motionViewPrevTop:I
    .end local v44           #motionViewRealTop:I
    .end local v49           #overscrollMode:I
    .end local v55           #rawDeltaY:I
    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    move/from16 v0, v60

    move v1, v4

    if-eq v0, v1, :cond_7

    .line 2647
    move/from16 v55, v25

    .line 2648
    .restart local v55       #rawDeltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move v4, v0

    sub-int v25, v25, v4

    .line 2649
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    const/high16 v5, -0x8000

    if-eq v4, v5, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    sub-int v4, v60, v4

    move/from16 v34, v4

    .line 2651
    .restart local v34       #incrementalDeltaY:I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v48, v0

    .line 2652
    .local v48, oldScroll:I
    sub-int v47, v48, v34

    .line 2653
    .local v47, newScroll:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    move/from16 v0, v60

    move v1, v4

    if-le v0, v1, :cond_2a

    const/4 v4, 0x1

    move/from16 v46, v4

    .line 2655
    .local v46, newDirection:I
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mDirection:I

    move v4, v0

    if-nez v4, :cond_26

    .line 2656
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 2659
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mDirection:I

    move v4, v0

    move v0, v4

    move/from16 v1, v46

    if-eq v0, v1, :cond_2b

    .line 2661
    move/from16 v0, v47

    neg-int v0, v0

    move/from16 v34, v0

    .line 2662
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 2665
    if-eqz v34, :cond_27

    .line 2666
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 2670
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2671
    .restart local v42       #motionView:Landroid/view/View;
    if-eqz v42, :cond_28

    .line 2672
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2676
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v41

    .line 2678
    .restart local v41       #motionPosition:I
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2679
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2680
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2681
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2682
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2709
    .end local v41           #motionPosition:I
    .end local v42           #motionView:Landroid/view/View;
    :cond_28
    :goto_b
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 2710
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_1

    .end local v34           #incrementalDeltaY:I
    .end local v46           #newDirection:I
    .end local v47           #newScroll:I
    .end local v48           #oldScroll:I
    :cond_29
    move/from16 v34, v25

    .line 2649
    goto/16 :goto_9

    .line 2653
    .restart local v34       #incrementalDeltaY:I
    .restart local v47       #newScroll:I
    .restart local v48       #oldScroll:I
    :cond_2a
    const/4 v4, -0x1

    move/from16 v46, v4

    goto/16 :goto_a

    .line 2685
    .restart local v46       #newDirection:I
    :cond_2b
    const/4 v8, 0x0

    move/from16 v0, v34

    neg-int v0, v0

    move v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v15, v0

    const/16 v16, 0x1

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v16}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2687
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v49

    .line 2688
    .restart local v49       #overscrollMode:I
    if-eqz v49, :cond_2c

    const/4 v4, 0x1

    move/from16 v0, v49

    move v1, v4

    if-ne v0, v1, :cond_2e

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 2691
    :cond_2c
    if-lez v55, :cond_2f

    .line 2692
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    move/from16 v0, v34

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2693
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 2694
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2702
    :cond_2d
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2704
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v4, v5, :cond_28

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_b

    .line 2696
    :cond_2f
    if-gez v55, :cond_2d

    .line 2697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    move/from16 v0, v34

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2698
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 2699
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_c

    .line 2719
    .end local v25           #deltaY:I
    .end local v34           #incrementalDeltaY:I
    .end local v46           #newDirection:I
    .end local v47           #newScroll:I
    .end local v48           #oldScroll:I
    .end local v49           #overscrollMode:I
    .end local v54           #pointerIndex:I
    .end local v55           #rawDeltaY:I
    .end local v60           #y:I
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_3

    .line 2858
    :goto_d
    :pswitch_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2860
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    if-eqz v4, :cond_30

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2862
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2866
    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2868
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v31

    .line 2869
    .local v31, handler:Landroid/os/Handler;
    if-eqz v31, :cond_31

    .line 2870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object v4, v0

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2873
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    if-eqz v4, :cond_32

    .line 2874
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 2875
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2878
    :cond_32
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 2723
    .end local v31           #handler:Landroid/os/Handler;
    :pswitch_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v41, v0

    .line 2724
    .restart local v41       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 2725
    .local v19, child:Landroid/view/View;
    if-eqz v19, :cond_3b

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 2726
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    if-eqz v4, :cond_33

    .line 2727
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2730
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object v4, v0

    if-nez v4, :cond_34

    .line 2731
    new-instance v4, Landroid/widget/AbsListView$PerformClick;

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 2734
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v51, v0

    .line 2735
    .local v51, performClick:Landroid/widget/AbsListView$PerformClick;
    move-object/from16 v0, v19

    move-object/from16 v1, v51

    iput-object v0, v1, Landroid/widget/AbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 2736
    move/from16 v0, v41

    move-object/from16 v1, v51

    iput v0, v1, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 2737
    invoke-virtual/range {v51 .. v51}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 2739
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2741
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3a

    .line 2742
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v31

    .line 2743
    .restart local v31       #handler:Landroid/os/Handler;
    if-eqz v31, :cond_36

    .line 2744
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    if-nez v4, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    :goto_e
    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2747
    :cond_36
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2748
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v4, v0

    if-nez v4, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 2749
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2750
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2751
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2752
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2753
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->positionSelector(Landroid/view/View;)V

    .line 2754
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    if-eqz v4, :cond_37

    .line 2756
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 2757
    .local v24, d:Landroid/graphics/drawable/Drawable;
    if-eqz v24, :cond_37

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/graphics/drawable/TransitionDrawable;

    move v4, v0

    if-eqz v4, :cond_37

    .line 2758
    check-cast v24, Landroid/graphics/drawable/TransitionDrawable;

    .end local v24           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2761
    :cond_37
    new-instance v4, Landroid/widget/AbsListView$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v51

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2774
    :goto_f
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2744
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object v4, v0

    goto/16 :goto_e

    .line 2772
    :cond_39
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_f

    .line 2775
    .end local v31           #handler:Landroid/os/Handler;
    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v4, v0

    if-nez v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 2776
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2779
    .end local v51           #performClick:Landroid/widget/AbsListView$PerformClick;
    :cond_3b
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto/16 :goto_d

    .line 2782
    .end local v19           #child:Landroid/view/View;
    .end local v41           #motionPosition:I
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v20

    .line 2783
    .restart local v20       #childCount:I
    if-lez v20, :cond_42

    .line 2784
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v28

    .line 2785
    .local v28, firstChildTop:I
    const/4 v4, 0x1

    sub-int v4, v20, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v38

    .line 2786
    .local v38, lastChildBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 2787
    .local v22, contentTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v21, v4, v5

    .line 2788
    .local v21, contentBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    if-nez v4, :cond_3c

    move/from16 v0, v28

    move/from16 v1, v22

    if-lt v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    add-int v4, v4, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v5, v0

    if-ge v4, v5, :cond_3c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int v4, v4, v21

    move/from16 v0, v38

    move v1, v4

    if-gt v0, v1, :cond_3c

    .line 2791
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2792
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_d

    .line 2794
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v58, v0

    .line 2795
    .local v58, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v58

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2796
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    move-object/from16 v0, v58

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v35, v0

    .line 2802
    .local v35, initialVelocity:I
    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move v5, v0

    if-le v4, v5, :cond_41

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    if-nez v4, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    sub-int v4, v22, v4

    move/from16 v0, v28

    move v1, v4

    if-eq v0, v1, :cond_41

    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    add-int v4, v4, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v5, v0

    if-ne v4, v5, :cond_3e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    add-int v4, v4, v21

    move/from16 v0, v38

    move v1, v4

    if-eq v0, v1, :cond_41

    .line 2807
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    if-nez v4, :cond_3f

    .line 2812
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_40

    .line 2813
    new-instance v4, Landroid/widget/AbsListView$TwFlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2818
    :cond_3f
    :goto_10
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2820
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    move/from16 v0, v35

    neg-int v0, v0

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_d

    .line 2815
    :cond_40
    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_10

    .line 2822
    :cond_41
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2823
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_d

    .line 2827
    .end local v21           #contentBottom:I
    .end local v22           #contentTop:I
    .end local v28           #firstChildTop:I
    .end local v35           #initialVelocity:I
    .end local v38           #lastChildBottom:I
    .end local v58           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_42
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2828
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_d

    .line 2833
    .end local v20           #childCount:I
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    if-nez v4, :cond_43

    .line 2838
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_44

    .line 2839
    new-instance v4, Landroid/widget/AbsListView$TwFlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2844
    :cond_43
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v58, v0

    .line 2845
    .restart local v58       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v58

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2846
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    move-object/from16 v0, v58

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v35, v0

    .line 2848
    .restart local v35       #initialVelocity:I
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2849
    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move v5, v0

    if-le v4, v5, :cond_45

    .line 2850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    move/from16 v0, v35

    neg-int v0, v0

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_d

    .line 2841
    .end local v35           #initialVelocity:I
    .end local v58           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_44
    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_11

    .line 2852
    .restart local v35       #initialVelocity:I
    .restart local v58       #velocityTracker:Landroid/view/VelocityTracker;
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_d

    .line 2890
    .end local v35           #initialVelocity:I
    .end local v58           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_4

    .line 2911
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2912
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2913
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2914
    .restart local v42       #motionView:Landroid/view/View;
    if-eqz v42, :cond_46

    .line 2915
    const/4 v4, 0x0

    move-object/from16 v0, v42

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2917
    :cond_46
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 2919
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v31

    .line 2920
    .restart local v31       #handler:Landroid/os/Handler;
    if-eqz v31, :cond_47

    .line 2921
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object v4, v0

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2924
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    if-eqz v4, :cond_48

    .line 2925
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 2926
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2930
    .end local v31           #handler:Landroid/os/Handler;
    .end local v42           #motionView:Landroid/view/View;
    :cond_48
    :goto_12
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    if-eqz v4, :cond_49

    .line 2931
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2932
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2934
    :cond_49
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 2892
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    if-nez v4, :cond_4a

    .line 2897
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_4b

    .line 2898
    new-instance v4, Landroid/widget/AbsListView$TwFlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2903
    :cond_4a
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_12

    .line 2900
    :cond_4b
    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_13

    .line 2943
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v54

    .line 2944
    .restart local v54       #pointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v53

    .line 2945
    .restart local v53       #pointerId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v52

    .line 2947
    .local v52, pointerCount:I
    const/4 v4, 0x5

    move/from16 v0, v54

    move v1, v4

    if-ge v0, v1, :cond_51

    .line 2948
    const/4 v4, 0x3

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_51

    .line 2949
    const/16 v23, 0x0

    .line 2950
    .local v23, countActive:I
    const/16 v26, 0x0

    .line 2952
    .local v26, direction:I
    const/16 v33, 0x0

    .local v33, i:I
    :goto_14
    const/4 v4, 0x3

    move/from16 v0, v33

    move v1, v4

    if-ge v0, v1, :cond_50

    .line 2953
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v50

    .line 2954
    .local v50, pId:I
    if-ltz v50, :cond_4c

    const/4 v4, 0x5

    move/from16 v0, v50

    move v1, v4

    if-lt v0, v1, :cond_4d

    .line 2952
    :cond_4c
    :goto_15
    add-int/lit8 v33, v33, 0x1

    goto :goto_14

    .line 2958
    :cond_4d
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPointerDownY:[F

    move-object v5, v0

    aget v5, v5, v50

    sub-float v45, v4, v5

    .line 2962
    .local v45, move:F
    invoke-static/range {v45 .. v45}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x4120

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4e

    .line 2963
    const/4 v4, 0x0

    cmpl-float v4, v45, v4

    if-lez v4, :cond_4f

    .line 2964
    add-int/lit8 v26, v26, 0x1

    .line 2969
    :cond_4e
    :goto_16
    add-int/lit8 v23, v23, 0x1

    goto :goto_15

    .line 2966
    :cond_4f
    add-int/lit8 v26, v26, -0x1

    goto :goto_16

    .line 2974
    .end local v45           #move:F
    .end local v50           #pId:I
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    if-eqz v4, :cond_51

    .line 2975
    const/4 v4, 0x3

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_52

    .line 2976
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 2984
    .end local v23           #countActive:I
    .end local v26           #direction:I
    .end local v33           #i:I
    :cond_51
    :goto_17
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2985
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionX:I

    move/from16 v59, v0

    .line 2986
    .restart local v59       #x:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move/from16 v60, v0

    .line 2987
    .restart local v60       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v41

    .line 2988
    .restart local v41       #motionPosition:I
    if-ltz v41, :cond_53

    .line 2990
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v57

    .line 2991
    .restart local v57       #v:Landroid/view/View;
    invoke-virtual/range {v57 .. v57}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2992
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2993
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    move/from16 v0, v41

    move v1, v4

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2994
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto/16 :goto_1

    .line 2977
    .end local v41           #motionPosition:I
    .end local v57           #v:Landroid/view/View;
    .end local v59           #x:I
    .end local v60           #y:I
    .restart local v23       #countActive:I
    .restart local v26       #direction:I
    .restart local v33       #i:I
    :cond_52
    const/4 v4, -0x3

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_51

    .line 2978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_17

    .line 2997
    .end local v23           #countActive:I
    .end local v26           #direction:I
    .end local v33           #i:I
    .restart local v41       #motionPosition:I
    .restart local v59       #x:I
    .restart local v60       #y:I
    :cond_53
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto/16 :goto_1

    .line 2315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_4
        :pswitch_e
        :pswitch_0
        :pswitch_2
        :pswitch_11
    .end packed-switch

    .line 2317
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
    .end packed-switch

    .line 2505
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch

    .line 2719
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_d
    .end packed-switch

    .line 2890
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 2236
    if-eqz p1, :cond_1

    .line 2238
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 2242
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2245
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2261
    :cond_0
    :goto_0
    return-void

    .line 2248
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2249
    .local v0, touchMode:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2250
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_3

    .line 2251
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v1}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 2254
    :cond_3
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_0

    .line 2255
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 2256
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 2257
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1885
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 1887
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 1889
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_3

    .line 1890
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1891
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_0

    .line 1892
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1895
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v1}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 1896
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_0

    .line 1897
    iput v3, p0, Landroid/view/View;->mScrollY:I

    .line 1898
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 1899
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1903
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1905
    if-ne v0, v4, :cond_1

    .line 1907
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 1931
    :cond_1
    :goto_1
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 1932
    return-void

    .end local v0           #touchMode:I
    :cond_2
    move v0, v4

    .line 1887
    goto :goto_0

    .line 1910
    .restart local v0       #touchMode:I
    :cond_3
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v1, :cond_4

    .line 1912
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 1916
    :cond_4
    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1918
    if-ne v0, v4, :cond_5

    .line 1920
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 1924
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 1925
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1926
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2123
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2124
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 2125
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2126
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2129
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2130
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 2131
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2132
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2133
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2134
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2135
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2139
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 2130
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2139
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2152
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 2153
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 2154
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2156
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6
    .parameter "sel"

    .prologue
    .line 1612
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1613
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1614
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/widget/AbsListView;->positionSelector(IIII)V

    .line 1617
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 1618
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1619
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 1620
    invoke-virtual {p0}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 1622
    :cond_0
    return-void

    .line 1619
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4927
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 4928
    .local v1, childCount:I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->access$3800(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 4931
    .local v3, listener:Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4932
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4933
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 4935
    .local v4, lp:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4936
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4937
    if-eqz v3, :cond_0

    .line 4939
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 4931
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4943
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 4944
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 4945
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 3

    .prologue
    .line 4215
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 4216
    .local v0, position:I
    if-gez v0, :cond_0

    .line 4217
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4219
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4220
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4221
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 3251
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 3252
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 3253
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 3254
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 3257
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1201
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1202
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 1204
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 982
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 983
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 984
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 985
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 987
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1210
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 1211
    iput v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1212
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1213
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1214
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 1215
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 1216
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1217
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1218
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1219
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1220
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1221
    return-void
.end method

.method resurrectSelection()Z
    .locals 20

    .prologue
    .line 4271
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 4273
    .local v4, childCount:I
    if-gtz v4, :cond_0

    .line 4274
    const/16 v18, 0x0

    .line 4365
    :goto_0
    return v18

    .line 4277
    :cond_0
    const/4 v14, 0x0

    .line 4279
    .local v14, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    .line 4280
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 4281
    .local v5, childrenBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v8, v0

    .line 4282
    .local v8, firstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    move v15, v0

    .line 4283
    .local v15, toPosition:I
    const/4 v7, 0x1

    .line 4285
    .local v7, down:Z
    if-lt v15, v8, :cond_3

    add-int v18, v8, v4

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 4286
    move v13, v15

    .line 4288
    .local v13, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4289
    .local v11, selected:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    .line 4290
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 4293
    .local v12, selectedBottom:I
    if-ge v14, v6, :cond_2

    .line 4294
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v14, v6, v18

    .line 4350
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4352
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4353
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4354
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 4355
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 4356
    if-lt v13, v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v18

    move v0, v13

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    .line 4357
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4358
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 4359
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 4363
    :goto_2
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4365
    if-ltz v13, :cond_c

    const/16 v18, 0x1

    goto/16 :goto_0

    .line 4295
    .restart local v11       #selected:Landroid/view/View;
    .restart local v12       #selectedBottom:I
    :cond_2
    if-le v12, v5, :cond_1

    .line 4296
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v18, v5, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v19

    sub-int v14, v18, v19

    goto :goto_1

    .line 4300
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    .end local v13           #selectedPos:I
    :cond_3
    if-ge v15, v8, :cond_7

    .line 4302
    move v13, v8

    .line 4303
    .restart local v13       #selectedPos:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-ge v9, v4, :cond_1

    .line 4304
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 4305
    .local v17, v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 4307
    .local v16, top:I
    if-nez v9, :cond_5

    .line 4309
    move/from16 v14, v16

    .line 4311
    if-gtz v8, :cond_4

    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_5

    .line 4314
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v6, v6, v18

    .line 4317
    :cond_5
    move/from16 v0, v16

    move v1, v6

    if-lt v0, v1, :cond_6

    .line 4319
    add-int v13, v8, v9

    .line 4320
    move/from16 v14, v16

    .line 4321
    goto/16 :goto_1

    .line 4303
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 4325
    .end local v9           #i:I
    .end local v13           #selectedPos:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v10, v0

    .line 4326
    .local v10, itemCount:I
    const/4 v7, 0x0

    .line 4327
    add-int v18, v8, v4

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 4329
    .restart local v13       #selectedPos:I
    const/16 v18, 0x1

    sub-int v9, v4, v18

    .restart local v9       #i:I
    :goto_4
    if-ltz v9, :cond_1

    .line 4330
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 4331
    .restart local v17       #v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 4332
    .restart local v16       #top:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 4334
    .local v3, bottom:I
    const/16 v18, 0x1

    sub-int v18, v4, v18

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 4335
    move/from16 v14, v16

    .line 4336
    add-int v18, v8, v4

    move/from16 v0, v18

    move v1, v10

    if-lt v0, v1, :cond_8

    if-le v3, v5, :cond_9

    .line 4337
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v5, v5, v18

    .line 4341
    :cond_9
    if-gt v3, v5, :cond_a

    .line 4342
    add-int v13, v8, v9

    .line 4343
    move/from16 v14, v16

    .line 4344
    goto/16 :goto_1

    .line 4329
    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 4361
    .end local v3           #bottom:I
    .end local v9           #i:I
    .end local v10           #itemCount:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_b
    const/4 v13, -0x1

    goto/16 :goto_2

    .line 4365
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4599
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v6

    .line 4657
    :goto_0
    return v4

    .line 4603
    :cond_0
    const/4 v2, 0x0

    .line 4604
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 4605
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 4634
    :goto_1
    if-eqz v3, :cond_2

    .line 4635
    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 4637
    move-object v1, p3

    .line 4638
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 4639
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {p3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4642
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 4643
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :cond_2
    :goto_2
    move v4, v2

    .line 4657
    goto :goto_0

    .line 4612
    :sswitch_0
    const/4 v3, 0x0

    .line 4613
    goto :goto_1

    .line 4615
    :sswitch_1
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4616
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 4618
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 4619
    const/4 v2, 0x1

    .line 4626
    :cond_3
    :goto_3
    const/4 v3, 0x0

    .line 4627
    goto :goto_1

    .line 4620
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v7, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4622
    const/4 v2, 0x1

    .line 4623
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 4630
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1

    .line 4645
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4646
    goto :goto_2

    .line 4649
    :pswitch_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4650
    goto :goto_2

    .line 4653
    :pswitch_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    .line 4605
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 4643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 4899
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 4900
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 4901
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4902
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4903
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 4902
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4905
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 4907
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 1716
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1717
    return-void
.end method

.method public setEnableExcessScroll(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 646
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 651
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    .line 653
    iget-object v0, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v0, p1}, Landroid/widget/BounceController;->setEnableBounce(Z)V

    .line 655
    iget-object v0, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0, v1, v2}, Landroid/widget/BounceController;->setEdgeGlows(Landroid/widget/EdgeGlow;Landroid/widget/EdgeGlow;)V

    .line 657
    :cond_1
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 788
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 789
    if-eqz p1, :cond_1

    .line 790
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 791
    new-instance v0, Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/widget/FastScroller;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->stop()V

    .line 796
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1160
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1161
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 1164
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1166
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1168
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1169
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1170
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1174
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 1175
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 1178
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1439
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1441
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 1445
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 1446
    .local v1, visible:Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1447
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 1451
    .end local v1           #visible:Z
    :cond_0
    return v0

    .line 1445
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 860
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 861
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 862
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 745
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 746
    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-nez v3, :cond_0

    .line 747
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 748
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x1080258

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 750
    .local v0, edge:Landroid/graphics/drawable/Drawable;
    const v3, 0x1080259

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 752
    .local v1, glow:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 753
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 756
    .end local v0           #edge:Landroid/graphics/drawable/Drawable;
    .end local v1           #glow:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setEnableExcessScroll(Z)V

    .line 763
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 764
    return-void

    .line 758
    :cond_1
    iput-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 759
    iput-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 761
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setEnableExcessScroll(Z)V

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 5023
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #setter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$3802(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 5024
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "up"
    .parameter "down"

    .prologue
    .line 1799
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 1800
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 1801
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 904
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 905
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 907
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 908
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 1727
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1728
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 1731
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1732
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1733
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1735
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1736
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1737
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1738
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 1739
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 1740
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 1741
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 1742
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1743
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1744
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 839
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 840
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 975
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 976
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 977
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 979
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 921
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 922
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 4874
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 4875
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1695
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 2057
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2058
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 2059
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2060
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 2062
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2063
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2066
    :cond_0
    if-nez v6, :cond_1

    .line 2067
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2070
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    move v0, v6

    .line 2075
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 3921
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_1

    .line 3922
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v0, :cond_0

    .line 3923
    new-instance v0, Landroid/widget/AbsListView$TwFlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 3930
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(II)V

    .line 3931
    return-void

    .line 3925
    :cond_0
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_0

    .line 3928
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 3893
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 3894
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 3896
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 3897
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 3909
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 3910
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 3912
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->start(II)V

    .line 3913
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1678
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1683
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1681
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1678
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 28
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 3970
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 3971
    .local v6, childCount:I
    if-nez v6, :cond_0

    .line 3972
    const/16 v25, 0x1

    .line 4161
    :goto_0
    return v25

    .line 3975
    :cond_0
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v12

    .line 3976
    .local v12, firstTop:I
    const/16 v25, 0x1

    sub-int v25, v6, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v18

    .line 3978
    .local v18, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 3981
    .local v19, listPadding:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v21, v25, v12

    .line 3982
    .local v21, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v10, v25, v26

    .line 3983
    .local v10, end:I
    sub-int v22, v18, v10

    .line 3985
    .local v22, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v26, v0

    sub-int v15, v25, v26

    .line 3986
    .local v15, height:I
    if-gez p1, :cond_2

    .line 3987
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3992
    :goto_1
    if-gez p2, :cond_3

    .line 3993
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3998
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v11, v0

    .line 4001
    .local v11, firstPosition:I
    if-nez v11, :cond_4

    .line 4002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v25, v12, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 4006
    :goto_3
    add-int v25, v11, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 4007
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    add-int v25, v25, v18

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 4012
    :goto_4
    if-nez v11, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move v0, v12

    move/from16 v1, v25

    if-lt v0, v1, :cond_8

    if-ltz p2, :cond_8

    .line 4017
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move/from16 v25, v0

    if-nez v25, :cond_6

    .line 4018
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v26, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    .line 4019
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v25

    if-nez v25, :cond_1

    .line 4020
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4028
    :cond_1
    :goto_5
    if-eqz p2, :cond_7

    const/16 v25, 0x1

    goto/16 :goto_0

    .line 3989
    .end local v11           #firstPosition:I
    :cond_2
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 3995
    :cond_3
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 4004
    .restart local v11       #firstPosition:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v25, v0

    add-int v25, v25, p2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_3

    .line 4009
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v25, v0

    add-int v25, v25, p2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto/16 :goto_4

    .line 4023
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    goto :goto_5

    .line 4028
    :cond_7
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 4031
    :cond_8
    add-int v25, v11, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    move/from16 v0, v18

    move v1, v10

    if-gt v0, v1, :cond_c

    if-gtz p2, :cond_c

    .line 4037
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move/from16 v25, v0

    if-nez v25, :cond_a

    .line 4038
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v26, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    .line 4039
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v25

    if-nez v25, :cond_9

    .line 4040
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4048
    :cond_9
    :goto_6
    if-eqz p2, :cond_b

    const/16 v25, 0x1

    goto/16 :goto_0

    .line 4043
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    goto :goto_6

    .line 4048
    :cond_b
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 4056
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_f

    .line 4057
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_e

    .line 4058
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v26, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    .line 4059
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v25

    if-nez v25, :cond_d

    .line 4060
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4062
    :cond_d
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 4064
    :cond_e
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 p2, v0

    .line 4065
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 p1, v0

    .line 4066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    .line 4073
    :cond_f
    if-gez p2, :cond_17

    const/16 v25, 0x1

    move/from16 v9, v25

    .line 4075
    .local v9, down:Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v17

    .line 4076
    .local v17, inTouchMode:Z
    if-eqz v17, :cond_10

    .line 4077
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4080
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v14

    .line 4081
    .local v14, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v26

    sub-int v13, v25, v26

    .line 4083
    .local v13, footerViewsStart:I
    const/16 v23, 0x0

    .line 4084
    .local v23, start:I
    const/4 v8, 0x0

    .line 4086
    .local v8, count:I
    if-eqz v9, :cond_1a

    .line 4087
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v25, p2

    .line 4088
    .local v24, top:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_8
    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_11

    .line 4089
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4090
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v24

    if-lt v0, v1, :cond_18

    .line 4129
    .end local v5           #child:Landroid/view/View;
    .end local v24           #top:I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v25, v0

    add-int v25, v25, p1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 4131
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 4133
    if-lez v8, :cond_12

    .line 4134
    move-object/from16 v0, p0

    move/from16 v1, v23

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 4136
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 4138
    if-eqz v9, :cond_13

    .line 4139
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v25, v0

    add-int v25, v25, v8

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4142
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4144
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4145
    .local v3, absIncrementalDeltaY:I
    move/from16 v0, v21

    move v1, v3

    if-lt v0, v1, :cond_14

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_15

    .line 4146
    :cond_14
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 4149
    :cond_15
    if-nez v17, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_16

    .line 4150
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v7, v25, v26

    .line 4151
    .local v7, childIndex:I
    if-ltz v7, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v25

    move v0, v7

    move/from16 v1, v25

    if-ge v0, v1, :cond_16

    .line 4152
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->positionSelector(Landroid/view/View;)V

    .line 4156
    .end local v7           #childIndex:I
    :cond_16
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 4158
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 4159
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 4161
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 4073
    .end local v3           #absIncrementalDeltaY:I
    .end local v8           #count:I
    .end local v9           #down:Z
    .end local v13           #footerViewsStart:I
    .end local v14           #headerViewsCount:I
    .end local v16           #i:I
    .end local v17           #inTouchMode:Z
    .end local v23           #start:I
    :cond_17
    const/16 v25, 0x0

    move/from16 v9, v25

    goto/16 :goto_7

    .line 4093
    .restart local v5       #child:Landroid/view/View;
    .restart local v8       #count:I
    .restart local v9       #down:Z
    .restart local v13       #footerViewsStart:I
    .restart local v14       #headerViewsCount:I
    .restart local v16       #i:I
    .restart local v17       #inTouchMode:Z
    .restart local v23       #start:I
    .restart local v24       #top:I
    :cond_18
    add-int/lit8 v8, v8, 0x1

    .line 4094
    add-int v20, v11, v16

    .line 4095
    .local v20, position:I
    move/from16 v0, v20

    move v1, v14

    if-lt v0, v1, :cond_19

    move/from16 v0, v20

    move v1, v13

    if-ge v0, v1, :cond_19

    .line 4096
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4088
    :cond_19
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_8

    .line 4107
    .end local v5           #child:Landroid/view/View;
    .end local v16           #i:I
    .end local v20           #position:I
    .end local v24           #top:I
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v4, v25, p2

    .line 4108
    .local v4, bottom:I
    const/16 v25, 0x1

    sub-int v16, v6, v25

    .restart local v16       #i:I
    :goto_9
    if-ltz v16, :cond_11

    .line 4109
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4110
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v25

    move/from16 v0, v25

    move v1, v4

    if-le v0, v1, :cond_11

    .line 4113
    move/from16 v23, v16

    .line 4114
    add-int/lit8 v8, v8, 0x1

    .line 4115
    add-int v20, v11, v16

    .line 4116
    .restart local v20       #position:I
    move/from16 v0, v20

    move v1, v14

    if-lt v0, v1, :cond_1b

    move/from16 v0, v20

    move v1, v13

    if-ge v0, v1, :cond_1b

    .line 4117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4108
    :cond_1b
    add-int/lit8 v16, v16, -0x1

    goto :goto_9
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1461
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 1464
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_4

    move v1, v8

    .line 1467
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1468
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 1469
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1470
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_5

    move v1, v8

    .line 1474
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v5, v7

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1477
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1479
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 1482
    .local v3, count:I
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v4, v5, :cond_7

    move v0, v8

    .line 1485
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 1486
    sub-int v4, v3, v8

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1487
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_8

    move v0, v8

    .line 1490
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    move v5, v7

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1492
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v7

    .line 1464
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v7

    .line 1470
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v5, v9

    .line 1474
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v7

    .line 1482
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v7

    .line 1487
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v9

    .line 1490
    goto :goto_5
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 1847
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
