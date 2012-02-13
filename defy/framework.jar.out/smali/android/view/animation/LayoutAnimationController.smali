.class public Landroid/view/animation/LayoutAnimationController;
.super Ljava/lang/Object;
.source "LayoutAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    }
.end annotation


# static fields
.field public static final ORDER_NORMAL:I = 0x0

.field public static final ORDER_RANDOM:I = 0x2

.field public static final ORDER_REVERSE:I = 0x1


# instance fields
.field protected mAnimation:Landroid/view/animation/Animation;

.field private mDelay:F

.field private mDuration:J

.field protected mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxDelay:J

.field private mOrder:I

.field protected mRandomizer:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lcom/android/internal/R$styleable;->LayoutAnimation:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .local v1, d:Landroid/view/animation/Animation$Description;
    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .local v2, resource:I
    if-lez v2, :cond_0

    invoke-virtual {p0, p1, v2}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0, p1, v2}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/content/Context;I)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    const/high16 v0, 0x3f00

    invoke-direct {p0, p1, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;F)V
    .locals 0
    .parameter "animation"
    .parameter "delay"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 8
    .parameter "view"

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->getDelayForView(Landroid/view/View;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v6

    add-long v1, v4, v6

    .local v1, delay:J
    iget-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    :try_start_0
    iget-object v4, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .end local v0           #animation:Landroid/view/animation/Animation;
    :goto_0
    return-object v4

    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, e:Ljava/lang/CloneNotSupportedException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getDelay()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    return v0
.end method

.method protected getDelayForView(Landroid/view/View;)J
    .locals 10
    .parameter "view"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, v1, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .local v3, params:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v3, :cond_0

    const-wide/16 v7, 0x0

    :goto_0
    return-wide v7

    :cond_0
    iget v7, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    iget-object v8, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v8

    long-to-float v8, v8

    mul-float v0, v7, v8

    .local v0, delay:F
    invoke-virtual {p0, v3}, Landroid/view/animation/LayoutAnimationController;->getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    float-to-long v5, v7

    .local v5, viewDelay:J
    iget v7, v3, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    int-to-float v7, v7

    mul-float v4, v0, v7

    .local v4, totalDelay:F
    iget-object v7, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v7, :cond_1

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v7, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_1
    long-to-float v7, v5

    div-float v2, v7, v4

    .local v2, normalizedDelay:F
    iget-object v7, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float v7, v2, v4

    float-to-long v7, v7

    goto :goto_0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    return v0
.end method

.method protected getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I
    .locals 2
    .parameter "params"

    .prologue
    invoke-virtual {p0}, Landroid/view/animation/LayoutAnimationController;->getOrder()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    :goto_0
    return v0

    :pswitch_0
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    sub-int/2addr v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    :cond_0
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDone()Z
    .locals 6

    .prologue
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimation(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resourceID"

    .prologue
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    iput-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    return-void
.end method

.method public setDelay(F)V
    .locals 0
    .parameter "delay"

    .prologue
    iput p1, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resourceID"

    .prologue
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    iput-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .parameter "order"

    .prologue
    iput p1, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/animation/LayoutAnimationController;->mDuration:J

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    return-void
.end method

.method public willOverlap()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
