.class public Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;
.super Landroid/widget/LinearLayout;
.source "DTMFTwelveKeyDialerViewForVT.java"


# instance fields
.field private mButtonGrid:Lcom/android/phone/ButtonGridLayout;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 64
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v1, :cond_0

    .line 65
    packed-switch v0, :pswitch_data_0

    .line 74
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 68
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v15, v0

    .line 81
    .local v15, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 82
    .local v16, y:I
    const/4 v4, 0x0

    .line 83
    .local v4, closestDeltaX:I
    const/4 v5, 0x0

    .line 85
    .local v5, closestDeltaY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->getTouchables()Ljava/util/ArrayList;

    move-result-object v14

    .line 86
    .local v14, touchables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const v10, 0x7fffffff

    .line 87
    .local v10, minDistance:I
    const/4 v3, 0x0

    .line 89
    .local v3, closest:Landroid/view/View;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 91
    .local v11, numTouchables:I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 93
    .local v13, touchableBounds:Landroid/graphics/Rect;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_6

    .line 94
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 97
    .local v12, touchable:Landroid/view/View;
    invoke-virtual {v12, v13}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 99
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 101
    move-object v0, v13

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 102
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 137
    .end local v12           #touchable:Landroid/view/View;
    :goto_1
    return v17

    .line 106
    .restart local v12       #touchable:Landroid/view/View;
    :cond_0
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move v0, v15

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 107
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    sub-int v6, v17, v15

    .line 115
    .local v6, deltaX:I
    :goto_2
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 116
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    sub-int v7, v17, v16

    .line 123
    .local v7, deltaY:I
    :goto_3
    mul-int v17, v6, v6

    mul-int v18, v7, v7

    add-int v8, v17, v18

    .line 124
    .local v8, distanceSquared:I
    if-ge v8, v10, :cond_1

    .line 125
    move v10, v8

    .line 126
    move-object v3, v12

    .line 127
    move v4, v6

    .line 128
    move v5, v7

    .line 93
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 108
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v8           #distanceSquared:I
    :cond_2
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 109
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v6, v17, v15

    .restart local v6       #deltaX:I
    goto :goto_2

    .line 111
    .end local v6           #deltaX:I
    :cond_3
    const/4 v6, 0x0

    .restart local v6       #deltaX:I
    goto :goto_2

    .line 117
    :cond_4
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 118
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v7, v17, v16

    .restart local v7       #deltaY:I
    goto :goto_3

    .line 120
    .end local v7           #deltaY:I
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #deltaY:I
    goto :goto_3

    .line 133
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v12           #touchable:Landroid/view/View;
    :cond_6
    if-eqz v3, :cond_7

    .line 134
    move v0, v4

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 135
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_1

    .line 137
    :cond_7
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    goto/16 :goto_1
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V
    .locals 1
    .parameter "dialer"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    .line 52
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ButtonGridLayout;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mButtonGrid:Lcom/android/phone/ButtonGridLayout;

    .line 53
    return-void
.end method
