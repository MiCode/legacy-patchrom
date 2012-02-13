.class public Lcom/motorola/android/widget/CursorHaloOverlay;
.super Landroid/view/View;
.source "CursorHaloOverlay.java"


# static fields
.field private static final CURSOR_IDLE_ACTIVE_DELAY:I = 0x1f4

.field private static final CURSOR_IDLE_YOFFSET:I = 0x3

.field private static final CURSOR_REPO_YOFFSET:I = 0x20

.field private static final LOG_TAG:Ljava/lang/String; = "CursorHaloOverlay"

.field private static final VERTICAL_LOCK_OFFSET:I = 0x4b


# instance fields
.field private endIdleActiveRunnable:Ljava/lang/Runnable;

.field private mControlOffsetY:I

.field private mCursorIdleActiveDelay:I

.field private mCursorIdleImage:Landroid/graphics/drawable/Drawable;

.field private mCursorRepoImage:Landroid/graphics/drawable/Drawable;

.field private mCursorX:I

.field private mCursorY:I

.field private mDimBackground:Z

.field private mFingerX:I

.field private mFingerY:I

.field private mHasVerticalLock:Z

.field private mHeight:I

.field private mIsActive:Z

.field private mLeft:I

.field private mParentLocation:[I

.field private mParentView:Landroid/widget/FrameLayout;

.field private mShowActiveAsIdle:Z

.field private mShown:Z

.field private mTempLocation:[I

.field private mTextViewRect:Landroid/graphics/Rect;

.field private mTop:I

.field private mVerticalLockOffset:I

.field private mView:Landroid/view/View;

.field private mWParams:Landroid/view/WindowManager$LayoutParams;

.field private mWidth:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-array v1, v3, [I

    iput-object v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mParentLocation:[I

    iput-boolean v2, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mIsActive:Z

    iput-boolean v2, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mHasVerticalLock:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mTextViewRect:Landroid/graphics/Rect;

    new-array v1, v3, [I

    iput-object v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mTempLocation:[I

    iput-boolean v2, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mDimBackground:Z

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorIdleActiveDelay:I

    new-instance v1, Lcom/motorola/android/widget/CursorHaloOverlay$1;

    invoke-direct {v1, p0}, Lcom/motorola/android/widget/CursorHaloOverlay$1;-><init>(Lcom/motorola/android/widget/CursorHaloOverlay;)V

    iput-object v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->endIdleActiveRunnable:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mShown:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, r:Landroid/content/res/Resources;
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/CursorHaloOverlay;->initCursorHaloOverlay(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/motorola/android/widget/CursorHaloOverlay;->setDrawingCacheEnabled(Z)V

    const v1, 0x10803fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorIdleImage:Landroid/graphics/drawable/Drawable;

    const v1, 0x10803f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorRepoImage:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorRepoImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-direct {p0}, Lcom/motorola/android/widget/CursorHaloOverlay;->getProperties()V

    return-void
.end method

.method static synthetic access$002(Lcom/motorola/android/widget/CursorHaloOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mShowActiveAsIdle:Z

    return p1
.end method

.method static synthetic access$100(Lcom/motorola/android/widget/CursorHaloOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/widget/CursorHaloOverlay;->updateAnimationState()V

    return-void
.end method

.method private getProperties()V
    .locals 5

    .prologue
    const/16 v4, 0x1f4

    const/16 v1, 0x4b

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mVerticalLockOffset:I

    :try_start_0
    const-string v1, "mot.sw.cursorposoffset"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mVerticalLockOffset:I

    iget v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mVerticalLockOffset:I

    if-ge v1, v2, :cond_0

    const/16 v1, 0x4b

    iput v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mVerticalLockOffset:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mDimBackground:Z

    :try_start_1
    const-string v1, "mot.sw.cursorposdimback"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, tmp:I
    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mDimBackground:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #tmp:I
    :goto_2
    iput v4, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorIdleActiveDelay:I

    :try_start_2
    const-string v1, "mot.sw.cursorposarrwdelay"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorIdleActiveDelay:I

    iget v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorIdleActiveDelay:I

    if-ge v1, v2, :cond_1

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorIdleActiveDelay:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_3
    return-void

    .restart local v0       #tmp:I
    :cond_2
    move v1, v3

    goto :goto_1

    .end local v0           #tmp:I
    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private initCursorHaloOverlay(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v2

    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x318

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7d5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .local v0, transparent:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v2, v3, v7, v7}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mParentView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mParentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mParentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWindowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, wParams:Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method private updateAnimationState()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/widget/CursorHaloOverlay;->getWindowVisibility()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/android/widget/CursorHaloOverlay;->updateAnimationState(I)V

    return-void
.end method

.method private updateAnimationState(I)V
    .locals 4
    .parameter "windowVisibility"

    .prologue
    iget-boolean v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mIsActive:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mShowActiveAsIdle:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .local v2, shouldRun:Z
    :goto_0
    iget-object v3, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorRepoImage:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorRepoImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    .local v0, a:Landroid/graphics/drawable/Animatable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v1

    .local v1, running:Z
    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .end local v0           #a:Landroid/graphics/drawable/Animatable;
    .end local v1           #running:Z
    :cond_0
    :goto_1
    return-void

    .end local v2           #shouldRun:Z
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .restart local v0       #a:Landroid/graphics/drawable/Animatable;
    .restart local v1       #running:Z
    .restart local v2       #shouldRun:Z
    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_1
.end method


# virtual methods
.method public getControlOffsetY()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mControlOffsetY:I

    return v0
.end method

.method public hasLock()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mHasVerticalLock:Z

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWindowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mShown:Z

    invoke-virtual {p0, v2}, Lcom/motorola/android/widget/CursorHaloOverlay;->setActive(Z)V

    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mIsActive:Z

    return v0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mShown:Z

    return v0
.end method

.method public move(FFFF)V
    .locals 4
    .parameter "fingerX"
    .parameter "fingerY"
    .parameter "cursorX"
    .parameter "cursorY"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/motorola/android/widget/CursorHaloOverlay;->hasLock()Z

    move-result v1

    if-nez v1, :cond_0

    sub-float v1, p4, p2

    float-to-int v0, v1

    .local v0, offset:I
    iget v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mVerticalLockOffset:I

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mVerticalLockOffset:I

    iput v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mControlOffsetY:I

    invoke-virtual {p0, v3}, Lcom/motorola/android/widget/CursorHaloOverlay;->setLock(Z)V

    iget-object v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWindowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .end local v0           #offset:I
    :cond_0
    :goto_0
    float-to-int v1, p3

    iput v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorX:I

    float-to-int v1, p4

    iput v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorY:I

    float-to-int v1, p1

    iput v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mFingerX:I

    float-to-int v1, p2

    iput v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mFingerY:I

    invoke-virtual {p0}, Lcom/motorola/android/widget/CursorHaloOverlay;->invalidate()V

    return-void

    .restart local v0       #offset:I
    :cond_1
    iget v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mVerticalLockOffset:I

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mVerticalLockOffset:I

    neg-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mControlOffsetY:I

    invoke-virtual {p0, v3}, Lcom/motorola/android/widget/CursorHaloOverlay;->setLock(Z)V

    iget-object v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWindowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mControlOffsetY:I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mParentView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mParentLocation:[I

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mParentLocation:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mParentView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v20

    sub-int v5, v19, v20

    .local v5, dx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mParentLocation:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mParentView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v20

    sub-int v6, v19, v20

    .local v6, dy:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mDimBackground:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/widget/CursorHaloOverlay;->isActive()Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mTextViewRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mTextViewRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mTextViewRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move v0, v5

    neg-int v0, v0

    move/from16 v20, v0

    move v0, v6

    neg-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Rect;->offset(II)V

    const/16 v19, 0x80

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/widget/CursorHaloOverlay;->isActive()Z

    move-result v19

    if-nez v19, :cond_1

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mShowActiveAsIdle:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorIdleImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .local v8, iheight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorIdleImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .local v12, iwidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorX:I

    move/from16 v19, v0

    add-int v19, v19, v5

    div-int/lit8 v20, v12, 0x2

    sub-int v9, v19, v20

    .local v9, il:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorY:I

    move/from16 v19, v0

    add-int v19, v19, v6

    div-int/lit8 v20, v8, 0x2

    sub-int v19, v19, v20

    add-int/lit8 v11, v19, 0x3

    .local v11, it:I
    add-int v10, v9, v12

    .local v10, ir:I
    add-int v7, v11, v8

    .local v7, ib:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorIdleImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v9

    move v2, v11

    move v3, v10

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorIdleImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .end local v7           #ib:I
    .end local v8           #iheight:I
    .end local v9           #il:I
    .end local v10           #ir:I
    .end local v11           #it:I
    .end local v12           #iwidth:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorRepoImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .local v14, rheight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorRepoImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .local v18, rwidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorX:I

    move/from16 v19, v0

    add-int v19, v19, v5

    div-int/lit8 v20, v18, 0x2

    sub-int v15, v19, v20

    .local v15, rl:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorY:I

    move/from16 v19, v0

    add-int v19, v19, v6

    div-int/lit8 v20, v14, 0x2

    sub-int v19, v19, v20

    add-int/lit8 v17, v19, 0x20

    .local v17, rt:I
    add-int v16, v15, v18

    .local v16, rr:I
    add-int v13, v17, v14

    .local v13, rb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorRepoImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v15

    move/from16 v2, v17

    move/from16 v3, v16

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorRepoImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorRepoImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorRepoImage:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorRepoImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorRepoImage:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorRepoImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/CursorHaloOverlay;->updateAnimationState(I)V

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 3
    .parameter "active"

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mIsActive:Z

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mShowActiveAsIdle:Z

    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->endIdleActiveRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorIdleActiveDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/android/widget/CursorHaloOverlay;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mIsActive:Z

    invoke-direct {p0}, Lcom/motorola/android/widget/CursorHaloOverlay;->updateAnimationState()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->endIdleActiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/motorola/android/widget/CursorHaloOverlay;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mHasVerticalLock:Z

    invoke-direct {p0}, Lcom/motorola/android/widget/CursorHaloOverlay;->updateAnimationState()V

    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    iput p1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWidth:I

    iput p2, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mHeight:I

    return-void
.end method

.method public setTextViewRect(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mTextViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mView:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mShown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWindowView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWindowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWindowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mShown:Z

    invoke-direct {p0}, Lcom/motorola/android/widget/CursorHaloOverlay;->getProperties()V

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorRepoImage:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay;->mCursorIdleImage:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_0
.end method
