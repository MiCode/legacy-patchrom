.class public Lcom/motorola/android/widget/TextOverlay;
.super Landroid/view/View;
.source "TextOverlay.java"


# static fields
.field public static final ANCHOR_CENTER:I = 0x1

.field public static final ANCHOR_LEFT_TOP:I = 0x0

.field private static final ANIMATE_FRAME_DURATION:I = 0x21

.field private static final CLIPPATH_BOTTOM_MARGIN:I = 0x1050018

.field private static final CLIPPATH_LEFT_MARGIN:I = 0x1050019

.field private static final CLIPPATH_RIGHT_MARGIN:I = 0x105001a

.field private static final CLIPPATH_TOP_MARGIN:I = 0x1050017

.field private static final CLIPPATH_X_RADIUS:I = 0x105001b

.field private static final CLIPPATH_Y_RADIUS:I = 0x105001c

.field private static final FTAREA_HEIGHT:I = 0x1050016

.field private static final FTAREA_WIDTH:I = 0x1050015

.field private static final LOG_TAG:Ljava/lang/String; = "TextOverlay"

.field private static final LOUPE_HIDE_ANIMATION:I = 0x10a0021

.field private static final LOUPE_SHOW_ANIMATION:I = 0x10a0020


# instance fields
.field private mAlpha:I

.field private mAnchor:I

.field private mClipPath:Landroid/graphics/Path;

.field private mHSV:[F

.field private mHeight:I

.field private mHideAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mIsLeftToRightText:Z

.field private mIsOnLeftSide:Z

.field private mLeft:I

.field private mLoupeHideAnimation:Landroid/view/animation/Animation;

.field private mLoupeShowAnimation:Landroid/view/animation/Animation;

.field private mParentView:Landroid/widget/FrameLayout;

.field private final mResClipPathBottomMargin:I

.field private final mResClipPathLeftMargin:I

.field private final mResClipPathRightMargin:I

.field private final mResClipPathTopMargin:I

.field private final mResClipPathXRadius:I

.field private final mResClipPathYRadius:I

.field private final mResFTAreaHeight:I

.field private final mResFTAreaWidth:I

.field private mScrollPosX:F

.field private mScrollPosY:F

.field private mShown:Z

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mTmpPt:Landroid/graphics/PointF;

.field private mTop:I

.field private mView:Landroid/widget/TextView;

.field private mWParams:Landroid/view/WindowManager$LayoutParams;

.field private mWidth:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowView:Landroid/widget/FrameLayout;

.field private mZoomX:F

.field private mZoomY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosX:F

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosY:F

    iput v3, p0, Lcom/motorola/android/widget/TextOverlay;->mAnchor:I

    iput v2, p0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    iput v2, p0, Lcom/motorola/android/widget/TextOverlay;->mZoomY:F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mClipPath:Landroid/graphics/Path;

    const/16 v1, 0xff

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mAlpha:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    iput-boolean v4, p0, Lcom/motorola/android/widget/TextOverlay;->mIsOnLeftSide:Z

    new-instance v1, Lcom/motorola/android/widget/TextOverlay$1;

    invoke-direct {v1, p0}, Lcom/motorola/android/widget/TextOverlay$1;-><init>(Lcom/motorola/android/widget/TextOverlay;)V

    iput-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mHideAnimListener:Landroid/view/animation/Animation$AnimationListener;

    iput-boolean v3, p0, Lcom/motorola/android/widget/TextOverlay;->mShown:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x1050015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mResFTAreaWidth:I

    const v1, 0x1050016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mResFTAreaHeight:I

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mResClipPathTopMargin:I

    const v1, 0x1050018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mResClipPathBottomMargin:I

    const v1, 0x105001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mResClipPathRightMargin:I

    const v1, 0x1050019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mResClipPathLeftMargin:I

    const v1, 0x105001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mResClipPathXRadius:I

    const v1, 0x105001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mResClipPathYRadius:I

    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextOverlay;->initTextOverlay(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/motorola/android/widget/TextOverlay;->setDrawingCacheEnabled(Z)V

    const v1, 0x10a0020

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mLoupeShowAnimation:Landroid/view/animation/Animation;

    const v1, 0x10a0021

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mLoupeHideAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mLoupeHideAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mLoupeHideAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mHideAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "TextOverlay"

    const-string v2, "TextOverlay: mLoupeHideAnimation is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/motorola/android/widget/TextOverlay;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/android/widget/TextOverlay;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/android/widget/TextOverlay;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/android/widget/TextOverlay;->mShown:Z

    return p1
.end method

.method private drawCursorOrSelection(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .local v5, paint:Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .local v6, path:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .local v8, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    .local v7, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v4

    .local v4, lineHeight:F
    if-ne v8, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/widget/TextOverlay;->getDrawingCursorCenter(ILandroid/graphics/PointF;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    const/high16 v18, 0x3e80

    mul-float v18, v18, v4

    sub-float v17, v17, v18

    move-object v0, v6

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    const/high16 v18, 0x3f40

    mul-float v18, v18, v4

    add-float v17, v17, v18

    move-object v0, v6

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v16, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v16, 0x4000

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Paint;->getColor()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/motorola/android/widget/TextOverlay;->getComplementaryColor(I)I

    move-result v16

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mAlpha:I

    move/from16 v16, v0

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/widget/TextOverlay;->getDrawingCursorCenter(ILandroid/graphics/PointF;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    const/high16 v17, 0x3f00

    add-float v10, v16, v17

    .local v10, x1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    const/high16 v17, 0x3e80

    mul-float v17, v17, v4

    sub-float v12, v16, v17

    .local v12, y11:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    const/high16 v17, 0x3f40

    mul-float v17, v17, v4

    add-float v13, v16, v17

    .local v13, y12:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v7

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/widget/TextOverlay;->getDrawingCursorCenter(ILandroid/graphics/PointF;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    const/high16 v17, 0x3f00

    add-float v11, v16, v17

    .local v11, x2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    const/high16 v17, 0x3e80

    mul-float v17, v17, v4

    sub-float v14, v16, v17

    .local v14, y21:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    const/high16 v17, 0x3f40

    mul-float v17, v17, v4

    add-float v15, v16, v17

    .local v15, y22:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .local v3, layout:Landroid/text/Layout;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    move/from16 v16, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v9, v16, v17

    .local v9, w:F
    invoke-virtual {v6, v10, v12}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v6, v9, v12}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v9, v14}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v11, v14}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v11, v15}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v10, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v10, v12}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v16, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_0
.end method

.method private drawLTRAndRTLText(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .local v5, layout:Landroid/text/Layout;
    if-nez v5, :cond_1

    .end local v5           #layout:Landroid/text/Layout;
    :cond_0
    :goto_0
    return-void

    .restart local v5       #layout:Landroid/text/Layout;
    :cond_1
    invoke-virtual {v5}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    .local v13, textPaint:Landroid/graphics/Paint;
    invoke-virtual {v13}, Landroid/text/TextPaint;->getColor()I

    move-result v12

    .local v12, textColor:I
    const/16 v16, -0x1

    move v0, v12

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    const/high16 v12, -0x100

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosX:F

    move v14, v0

    .local v14, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosY:F

    move v15, v0

    .local v15, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mAnchor:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v14, v14, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mHeight:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    :cond_4
    move v0, v14

    neg-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v15

    neg-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomY:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mHeight:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .local v6, paint:Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .local v7, path:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    .local v11, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    .local v10, selEnd:I
    if-ne v11, v10, :cond_6

    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    move-object v0, v5

    move v1, v11

    move-object v2, v7

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    const/high16 v16, -0x1

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v16, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mAlpha:I

    move/from16 v16, v0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eq v11, v10, :cond_5

    move-object/from16 v0, p1

    move-object v1, v7

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    invoke-virtual {v13}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    .local v8, savedAlpha:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mAlpha:I

    move/from16 v16, v0

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v13}, Landroid/text/TextPaint;->getColor()I

    move-result v9

    .local v9, savedColor:I
    invoke-virtual {v13, v12}, Landroid/text/TextPaint;->setColor(I)V

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v13, v9}, Landroid/text/TextPaint;->setColor(I)V

    if-ne v11, v10, :cond_0

    move-object/from16 v0, p1

    move-object v1, v7

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .end local v8           #savedAlpha:I
    .end local v9           #savedColor:I
    :cond_6
    invoke-virtual {v5, v11, v10, v7}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/motorola/android/widget/TextOverlay;->getComplementaryColor(I)I

    move-result v16

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v16, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1
.end method

.method private drawLeftToRightText(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object v3, v0

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .local v11, layout:Landroid/text/Layout;
    if-eqz v11, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/widget/TextOverlay;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, str:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mClipPath:Landroid/graphics/Path;

    move-object v3, v0

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mClipPath:Landroid/graphics/Path;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosY:F

    move v3, v0

    float-to-int v3, v3

    invoke-virtual {v11, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v12

    .local v12, line:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosX:F

    move v3, v0

    invoke-virtual {v11, v12, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    .local v16, offset:I
    if-gez v16, :cond_3

    const/16 v16, 0x0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    move/from16 v0, v16

    move v1, v3

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v16

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v3, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/widget/TextOverlay;->getCursorCenter(ILandroid/graphics/PointF;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosX:F

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    move v5, v0

    mul-float v17, v3, v5

    .local v17, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosY:F

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomY:F

    move v5, v0

    mul-float v18, v3, v5

    .local v18, ty:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v3, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/widget/TextOverlay;->getDrawingCursorCenter(ILandroid/graphics/PointF;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mAnchor:I

    move v3, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    move v6, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mHeight:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x1

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/PointF;->y:F

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    sub-float v3, v3, v17

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    neg-float v5, v5

    sub-float v5, v5, v18

    float-to-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct/range {p0 .. p1}, Lcom/motorola/android/widget/TextOverlay;->drawCursorOrSelection(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v14

    .local v14, lineHeight:F
    invoke-virtual {v11}, Landroid/text/Layout;->getLineCount()I

    move-result v13

    .local v13, lineCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v13, :cond_0

    invoke-virtual {v11, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .local v5, start:I
    invoke-virtual {v11, v10}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v6

    .local v6, end:I
    int-to-float v3, v10

    mul-float/2addr v3, v14

    float-to-int v15, v3

    .local v15, ly:I
    const/4 v7, 0x0

    int-to-float v8, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    move-object v9, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method private getComplementaryColor(I)I
    .locals 5
    .parameter "color"

    .prologue
    const/high16 v4, 0x43b4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    aget v1, v0, v3

    const/high16 v2, 0x4334

    add-float/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    aget v1, v1, v3

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    aget v1, v1, v3

    sub-float/2addr v1, v4

    :goto_0
    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    const/4 v1, 0x1

    const v2, 0x3eb33333

    aput v2, v0, v1

    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    const/4 v1, 0x2

    const/high16 v2, 0x3f00

    aput v2, v0, v1

    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    aget v1, v1, v3

    goto :goto_0
.end method

.method private getCursorCenter(ILandroid/graphics/PointF;)V
    .locals 7
    .parameter "cursorPos"
    .parameter "pt"

    .prologue
    iget-object v6, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .local v3, layout:Landroid/text/Layout;
    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .local v4, line:I
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .local v5, top:I
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .local v0, bottom:I
    invoke-virtual {v3, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    float-to-int v1, v6

    .local v1, h1:I
    invoke-virtual {v3, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v6

    float-to-int v2, v6

    .local v2, h2:I
    add-int v6, v1, v2

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iput v6, p2, Landroid/graphics/PointF;->x:F

    add-int v6, v5, v0

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iput v6, p2, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private getDrawingCursorCenter(ILandroid/graphics/PointF;)V
    .locals 7
    .parameter "cursorPos"
    .parameter "pt"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/widget/TextOverlay;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, str:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .local v1, line:I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .local v3, start:I
    iget-object v5, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    iput v5, p2, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v2

    .local v2, lineHeight:F
    int-to-float v5, v1

    mul-float/2addr v5, v2

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    sub-float/2addr v5, v6

    iput v5, p2, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private getText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .local v0, transformation:Landroid/text/method/TransformationMethod;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v0           #transformation:Landroid/text/method/TransformationMethod;
    :goto_0
    return-object v1

    .restart local v0       #transformation:Landroid/text/method/TransformationMethod;
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .end local v0           #transformation:Landroid/text/method/TransformationMethod;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initTextOverlay(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x318

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .local v0, transparent:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2, v7, v7}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mParentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mParentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mParentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowView:Landroid/widget/FrameLayout;

    const v2, 0x1080452

    invoke-virtual {p0, v2}, Lcom/motorola/android/widget/TextOverlay;->setBackgroundResource(I)V

    return-void
.end method

.method private setAlpha(F)V
    .locals 1
    .parameter "a"

    .prologue
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 p1, 0x3f80

    :cond_1
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/motorola/android/widget/TextOverlay;->mAlpha:I

    return-void
.end method

.method private setClipPath()V
    .locals 6

    .prologue
    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/motorola/android/widget/TextOverlay;->mResClipPathLeftMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/android/widget/TextOverlay;->mResClipPathTopMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mResClipPathRightMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mHeight:I

    iget v5, p0, Lcom/motorola/android/widget/TextOverlay;->mResClipPathBottomMargin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v0, rect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mClipPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/motorola/android/widget/TextOverlay;->mResClipPathXRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/motorola/android/widget/TextOverlay;->mResClipPathYRadius:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private updateDrawingParams()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, -0x1

    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .local v2, layout:Landroid/text/Layout;
    iput-boolean v14, p0, Lcom/motorola/android/widget/TextOverlay;->mIsLeftToRightText:Z

    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .local v5, lp:Landroid/graphics/Paint;
    invoke-virtual {v5}, Landroid/text/TextPaint;->getColor()I

    move-result v9

    .local v9, textColor:I
    if-ne v9, v13, :cond_0

    const/high16 v9, -0x100

    :cond_0
    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    iget v12, p0, Lcom/motorola/android/widget/TextOverlay;->mTextSize:F

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v6, 0x0

    .local v6, maxWidth:F
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .local v3, lineCount:I
    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v4

    .local v4, lineHeight:F
    invoke-direct {p0}, Lcom/motorola/android/widget/TextOverlay;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .local v8, str:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    .local v7, start:I
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .local v0, end:I
    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v8, v7, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v10

    .local v10, width:F
    cmpg-float v11, v6, v10

    if-gez v11, :cond_1

    move v6, v10

    :cond_1
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v13, :cond_2

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/motorola/android/widget/TextOverlay;->mIsLeftToRightText:Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #end:I
    .end local v7           #start:I
    .end local v10           #width:F
    :cond_3
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v6, v11

    iput v11, p0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    int-to-float v11, v3

    mul-float/2addr v11, v4

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, p0, Lcom/motorola/android/widget/TextOverlay;->mZoomY:F

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/widget/TextOverlay;->mShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mLoupeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/motorola/android/widget/TextOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/widget/TextOverlay;->mShown:Z

    return v0
.end method

.method public move(FF)V
    .locals 8
    .parameter "fingerX"
    .parameter "fingerY"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p1, v4

    float-to-int v4, v4

    iput v4, p0, Lcom/motorola/android/widget/TextOverlay;->mLeft:I

    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mHeight:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    iget v5, p0, Lcom/motorola/android/widget/TextOverlay;->mResFTAreaHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/motorola/android/widget/TextOverlay;->mTop:I

    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mTop:I

    if-gez v4, :cond_3

    iput v7, p0, Lcom/motorola/android/widget/TextOverlay;->mTop:I

    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    iget v5, p0, Lcom/motorola/android/widget/TextOverlay;->mResFTAreaWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .local v1, left:I
    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mResFTAreaWidth:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    float-to-int v2, v4

    .local v2, right:I
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .local v3, screenWidth:I
    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_1

    iput-boolean v7, p0, Lcom/motorola/android/widget/TextOverlay;->mIsOnLeftSide:Z

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/motorola/android/widget/TextOverlay;->mIsOnLeftSide:Z

    if-eqz v4, :cond_2

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mLeft:I

    .end local v0           #d:Landroid/view/Display;
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v3           #screenWidth:I
    :goto_1
    iget-object v4, p0, Lcom/motorola/android/widget/TextOverlay;->mParentView:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/motorola/android/widget/TextOverlay;->mLeft:I

    iget v6, p0, Lcom/motorola/android/widget/TextOverlay;->mTop:I

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void

    .restart local v0       #d:Landroid/view/Display;
    .restart local v1       #left:I
    .restart local v2       #right:I
    .restart local v3       #screenWidth:I
    :cond_1
    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    if-le v2, v4, :cond_0

    iput-boolean v6, p0, Lcom/motorola/android/widget/TextOverlay;->mIsOnLeftSide:Z

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/motorola/android/widget/TextOverlay;->mLeft:I

    goto :goto_1

    .end local v0           #d:Landroid/view/Display;
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v3           #screenWidth:I
    :cond_3
    iput-boolean v6, p0, Lcom/motorola/android/widget/TextOverlay;->mIsOnLeftSide:Z

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/motorola/android/widget/TextOverlay;->mIsLeftToRightText:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextOverlay;->drawLeftToRightText(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextOverlay;->drawLTRAndRTLText(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    iget v0, p0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    iget v1, p0, Lcom/motorola/android/widget/TextOverlay;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/widget/TextOverlay;->setMeasuredDimension(II)V

    return-void
.end method

.method public setScrollPosition(FFI)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "anchor"

    .prologue
    iput p1, p0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosX:F

    iput p2, p0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosY:F

    iput p3, p0, Lcom/motorola/android/widget/TextOverlay;->mAnchor:I

    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    iput p1, p0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    iput p2, p0, Lcom/motorola/android/widget/TextOverlay;->mHeight:I

    invoke-direct {p0}, Lcom/motorola/android/widget/TextOverlay;->setClipPath()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .parameter "size"

    .prologue
    iput p1, p0, Lcom/motorola/android/widget/TextOverlay;->mTextSize:F

    iget v0, p0, Lcom/motorola/android/widget/TextOverlay;->mTextSize:F

    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    iget v0, p0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    iput v0, p0, Lcom/motorola/android/widget/TextOverlay;->mZoomY:F

    return-void
.end method

.method public setView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "v"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/widget/TextOverlay;->mShown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/widget/TextOverlay;->mShown:Z

    invoke-direct {p0}, Lcom/motorola/android/widget/TextOverlay;->updateDrawingParams()V

    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mLoupeShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/motorola/android/widget/TextOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
