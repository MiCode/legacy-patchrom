.class public Landroid/view/animation/AnimationSet;
.super Landroid/view/animation/Animation;
.source "AnimationSet.java"


# static fields
.field private static final PROPERTY_CHANGE_BOUNDS_MASK:I = 0x80

.field private static final PROPERTY_DURATION_MASK:I = 0x20

.field private static final PROPERTY_FILL_AFTER_MASK:I = 0x1

.field private static final PROPERTY_FILL_BEFORE_MASK:I = 0x2

.field private static final PROPERTY_MORPH_MATRIX_MASK:I = 0x40

.field private static final PROPERTY_REPEAT_MODE_MASK:I = 0x4

.field private static final PROPERTY_SHARE_INTERPOLATOR_MASK:I = 0x10

.field private static final PROPERTY_START_OFFSET_MASK:I = 0x8


# instance fields
.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field private mLastEnd:J

.field private mStoredOffsets:[J

.field private mTempTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    sget-object v1, Lcom/android/internal/R$styleable;->AnimationSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "shareInterpolator"

    .prologue
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    return-void
.end method

.method private setFlag(IZ)V
    .locals 2
    .parameter "mask"
    .parameter "value"

    .prologue
    if-eqz p2, :cond_0

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public addAnimation(Landroid/view/animation/Animation;)V
    .locals 8
    .parameter "a"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_2

    move v1, v3

    .local v1, noMatrix:Z
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_0
    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_3

    move v0, v3

    .local v0, changeBounds:Z
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_1
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    iget-wide v4, p0, Landroid/view/animation/Animation;->mDuration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    :goto_2
    return-void

    .end local v0           #changeBounds:Z
    .end local v1           #noMatrix:Z
    :cond_2
    move v1, v4

    goto :goto_0

    .restart local v1       #noMatrix:Z
    :cond_3
    move v0, v4

    goto :goto_1

    .restart local v0       #changeBounds:Z
    :cond_4
    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v4, p0, Landroid/view/animation/Animation;->mStartOffset:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    goto :goto_2
.end method

.method protected bridge synthetic clone()Landroid/view/animation/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Landroid/view/animation/AnimationSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .local v0, animation:Landroid/view/animation/AnimationSet;
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, count:I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .local v1, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .local v4, duration:J
    iget-object v7, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .local v0, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v7, 0x1

    sub-int v6, v1, v7

    .end local p0
    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v2

    .local v2, d:J
    cmp-long v7, v2, v4

    if-lez v7, :cond_0

    move-wide v4, v2

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .end local v2           #d:J
    :cond_1
    return-wide v4
.end method

.method public getAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDuration()J
    .locals 8

    .prologue
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .local v0, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    const-wide/16 v2, 0x0

    .local v2, duration:J
    iget v6, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v6, v6, 0x20

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    move v4, v6

    .local v4, durationSet:Z
    :goto_0
    if-eqz v4, :cond_2

    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    .end local p0
    :cond_0
    return-wide v2

    .end local v4           #durationSet:Z
    .restart local p0
    :cond_1
    const/4 v6, 0x0

    move v4, v6

    goto :goto_0

    .restart local v4       #durationSet:Z
    :cond_2
    const/4 v5, 0x0

    .end local p0
    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public getStartTime()J
    .locals 8

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    .local v4, startTime:J
    iget-object v6, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, count:I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .local v1, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_0
    return-wide v4
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 11
    .parameter "currentTime"
    .parameter "t"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v8, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, count:I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .local v1, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    iget-object v7, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .local v7, temp:Landroid/view/animation/Transformation;
    const/4 v5, 0x0

    .local v5, more:Z
    const/4 v6, 0x0

    .local v6, started:Z
    const/4 v3, 0x1

    .local v3, ended:Z
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->clear()V

    sub-int v4, v2, v9

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {v7}, Landroid/view/animation/Transformation;->clear()V

    invoke-virtual {v0, p1, p2, v7}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v5, :cond_2

    :cond_0
    move v5, v9

    :goto_1
    invoke-virtual {p3, v7}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_1
    move v6, v9

    :goto_2
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v3, :cond_4

    move v3, v9

    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    move v5, v10

    goto :goto_1

    :cond_3
    move v6, v10

    goto :goto_2

    :cond_4
    move v3, v10

    goto :goto_3

    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_5
    if-eqz v6, :cond_7

    iget-boolean v8, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v8, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_6
    iput-boolean v9, p0, Landroid/view/animation/Animation;->mStarted:Z

    :cond_7
    iget-boolean v8, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-eq v3, v8, :cond_9

    iget-object v8, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v8, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_8
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mEnded:Z

    :cond_9
    return v5
.end method

.method public initialize(IIII)V
    .locals 28
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    invoke-super/range {p0 .. p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x20

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    const/16 v26, 0x1

    move/from16 v10, v26

    .local v10, durationSet:Z
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x1

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    const/16 v26, 0x1

    move/from16 v12, v26

    .local v12, fillAfterSet:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x2

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    const/16 v26, 0x1

    move/from16 v14, v26

    .local v14, fillBeforeSet:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x4

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    const/16 v26, 0x1

    move/from16 v20, v26

    .local v20, repeatModeSet:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x10

    const/16 v27, 0x10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    const/16 v26, 0x1

    move/from16 v21, v26

    .local v21, shareInterpolator:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x8

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    const/16 v26, 0x1

    move/from16 v24, v26

    .local v24, startOffsetSet:Z
    :goto_5
    if-eqz v21, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/animation/AnimationSet;->ensureInterpolator()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    move-object v6, v0

    .local v6, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, count:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/animation/Animation;->mDuration:J

    move-wide v8, v0

    .local v8, duration:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/animation/Animation;->mFillAfter:Z

    move v11, v0

    .local v11, fillAfter:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/animation/Animation;->mFillBefore:Z

    move v13, v0

    .local v13, fillBefore:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/Animation;->mRepeatMode:I

    move/from16 v19, v0

    .local v19, repeatMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    .local v16, interpolator:Landroid/view/animation/Interpolator;
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/animation/Animation;->mStartOffset:J

    move-wide/from16 v22, v0

    .local v22, startOffset:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    move-object/from16 v25, v0

    .local v25, storedOffsets:[J
    if-eqz v24, :cond_f

    if-eqz v25, :cond_1

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v7

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v7

    new-array v0, v0, [J

    move-object/from16 v25, v0

    .end local v25           #storedOffsets:[J
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    .restart local v25       #storedOffsets:[J
    :cond_2
    :goto_6
    const/4 v15, 0x0

    .local v15, i:I
    :goto_7
    if-ge v15, v7, :cond_10

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    .local v5, a:Landroid/view/animation/Animation;
    if-eqz v10, :cond_3

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v5, v11}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    :cond_4
    if-eqz v14, :cond_5

    invoke-virtual {v5, v13}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    :cond_5
    if-eqz v20, :cond_6

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    :cond_6
    if-eqz v21, :cond_7

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_7
    if-eqz v24, :cond_8

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v17

    .local v17, offset:J
    add-long v26, v17, v22

    move-object v0, v5

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    aput-wide v17, v25, v15

    .end local v17           #offset:J
    :cond_8
    move-object v0, v5

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .end local v5           #a:Landroid/view/animation/Animation;
    .end local v6           #children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .end local v7           #count:I
    .end local v8           #duration:J
    .end local v10           #durationSet:Z
    .end local v11           #fillAfter:Z
    .end local v12           #fillAfterSet:Z
    .end local v13           #fillBefore:Z
    .end local v14           #fillBeforeSet:Z
    .end local v15           #i:I
    .end local v16           #interpolator:Landroid/view/animation/Interpolator;
    .end local v19           #repeatMode:I
    .end local v20           #repeatModeSet:Z
    .end local v21           #shareInterpolator:Z
    .end local v22           #startOffset:J
    .end local v24           #startOffsetSet:Z
    .end local v25           #storedOffsets:[J
    :cond_9
    const/16 v26, 0x0

    move/from16 v10, v26

    goto/16 :goto_0

    .restart local v10       #durationSet:Z
    :cond_a
    const/16 v26, 0x0

    move/from16 v12, v26

    goto/16 :goto_1

    .restart local v12       #fillAfterSet:Z
    :cond_b
    const/16 v26, 0x0

    move/from16 v14, v26

    goto/16 :goto_2

    .restart local v14       #fillBeforeSet:Z
    :cond_c
    const/16 v26, 0x0

    move/from16 v20, v26

    goto/16 :goto_3

    .restart local v20       #repeatModeSet:Z
    :cond_d
    const/16 v26, 0x0

    move/from16 v21, v26

    goto/16 :goto_4

    .restart local v21       #shareInterpolator:Z
    :cond_e
    const/16 v26, 0x0

    move/from16 v24, v26

    goto/16 :goto_5

    .restart local v6       #children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .restart local v7       #count:I
    .restart local v8       #duration:J
    .restart local v11       #fillAfter:Z
    .restart local v13       #fillBefore:Z
    .restart local v16       #interpolator:Landroid/view/animation/Interpolator;
    .restart local v19       #repeatMode:I
    .restart local v22       #startOffset:J
    .restart local v24       #startOffsetSet:Z
    .restart local v25       #storedOffsets:[J
    :cond_f
    if-eqz v25, :cond_2

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    goto :goto_6

    .restart local v15       #i:I
    :cond_10
    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .locals 13
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    iget-object v7, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .local v7, region:Landroid/graphics/RectF;
    int-to-float v9, p1

    int-to-float v10, p2

    move/from16 v0, p3

    int-to-float v0, v0

    move v11, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move v12, v0

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v9, -0x4080

    const/high16 v10, -0x4080

    invoke-virtual {v7, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    iget-boolean v9, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, count:I
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .local v2, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    iget-object v8, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .local v8, temp:Landroid/view/animation/Transformation;
    iget-object v6, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .local v6, previousTransformation:Landroid/view/animation/Transformation;
    const/4 v9, 0x1

    sub-int v4, v3, v9

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    .local v1, a:Landroid/view/animation/Animation;
    invoke-virtual {v8}, Landroid/view/animation/Transformation;->clear()V

    iget-object v5, v1, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .local v5, interpolator:Landroid/view/animation/Interpolator;
    if-eqz v5, :cond_0

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    :goto_1
    invoke-virtual {v1, v9, v8}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    invoke-virtual {v6, v8}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .end local v1           #a:Landroid/view/animation/Animation;
    .end local v2           #animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #interpolator:Landroid/view/animation/Interpolator;
    .end local v6           #previousTransformation:Landroid/view/animation/Transformation;
    .end local v8           #temp:Landroid/view/animation/Transformation;
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->restoreChildrenStartOffset()V

    return-void
.end method

.method restoreChildrenStartOffset()V
    .locals 6

    .prologue
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    .local v3, offsets:[J
    if-nez v3, :cond_1

    .end local p0
    :cond_0
    return-void

    .restart local p0
    :cond_1
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .local v0, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation;

    aget-wide v4, v3, v2

    invoke-virtual {p0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public restrictDuration(J)V
    .locals 3
    .parameter "durationMillis"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .local v0, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation;

    invoke-virtual {p0, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scaleCurrentDuration(F)V
    .locals 3
    .parameter "scale"

    .prologue
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .local v0, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .parameter "durationMillis"

    .prologue
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method public setFillAfter(Z)V
    .locals 1
    .parameter "fillAfter"

    .prologue
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method public setFillBefore(Z)V
    .locals 1
    .parameter "fillBefore"

    .prologue
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatMode"

    .prologue
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    return-void
.end method

.method public setStartOffset(J)V
    .locals 1
    .parameter "startOffset"

    .prologue
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-void
.end method

.method public setStartTime(J)V
    .locals 5
    .parameter "startTimeMillis"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    iget-object v4, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, count:I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .local v1, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public willChangeBounds()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

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
