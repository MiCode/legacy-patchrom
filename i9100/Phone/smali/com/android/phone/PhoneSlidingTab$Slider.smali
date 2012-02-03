.class Lcom/android/phone/PhoneSlidingTab$Slider;
.super Ljava/lang/Object;
.source "PhoneSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneSlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Slider"
.end annotation


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
.method constructor <init>(Landroid/view/ViewGroup;IIII)V
    .locals 9
    .parameter "parent"
    .parameter "tabId"
    .parameter "barId"
    .parameter "targetId"
    .parameter "direction"

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0xa

    const/4 v6, 0x4

    const/4 v4, -0x1

    const/4 v5, -0x2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->currentState:I

    .line 188
    iput v6, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment:I

    .line 204
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 205
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 206
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 207
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    if-ne p5, v7, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    const/16 v1, 0x1a

    const/16 v2, 0x24

    const/16 v3, 0x1d

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 217
    :goto_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 221
    if-ne p5, v7, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    const/16 v1, 0x2c

    const/16 v2, 0x1c

    const/16 v3, 0x1e

    const/16 v4, 0x28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 226
    :goto_1
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0029

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 230
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 231
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 233
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    .line 238
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 239
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    .line 243
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 251
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 252
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    const/16 v1, 0x24

    const/16 v2, 0x1a

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    const/16 v1, 0x1e

    const/16 v2, 0x1c

    const/16 v3, 0x2c

    const/16 v4, 0x28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getTabHeight()I
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getTabWidth()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

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

    .line 288
    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment:I

    if-ne v4, v7, :cond_1

    :cond_0
    move v2, v7

    .line 289
    .local v2, horiz:Z
    :goto_0
    if-eqz v2, :cond_3

    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    .line 291
    .local v0, dx:I
    :goto_1
    if-eqz v2, :cond_4

    move v1, v6

    .line 294
    .local v1, dy:I
    :goto_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-direct {v3, v8, v4, v8, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 295
    .local v3, trans:Landroid/view/animation/Animation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 296
    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 297
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 298
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 300
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 301
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    return-void

    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #horiz:Z
    .end local v3           #trans:Landroid/view/animation/Animation;
    :cond_1
    move v2, v6

    .line 288
    goto :goto_0

    .line 289
    .restart local v2       #horiz:Z
    :cond_2
    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_1

    .line 291
    .restart local v0       #dx:I
    :cond_4
    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_2
.end method

.method public hideTarget()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 543
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 544
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
    .line 430
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment:I

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 432
    .local v15, tabBackground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 433
    .local v7, handleWidth:I
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 434
    .local v6, handleHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 435
    .local v17, targetDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    .line 436
    .local v22, targetWidth:I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    .line 437
    .local v18, targetHeight:I
    sub-int v12, p3, p1

    .line 438
    .local v12, parentWidth:I
    sub-int v11, p4, p2

    .line 439
    .local v11, parentHeight:I
    const/16 v24, 0x1e

    sub-int v8, v7, v24

    .line 441
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

    .line 442
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

    .line 443
    .local v14, rightTarget:I
    sub-int v24, v12, v7

    div-int/lit8 v9, v24, 0x2

    .line 444
    .local v9, left:I
    add-int v13, v9, v7

    .line 446
    .local v13, right:I
    if-eqz p5, :cond_0

    const/16 v24, 0x1

    move/from16 v0, p5

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 448
    :cond_0
    sub-int v24, v11, v18

    div-int/lit8 v21, v24, 0x2

    .line 449
    .local v21, targetTop:I
    add-int v16, v21, v18

    .line 450
    .local v16, targetBottom:I
    sub-int v24, v11, v6

    div-int/lit8 v23, v24, 0x2

    .line 451
    .local v23, top:I
    add-int v24, v11, v6

    div-int/lit8 v5, v24, 0x2

    .line 452
    .local v5, bottom:I
    if-nez p5, :cond_1

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    move v3, v7

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

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

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->setSingleLine()V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    div-int/lit8 v26, v6, 0x2

    const/16 v27, 0x1c

    sub-int v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setGravity(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

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

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x11

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setGravity(I)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    add-int/lit8 v26, v23, 0x3e

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move v3, v8

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    add-int v25, v10, v22

    move-object/from16 v0, v24

    move v1, v10

    move/from16 v2, v21

    move/from16 v3, v25

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 464
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment_value:I

    .line 496
    .end local v16           #targetBottom:I
    .end local v21           #targetTop:I
    :goto_0
    return-void

    .line 466
    .restart local v16       #targetBottom:I
    .restart local v21       #targetTop:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    sub-int v25, v12, v7

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    move v3, v12

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    add-int v25, v12, v12

    move-object/from16 v0, v24

    move v1, v12

    move/from16 v2, v23

    move/from16 v3, v25

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->setSingleLine()V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    div-int/lit8 v26, v6, 0x2

    const/16 v27, 0x1c

    sub-int v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setGravity(I)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    add-int v25, v14, v22

    move-object/from16 v0, v24

    move v1, v14

    move/from16 v2, v21

    move/from16 v3, v25

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

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

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x11

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setGravity(I)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    move-object/from16 v24, v0

    sub-int v25, v12, v8

    add-int/lit8 v26, v23, 0x3e

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move v3, v12

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x30

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setGravity(I)V

    .line 476
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment_value:I

    goto/16 :goto_0

    .line 480
    .end local v5           #bottom:I
    .end local v16           #targetBottom:I
    .end local v21           #targetTop:I
    .end local v23           #top:I
    :cond_2
    sub-int v24, v12, v22

    div-int/lit8 v19, v24, 0x2

    .line 481
    .local v19, targetLeft:I
    add-int v24, v12, v22

    div-int/lit8 v20, v24, 0x2

    .line 482
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

    .line 483
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

    .line 484
    .restart local v5       #bottom:I
    const/16 v24, 0x2

    move/from16 v0, p5

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move v1, v9

    move/from16 v2, v25

    move v3, v13

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

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

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    add-int v25, v23, v18

    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 488
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment_value:I

    goto/16 :goto_0

    .line 490
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    sub-int v25, v11, v6

    move-object/from16 v0, v24

    move v1, v9

    move/from16 v2, v25

    move v3, v13

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    add-int v25, v11, v11

    move-object/from16 v0, v24

    move v1, v9

    move v2, v11

    move v3, v13

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    add-int v25, v5, v18

    move-object/from16 v0, v24

    move/from16 v1, v19

    move v2, v5

    move/from16 v3, v20

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 493
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment_value:I

    goto/16 :goto_0
.end method

.method public measure()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 506
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 508
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 510
    return-void
.end method

.method reset(Z)V
    .locals 10
    .parameter "animate"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 379
    invoke-virtual {p0, v7}, Lcom/android/phone/PhoneSlidingTab$Slider;->setState(I)V

    .line 380
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f0029

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 382
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment:I

    if-ne v4, v9, :cond_1

    :cond_0
    move v2, v9

    .line 387
    .local v2, horiz:Z
    :goto_0
    if-eqz v2, :cond_3

    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    .line 389
    .local v0, dx:I
    :goto_1
    if-eqz v2, :cond_4

    move v1, v7

    .line 391
    .local v1, dy:I
    :goto_2
    if-eqz p1, :cond_6

    .line 392
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-direct {v3, v8, v4, v8, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 393
    .local v3, trans:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 394
    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 395
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 396
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 397
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 414
    .end local v3           #trans:Landroid/view/animation/TranslateAnimation;
    :goto_3
    return-void

    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #horiz:Z
    :cond_1
    move v2, v7

    .line 386
    goto :goto_0

    .line 387
    .restart local v2       #horiz:Z
    :cond_2
    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_1

    .line 389
    .restart local v0       #dx:I
    :cond_4
    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_2

    .line 399
    .restart local v1       #dy:I
    :cond_6
    if-eqz v2, :cond_7

    .line 400
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 401
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 402
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 408
    :goto_4
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->clearAnimation()V

    .line 409
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 410
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 411
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->clearAnimation()V

    .line 412
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_3

    .line 404
    :cond_7
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    .line 405
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 406
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    goto :goto_4
.end method

.method setBarBackgroundResource(I)V
    .locals 1
    .parameter "barId"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 265
    return-void
.end method

.method setHintText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 269
    return-void
.end method

.method setIcon(I)V
    .locals 1
    .parameter "iconId"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    return-void
.end method

.method public setInvisible()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 548
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    return-void
.end method

.method setState(I)V
    .locals 11
    .parameter "state"

    .prologue
    const v10, 0x7f0f0029

    const v2, 0x3f99999a

    const/high16 v1, 0x3f80

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 325
    iget-object v3, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    if-ne p1, v5, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPressed(Z)V

    .line 326
    iget-object v3, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    if-ne p1, v5, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 327
    iget-object v3, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    if-ne p1, v5, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 328
    iget-object v3, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    if-ne p1, v5, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPressed(Z)V

    .line 329
    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 330
    new-array v9, v5, [I

    const v1, 0x10100a2

    aput v1, v9, v6

    .line 331
    .local v9, activeState:[I
    iget-object v1, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 356
    .end local v9           #activeState:[I
    :goto_4
    iput p1, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->currentState:I

    .line 357
    return-void

    :cond_2
    move v4, v6

    .line 325
    goto :goto_0

    :cond_3
    move v4, v6

    .line 326
    goto :goto_1

    :cond_4
    move v4, v6

    .line 327
    goto :goto_2

    :cond_5
    move v4, v6

    .line 328
    goto :goto_3

    .line 341
    :cond_6
    if-ne p1, v5, :cond_7

    .line 342
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f00

    const v8, -0x40666666

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 347
    .local v0, scaleAni:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 348
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 349
    iget-object v1, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 351
    iget-object v1, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    .end local v0           #scaleAni:Landroid/view/animation/Animation;
    :cond_7
    iget-object v1, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_4
.end method

.method setTabBackgroundResource(I)V
    .locals 1
    .parameter "tabId"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 261
    return-void
.end method

.method setTarget(I)V
    .locals 1
    .parameter "targetId"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    return-void
.end method

.method show(Z)V
    .locals 9
    .parameter "animate"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 305
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    if-eqz p1, :cond_1

    .line 311
    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment:I

    if-ne v4, v8, :cond_2

    :cond_0
    move v2, v8

    .line 312
    .local v2, horiz:Z
    :goto_0
    if-eqz v2, :cond_4

    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    move v0, v4

    .line 313
    .local v0, dx:I
    :goto_1
    if-eqz v2, :cond_5

    move v1, v6

    .line 315
    .local v1, dy:I
    :goto_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    neg-int v4, v0

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-direct {v3, v4, v7, v5, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 316
    .local v3, trans:Landroid/view/animation/Animation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 317
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 318
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 319
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 320
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 322
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #horiz:Z
    .end local v3           #trans:Landroid/view/animation/Animation;
    :cond_1
    return-void

    :cond_2
    move v2, v6

    .line 311
    goto :goto_0

    .line 312
    .restart local v2       #horiz:Z
    :cond_3
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    neg-int v4, v4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v6

    goto :goto_1

    .line 313
    .restart local v0       #dx:I
    :cond_5
    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    move v1, v4

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    neg-int v4, v4

    move v1, v4

    goto :goto_2
.end method

.method public startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "anim1"
    .parameter "anim2"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 537
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 538
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 539
    return-void
.end method

.method public updateDrawableStates()V
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/android/phone/PhoneSlidingTab$Slider;->currentState:I

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneSlidingTab$Slider;->setState(I)V

    .line 500
    return-void
.end method
