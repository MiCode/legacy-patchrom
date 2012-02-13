.class public Landroid/graphics/drawable/AnimationDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "AnimationDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimationDrawable$1;,
        Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    }
.end annotation


# instance fields
.field private final mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

.field private mCurFrame:I

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V
    .locals 3
    .parameter "state"
    .parameter "res"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V

    .local v0, as:Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private nextFrame(Z)V
    .locals 4
    .parameter "unschedule"

    .prologue
    const/4 v3, 0x1

    iget v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    add-int/lit8 v1, v2, 0x1

    .local v1, next:I
    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v0

    .local v0, N:I
    if-lt v1, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z
    invoke-static {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$100(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v2

    if-eqz v2, :cond_1

    sub-int v2, v0, v3

    if-ge v1, v2, :cond_2

    :cond_1
    move v2, v3

    :goto_0
    invoke-direct {p0, v1, p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setFrame(IZZ)V
    .locals 4
    .parameter "frame"
    .parameter "unschedule"
    .parameter "animate"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    if-eqz p2, :cond_2

    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_2
    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I
    invoke-static {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    move-result-object v2

    aget v2, v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method


# virtual methods
.method public addFrame(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter "frame"
    .parameter "duration"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public getDuration(I)I
    .locals 1
    .parameter "i"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I
    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method public getFrame(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNumberOfFrames()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 12
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v7, Lcom/android/internal/R$styleable;->AnimationDrawable:[I

    invoke-virtual {p1, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, v0, v9}, Landroid/graphics/drawable/DrawableContainer;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    iget-object v7, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->setVariablePadding(Z)V

    iget-object v7, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    #setter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z
    invoke-static {v7, v8}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$102(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    add-int/lit8 v5, v7, 0x1

    .local v5, innerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, type:I
    if-eq v6, v10, :cond_5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .local v1, depth:I
    if-ge v1, v5, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    :cond_1
    if-ne v6, v11, :cond_0

    if-gt v1, v5, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "item"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/internal/R$styleable;->AnimationDrawableItem:[I

    invoke-virtual {p1, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v7, -0x1

    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .local v4, duration:I
    if-gez v4, :cond_2

    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": <item> tag requires a \'duration\' attribute"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .local v3, drawableRes:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_3

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, dr:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v7, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v7, v2, v4}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    if-eq v6, v11, :cond_4

    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": <item> tag requires a \'drawable\' attribute or child tag"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " defining a drawable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .end local v1           #depth:I
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    .end local v3           #drawableRes:I
    .end local v4           #duration:I
    :cond_5
    invoke-direct {p0, v9, v10, v9}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    return-void
.end method

.method public isOneShot()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z
    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$100(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I
    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    #setter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I
    invoke-static {v1, v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$002(Landroid/graphics/drawable/AnimationDrawable$AnimationState;[I)[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method public run()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->nextFrame(Z)V

    return-void
.end method

.method public setOneShot(Z)V
    .locals 1
    .parameter "oneShot"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #setter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z
    invoke-static {v0, p1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$102(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 3
    .parameter "visible"
    .parameter "restart"

    .prologue
    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer;->setVisible(ZZ)Z

    move-result v0

    .local v0, changed:Z
    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v2}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "what"

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
