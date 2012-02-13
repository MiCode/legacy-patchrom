.class public Landroid/view/Gravity;
.super Ljava/lang/Object;
.source "Gravity.java"


# static fields
.field public static final AXIS_CLIP:I = 0x8

.field public static final AXIS_PULL_AFTER:I = 0x4

.field public static final AXIS_PULL_BEFORE:I = 0x2

.field public static final AXIS_SPECIFIED:I = 0x1

.field public static final AXIS_X_SHIFT:I = 0x0

.field public static final AXIS_Y_SHIFT:I = 0x4

.field public static final BOTTOM:I = 0x50

.field public static final CENTER:I = 0x11

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final CLIP_HORIZONTAL:I = 0x8

.field public static final CLIP_VERTICAL:I = 0x80

.field public static final DISPLAY_CLIP_HORIZONTAL:I = 0x1000000

.field public static final DISPLAY_CLIP_VERTICAL:I = 0x10000000

.field public static final FILL:I = 0x77

.field public static final FILL_HORIZONTAL:I = 0x7

.field public static final FILL_VERTICAL:I = 0x70

.field public static final HORIZONTAL_GRAVITY_MASK:I = 0x7

.field public static final LEFT:I = 0x3

.field public static final NO_GRAVITY:I = 0x0

.field public static final RIGHT:I = 0x5

.field public static final TOP:I = 0x30

.field public static final VERTICAL_GRAVITY_MASK:I = 0x70


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 5
    .parameter "gravity"
    .parameter "w"
    .parameter "h"
    .parameter "container"
    .parameter "xAdj"
    .parameter "yAdj"
    .parameter "outRect"

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0x8

    and-int/lit8 v0, p0, 0x6

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    :cond_0
    :goto_0
    and-int/lit8 v0, p0, 0x60

    sparse-switch v0, :sswitch_data_0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_0

    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_2

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    :cond_2
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :pswitch_2
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_0

    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :pswitch_3
    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    iget v0, p6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->left:I

    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_0

    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :sswitch_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_1

    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_3

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    :cond_3
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_1

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :sswitch_1
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_1

    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_1

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :sswitch_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->top:I

    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_1

    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_1

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "gravity"
    .parameter "w"
    .parameter "h"
    .parameter "container"
    .parameter "outRect"

    .prologue
    const/4 v4, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "gravity"
    .parameter "display"
    .parameter "inoutObj"

    .prologue
    const/high16 v1, 0x1000

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    :cond_1
    :goto_0
    const/high16 v1, 0x100

    and-int/2addr v1, p0

    if-eqz v1, :cond_8

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    :cond_2
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x0

    .local v0, off:I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_6

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    :cond_5
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_7

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_6
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_5

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    goto :goto_2

    :cond_7
    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .end local v0           #off:I
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #off:I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_a

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v2

    :cond_9
    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_b

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_a
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_9

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v2

    goto :goto_3

    :cond_b
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1
.end method

.method public static isHorizontal(I)Z
    .locals 1
    .parameter "gravity"

    .prologue
    if-lez p0, :cond_0

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVertical(I)Z
    .locals 1
    .parameter "gravity"

    .prologue
    if-lez p0, :cond_0

    and-int/lit8 v0, p0, 0x70

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
