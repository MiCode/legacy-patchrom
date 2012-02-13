.class public Landroid/text/method/Touch;
.super Ljava/lang/Object;
.source "Touch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/Touch$DragState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .locals 4
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .local v0, ds:[Landroid/text/method/Touch$DragState;
    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v3

    iget v1, v1, Landroid/text/method/Touch$DragState;->mScrollX:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .locals 4
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .local v0, ds:[Landroid/text/method/Touch$DragState;
    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v3

    iget v1, v1, Landroid/text/method/Touch$DragState;->mScrollY:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getMaxScrollX(Landroid/widget/TextView;Landroid/text/Layout;I)I
    .locals 7
    .parameter "widget"
    .parameter "layout"
    .parameter "y"

    .prologue
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    .local v4, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .local v0, bottom:I
    const v2, 0x7fffffff

    .local v2, left:I
    const/4 v3, 0x0

    .local v3, right:I
    move v1, v4

    .local v1, i:I
    :goto_0
    if-gt v1, v0, :cond_0

    int-to-float v5, v2

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v2, v5

    int-to-float v5, v3

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int v5, v3, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    return v5
.end method

.method public static onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "widget"
    .parameter "buffer"
    .parameter "event"

    .prologue
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 p0, 0x0

    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return p0

    .restart local p0
    .restart local p1
    .restart local p2
    :pswitch_0
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .local v0, ds:[Landroid/text/method/Touch$DragState;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/text/method/Touch$DragState;

    .end local v0           #ds:[Landroid/text/method/Touch$DragState;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .end local v1           #i:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .end local p2
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result p0

    .end local p0
    invoke-direct {v0, v1, p2, v2, p0}, Landroid/text/method/Touch$DragState;-><init>(FFII)V

    const/4 p0, 0x0

    const/4 p2, 0x0

    const/16 v1, 0x11

    invoke-interface {p1, v0, p0, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 p0, 0x1

    goto :goto_0

    .restart local p0
    .restart local p2
    :pswitch_1
    const/4 p0, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    .end local p0
    move-result p2

    .end local p2
    const-class v0, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, p0, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/method/Touch$DragState;

    .local p0, ds:[Landroid/text/method/Touch$DragState;
    const/4 p2, 0x0

    .local p2, i:I
    :goto_2
    array-length v0, p0

    if-ge p2, v0, :cond_2

    aget-object v0, p0, p2

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    array-length p1, p0

    .end local p1
    if-lez p1, :cond_3

    const/4 p1, 0x0

    aget-object p0, p0, p1

    .end local p0           #ds:[Landroid/text/method/Touch$DragState;
    iget-boolean p0, p0, Landroid/text/method/Touch$DragState;->mUsed:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_0

    .local p0, widget:Landroid/widget/TextView;
    .restart local p1
    .local p2, event:Landroid/view/MotionEvent;
    :pswitch_2
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .restart local v0       #ds:[Landroid/text/method/Touch$DragState;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-boolean v1, v1, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .local v1, slop:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget v3, v3, Landroid/text/method/Touch$DragState;->mX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-gez v2, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget v3, v3, Landroid/text/method/Touch$DragState;->mY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_5

    .end local v1           #slop:I
    :cond_4
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    :cond_5
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-boolean v1, v1, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/text/method/Touch$DragState;->mUsed:Z

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/high16 v1, 0x1

    invoke-static {p1, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result p1

    .end local p1
    if-eqz p1, :cond_7

    :cond_6
    const/4 p1, 0x1

    .local p1, cap:Z
    :goto_3
    if-eqz p1, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .end local p1           #cap:Z
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget v1, v1, Landroid/text/method/Touch$DragState;->mX:F

    sub-float/2addr p1, v1

    .local p1, dx:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget v2, v2, Landroid/text/method/Touch$DragState;->mY:F

    sub-float/2addr v1, v2

    .local v1, dy:F
    :goto_4
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v2, Landroid/text/method/Touch$DragState;->mX:F

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .end local v0           #ds:[Landroid/text/method/Touch$DragState;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .end local p2           #event:Landroid/view/MotionEvent;
    iput p2, v0, Landroid/text/method/Touch$DragState;->mY:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result p2

    float-to-int p1, p1

    add-int/2addr p2, p1

    .local p2, nx:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    .end local p1           #dx:F
    move-result p1

    float-to-int v0, v1

    add-int/2addr v0, p1

    .local v0, ny:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    .end local v1           #dy:F
    add-int/2addr v1, p1

    .local v1, padding:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .local p1, layout:Landroid/text/Layout;
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    sub-int v1, v3, v1

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .end local v1           #padding:I
    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->cancelLongPress()V

    const/4 p0, 0x1

    goto/16 :goto_0

    .end local p1           #layout:Landroid/text/Layout;
    .local v0, ds:[Landroid/text/method/Touch$DragState;
    .local p2, event:Landroid/view/MotionEvent;
    :cond_7
    const/4 p1, 0x0

    goto :goto_3

    .local p1, cap:Z
    :cond_8
    const/4 p1, 0x0

    aget-object p1, v0, p1

    .end local p1           #cap:Z
    iget p1, p1, Landroid/text/method/Touch$DragState;->mX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    .local p1, dx:F
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget v1, v1, Landroid/text/method/Touch$DragState;->mY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .local v1, dy:F
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V
    .locals 11
    .parameter "widget"
    .parameter "layout"
    .parameter "x"
    .parameter "y"

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v10

    add-int v5, v9, v10

    .local v5, padding:I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    .local v7, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v9

    add-int/2addr v9, p3

    sub-int/2addr v9, v5

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .local v1, bottom:I
    const v4, 0x7fffffff

    .local v4, left:I
    const/4 v6, 0x0

    .local v6, right:I
    const/4 v0, 0x0

    .local v0, a:Landroid/text/Layout$Alignment;
    move v3, v7

    .local v3, i:I
    :goto_0
    if-gt v3, v1, :cond_1

    int-to-float v9, v4

    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v4, v9

    int-to-float v9, v6

    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-int v6, v9

    if-nez v0, :cond_0

    invoke-virtual {p1, v3}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v10

    add-int v5, v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    .local v8, width:I
    const/4 v2, 0x0

    .local v2, diff:I
    sub-int v9, v6, v4

    sub-int v10, v8, v5

    if-ge v9, v10, :cond_2

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_3

    sub-int v9, v8, v5

    sub-int v10, v6, v4

    sub-int/2addr v9, v10

    div-int/lit8 v2, v9, 0x2

    :cond_2
    :goto_1
    sub-int v9, v8, v5

    sub-int v9, v6, v9

    sub-int/2addr v9, v2

    invoke-static {p2, v9}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v9, v4, v2

    invoke-static {p2, v9}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p2, p3}, Landroid/widget/TextView;->scrollTo(II)V

    return-void

    :cond_3
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_2

    sub-int v9, v8, v5

    sub-int v10, v6, v4

    sub-int v2, v9, v10

    goto :goto_1
.end method
