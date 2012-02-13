.class public Landroid/text/method/ArrowKeyMovementMethod;
.super Ljava/lang/Object;
.source "ArrowKeyMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# static fields
.field private static final LAST_TAP_DOWN:Ljava/lang/Object;

.field private static sInstance:Landroid/text/method/ArrowKeyMovementMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 5
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v4, 0x1

    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isCap(Landroid/text/Spannable;)Z

    move-result v1

    .local v1, cap:Z
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isAlt(Landroid/text/Spannable;)Z

    move-result v0

    .local v0, alt:Z
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-static {p2, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v3, v4

    :goto_0
    return v3

    :cond_0
    invoke-static {p2, v2}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-static {p2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-static {p2, v2}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_0
.end method

.method private executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 2
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"

    .prologue
    const/4 v0, 0x0

    .local v0, handled:Z
    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    :cond_1
    return v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_4
    const/high16 v1, 0x1

    invoke-static {p2, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->showContextMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/ArrowKeyMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    :cond_0
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    return-object v0
.end method

.method private isAlt(Landroid/text/Spannable;)Z
    .locals 2
    .parameter "buffer"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCap(Landroid/text/Spannable;)Z
    .locals 2
    .parameter "buffer"

    .prologue
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x1

    invoke-static {p1, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 4
    .parameter "widget"
    .parameter "buffer"

    .prologue
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isCap(Landroid/text/Spannable;)Z

    move-result v1

    .local v1, cap:Z
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isAlt(Landroid/text/Spannable;)Z

    move-result v0

    .local v0, alt:Z
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {p2, v2}, Landroid/text/Selection;->extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    invoke-static {p2, v2}, Landroid/text/Selection;->extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {p2, v2}, Landroid/text/Selection;->moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_0

    :cond_2
    invoke-static {p2, v2}, Landroid/text/Selection;->moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_0
.end method

.method private right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 4
    .parameter "widget"
    .parameter "buffer"

    .prologue
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isCap(Landroid/text/Spannable;)Z

    move-result v1

    .local v1, cap:Z
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isAlt(Landroid/text/Spannable;)Z

    move-result v0

    .local v0, alt:Z
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {p2, v2}, Landroid/text/Selection;->extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    invoke-static {p2, v2}, Landroid/text/Selection;->extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {p2, v2}, Landroid/text/Selection;->moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_0

    :cond_2
    invoke-static {p2, v2}, Landroid/text/Selection;->moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_0
.end method

.method private up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 5
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isCap(Landroid/text/Spannable;)Z

    move-result v1

    .local v1, cap:Z
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isAlt(Landroid/text/Spannable;)Z

    move-result v0

    .local v0, alt:Z
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {p2, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v3, v4

    :goto_0
    return v3

    :cond_0
    invoke-static {p2, v2}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {p2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-static {p2, v2}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1
    .parameter "widget"
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/text/method/ArrowKeyMovementMethod;->executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "text"
    .parameter "event"

    .prologue
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .local v0, code:I
    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .local v2, repeat:I
    const/4 v1, 0x0

    .local v1, handled:Z
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    :cond_0
    move v3, v1

    .end local v1           #handled:Z
    .end local v2           #repeat:I
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 1
    .parameter "view"
    .parameter "text"
    .parameter "dir"

    .prologue
    and-int/lit16 v0, p3, 0x82

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "widget"
    .parameter "buffer"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v2, -0x1

    .local v2, initialScrollX:I
    const/4 v3, -0x1

    .local v3, initialScrollY:I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_0

    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v2

    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v3

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v1

    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isCap(Landroid/text/Spannable;)Z

    move-result v0

    .local v0, cap:Z
    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/widget/TextView;->getOffset(II)I

    move-result v4

    .local v4, offset:I
    sget-object v5, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    const/16 v6, 0x22

    invoke-interface {p2, v5, v4, v4, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .end local v0           #cap:Z
    .end local v4           #offset:I
    :cond_1
    move v5, v1

    :goto_0
    return v5

    :cond_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isCap(Landroid/text/Spannable;)Z

    move-result v0

    .restart local v0       #cap:Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->cancelLongPress()V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/widget/TextView;->getOffset(II)I

    move-result v4

    .restart local v4       #offset:I
    invoke-static {p2, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v5, v7

    goto :goto_0

    .end local v0           #cap:Z
    .end local v4           #offset:I
    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_1

    if-ltz v3, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    if-ne v3, v5, :cond_5

    :cond_4
    if-ltz v2, :cond_6

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    if-eq v2, v5, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroid/widget/TextView;->moveCursorToVisibleOffset()Z

    move v5, v7

    goto :goto_0

    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/widget/TextView;->getOffset(II)I

    move-result v4

    .restart local v4       #offset:I
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isCap(Landroid/text/Spannable;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    invoke-interface {p2, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {p2, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    :goto_1
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    move v5, v7

    goto :goto_0

    :cond_7
    invoke-static {p2, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_1
.end method

.method public onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "text"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    return v0
.end method
