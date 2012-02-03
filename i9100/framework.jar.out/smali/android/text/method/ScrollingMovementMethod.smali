.class public Landroid/text/method/ScrollingMovementMethod;
.super Ljava/lang/Object;
.source "ScrollingMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# static fields
.field private static sInstance:Landroid/text/method/ScrollingMovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 2
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, handled:Z
    packed-switch p3, :pswitch_data_0

    .line 171
    :goto_0
    return v0

    .line 155
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 156
    goto :goto_0

    .line 159
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 160
    goto :goto_0

    .line 163
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 164
    goto :goto_0

    .line 167
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    .line 236
    :cond_0
    sget-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    return-object v0
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 8
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v7, 0x1

    .line 119
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 121
    .local v1, layout:Landroid/text/Layout;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 124
    .local v3, padding:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v0, v4, v3

    .line 125
    .local v0, areabot:I
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 127
    .local v2, line:I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    if-ge v4, v5, :cond_0

    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 135
    :cond_0
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v7

    if-gt v2, v4, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    sub-int/2addr v6, v3

    sub-int/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/widget/TextView;->scrollTo(II)V

    .line 138
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    invoke-static {p1, v1, v4, v5}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    move v4, v7

    .line 143
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 0
    .parameter "widget"
    .parameter "text"

    .prologue
    .line 208
    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 12
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 36
    .local v3, layout:Landroid/text/Layout;
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    .line 37
    .local v8, scrolly:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v7

    .line 38
    .local v7, scr:I
    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 40
    .local v1, em:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v10

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v11

    add-int v5, v10, v11

    .line 42
    .local v5, padding:I
    invoke-virtual {v3, v8}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v9

    .line 43
    .local v9, top:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v10

    add-int/2addr v10, v8

    sub-int/2addr v10, v5

    invoke-virtual {v3, v10}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 45
    .local v0, bottom:I
    const v4, 0x7fffffff

    .line 47
    .local v4, left:I
    move v2, v9

    .local v2, i:I
    :goto_0
    if-gt v2, v0, :cond_0

    .line 48
    int-to-float v10, v4

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    float-to-int v4, v10

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    if-le v7, v4, :cond_1

    .line 52
    sub-int v10, v7, v1

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 53
    .local v6, s:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v10

    invoke-virtual {p1, v6, v10}, Landroid/widget/TextView;->scrollTo(II)V

    .line 54
    const/4 v10, 0x1

    .line 57
    .end local v6           #s:I
    :goto_1
    return v10

    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/text/method/ScrollingMovementMethod;->executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 179
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 180
    .local v0, code:I
    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 182
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 183
    .local v3, repeat:I
    const/4 v1, 0x1

    .line 184
    .local v1, first:Z
    const/4 v2, 0x0

    .line 185
    .local v2, handled:Z
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_1

    .line 186
    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/ScrollingMovementMethod;->executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    const/4 v2, 0x1

    .line 188
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 189
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 191
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v4, v2

    .line 195
    .end local v1           #first:Z
    .end local v2           #handled:Z
    .end local v3           #repeat:I
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 6
    .parameter "widget"
    .parameter "text"
    .parameter "dir"

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 217
    .local v0, layout:Landroid/text/Layout;
    if-eqz v0, :cond_0

    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_0

    .line 218
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->scrollTo(II)V

    .line 221
    :cond_0
    if-eqz v0, :cond_1

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_1

    .line 222
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v4

    add-int v2, v3, v4

    .line 224
    .local v2, padding:I
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .line 226
    .local v1, line:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->scrollTo(II)V

    .line 230
    .end local v1           #line:I
    .end local v2           #padding:I
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"
    .parameter "event"

    .prologue
    .line 205
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 12
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 66
    .local v3, layout:Landroid/text/Layout;
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    .line 67
    .local v8, scrolly:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v7

    .line 68
    .local v7, scr:I
    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 70
    .local v1, em:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v10

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v11

    add-int v4, v10, v11

    .line 72
    .local v4, padding:I
    invoke-virtual {v3, v8}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v9

    .line 73
    .local v9, top:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v10

    add-int/2addr v10, v8

    sub-int/2addr v10, v4

    invoke-virtual {v3, v10}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 75
    .local v0, bottom:I
    const/4 v5, 0x0

    .line 77
    .local v5, right:I
    move v2, v9

    .local v2, i:I
    :goto_0
    if-gt v2, v0, :cond_0

    .line 78
    int-to-float v10, v5

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v5, v10

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v10

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v11

    add-int v4, v10, v11

    .line 82
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v10

    sub-int/2addr v10, v4

    sub-int v10, v5, v10

    if-ge v7, v10, :cond_1

    .line 83
    add-int v10, v7, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v11

    sub-int/2addr v11, v4

    sub-int v11, v5, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 84
    .local v6, s:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v10

    invoke-virtual {p1, v6, v10}, Landroid/widget/TextView;->scrollTo(II)V

    .line 85
    const/4 v10, 0x1

    .line 88
    .end local v6           #s:I
    :goto_1
    return v10

    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 6
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 97
    .local v1, layout:Landroid/text/Layout;
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    .line 98
    .local v0, areatop:I
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 99
    .local v2, line:I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 103
    .local v3, linetop:I
    if-ne v0, v3, :cond_0

    .line 104
    add-int/lit8 v2, v2, -0x1

    .line 106
    :cond_0
    if-ltz v2, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    invoke-static {p1, v1, v4, v5}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 109
    const/4 v4, 0x1

    .line 112
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
