.class Lcom/android/internal/widget/SlidingTab$Slider;
.super Ljava/lang/Object;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Slider"
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x3

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x1

.field public static final ALIGN_TOP:I = 0x2

.field public static final ALIGN_UNKNOWN:I = 0x4

.field private static final STATE_ACTIVE:I = 0x2

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_PRESSED:I = 0x1


# instance fields
.field private alignment:I

.field private alignment_value:I

.field private currentState:I

.field private final icon:Landroid/widget/ImageView;

.field private final iconText:Landroid/widget/TextView;

.field private final tab:Landroid/widget/ImageView;

.field private final target:Landroid/widget/ImageView;

.field private final text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;III)V
    .locals 5
    .parameter "parent"
    .parameter "tabId"
    .parameter "barId"
    .parameter "targetId"

    .prologue
    const/4 v4, 0x4

    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    .line 185
    iput v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 200
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030092

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 215
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030095

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 236
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getTabHeight()I
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getTabWidth()I
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method hide()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 268
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v4, v7, :cond_1

    :cond_0
    move v2, v7

    .line 269
    .local v2, horiz:Z
    :goto_0
    if-eqz v2, :cond_3

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    .line 271
    .local v0, dx:I
    :goto_1
    if-eqz v2, :cond_4

    move v1, v6

    .line 274
    .local v1, dy:I
    :goto_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-direct {v3, v8, v4, v8, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 275
    .local v3, trans:Landroid/view/animation/Animation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 276
    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 277
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 278
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 279
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 280
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 281
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    return-void

    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #horiz:Z
    .end local v3           #trans:Landroid/view/animation/Animation;
    :cond_1
    move v2, v6

    .line 268
    goto :goto_0

    .line 269
    .restart local v2       #horiz:Z
    :cond_2
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_1

    .line 271
    .restart local v0       #dx:I
    :cond_4
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_2
.end method

.method public hideTarget()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 521
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 522
    return-void
.end method

.method layout(IIIII)V
    .locals 29
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "alignment"

    .prologue
    .line 410
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 412
    .local v15, tabBackground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 413
    .local v7, handleWidth:I
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 414
    .local v6, handleHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 415
    .local v17, targetDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    .line 416
    .local v22, targetWidth:I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    .line 417
    .local v18, targetHeight:I
    sub-int v12, p3, p1

    .line 418
    .local v12, parentWidth:I
    sub-int v11, p4, p2

    .line 419
    .local v11, parentHeight:I
    const/16 v24, 0x1e

    sub-int v8, v7, v24

    .line 421
    .local v8, iconWidth:I
    const v24, 0x3f2aaaab

    move v0, v12

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    sub-int v24, v24, v22

    div-int/lit8 v25, v7, 0x2

    add-int v10, v24, v25

    .line 422
    .local v10, leftTarget:I
    const v24, 0x3eaaaaaa

    move v0, v12

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v25, v7, 0x2

    sub-int v14, v24, v25

    .line 423
    .local v14, rightTarget:I
    sub-int v24, v12, v7

    div-int/lit8 v9, v24, 0x2

    .line 424
    .local v9, left:I
    add-int v13, v9, v7

    .line 426
    .local v13, right:I
    if-eqz p5, :cond_0

    const/16 v24, 0x1

    move/from16 v0, p5

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 428
    :cond_0
    sub-int v24, v11, v18

    div-int/lit8 v21, v24, 0x2

    .line 429
    .local v21, targetTop:I
    add-int v16, v21, v18

    .line 430
    .local v16, targetBottom:I
    sub-int v24, v11, v6

    div-int/lit8 v23, v24, 0x2

    .line 431
    .local v23, top:I
    add-int v24, v11, v6

    div-int/lit8 v5, v24, 0x2

    .line 432
    .local v5, bottom:I
    if-nez p5, :cond_1

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    move v3, v7

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    sub-int v25, v25, v12

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v26

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->setSingleLine()V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    div-int/lit8 v26, v6, 0x2

    const/16 v27, 0x1c

    sub-int v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setGravity(I)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    add-int/lit8 v26, v23, 0x12

    add-int/lit8 v27, v23, 0x3c

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move v3, v8

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x11

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setGravity(I)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    add-int/lit8 v26, v23, 0x3e

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move v3, v8

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    add-int v25, v10, v22

    move-object/from16 v0, v24

    move v1, v10

    move/from16 v2, v21

    move/from16 v3, v25

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 442
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 474
    .end local v16           #targetBottom:I
    .end local v21           #targetTop:I
    :goto_0
    return-void

    .line 444
    .restart local v16       #targetBottom:I
    .restart local v21       #targetTop:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    sub-int v25, v12, v7

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    move v3, v12

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    add-int v25, v12, v12

    move-object/from16 v0, v24

    move v1, v12

    move/from16 v2, v23

    move/from16 v3, v25

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->setSingleLine()V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    div-int/lit8 v26, v6, 0x2

    const/16 v27, 0x1c

    sub-int v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setGravity(I)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    add-int v25, v14, v22

    move-object/from16 v0, v24

    move v1, v14

    move/from16 v2, v21

    move/from16 v3, v25

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    sub-int v25, v12, v8

    add-int/lit8 v26, v23, 0x12

    add-int/lit8 v27, v23, 0x3c

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move v3, v12

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x11

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setGravity(I)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    move-object/from16 v24, v0

    sub-int v25, v12, v8

    add-int/lit8 v26, v23, 0x3e

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move v3, v12

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x30

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setGravity(I)V

    .line 454
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto/16 :goto_0

    .line 458
    .end local v5           #bottom:I
    .end local v16           #targetBottom:I
    .end local v21           #targetTop:I
    .end local v23           #top:I
    :cond_2
    sub-int v24, v12, v22

    div-int/lit8 v19, v24, 0x2

    .line 459
    .local v19, targetLeft:I
    add-int v24, v12, v22

    div-int/lit8 v20, v24, 0x2

    .line 460
    .local v20, targetRight:I
    const v24, 0x3f2aaaab

    move v0, v11

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v25, v6, 0x2

    add-int v24, v24, v25

    sub-int v23, v24, v18

    .line 461
    .restart local v23       #top:I
    const v24, 0x3eaaaaaa

    move v0, v11

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v25, v6, 0x2

    sub-int v5, v24, v25

    .line 462
    .restart local v5       #bottom:I
    const/16 v24, 0x2

    move/from16 v0, p5

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move v1, v9

    move/from16 v2, v25

    move v3, v13

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    sub-int v25, v25, v11

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move v1, v9

    move/from16 v2, v25

    move v3, v13

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    add-int v25, v23, v18

    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 466
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto/16 :goto_0

    .line 468
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    sub-int v25, v11, v6

    move-object/from16 v0, v24

    move v1, v9

    move/from16 v2, v25

    move v3, v13

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    add-int v25, v11, v11

    move-object/from16 v0, v24

    move v1, v9

    move v2, v11

    move v3, v13

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    add-int v25, v5, v18

    move-object/from16 v0, v24

    move/from16 v1, v19

    move v2, v5

    move/from16 v3, v20

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 471
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto/16 :goto_0
.end method

.method public measure()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 484
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 486
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 488
    return-void
.end method

.method reset(Z)V
    .locals 10
    .parameter "animate"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 359
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 360
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1030092

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 362
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v4, v9, :cond_1

    :cond_0
    move v2, v9

    .line 367
    .local v2, horiz:Z
    :goto_0
    if-eqz v2, :cond_3

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    .line 369
    .local v0, dx:I
    :goto_1
    if-eqz v2, :cond_4

    move v1, v7

    .line 371
    .local v1, dy:I
    :goto_2
    if-eqz p1, :cond_6

    .line 372
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-direct {v3, v8, v4, v8, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 373
    .local v3, trans:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 374
    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 375
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 376
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 377
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 394
    .end local v3           #trans:Landroid/view/animation/TranslateAnimation;
    :goto_3
    return-void

    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #horiz:Z
    :cond_1
    move v2, v7

    .line 366
    goto :goto_0

    .line 367
    .restart local v2       #horiz:Z
    :cond_2
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_1

    .line 369
    .restart local v0       #dx:I
    :cond_4
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_2

    .line 379
    .restart local v1       #dy:I
    :cond_6
    if-eqz v2, :cond_7

    .line 380
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 381
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 382
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 388
    :goto_4
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->clearAnimation()V

    .line 389
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 390
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 391
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->clearAnimation()V

    .line 392
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_3

    .line 384
    :cond_7
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    .line 385
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 386
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    goto :goto_4
.end method

.method setBarBackgroundResource(I)V
    .locals 1
    .parameter "barId"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 248
    return-void
.end method

.method setHintText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 252
    return-void
.end method

.method setHintText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "CharSeq"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method

.method setIcon(I)V
    .locals 1
    .parameter "iconId"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    return-void
.end method

.method setIconText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "CharSeq"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    return-void
.end method

.method setIconWithText(I)V
    .locals 1
    .parameter "iconId"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    return-void
.end method

.method public setInvisible()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 526
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    return-void
.end method

.method setState(I)V
    .locals 10
    .parameter "state"

    .prologue
    const v2, 0x3f99999a

    const/high16 v1, 0x3f80

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 305
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    if-ne p1, v5, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPressed(Z)V

    .line 306
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    if-ne p1, v5, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 307
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    if-ne p1, v5, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 308
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    if-ne p1, v5, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPressed(Z)V

    .line 309
    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 310
    new-array v9, v5, [I

    const v1, 0x10100a2

    aput v1, v9, v6

    .line 311
    .local v9, activeState:[I
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1030094

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 336
    .end local v9           #activeState:[I
    :goto_4
    iput p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    .line 337
    return-void

    :cond_2
    move v4, v6

    .line 305
    goto :goto_0

    :cond_3
    move v4, v6

    .line 306
    goto :goto_1

    :cond_4
    move v4, v6

    .line 307
    goto :goto_2

    :cond_5
    move v4, v6

    .line 308
    goto :goto_3

    .line 321
    :cond_6
    if-ne p1, v5, :cond_7

    .line 322
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f00

    const v8, -0x40666666

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 327
    .local v0, scaleAni:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 328
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 329
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 331
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    .end local v0           #scaleAni:Landroid/view/animation/Animation;
    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1030092

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_4
.end method

.method setTabBackgroundResource(I)V
    .locals 1
    .parameter "tabId"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 244
    return-void
.end method

.method setTarget(I)V
    .locals 1
    .parameter "targetId"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    return-void
.end method

.method show(Z)V
    .locals 9
    .parameter "animate"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 285
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    if-eqz p1, :cond_1

    .line 291
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v4, v8, :cond_2

    :cond_0
    move v2, v8

    .line 292
    .local v2, horiz:Z
    :goto_0
    if-eqz v2, :cond_4

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    move v0, v4

    .line 293
    .local v0, dx:I
    :goto_1
    if-eqz v2, :cond_5

    move v1, v6

    .line 295
    .local v1, dy:I
    :goto_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    neg-int v4, v0

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-direct {v3, v4, v7, v5, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 296
    .local v3, trans:Landroid/view/animation/Animation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 297
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 298
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 300
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 302
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #horiz:Z
    .end local v3           #trans:Landroid/view/animation/Animation;
    :cond_1
    return-void

    :cond_2
    move v2, v6

    .line 291
    goto :goto_0

    .line 292
    .restart local v2       #horiz:Z
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    neg-int v4, v4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v6

    goto :goto_1

    .line 293
    .restart local v0       #dx:I
    :cond_5
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    move v1, v4

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    neg-int v4, v4

    move v1, v4

    goto :goto_2
.end method

.method showBounce()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 340
    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v3, v6, :cond_1

    :cond_0
    move v1, v6

    .line 341
    .local v1, horiz:Z
    :goto_0
    if-eqz v1, :cond_3

    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v3, :cond_2

    const/16 v3, -0x14

    move v0, v3

    .line 342
    .local v0, dx:I
    :goto_1
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v0

    invoke-direct {v2, v3, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 343
    .local v2, trans:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 345
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 346
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 347
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    return-void

    .end local v0           #dx:I
    .end local v1           #horiz:Z
    .end local v2           #trans:Landroid/view/animation/TranslateAnimation;
    :cond_1
    move v1, v5

    .line 340
    goto :goto_0

    .line 341
    .restart local v1       #horiz:Z
    :cond_2
    const/16 v3, 0x14

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_1
.end method

.method showTarget()V
    .locals 3

    .prologue
    .line 352
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 353
    .local v0, alphaAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 354
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 355
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "anim1"
    .parameter "anim2"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 515
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 516
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 517
    return-void
.end method

.method public updateDrawableStates()V
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 478
    return-void
.end method
