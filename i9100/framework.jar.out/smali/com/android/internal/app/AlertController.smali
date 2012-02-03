.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mContextMenuTitleId:I

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLeftPadding:I

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v1, -0x1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 102
    iput v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 118
    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 122
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/app/AlertController;->mTitleLeftPadding:I

    .line 125
    iput v1, p0, Lcom/android/internal/app/AlertController;->mContextMenuTitleId:I

    .line 128
    new-instance v0, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 175
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 177
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 178
    new-instance v0, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 181
    iget v0, p0, Lcom/android/internal/app/AlertController;->mTitleLeftPadding:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mTitleLeftPadding:I

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/internal/app/AlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    .line 204
    :goto_0
    return v3

    .line 190
    :cond_0
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    move v3, v4

    .line 191
    goto :goto_0

    .line 194
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 195
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 196
    .local v1, i:I
    :cond_2
    if-lez v1, :cond_3

    .line 197
    add-int/lit8 v1, v1, -0x1

    .line 198
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 199
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    .line 200
    goto :goto_0

    :cond_3
    move v3, v4

    .line 204
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 7
    .parameter "button"

    .prologue
    const/4 v6, 0x0

    const v5, 0x3e4ccccd

    .line 563
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 564
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 567
    const v3, 0x3f19999a

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 569
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x102019b

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 573
    .local v0, leftSpacer:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 574
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 575
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 579
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x102019c

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 581
    .local v2, rightSpacer:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 582
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 583
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 586
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 22
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 593
    const/16 v19, 0x0

    const v20, 0x108026a

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 595
    .local v9, fullDark:I
    const/16 v19, 0x1

    const v20, 0x108026e

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 597
    .local v16, topDark:I
    const/16 v19, 0x2

    const v20, 0x1080267

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 599
    .local v7, centerDark:I
    const/16 v19, 0x3

    const v20, 0x1080264

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 601
    .local v4, bottomDark:I
    const/16 v19, 0x4

    const v20, 0x1080269

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 603
    .local v8, fullBright:I
    const/16 v19, 0x5

    const v20, 0x108026d

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 605
    .local v15, topBright:I
    const/16 v19, 0x6

    const v20, 0x1080266

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 607
    .local v6, centerBright:I
    const/16 v19, 0x7

    const v20, 0x1080263

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 609
    .local v3, bottomBright:I
    const/16 v19, 0x8

    const v20, 0x1080265

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 621
    .local v5, bottomMedium:I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v18, v0

    .line 622
    .local v18, views:[Landroid/view/View;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Z

    move-object v12, v0

    .line 623
    .local v12, light:[Z
    const/4 v11, 0x0

    .line 624
    .local v11, lastView:Landroid/view/View;
    const/4 v10, 0x0

    .line 626
    .local v10, lastLight:Z
    const/4 v13, 0x0

    .line 627
    .local v13, pos:I
    if-eqz p6, :cond_0

    .line 628
    aput-object p1, v18, v13

    .line 629
    const/16 v19, 0x0

    aput-boolean v19, v12, v13

    .line 630
    add-int/lit8 v13, v13, 0x1

    .line 638
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/16 v19, 0x0

    :goto_0
    aput-object v19, v18, v13

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_1
    aput-boolean v19, v12, v13

    .line 641
    add-int/lit8 v13, v13, 0x1

    .line 642
    if-eqz p3, :cond_1

    .line 643
    aput-object p3, v18, v13

    .line 644
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v19, v0

    aput-boolean v19, v12, v13

    .line 645
    add-int/lit8 v13, v13, 0x1

    .line 647
    :cond_1
    if-eqz p4, :cond_2

    .line 648
    aput-object p7, v18, v13

    .line 649
    const/16 v19, 0x1

    aput-boolean v19, v12, v13

    .line 652
    :cond_2
    const/4 v14, 0x0

    .line 653
    .local v14, setView:Z
    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move v0, v13

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 654
    aget-object v17, v18, v13

    .line 655
    .local v17, v:Landroid/view/View;
    if-nez v17, :cond_5

    .line 653
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .end local v14           #setView:Z
    .end local v17           #v:Landroid/view/View;
    :cond_3
    move-object/from16 v19, p2

    .line 638
    goto :goto_0

    .line 640
    :cond_4
    const/16 v19, 0x0

    goto :goto_1

    .line 658
    .restart local v14       #setView:Z
    .restart local v17       #v:Landroid/view/View;
    :cond_5
    if-eqz v11, :cond_6

    .line 659
    if-nez v14, :cond_8

    .line 660
    if-eqz v10, :cond_7

    move/from16 v19, v15

    :goto_4
    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 664
    :goto_5
    const/4 v14, 0x1

    .line 666
    :cond_6
    move-object/from16 v11, v17

    .line 667
    aget-boolean v10, v12, v13

    goto :goto_3

    :cond_7
    move/from16 v19, v16

    .line 660
    goto :goto_4

    .line 662
    :cond_8
    if-eqz v10, :cond_9

    move/from16 v19, v6

    :goto_6
    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_9
    move/from16 v19, v7

    goto :goto_6

    .line 670
    .end local v17           #v:Landroid/view/View;
    :cond_a
    if-eqz v11, :cond_b

    .line 671
    if-eqz v14, :cond_f

    .line 676
    if-eqz v10, :cond_e

    if-eqz p4, :cond_d

    move/from16 v19, v5

    :goto_7
    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 708
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 710
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelection(I)V

    .line 715
    :cond_c
    return-void

    :cond_d
    move/from16 v19, v3

    .line 676
    goto :goto_7

    :cond_e
    move/from16 v19, v4

    goto :goto_7

    .line 679
    :cond_f
    if-eqz v10, :cond_10

    move/from16 v19, v8

    :goto_9
    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    :cond_10
    move/from16 v19, v9

    goto :goto_9
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 508
    const/4 v2, 0x1

    .line 509
    .local v2, BIT_BUTTON_POSITIVE:I
    const/4 v0, 0x2

    .line 510
    .local v0, BIT_BUTTON_NEGATIVE:I
    const/4 v1, 0x4

    .line 511
    .local v1, BIT_BUTTON_NEUTRAL:I
    const/4 v3, 0x0

    .line 512
    .local v3, whichButtons:I
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x1020019

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 513
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 516
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 523
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102001a

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 524
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 527
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 535
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102001b

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 536
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 539
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 551
    :goto_2
    if-ne v3, v2, :cond_4

    .line 552
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 559
    :cond_0
    :goto_3
    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 518
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 520
    or-int/2addr v3, v2

    goto :goto_0

    .line 529
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 532
    or-int/2addr v3, v0

    goto :goto_1

    .line 541
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 544
    or-int/2addr v3, v1

    goto :goto_2

    .line 553
    :cond_4
    if-ne v3, v0, :cond_5

    .line 554
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 555
    :cond_5
    if-ne v3, v1, :cond_0

    .line 556
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v4, v6

    .line 559
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, 0x1020198

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 481
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 482
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 485
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 486
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 496
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 502
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .parameter "topPanel"

    .prologue
    const v6, 0x1020194

    const/16 v9, 0x8

    .line 415
    const/4 v1, 0x1

    .line 417
    .local v1, hasTitle:Z
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 419
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 422
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 426
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 475
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 476
    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    :cond_1
    return v1

    .line 428
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    move v0, v4

    .line 430
    .local v0, hasTextTitle:Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 431
    if-eqz v0, :cond_6

    .line 433
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x1020195

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 435
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/app/AlertController;->mContextMenuTitleId:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContextMenuTitleId(I)V

    .line 445
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-lez v4, :cond_4

    .line 446
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 428
    .end local v0           #hasTextTitle:Z
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 447
    .restart local v0       #hasTextTitle:Z
    :cond_4
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 448
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 449
    :cond_5
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-nez v4, :cond_0

    .line 455
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/app/AlertController;->mTitleLeftPadding:I

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 461
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 466
    :cond_6
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 467
    .restart local v3       #titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 12

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020197

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 373
    .local v2, contentPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 374
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupButtons()Z

    move-result v4

    .line 376
    .local v4, hasButtons:Z
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020193

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 377
    .local v1, topPanel:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v6, 0x101005d

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 379
    .local v5, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 381
    .local v6, hasTitle:Z
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x102019a

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 382
    .local v7, buttonPanel:Landroid/view/View;
    if-nez v4, :cond_0

    .line 383
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 386
    :cond_0
    const/4 v3, 0x0

    .line 387
    .local v3, customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 388
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x1020199

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 389
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x102002b

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 390
    .local v8, custom:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 392
    iget v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v9, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v10, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v11, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 396
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 405
    .end local v8           #custom:Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x1020196

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 407
    .local v9, divider:Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .end local v9           #divider:Landroid/view/View;
    :cond_4
    move-object v0, p0

    .line 410
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 411
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 412
    return-void

    .line 399
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x1020199

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 349
    packed-switch p1, :pswitch_data_0

    .line 357
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 351
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 353
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 355
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    .line 209
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 211
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1090019

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 216
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 217
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 285
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 289
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 293
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 309
    :goto_0
    return-void

    .line 297
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 298
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 302
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 303
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setContextMenuTitleId(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 228
    iput p1, p0, Lcom/android/internal/app/AlertController;->mContextMenuTitleId:I

    .line 229
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContextMenuTitleId(I)V

    .line 232
    :cond_0
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 240
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 317
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 318
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 319
    if-lez p1, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    if-nez p1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 329
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 336
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 244
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 221
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 255
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 264
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 265
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 266
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 267
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 268
    return-void
.end method
