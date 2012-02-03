.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I = null

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final FLAG_ALPHA_LOWER_THAN_ONE:I = 0x1000

.field private static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field private static final FLAG_ANIMATION_DONE:I = 0x10

.field private static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field private static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field private static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field private static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field private static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mCachePaint:Landroid/graphics/Paint;

.field private mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFocused:Landroid/view/View;

.field protected mGroupFlags:I

.field private mInvalidateRegion:Landroid/graphics/RectF;

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mMotionTarget:Landroid/view/View;

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x6t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 281
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 278
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 282
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 278
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 287
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 288
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 292
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 278
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 293
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 294
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 295
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3245
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3247
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 3248
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3251
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3252
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 6
    .parameter "child"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 2028
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2029
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2030
    .local v1, count:I
    array-length v2, v0

    .line 2031
    .local v2, size:I
    if-ne p2, v1, :cond_1

    .line 2032
    if-ne v2, v1, :cond_0

    .line 2033
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2034
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2035
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2037
    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 2052
    :goto_0
    return-void

    .line 2038
    :cond_1
    if-ge p2, v1, :cond_3

    .line 2039
    if-ne v2, v1, :cond_2

    .line 2040
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2041
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2042
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2043
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2047
    :goto_1
    aput-object p1, v0, p2

    .line 2048
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_0

    .line 2045
    :cond_2
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 2050
    :cond_3
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 5
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    const/high16 v4, 0x40

    .line 1975
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1976
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1980
    :cond_0
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1981
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1984
    :cond_1
    if-eqz p4, :cond_8

    .line 1985
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 1990
    :goto_0
    if-gez p2, :cond_2

    .line 1991
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1994
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 1997
    if-eqz p4, :cond_9

    .line 1998
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 2003
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2004
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2007
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2008
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_5

    .line 2009
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 2010
    .local v1, lastKeepOn:Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 2011
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2012
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v2, :cond_4

    .line 2013
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 2015
    :cond_4
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 2018
    .end local v1           #lastKeepOn:Z
    :cond_5
    iget-object v2, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v2, :cond_6

    .line 2019
    iget-object v2, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v2, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 2022
    :cond_6
    iget v2, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    .line 2023
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2025
    :cond_7
    return-void

    .line 1987
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    :cond_8
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2000
    :cond_9
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 2104
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2105
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2106
    return-void
.end method

.method private finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "view"
    .parameter "animation"

    .prologue
    const/high16 v2, 0x1

    .line 3262
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3263
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    .line 3264
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3265
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3267
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 3268
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3271
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3272
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3276
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3277
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3280
    :cond_2
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 3281
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 3284
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3286
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3288
    :cond_3
    return-void
.end method

.method public static getChildMeasureSpec(III)I
    .locals 9
    .parameter "spec"
    .parameter "padding"
    .parameter "childDimension"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 3161
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3162
    .local v3, specMode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 3164
    .local v4, specSize:I
    const/4 v5, 0x0

    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3166
    .local v2, size:I
    const/4 v1, 0x0

    .line 3167
    .local v1, resultSize:I
    const/4 v0, 0x0

    .line 3169
    .local v0, resultMode:I
    sparse-switch v3, :sswitch_data_0

    .line 3225
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 3172
    :sswitch_0
    if-ltz p2, :cond_1

    .line 3173
    move v1, p2

    .line 3174
    const/high16 v0, 0x4000

    goto :goto_0

    .line 3175
    :cond_1
    if-ne p2, v8, :cond_2

    .line 3177
    move v1, v2

    .line 3178
    const/high16 v0, 0x4000

    goto :goto_0

    .line 3179
    :cond_2
    if-ne p2, v7, :cond_0

    .line 3182
    move v1, v2

    .line 3183
    const/high16 v0, -0x8000

    goto :goto_0

    .line 3189
    :sswitch_1
    if-ltz p2, :cond_3

    .line 3191
    move v1, p2

    .line 3192
    const/high16 v0, 0x4000

    goto :goto_0

    .line 3193
    :cond_3
    if-ne p2, v8, :cond_4

    .line 3196
    move v1, v2

    .line 3197
    const/high16 v0, -0x8000

    goto :goto_0

    .line 3198
    :cond_4
    if-ne p2, v7, :cond_0

    .line 3201
    move v1, v2

    .line 3202
    const/high16 v0, -0x8000

    goto :goto_0

    .line 3208
    :sswitch_2
    if-ltz p2, :cond_5

    .line 3210
    move v1, p2

    .line 3211
    const/high16 v0, 0x4000

    goto :goto_0

    .line 3212
    :cond_5
    if-ne p2, v8, :cond_6

    .line 3215
    const/4 v1, 0x0

    .line 3216
    const/4 v0, 0x0

    goto :goto_0

    .line 3217
    :cond_6
    if-ne p2, v7, :cond_0

    .line 3220
    const/4 v1, 0x0

    .line 3221
    const/4 v0, 0x0

    goto :goto_0

    .line 3169
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 317
    sget-object v5, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 320
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 321
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 322
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 323
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 321
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 325
    :pswitch_0
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    .line 328
    :pswitch_1
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_1

    .line 331
    :pswitch_2
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_1

    .line 334
    :pswitch_3
    const/4 v5, 0x2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_1

    .line 337
    :pswitch_4
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_1

    .line 340
    :pswitch_5
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_1

    .line 343
    :pswitch_6
    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 344
    .local v4, id:I
    if-lez v4, :cond_0

    .line 345
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_1

    .line 349
    .end local v4           #id:I
    :pswitch_7
    sget-object v5, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_1

    .line 354
    .end local v2           #attr:I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 355
    return-void

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private initViewGroup()V
    .locals 2

    .prologue
    const/16 v0, 0x80

    const/4 v1, 0x0

    .line 299
    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 300
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 301
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 302
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 303
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 304
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 306
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 308
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 309
    iput v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 311
    iget-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 313
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 314
    return-void
.end method

.method private notifyAnimationListener()V
    .locals 3

    .prologue
    .line 1441
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1442
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1444
    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 1445
    new-instance v0, Landroid/view/ViewGroup$2;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 1450
    .local v0, end:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1453
    .end local v0           #end:Ljava/lang/Runnable;
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 1454
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1455
    iget v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 1456
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 1460
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1461
    return-void
.end method

.method private removeFromArray(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2056
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2057
    .local v0, children:[Landroid/view/View;
    aget-object v2, v0, p1

    iput-object v5, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2058
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2059
    .local v1, count:I
    sub-int v2, v1, v4

    if-ne p1, v2, :cond_0

    .line 2060
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v5, v0, v2

    .line 2067
    :goto_0
    return-void

    .line 2061
    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 2062
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    sub-int/2addr v3, v4

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2063
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v5, v0, v2

    goto :goto_0

    .line 2065
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method private removeFromArray(II)V
    .locals 6
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 2071
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2072
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2074
    .local v1, childrenCount:I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2075
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2077
    .local v2, end:I
    if-ne p1, v2, :cond_0

    .line 2101
    :goto_0
    return-void

    .line 2081
    :cond_0
    if-ne v2, v1, :cond_1

    .line 2082
    move v3, p1

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 2083
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2084
    aput-object v5, v0, v3

    .line 2082
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2087
    .end local v3           #i:I
    :cond_1
    move v3, p1

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 2088
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2087
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2093
    :cond_2
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2095
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_3
    if-ge v3, v1, :cond_3

    .line 2096
    aput-object v5, v0, v3

    .line 2095
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2100
    :cond_3
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_0
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .locals 2
    .parameter "index"
    .parameter "view"

    .prologue
    .line 2192
    const/4 v0, 0x0

    .line 2193
    .local v0, clearChildFocus:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_0

    .line 2194
    invoke-virtual {p2}, Landroid/view/View;->clearFocusForRemoval()V

    .line 2195
    const/4 v0, 0x1

    .line 2198
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2199
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2204
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v1, :cond_2

    .line 2205
    iget-object v1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v1, p0, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2208
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 2210
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 2212
    if-eqz v0, :cond_3

    .line 2213
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 2215
    :cond_3
    return-void

    .line 2200
    :cond_4
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1

    .line 2201
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method private removeViewInternal(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2185
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2186
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 2187
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 2189
    :cond_0
    return-void
.end method

.method private removeViewsInternal(II)V
    .locals 12
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2218
    iget-object v7, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2219
    .local v7, onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    if-eqz v7, :cond_3

    move v6, v11

    .line 2220
    .local v6, notifyListener:Z
    :goto_0
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 2221
    .local v4, focused:Landroid/view/View;
    iget-object v9, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v9, :cond_4

    move v2, v11

    .line 2222
    .local v2, detach:Z
    :goto_1
    const/4 v1, 0x0

    .line 2224
    .local v1, clearChildFocus:Landroid/view/View;
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2225
    .local v0, children:[Landroid/view/View;
    add-int v3, p1, p2

    .line 2227
    .local v3, end:I
    move v5, p1

    .local v5, i:I
    :goto_2
    if-ge v5, v3, :cond_6

    .line 2228
    aget-object v8, v0, v5

    .line 2230
    .local v8, view:Landroid/view/View;
    if-ne v8, v4, :cond_0

    .line 2231
    invoke-virtual {v8}, Landroid/view/View;->clearFocusForRemoval()V

    .line 2232
    move-object v1, v8

    .line 2235
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 2236
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2241
    :cond_1
    :goto_3
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 2243
    if-eqz v6, :cond_2

    .line 2244
    invoke-interface {v7, p0, v8}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2227
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0           #children:[Landroid/view/View;
    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v2           #detach:Z
    .end local v3           #end:I
    .end local v4           #focused:Landroid/view/View;
    .end local v5           #i:I
    .end local v6           #notifyListener:Z
    .end local v8           #view:Landroid/view/View;
    :cond_3
    move v6, v10

    .line 2219
    goto :goto_0

    .restart local v4       #focused:Landroid/view/View;
    .restart local v6       #notifyListener:Z
    :cond_4
    move v2, v10

    .line 2221
    goto :goto_1

    .line 2237
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v2       #detach:Z
    .restart local v3       #end:I
    .restart local v5       #i:I
    .restart local v8       #view:Landroid/view/View;
    :cond_5
    if-eqz v2, :cond_1

    .line 2238
    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    .line 2248
    .end local v8           #view:Landroid/view/View;
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 2250
    if-eqz v1, :cond_7

    .line 2251
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 2253
    :cond_7
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .locals 2
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 2859
    if-eqz p2, :cond_0

    .line 2860
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2864
    :goto_0
    return-void

    .line 2862
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 619
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 626
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 628
    .local v4, focusableCount:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 630
    .local v3, descendantFocusability:I
    const/high16 v6, 0x6

    if-eq v3, v6, :cond_1

    .line 631
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 632
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 634
    .local v1, children:[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 635
    aget-object v0, v1, v5

    .line 636
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_0

    .line 637
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 634
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 646
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v5           #i:I
    :cond_1
    const/high16 v6, 0x4

    if-ne v3, v6, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 650
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 652
    :cond_3
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 1

    .prologue
    .line 3429
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 672
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 674
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 675
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 677
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 678
    aget-object v0, v1, v3

    .line 679
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 680
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 677
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 683
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 1808
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1809
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .parameter "child"
    .parameter "index"

    .prologue
    .line 1821
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1822
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 1823
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1824
    if-nez v0, :cond_0

    .line 1825
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1828
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1829
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1838
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1839
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1840
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1841
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1842
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1869
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1870
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1871
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1872
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 1851
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1852
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1939
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 1957
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1958
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1959
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 1960
    const/4 v0, 0x1

    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 1
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 2120
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 2122
    .local v0, animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 2123
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 2124
    .restart local v0       #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 2127
    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 2128
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 2129
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 2364
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2366
    if-gez p2, :cond_0

    .line 2367
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2370
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 2372
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2373
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 2375
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2376
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2378
    :cond_1
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 760
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 761
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 762
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 763
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 764
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 766
    :cond_0
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2684
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

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
    .line 1891
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3437
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 3438
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 3440
    :cond_0
    return-void
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 1969
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 1970
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 508
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 511
    :cond_0
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 1

    .prologue
    .line 3234
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3235
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3237
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 518
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 521
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 524
    :cond_0
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    .line 1283
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1284
    .local v2, count:I
    const/4 v4, 0x0

    .line 1286
    .local v4, visibilities:[I
    if-eqz p3, :cond_1

    .line 1287
    new-array v4, v2, [I

    .line 1288
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1289
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1290
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v3

    .line 1291
    aget v5, v4, v3

    if-nez v5, :cond_0

    .line 1292
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1288
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1297
    .end local v1           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1299
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    .line 1300
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1301
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1300
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1305
    .end local v3           #i:I
    :cond_2
    return-object v0
.end method

.method protected debug(I)V
    .locals 7
    .parameter "depth"

    .prologue
    const-string v6, "View"

    .line 3002
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 3005
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 3006
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 3007
    .local v3, output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mFocused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3008
    const-string v4, "View"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    .end local v3           #output:Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_1

    .line 3011
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 3012
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3013
    const-string v4, "View"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    .end local v3           #output:Ljava/lang/String;
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3016
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3017
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v4, v2

    .line 3018
    .local v0, child:Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    .line 3016
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3021
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_3

    .line 3022
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 3023
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3024
    const-string v4, "View"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    .end local v3           #output:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2448
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2449
    .local v1, count:I
    if-gtz v1, :cond_1

    .line 2460
    :cond_0
    return-void

    .line 2453
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2454
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2456
    const/4 v3, 0x1

    sub-int v2, v1, v3

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 2457
    aget-object v3, v0, v2

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2458
    aput-object v4, v0, v2

    .line 2456
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method protected detachViewFromParent(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 2413
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 2414
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 2395
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 2396
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 2432
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 2433
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 4
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 1122
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1123
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p2, v3

    .line 1124
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1125
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1126
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1127
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1129
    :cond_0
    return-void
.end method

.method dispatchCollectViewAttributes(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 747
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p1, v3

    .line 748
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 749
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 750
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 751
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 752
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 751
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 754
    :cond_0
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 729
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 730
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 731
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 732
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 733
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 732
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 735
    :cond_0
    return-void
.end method

.method protected dispatchConsistencyCheck(I)Z
    .locals 5
    .parameter "consistency"

    .prologue
    .line 2947
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v3

    .line 2949
    .local v3, result:Z
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2950
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2951
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2952
    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 2951
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2955
    :cond_1
    return v3
.end method

.method dispatchDetachedFromWindow()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 1150
    iget-object v2, p0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1152
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1154
    .local v10, event:Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1155
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 1156
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 1159
    .end local v0           #now:J
    .end local v10           #event:Landroid/view/MotionEvent;
    :cond_0
    iget v9, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1160
    .local v9, count:I
    iget-object v8, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1161
    .local v8, children:[Landroid/view/View;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v9, :cond_1

    .line 1162
    aget-object v2, v8, v11

    invoke-virtual {v2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 1161
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1164
    :cond_1
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 1165
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4
    .parameter "hint"

    .prologue
    .line 690
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 691
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 692
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 693
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 694
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 693
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 696
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 1313
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move v10, v0

    .line 1314
    .local v10, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object v7, v0

    .line 1315
    .local v7, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v16, v0

    .line 1317
    .local v16, flags:I
    and-int/lit8 v21, v16, 0x8

    if-eqz v21, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1318
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x40

    const/16 v22, 0x40

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const/16 v21, 0x1

    move/from16 v5, v21

    .line 1320
    .local v5, cache:Z
    :goto_0
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_2

    .line 1321
    aget-object v6, v7, v17

    .line 1322
    .local v6, child:Landroid/view/View;
    move-object v0, v6

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0xc

    if-nez v21, :cond_0

    .line 1323
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 1324
    .local v19, params:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v19

    move/from16 v3, v17

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 1325
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 1326
    if-eqz v5, :cond_0

    .line 1327
    const/16 v21, 0x1

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1328
    const/16 v21, 0x1

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 1320
    .end local v19           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1318
    .end local v5           #cache:Z
    .end local v6           #child:Landroid/view/View;
    .end local v17           #i:I
    :cond_1
    const/16 v21, 0x0

    move/from16 v5, v21

    goto :goto_0

    .line 1333
    .restart local v5       #cache:Z
    .restart local v17       #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object v9, v0

    .line 1334
    .local v9, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v9}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1335
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v21, v0

    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1338
    :cond_3
    invoke-virtual {v9}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 1340
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, -0x9

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1341
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, -0x11

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1343
    if-eqz v5, :cond_4

    .line 1344
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v21, v0

    const v22, 0x8000

    or-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1347
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v21, v0

    invoke-virtual {v9}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 1352
    .end local v5           #cache:Z
    .end local v9           #controller:Landroid/view/animation/LayoutAnimationController;
    .end local v17           #i:I
    :cond_5
    const/16 v20, 0x0

    .line 1353
    .local v20, saveCount:I
    and-int/lit8 v21, v16, 0x22

    const/16 v22, 0x22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    const/16 v21, 0x1

    move/from16 v8, v21

    .line 1354
    .local v8, clipToPadding:Z
    :goto_2
    if-eqz v8, :cond_6

    .line 1355
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v20

    .line 1356
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1363
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, -0x41

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1364
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, -0x5

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1366
    const/16 v18, 0x0

    .line 1367
    .local v18, more:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v13

    .line 1369
    .local v13, drawingTime:J
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    if-nez v21, :cond_a

    .line 1370
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_3
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_d

    .line 1371
    aget-object v6, v7, v17

    .line 1372
    .restart local v6       #child:Landroid/view/View;
    move-object v0, v6

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0xc

    if-eqz v21, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v21

    if-eqz v21, :cond_8

    .line 1373
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v21

    or-int v18, v18, v21

    .line 1370
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1353
    .end local v6           #child:Landroid/view/View;
    .end local v8           #clipToPadding:Z
    .end local v13           #drawingTime:J
    .end local v17           #i:I
    .end local v18           #more:Z
    :cond_9
    const/16 v21, 0x0

    move/from16 v8, v21

    goto/16 :goto_2

    .line 1377
    .restart local v8       #clipToPadding:Z
    .restart local v13       #drawingTime:J
    .restart local v18       #more:Z
    :cond_a
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_4
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_d

    .line 1378
    move-object/from16 v0, p0

    move v1, v10

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v21

    aget-object v6, v7, v21

    .line 1379
    .restart local v6       #child:Landroid/view/View;
    move-object v0, v6

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0xc

    if-eqz v21, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v21

    if-eqz v21, :cond_c

    .line 1380
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v21

    or-int v18, v18, v21

    .line 1377
    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1386
    .end local v6           #child:Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object v11, v0

    .line 1388
    .local v11, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x1

    sub-int v12, v21, v22

    .line 1390
    .local v12, disappearingCount:I
    move/from16 v17, v12

    :goto_5
    if-ltz v17, :cond_e

    .line 1391
    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1392
    .restart local v6       #child:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v21

    or-int v18, v18, v21

    .line 1390
    add-int/lit8 v17, v17, -0x1

    goto :goto_5

    .line 1396
    .end local v6           #child:Landroid/view/View;
    .end local v11           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v12           #disappearingCount:I
    :cond_e
    if-eqz v8, :cond_f

    .line 1397
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1401
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v16, v0

    .line 1403
    and-int/lit8 v21, v16, 0x4

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 1404
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1407
    :cond_10
    and-int/lit8 v21, v16, 0x10

    if-nez v21, :cond_11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x200

    move/from16 v21, v0

    if-nez v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v21

    if-eqz v21, :cond_11

    if-nez v18, :cond_11

    .line 1412
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v21, v0

    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x200

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1413
    new-instance v15, Landroid/view/ViewGroup$1;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$1;-><init>(Landroid/view/ViewGroup;)V

    .line 1418
    .local v15, end:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1420
    .end local v15           #end:Ljava/lang/Runnable;
    :cond_11
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 4

    .prologue
    .line 1109
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 1110
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1111
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1112
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1113
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 1112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1115
    :cond_0
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
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
    .line 1203
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 1204
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 786
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 787
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 791
    :goto_0
    return v0

    .line 788
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 789
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 791
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 773
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 774
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 778
    :goto_0
    return v0

    .line 775
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 776
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 778
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 799
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 800
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 804
    :goto_0
    return v0

    .line 801
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 802
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 804
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 1133
    const/4 v2, 0x0

    .line 1134
    .local v2, populated:Z
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1135
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1137
    :cond_0
    return v2
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 4
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
    .line 1211
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1212
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1213
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1214
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1215
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1217
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 4
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
    .line 1186
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 1187
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1188
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1189
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1190
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 1189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1192
    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 4
    .parameter "pressed"

    .prologue
    .line 1711
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1712
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1713
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1714
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1713
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1716
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4
    .parameter "selected"

    .prologue
    .line 1702
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1703
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1704
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1705
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1704
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1707
    :cond_0
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    .prologue
    .line 1094
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1095
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1096
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1097
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1098
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1097
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1100
    :cond_0
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
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
    .line 1228
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1229
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "ev"

    .prologue
    .line 825
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 826
    const/16 v20, 0x0

    .line 942
    :goto_0
    return v20

    .line 829
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 830
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 831
    .local v17, xf:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 832
    .local v19, yf:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v11, v17, v20

    .line 833
    .local v11, scrolledXFloat:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v13, v19, v20

    .line 834
    .local v13, scrolledYFloat:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 836
    .local v8, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x8

    and-int v20, v20, v21

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    move/from16 v7, v20

    .line 838
    .local v7, disallowIntercept:Z
    :goto_1
    if-nez v3, :cond_6

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 844
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 848
    :cond_1
    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 850
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 853
    float-to-int v12, v11

    .line 854
    .local v12, scrolledXInt:I
    float-to-int v14, v13

    .line 855
    .local v14, scrolledYInt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object v5, v0

    .line 856
    .local v5, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move v6, v0

    .line 858
    .local v6, count:I
    const/16 v20, 0x1

    sub-int v9, v6, v20

    .local v9, i:I
    :goto_2
    if-ltz v9, :cond_6

    .line 859
    aget-object v4, v5, v9

    .line 860
    .local v4, child:Landroid/view/View;
    move-object v0, v4

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0xc

    if-eqz v20, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 862
    :cond_3
    invoke-virtual {v4, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 863
    invoke-virtual {v8, v12, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 865
    move-object v0, v4

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v16, v11, v20

    .line 866
    .local v16, xc:F
    move-object v0, v4

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v18, v13, v20

    .line 867
    .local v18, yc:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 868
    move-object v0, v4

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x4000001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object v1, v4

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 869
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 871
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 872
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 836
    .end local v4           #child:Landroid/view/View;
    .end local v5           #children:[Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #disallowIntercept:Z
    .end local v9           #i:I
    .end local v12           #scrolledXInt:I
    .end local v14           #scrolledYInt:I
    .end local v16           #xc:F
    .end local v18           #yc:F
    :cond_4
    const/16 v20, 0x0

    move/from16 v7, v20

    goto/16 :goto_1

    .line 858
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #children:[Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #disallowIntercept:Z
    .restart local v9       #i:I
    .restart local v12       #scrolledXInt:I
    .restart local v14       #scrolledYInt:I
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 883
    .end local v4           #child:Landroid/view/View;
    .end local v5           #children:[Landroid/view/View;
    .end local v6           #count:I
    .end local v9           #i:I
    .end local v12           #scrolledXInt:I
    .end local v14           #scrolledYInt:I
    :cond_6
    const/16 v20, 0x1

    move v0, v3

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    const/16 v20, 0x3

    move v0, v3

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    :cond_7
    const/16 v20, 0x1

    move/from16 v10, v20

    .line 886
    .local v10, isUpOrCancel:Z
    :goto_3
    if-eqz v10, :cond_8

    .line 889
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    const v21, -0x80001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 894
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    move-object v15, v0

    .line 895
    .local v15, target:Landroid/view/View;
    if-nez v15, :cond_b

    .line 898
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 899
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x400

    and-int v20, v20, v21

    if-eqz v20, :cond_9

    .line 900
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 901
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x4000001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 903
    :cond_9
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    goto/16 :goto_0

    .line 883
    .end local v10           #isUpOrCancel:Z
    .end local v15           #target:Landroid/view/View;
    :cond_a
    const/16 v20, 0x0

    move/from16 v10, v20

    goto :goto_3

    .line 908
    .restart local v10       #isUpOrCancel:Z
    .restart local v15       #target:Landroid/view/View;
    :cond_b
    if-nez v7, :cond_d

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 909
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v16, v11, v20

    .line 910
    .restart local v16       #xc:F
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v18, v13, v20

    .line 911
    .restart local v18       #yc:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x4000001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 912
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 913
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 914
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 919
    :cond_c
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 923
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 926
    .end local v16           #xc:F
    .end local v18           #yc:F
    :cond_d
    if-eqz v10, :cond_e

    .line 927
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 932
    :cond_e
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v16, v11, v20

    .line 933
    .restart local v16       #xc:F
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v18, v13, v20

    .line 934
    .restart local v18       #yc:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 936
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x400

    and-int v20, v20, v21

    if-eqz v20, :cond_f

    .line 937
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 938
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x4000001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object v1, v15

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 939
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 942
    :cond_f
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    goto/16 :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 812
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 813
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 817
    :goto_0
    return v0

    .line 814
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 815
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 817
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 495
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 703
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 704
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 705
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 706
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 707
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 706
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 709
    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 659
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 660
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 661
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 662
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 663
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 662
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 665
    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 716
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 717
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 718
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 719
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 720
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 719
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 722
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 42
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 1475
    const/16 v32, 0x0

    .line 1477
    .local v32, more:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v23, v0

    .line 1478
    .local v23, cl:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    .line 1479
    .local v26, ct:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    .line 1480
    .local v25, cr:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v22, v0

    .line 1482
    .local v22, cb:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v27, v0

    .line 1484
    .local v27, flags:I
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x100

    move v6, v0

    const/16 v7, 0x100

    if-ne v6, v7, :cond_1

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    if-eqz v6, :cond_0

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->clear()V

    .line 1488
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    and-int/lit16 v6, v6, -0x101

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1491
    :cond_1
    const/4 v11, 0x0

    .line 1492
    .local v11, transformToApply:Landroid/view/animation/Transformation;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    .line 1493
    .local v5, a:Landroid/view/animation/Animation;
    const/16 v24, 0x0

    .line 1495
    .local v24, concatMatrix:Z
    if-eqz v5, :cond_9

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    move-object v6, v0

    if-nez v6, :cond_2

    .line 1497
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 1499
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    move-object v10, v0

    .line 1501
    .local v10, region:Landroid/graphics/RectF;
    invoke-virtual {v5}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v30

    .line 1502
    .local v30, initialized:Z
    if-nez v30, :cond_3

    .line 1503
    sub-int v6, v25, v23

    sub-int v7, v22, v26

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1504
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v25, v23

    sub-int v9, v22, v26

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    .line 1505
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->onAnimationStart()V

    .line 1508
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    if-nez v6, :cond_4

    .line 1509
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 1511
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    move-object v0, v5

    move-wide/from16 v1, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v32

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v11, v0

    .line 1514
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v24

    .line 1516
    if-eqz v32, :cond_5

    .line 1517
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1518
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x90

    move v6, v0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_7

    .line 1520
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x4

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1555
    .end local v10           #region:Landroid/graphics/RectF;
    .end local v30           #initialized:Z
    :cond_5
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x20

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1557
    if-nez v24, :cond_d

    move/from16 v0, v23

    int-to-float v0, v0

    move v13, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move v14, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v15, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v16, v0

    sget-object v17, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_d

    .line 1670
    :cond_6
    :goto_1
    return v32

    .line 1521
    .restart local v10       #region:Landroid/graphics/RectF;
    .restart local v30       #initialized:Z
    :cond_7
    and-int/lit8 v6, v27, 0x4

    if-nez v6, :cond_5

    .line 1524
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x40

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1525
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_0

    .line 1528
    :cond_8
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v25, v23

    sub-int v9, v22, v26

    invoke-virtual/range {v5 .. v11}, Landroid/view/animation/Animation;->getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V

    .line 1532
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x40

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1534
    iget v6, v10, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    add-int v31, v23, v6

    .line 1535
    .local v31, left:I
    iget v6, v10, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    add-int v38, v26, v6

    .line 1536
    .local v38, top:I
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    add-int v6, v6, v31

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    add-int v7, v7, v38

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v38

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto/16 :goto_0

    .line 1539
    .end local v10           #region:Landroid/graphics/RectF;
    .end local v30           #initialized:Z
    .end local v31           #left:I
    .end local v38           #top:I
    :cond_9
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x800

    move v6, v0

    const/16 v7, 0x800

    if-ne v6, v7, :cond_5

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    if-nez v6, :cond_a

    .line 1542
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 1544
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v29

    .line 1545
    .local v29, hasTransform:Z
    if-eqz v29, :cond_5

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v41

    .line 1547
    .local v41, transformType:I
    sget v6, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    move/from16 v0, v41

    move v1, v6

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    move-object v11, v6

    .line 1549
    :goto_2
    sget v6, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    and-int v6, v6, v41

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    move/from16 v24, v6

    :goto_3
    goto/16 :goto_0

    .line 1547
    :cond_b
    const/4 v6, 0x0

    move-object v11, v6

    goto :goto_2

    .line 1549
    :cond_c
    const/4 v6, 0x0

    move/from16 v24, v6

    goto :goto_3

    .line 1562
    .end local v29           #hasTransform:Z
    .end local v41           #transformType:I
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->computeScroll()V

    .line 1564
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v36, v0

    .line 1565
    .local v36, sx:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v37, v0

    .line 1567
    .local v37, sy:I
    const/16 v35, 0x0

    .line 1568
    .local v35, scalingRequired:Z
    const/16 v20, 0x0

    .line 1569
    .local v20, cache:Landroid/graphics/Bitmap;
    const v6, 0x8000

    and-int v6, v6, v27

    const v7, 0x8000

    if-eq v6, v7, :cond_e

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x4000

    move v6, v0

    const/16 v7, 0x4000

    if-ne v6, v7, :cond_f

    .line 1571
    :cond_e
    const/4 v6, 0x1

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    move-object v0, v6

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v35, v0

    .line 1575
    :cond_f
    if-nez v20, :cond_16

    const/4 v6, 0x1

    move/from16 v28, v6

    .line 1577
    .local v28, hasNoCache:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v33

    .line 1578
    .local v33, restoreTo:I
    if-eqz v28, :cond_17

    .line 1579
    sub-int v6, v23, v36

    int-to-float v6, v6

    sub-int v7, v26, v37

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1589
    :cond_10
    :goto_5
    const/high16 v19, 0x3f80

    .line 1591
    .local v19, alpha:F
    if-eqz v11, :cond_19

    .line 1592
    if-eqz v24, :cond_12

    .line 1593
    const/16 v39, 0x0

    .line 1594
    .local v39, transX:I
    const/16 v40, 0x0

    .line 1595
    .local v40, transY:I
    if-eqz v28, :cond_11

    .line 1596
    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v39, v0

    .line 1597
    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v40, v0

    .line 1601
    :cond_11
    move/from16 v0, v39

    neg-int v0, v0

    move v6, v0

    int-to-float v6, v6

    move/from16 v0, v40

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1602
    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1603
    move/from16 v0, v39

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1604
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x100

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1607
    .end local v39           #transX:I
    .end local v40           #transY:I
    :cond_12
    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v19

    .line 1608
    const/high16 v6, 0x3f80

    cmpg-float v6, v19, v6

    if-gez v6, :cond_13

    .line 1609
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x100

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1612
    :cond_13
    const/high16 v6, 0x3f80

    cmpg-float v6, v19, v6

    if-gez v6, :cond_14

    if-eqz v28, :cond_14

    .line 1613
    const/high16 v6, 0x437f

    mul-float v6, v6, v19

    move v0, v6

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1614
    .local v17, multipliedAlpha:I
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v6

    if-nez v6, :cond_18

    .line 1615
    move/from16 v0, v36

    int-to-float v0, v0

    move v13, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v14, v0

    add-int v6, v36, v25

    sub-int v6, v6, v23

    int-to-float v15, v6

    add-int v6, v37, v22

    sub-int v6, v6, v26

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v18, 0x14

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1625
    .end local v17           #multipliedAlpha:I
    :cond_14
    :goto_6
    and-int/lit8 v6, v27, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    .line 1626
    if-eqz v28, :cond_1a

    .line 1627
    sub-int v6, v25, v23

    add-int v6, v6, v36

    sub-int v7, v22, v26

    add-int v7, v7, v37

    move-object/from16 v0, p1

    move/from16 v1, v36

    move/from16 v2, v37

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1637
    :cond_15
    :goto_7
    if-eqz v28, :cond_1d

    .line 1639
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit16 v6, v6, 0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_1c

    .line 1643
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const v7, -0x600001

    and-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1644
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1663
    :goto_8
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1665
    if-eqz v5, :cond_6

    if-nez v32, :cond_6

    .line 1666
    const/16 v6, 0xff

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    .line 1667
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup;->finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 1575
    .end local v19           #alpha:F
    .end local v28           #hasNoCache:Z
    .end local v33           #restoreTo:I
    :cond_16
    const/4 v6, 0x0

    move/from16 v28, v6

    goto/16 :goto_4

    .line 1581
    .restart local v28       #hasNoCache:Z
    .restart local v33       #restoreTo:I
    :cond_17
    move/from16 v0, v23

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1582
    if-eqz v35, :cond_10

    .line 1584
    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v7, v0

    iget v7, v7, Landroid/view/View$AttachInfo;->mApplicationScale:F

    div-float v34, v6, v7

    .line 1585
    .local v34, scale:F
    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_5

    .line 1618
    .end local v34           #scale:F
    .restart local v17       #multipliedAlpha:I
    .restart local v19       #alpha:F
    :cond_18
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const/high16 v7, 0x4

    or-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_6

    .line 1621
    .end local v17           #multipliedAlpha:I
    :cond_19
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    const/high16 v7, 0x4

    if-ne v6, v7, :cond_14

    .line 1622
    const/16 v6, 0xff

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    goto/16 :goto_6

    .line 1629
    :cond_1a
    if-nez v35, :cond_1b

    .line 1630
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v25, v23

    sub-int v9, v22, v26

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_7

    .line 1632
    :cond_1b
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_7

    .line 1646
    :cond_1c
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 1649
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    .line 1650
    .local v21, cachePaint:Landroid/graphics/Paint;
    const/high16 v6, 0x3f80

    cmpg-float v6, v19, v6

    if-gez v6, :cond_1f

    .line 1651
    const/high16 v6, 0x437f

    mul-float v6, v6, v19

    float-to-int v6, v6

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1652
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x1000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1660
    :cond_1e
    :goto_9
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move v2, v6

    move v3, v7

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 1653
    :cond_1f
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x1000

    move v6, v0

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_1e

    .line 1654
    const/16 v6, 0xff

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1655
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    and-int/lit16 v6, v6, -0x1001

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_9
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 3357
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 3359
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 3360
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_0

    .line 3361
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3365
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3366
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3368
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3369
    aget-object v0, v1, v3

    .line 3370
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 3371
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 3368
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3375
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 574
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 581
    :goto_0
    return-object v0

    .line 578
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 581
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    .line 1750
    iget v4, p0, Landroid/view/View;->mID:I

    if-ne p1, v4, :cond_0

    move-object v4, p0

    .line 1769
    :goto_0
    return-object v4

    .line 1754
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1755
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1757
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1758
    aget-object v2, v3, v0

    .line 1760
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 1761
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1763
    if-eqz v2, :cond_1

    move-object v4, v2

    .line 1764
    goto :goto_0

    .line 1757
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1769
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .parameter "tag"

    .prologue
    .line 1777
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p0

    .line 1796
    :goto_0
    return-object v4

    .line 1781
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1782
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1784
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1785
    aget-object v2, v3, v0

    .line 1787
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 1788
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 1790
    if-eqz v2, :cond_1

    move-object v4, v2

    .line 1791
    goto :goto_0

    .line 1784
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1796
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "insets"

    .prologue
    .line 3331
    invoke-super {p0, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 3332
    .local v2, done:Z
    if-nez v2, :cond_0

    .line 3333
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3334
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3335
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 3336
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 3337
    if-eqz v2, :cond_1

    .line 3342
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_0
    return v2

    .line 3335
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #count:I
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 472
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 480
    :goto_0
    return-object v0

    .line 477
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 480
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 440
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 452
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 454
    :cond_1
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .parameter "region"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3296
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_0

    move v4, v7

    .line 3297
    .local v4, meOpaque:Z
    :goto_0
    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    move v6, v7

    .line 3313
    :goto_1
    return v6

    .end local v4           #meOpaque:Z
    :cond_0
    move v4, v8

    .line 3296
    goto :goto_0

    .line 3301
    .restart local v4       #meOpaque:Z
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 3302
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3303
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3304
    .local v2, count:I
    const/4 v5, 0x1

    .line 3305
    .local v5, noneOfTheChildrenAreTransparent:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 3306
    aget-object v0, v1, v3

    .line 3307
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 3308
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3309
    const/4 v5, 0x0

    .line 3305
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3313
    .end local v0           #child:Landroid/view/View;
    :cond_4
    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move v6, v7

    goto :goto_1

    :cond_6
    move v6, v8

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 2939
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 2910
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter "p"

    .prologue
    .line 2928
    return-object p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 2
    .parameter "index"

    .prologue
    .line 3065
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3067
    :goto_0
    return-object v1

    .line 3066
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3067
    .local v0, ex:Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 3053
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1437
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 1742
    const/4 v0, 0x0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 6
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    .line 2659
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, v2, v3

    .line 2660
    .local v0, dx:I
    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, v2, v3

    .line 2661
    .local v1, dy:I
    if-eqz p3, :cond_0

    .line 2662
    iget v2, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Point;->x:I

    .line 2663
    iget v2, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Point;->y:I

    .line 2665
    :cond_0
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2666
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    move v2, v5

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 372
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    .line 2728
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 3352
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 2883
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 406
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 407
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 589
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-eqz v5, :cond_0

    move v5, v6

    .line 610
    :goto_0
    return v5

    .line 593
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    .line 594
    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 598
    .local v3, descendantFocusability:I
    const/high16 v5, 0x6

    if-eq v3, v5, :cond_3

    .line 599
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 600
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 602
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 603
    aget-object v0, v1, v4

    .line 604
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    .line 605
    goto :goto_0

    .line 602
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v4           #i:I
    :cond_3
    move v5, v6

    .line 610
    goto :goto_0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 4
    .parameter "child"

    .prologue
    .line 3036
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3037
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3038
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3039
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    move v3, v2

    .line 3043
    :goto_1
    return v3

    .line 3038
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3043
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 13
    .parameter "child"
    .parameter "dirty"

    .prologue
    const/high16 v12, 0x20

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2471
    move-object v6, p0

    .line 2473
    .local v6, parent:Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2474
    .local v1, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_4

    .line 2475
    iget-object v4, v1, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 2476
    .local v4, location:[I
    iget v8, p1, Landroid/view/View;->mLeft:I

    aput v8, v4, v11

    .line 2477
    iget v8, p1, Landroid/view/View;->mTop:I

    aput v8, v4, v10

    .line 2482
    iget v8, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v8, v8, 0x40

    const/16 v9, 0x40

    if-ne v8, v9, :cond_5

    move v2, v10

    .line 2485
    .local v2, drawAnimation:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isOpaque()Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_6

    move v3, v10

    .line 2489
    .local v3, isOpaque:Z
    :goto_1
    if-eqz v3, :cond_7

    const/high16 v8, 0x40

    move v5, v8

    .line 2492
    .local v5, opaqueFlag:I
    :cond_0
    :goto_2
    const/4 v7, 0x0

    .line 2493
    .local v7, view:Landroid/view/View;
    instance-of v8, v6, Landroid/view/View;

    if-eqz v8, :cond_1

    .line 2494
    move-object v0, v6

    check-cast v0, Landroid/view/View;

    move-object v7, v0

    .line 2497
    :cond_1
    if-eqz v2, :cond_2

    .line 2498
    if-eqz v7, :cond_8

    .line 2499
    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v7, Landroid/view/View;->mPrivateFlags:I

    .line 2507
    :cond_2
    :goto_3
    if-eqz v7, :cond_3

    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x60

    and-int/2addr v8, v9

    if-eq v8, v12, :cond_3

    .line 2508
    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    const v9, -0x600001

    and-int/2addr v8, v9

    or-int/2addr v8, v5

    iput v8, v7, Landroid/view/View;->mPrivateFlags:I

    .line 2511
    :cond_3
    invoke-interface {v6, v4, p2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v6

    .line 2512
    if-nez v6, :cond_0

    .line 2514
    .end local v2           #drawAnimation:Z
    .end local v3           #isOpaque:Z
    .end local v4           #location:[I
    .end local v5           #opaqueFlag:I
    .end local v7           #view:Landroid/view/View;
    :cond_4
    return-void

    .restart local v4       #location:[I
    :cond_5
    move v2, v11

    .line 2482
    goto :goto_0

    .restart local v2       #drawAnimation:Z
    :cond_6
    move v3, v11

    .line 2485
    goto :goto_1

    .restart local v3       #isOpaque:Z
    :cond_7
    move v5, v12

    .line 2489
    goto :goto_2

    .line 2500
    .restart local v5       #opaqueFlag:I
    .restart local v7       #view:Landroid/view/View;
    :cond_8
    instance-of v8, v6, Landroid/view/ViewRoot;

    if-eqz v8, :cond_2

    .line 2501
    move-object v0, v6

    check-cast v0, Landroid/view/ViewRoot;

    move-object v8, v0

    iput-boolean v10, v8, Landroid/view/ViewRoot;->mIsAnimating:Z

    goto :goto_3
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 7
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2529
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 2530
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v2, 0x90

    const/16 v3, 0x80

    if-eq v2, v3, :cond_1

    .line 2532
    aget v2, p1, v5

    iget v3, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    aget v3, p1, v6

    iget v4, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2535
    iget v0, p0, Landroid/view/View;->mLeft:I

    .line 2536
    .local v0, left:I
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 2538
    .local v1, top:I
    iget v2, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    .line 2540
    :cond_0
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2542
    aput v0, p1, v5

    .line 2543
    aput v1, p1, v6

    .line 2545
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2560
    .end local v0           #left:I
    .end local v1           #top:I
    :goto_0
    return-object v2

    .line 2548
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x8021

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2550
    iget v2, p0, Landroid/view/View;->mLeft:I

    aput v2, p1, v5

    .line 2551
    iget v2, p0, Landroid/view/View;->mTop:I

    aput v2, p1, v6

    .line 2553
    iget v2, p0, Landroid/view/View;->mRight:I

    aget v3, p1, v5

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mBottom:I

    aget v4, p1, v6

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2556
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 2560
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 2774
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimationCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2744
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 2841
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 2809
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 3102
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 3104
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3106
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 3109
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 3110
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 3129
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3131
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3134
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 3138
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 3139
    return-void
.end method

.method protected measureChildren(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 3081
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3082
    .local v3, size:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3083
    .local v1, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3084
    aget-object v0, v1, v2

    .line 3085
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 3086
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 3083
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3089
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 5
    .parameter "offset"

    .prologue
    .line 2645
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2646
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2648
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2649
    aget-object v3, v0, v2

    .line 2650
    .local v3, v:Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mTop:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mTop:I

    .line 2651
    iget v4, v3, Landroid/view/View;->mBottom:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mBottom:I

    .line 2648
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2653
    .end local v3           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "descendant"
    .parameter "rect"

    .prologue
    .line 2570
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 2571
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 7
    .parameter "descendant"
    .parameter "rect"
    .parameter "offsetFromChildToParent"
    .parameter "clipToBounds"

    .prologue
    const/4 v6, 0x0

    .line 2591
    if-ne p1, p0, :cond_0

    .line 2635
    :goto_0
    return-void

    .line 2595
    :cond_0
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2600
    .local v2, theParent:Landroid/view/ViewParent;
    :goto_1
    if-eqz v2, :cond_4

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_4

    if-eq v2, p0, :cond_4

    .line 2602
    if-eqz p3, :cond_2

    .line 2603
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 2605
    if-eqz p4, :cond_1

    .line 2606
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 2607
    .local v1, p:Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 2618
    .end local v1           #p:Landroid/view/View;
    :cond_1
    :goto_2
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 2619
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1

    .line 2610
    :cond_2
    if-eqz p4, :cond_3

    .line 2611
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 2612
    .restart local v1       #p:Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 2614
    .end local v1           #p:Landroid/view/View;
    :cond_3
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 2624
    :cond_4
    if-ne v2, p0, :cond_6

    .line 2625
    if-eqz p3, :cond_5

    .line 2626
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 2629
    :cond_5
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 2633
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "parameter must be a descendant of this view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "descendant"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    .line 2580
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 2581
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 1269
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 1272
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 1273
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1275
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 1279
    :cond_0
    return-void
.end method

.method protected onAnimationStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1248
    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    .line 1251
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_2

    .line 1252
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1253
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1255
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1256
    aget-object v0, v1, v3

    .line 1257
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 1258
    invoke-virtual {v0, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1259
    invoke-virtual {v0, v6}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 1255
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1263
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v5, 0x8000

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1265
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 12
    .parameter "consistency"

    .prologue
    const/high16 v10, 0x60

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "ViewConsistency"

    .line 2963
    invoke-super {p0, p1}, Landroid/view/View;->onConsistencyCheck(I)Z

    move-result v6

    .line 2965
    .local v6, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    move v1, v9

    .line 2966
    .local v1, checkLayout:Z
    :goto_0
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_2

    move v0, v9

    .line 2968
    .local v0, checkDrawing:Z
    :goto_1
    if-eqz v1, :cond_3

    .line 2969
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2970
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2971
    .local v2, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 2972
    aget-object v7, v2, v4

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eq v7, p0, :cond_0

    .line 2973
    const/4 v6, 0x0

    .line 2974
    const-string v7, "ViewConsistency"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has no parent/a parent that is not "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0           #checkDrawing:Z
    .end local v1           #checkLayout:Z
    .end local v2           #children:[Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_1
    move v1, v8

    .line 2965
    goto :goto_0

    .restart local v1       #checkLayout:Z
    :cond_2
    move v0, v8

    .line 2966
    goto :goto_1

    .line 2980
    .restart local v0       #checkDrawing:Z
    :cond_3
    if-eqz v0, :cond_4

    .line 2982
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-eqz v7, :cond_4

    .line 2983
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 2984
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_4

    instance-of v7, v5, Landroid/view/ViewRoot;

    if-nez v7, :cond_4

    .line 2985
    check-cast v5, Landroid/view/View;

    .end local v5           #parent:Landroid/view/ViewParent;
    iget v7, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-nez v7, :cond_4

    .line 2986
    const/4 v6, 0x0

    .line 2987
    const-string v7, "ViewConsistency"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ViewGroup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is dirty but its parent is not: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    :cond_4
    return v6
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 3379
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_0

    .line 3380
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v5

    .line 3403
    :goto_0
    return-object v5

    .line 3383
    :cond_0
    const/4 v3, 0x0

    .line 3384
    .local v3, need:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3385
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 3386
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 3388
    .local v0, childState:[I
    if-eqz v0, :cond_1

    .line 3389
    array-length v5, v0

    add-int/2addr v3, v5

    .line 3385
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3393
    .end local v0           #childState:[I
    :cond_2
    add-int v5, p1, v3

    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 3395
    .local v4, state:[I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    .line 3396
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 3398
    .restart local v0       #childState:[I
    if-eqz v0, :cond_3

    .line 3399
    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v4

    .line 3395
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #childState:[I
    :cond_4
    move-object v5, v4

    .line 3403
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1005
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v8, 0x1

    .line 1065
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1066
    .local v2, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 1067
    const/4 v6, 0x0

    .line 1068
    .local v6, index:I
    const/4 v5, 0x1

    .line 1069
    .local v5, increment:I
    move v3, v2

    .line 1075
    .local v3, end:I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1076
    .local v1, children:[Landroid/view/View;
    move v4, v6

    .local v4, i:I
    :goto_1
    if-eq v4, v3, :cond_2

    .line 1077
    aget-object v0, v1, v4

    .line 1078
    .local v0, child:Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_1

    .line 1079
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    .line 1084
    .end local v0           #child:Landroid/view/View;
    :goto_2
    return v7

    .line 1071
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    sub-int v6, v2, v8

    .line 1072
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 1073
    .restart local v5       #increment:I
    const/4 v3, -0x1

    .restart local v3       #end:I
    goto :goto_0

    .line 1076
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #children:[Landroid/view/View;
    .restart local v4       #i:I
    :cond_1
    add-int/2addr v4, v5

    goto :goto_1

    .line 1084
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 741
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 742
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 743
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 0

    .prologue
    .line 2260
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2261
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2262
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2263
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2275
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2276
    .local v2, count:I
    if-gtz v2, :cond_1

    .line 2316
    :cond_0
    :goto_0
    return-void

    .line 2280
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2281
    .local v0, children:[Landroid/view/View;
    iput v10, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2283
    iget-object v6, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2284
    .local v6, listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    if-eqz v6, :cond_5

    move v7, v11

    .line 2285
    .local v7, notify:Z
    :goto_1
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 2286
    .local v4, focused:Landroid/view/View;
    iget-object v9, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v9, :cond_6

    move v3, v11

    .line 2287
    .local v3, detach:Z
    :goto_2
    const/4 v1, 0x0

    .line 2289
    .local v1, clearChildFocus:Landroid/view/View;
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 2291
    sub-int v5, v2, v11

    .local v5, i:I
    :goto_3
    if-ltz v5, :cond_8

    .line 2292
    aget-object v8, v0, v5

    .line 2294
    .local v8, view:Landroid/view/View;
    if-ne v8, v4, :cond_2

    .line 2295
    invoke-virtual {v8}, Landroid/view/View;->clearFocusForRemoval()V

    .line 2296
    move-object v1, v8

    .line 2299
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 2300
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2305
    :cond_3
    :goto_4
    if-eqz v7, :cond_4

    .line 2306
    invoke-interface {v6, p0, v8}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2309
    :cond_4
    iput-object v12, v8, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2310
    aput-object v12, v0, v5

    .line 2291
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v3           #detach:Z
    .end local v4           #focused:Landroid/view/View;
    .end local v5           #i:I
    .end local v7           #notify:Z
    .end local v8           #view:Landroid/view/View;
    :cond_5
    move v7, v10

    .line 2284
    goto :goto_1

    .restart local v4       #focused:Landroid/view/View;
    .restart local v7       #notify:Z
    :cond_6
    move v3, v10

    .line 2286
    goto :goto_2

    .line 2301
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v3       #detach:Z
    .restart local v5       #i:I
    .restart local v8       #view:Landroid/view/View;
    :cond_7
    if-eqz v3, :cond_3

    .line 2302
    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_4

    .line 2313
    .end local v8           #view:Landroid/view/View;
    :cond_8
    if-eqz v1, :cond_0

    .line 2314
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .parameter "child"
    .parameter "animate"

    .prologue
    .line 2332
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2333
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 2336
    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2337
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2342
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    .line 2343
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2345
    :cond_2
    return-void

    .line 2338
    :cond_3
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 2339
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 2135
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 2136
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2137
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2138
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2167
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 2168
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2169
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2170
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 2147
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 2148
    return-void
.end method

.method public removeViews(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 2179
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 2180
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2181
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2182
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 2158
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 2159
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 424
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_3

    .line 425
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 429
    :cond_2
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 431
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallowIntercept"

    .prologue
    const/high16 v1, 0x8

    .line 950
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_2

    .line 965
    :cond_0
    :goto_1
    return-void

    .line 950
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 955
    :cond_2
    if-eqz p1, :cond_3

    .line 956
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 962
    :goto_2
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 958
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_2
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1028
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 1030
    .local v0, descendantFocusability:I
    sparse-switch v0, :sswitch_data_0

    .line 1042
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1032
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 1039
    :goto_0
    return v2

    .line 1034
    :sswitch_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1035
    .local v1, took:Z
    if-eqz v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_0

    .line 1038
    .end local v1           #took:Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1039
    .restart local v1       #took:Z
    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_0

    .line 1030
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3320
    if-eqz p1, :cond_0

    .line 3321
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3322
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 3323
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 3326
    :cond_0
    return-void
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    .prologue
    .line 2705
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2706
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 1
    .parameter "addsStates"

    .prologue
    .line 3413
    if-eqz p1, :cond_0

    .line 3414
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3419
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 3420
    return-void

    .line 3416
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "always"

    .prologue
    .line 2795
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2796
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2759
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2760
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 1237
    if-nez p1, :cond_0

    iget v3, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 1238
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1239
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1240
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1241
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1244
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2855
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2856
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2826
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2827
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 1
    .parameter "clipChildren"

    .prologue
    .line 1682
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 1683
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .parameter "clipToPadding"

    .prologue
    .line 1694
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 1695
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .parameter "focusability"

    .prologue
    .line 384
    sparse-switch p1, :sswitch_data_0

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :sswitch_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 394
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 395
    return-void

    .line 384
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 2715
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 2716
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 2717
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2719
    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "animationListener"

    .prologue
    .line 3453
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3454
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1924
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 1925
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1174
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1175
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1179
    :goto_0
    return-void

    .line 1177
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setPersistentDrawingCache(I)V
    .locals 1
    .parameter "drawingCacheToKeep"

    .prologue
    .line 2898
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 2899
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1733
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 1734
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 460
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLayoutAnimation()V
    .locals 1

    .prologue
    .line 2692
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 2693
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2694
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2696
    :cond_0
    return-void
.end method

.method unFocus()V
    .locals 1

    .prologue
    .line 535
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 536
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 539
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 540
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "view"
    .parameter "params"

    .prologue
    .line 1878
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1879
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1881
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eq v0, p0, :cond_1

    .line 1882
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1884
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1885
    return-void
.end method
