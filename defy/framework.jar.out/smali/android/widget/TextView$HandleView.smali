.class Landroid/widget/TextView$HandleView;
.super Landroid/view/View;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleView"
.end annotation


# static fields
.field public static final CENTER:I = 0x1

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2


# instance fields
.field private mContainer:Landroid/widget/PopupWindow;

.field private mController:Landroid/widget/TextView$CursorController;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mHotspotX:F

.field private mHotspotY:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mPositionOnTop:Z

.field private mPositionX:I

.field private mPositionY:I

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V
    .locals 5
    .parameter
    .parameter "controller"
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    iput-object p1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$1500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Landroid/widget/TextView$HandleView;->mPositionOnTop:Z

    iput-object p2, p0, Landroid/widget/TextView$HandleView;->mController:Landroid/widget/TextView$CursorController;

    new-instance v0, Landroid/widget/PopupWindow;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$1600(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    invoke-virtual {p0, p3}, Landroid/widget/TextView$HandleView;->setOrientation(I)V

    return-void
.end method

.method private isPositionVisible()Z
    .locals 20

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    const/16 v18, 0x1

    :goto_0
    return v18

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v18, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v10

    .local v10, extendedPaddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v9

    .local v9, extendedPaddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    .local v6, compoundPaddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    .local v7, compoundPaddingRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object v11, v0

    .local v11, hostView:Landroid/widget/TextView;
    const/4 v12, 0x0

    .local v12, left:I
    invoke-virtual {v11}, Landroid/widget/TextView;->getWidth()I

    move-result v16

    .local v16, right:I
    const/16 v17, 0x0

    .local v17, top:I
    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    .local v4, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    .local v5, clip:Landroid/graphics/Rect;
    add-int/lit8 v18, v6, 0x0

    move/from16 v0, v18

    move-object v1, v5

    iput v0, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v18, v10, 0x0

    move/from16 v0, v18

    move-object v1, v5

    iput v0, v1, Landroid/graphics/Rect;->top:I

    sub-int v18, v16, v7

    move/from16 v0, v18

    move-object v1, v5

    iput v0, v1, Landroid/graphics/Rect;->right:I

    sub-int v18, v4, v9

    move/from16 v0, v18

    move-object v1, v5

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .local v13, parent:Landroid/view/ViewParent;
    if-eqz v13, :cond_3

    const/16 v18, 0x0

    move-object v0, v13

    move-object v1, v11

    move-object v2, v5

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v18

    if-nez v18, :cond_4

    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/TextView;->mTempCoords:[I

    move-object v8, v0

    .local v8, coords:[I
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->getLocationInWindow([I)V

    const/16 v18, 0x0

    aget v18, v8, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$HandleView;->mPositionX:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$HandleView;->mHotspotX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v14, v18, v19

    .local v14, posX:I
    const/16 v18, 0x1

    aget v18, v8, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$HandleView;->mPositionY:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$HandleView;->mHotspotY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v15, v18, v19

    .local v15, posY:I
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move v0, v14

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move v0, v14

    move/from16 v1, v18

    if-gt v0, v1, :cond_5

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move v0, v15

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move v0, v15

    move/from16 v1, v18

    if-gt v0, v1, :cond_5

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method private moveTo(II)V
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v1}, Landroid/widget/TextView;->access$1700(Landroid/widget/TextView;)I

    move-result v1

    sub-int v1, p1, v1

    iput v1, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v1}, Landroid/widget/TextView;->access$1800(Landroid/widget/TextView;)I

    move-result v1

    sub-int v1, p2, v1

    iput v1, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    invoke-direct {p0}, Landroid/widget/TextView$HandleView;->isPositionVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .local v0, coords:[I
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v0, v1, Landroid/widget/TextView;->mTempCoords:[I

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v2, v0, v7

    iget v3, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    add-int/2addr v2, v3

    aget v3, v0, v8

    iget v4, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    iget-boolean v1, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v0, v1, Landroid/widget/TextView;->mTempCoords:[I

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    :cond_0
    aget v1, v0, v7

    iget v2, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    if-ne v1, v2, :cond_1

    aget v1, v0, v8

    iget v2, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    if-eq v1, v2, :cond_2

    :cond_1
    iget v1, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    aget v2, v0, v7

    iget v3, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    iget v1, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    aget v2, v0, v8

    iget v3, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    aget v1, v0, v7

    iput v1, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    aget v1, v0, v8

    iput v1, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    .end local v0           #coords:[I
    :cond_2
    :goto_1
    return-void

    .restart local v0       #coords:[I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->show()V

    goto :goto_0

    .end local v0           #coords:[I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hide()V

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mPositionOnTop:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x4334

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$HandleView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    return v8

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .local v3, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .local v4, rawY:F
    iget v5, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    iput v5, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    iget v5, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    int-to-float v5, v5

    sub-float v5, v4, v5

    iput v5, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v0, v5, Landroid/widget/TextView;->mTempCoords:[I

    .local v0, coords:[I
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    aget v5, v0, v6

    iput v5, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    aget v5, v0, v8

    iput v5, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    iput-boolean v8, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    goto :goto_0

    .end local v0           #coords:[I
    .end local v3           #rawX:F
    .end local v4           #rawY:F
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .restart local v3       #rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .restart local v4       #rawY:F
    iget v5, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    sub-float v5, v3, v5

    iget v6, p0, Landroid/widget/TextView$HandleView;->mHotspotX:F

    add-float v1, v5, v6

    .local v1, newPosX:F
    iget v5, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    sub-float v5, v4, v5

    iget v6, p0, Landroid/widget/TextView$HandleView;->mHotspotY:F

    add-float/2addr v5, v6

    iget v6, p0, Landroid/widget/TextView$HandleView;->mTouchOffsetY:F

    add-float v2, v5, v6

    .local v2, newPosY:F
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mController:Landroid/widget/TextView$CursorController;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-interface {v5, p0, v6, v7}, Landroid/widget/TextView$CursorController;->updatePosition(Landroid/widget/TextView$HandleView;II)V

    goto :goto_0

    .end local v1           #newPosX:F
    .end local v2           #newPosY:F
    .end local v3           #rawX:F
    .end local v4           #rawY:F
    :pswitch_2
    iput-boolean v6, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method positionAtCursor(IZ)V
    .locals 8
    .parameter "offset"
    .parameter "bottom"

    .prologue
    iget-object v6, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .local v5, width:I
    iget-object v6, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .local v1, height:I
    iget-object v6, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v6}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .local v2, line:I
    iget-object v6, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v6}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .local v4, lineTop:I
    iget-object v6, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v6}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    .local v3, lineBottom:I
    invoke-static {}, Landroid/widget/TextView;->access$1900()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v6}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    iget v7, p0, Landroid/widget/TextView$HandleView;->mHotspotX:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v7}, Landroid/widget/TextView;->access$2000(Landroid/widget/TextView;)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    if-eqz p2, :cond_0

    move v6, v3

    :goto_0
    iget-object v7, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v7}, Landroid/widget/TextView;->access$2100(Landroid/widget/TextView;)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    invoke-static {v6, v0}, Landroid/widget/TextView;->access$2200(Landroid/widget/TextView;Landroid/graphics/Rect;)V

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v6, v7}, Landroid/widget/TextView$HandleView;->moveTo(II)V

    return-void

    :cond_0
    iget v6, p0, Landroid/widget/TextView$HandleView;->mHeight:I

    sub-int v6, v4, v6

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 5
    .parameter "pos"

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget v4, v4, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .local v1, handleWidth:I
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:F

    :goto_0
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .local v0, handleHeight:I
    neg-int v2, v0

    int-to-float v2, v2

    const v3, 0x3e99999a

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$HandleView;->mTouchOffsetY:F

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/TextView$HandleView;->mHotspotY:F

    iput v0, p0, Landroid/widget/TextView$HandleView;->mHeight:I

    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->invalidate()V

    return-void

    .end local v0           #handleHeight:I
    .end local v1           #handleWidth:I
    :pswitch_1
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget v4, v4, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .restart local v1       #handleWidth:I
    mul-int/lit8 v2, v1, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:F

    goto :goto_0

    .end local v1           #handleWidth:I
    :pswitch_2
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget v4, v4, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .restart local v1       #handleWidth:I
    div-int/lit8 v2, v1, 0x4

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:F

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/widget/TextView$HandleView;->isPositionVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hide()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v0, v1, Landroid/widget/TextView;->mTempCoords:[I

    .local v0, coords:[I
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    aget v1, v0, v5

    iget v2, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    add-int/2addr v1, v2

    aput v1, v0, v5

    aget v1, v0, v4

    iget v2, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    add-int/2addr v1, v2

    aput v1, v0, v4

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    aget v3, v0, v5

    aget v4, v0, v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
