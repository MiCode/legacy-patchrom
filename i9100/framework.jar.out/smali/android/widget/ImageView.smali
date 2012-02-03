.class public Landroid/widget/ImageView;
.super Landroid/view/View;
.source "ImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageView$ScaleType;
    }
.end annotation


# static fields
.field private static final sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mAdjustViewBounds:Z

.field private mAlpha:I

.field private mBaselineAligned:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMod:Z

.field private mCropToPadding:Z

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mHaveFrame:Z

.field private mLevel:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMergeState:Z

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mState:[I

.field private mTempDst:Landroid/graphics/RectF;

.field private mTempSrc:Landroid/graphics/RectF;

.field private mUri:Landroid/net/Uri;

.field private mViewAlphaScale:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    .line 590
    new-array v0, v7, [Landroid/graphics/Matrix$ScaleToFit;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v6

    sput-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const v0, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    iput v1, p0, Landroid/widget/ImageView;->mResource:I

    .line 64
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 65
    iput-boolean v1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 66
    iput v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 67
    iput v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 71
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 72
    const/16 v0, 0x100

    iput v0, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 73
    iput-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 75
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    iput-object v2, p0, Landroid/widget/ImageView;->mState:[I

    .line 77
    iput-boolean v1, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 78
    iput v1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 81
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 85
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 89
    iput-boolean v1, p0, Landroid/widget/ImageView;->mBaselineAligned:Z

    .line 104
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x0

    const v5, 0x7fffffff

    const/4 v6, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput v6, p0, Landroid/widget/ImageView;->mResource:I

    .line 64
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 65
    iput-boolean v6, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 66
    iput v5, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 67
    iput v5, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 71
    const/16 v4, 0xff

    iput v4, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 72
    const/16 v4, 0x100

    iput v4, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 73
    iput-boolean v6, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 75
    iput-object v7, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    iput-object v7, p0, Landroid/widget/ImageView;->mState:[I

    .line 77
    iput-boolean v6, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 78
    iput v6, p0, Landroid/widget/ImageView;->mLevel:I

    .line 81
    iput-object v7, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 84
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 85
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 89
    iput-boolean v6, p0, Landroid/widget/ImageView;->mBaselineAligned:Z

    .line 113
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 115
    sget-object v4, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 119
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_0
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ImageView;->mBaselineAligned:Z

    .line 126
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 130
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 133
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 136
    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 137
    .local v2, index:I
    if-ltz v2, :cond_1

    .line 138
    sget-object v4, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 141
    :cond_1
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 142
    .local v3, tint:I
    if-eqz v3, :cond_2

    .line 143
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 146
    :cond_2
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 149
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    return-void
.end method

.method private applyColorMod()V
    .locals 3

    .prologue
    .line 940
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 942
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 943
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/ImageView;->mAlpha:I

    iget v2, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    mul-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 945
    :cond_0
    return-void
.end method

.method private configureBounds()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f00

    .line 747
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    if-nez v8, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 752
    .local v1, dwidth:I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 754
    .local v0, dheight:I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v7, v8, v9

    .line 755
    .local v7, vwidth:I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v6, v8, v9

    .line 757
    .local v6, vheight:I
    if-ltz v1, :cond_2

    if-ne v7, v1, :cond_5

    :cond_2
    if-ltz v0, :cond_3

    if-ne v6, v0, :cond_5

    :cond_3
    const/4 v8, 0x1

    move v4, v8

    .line 760
    .local v4, fits:Z
    :goto_1
    if-lez v1, :cond_4

    if-lez v0, :cond_4

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_6

    .line 764
    :cond_4
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10, v10, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 765
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .end local v4           #fits:Z
    :cond_5
    move v4, v10

    .line 757
    goto :goto_1

    .line 769
    .restart local v4       #fits:Z
    :cond_6
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10, v10, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 771
    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_8

    .line 773
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 774
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 776
    :cond_7
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 778
    :cond_8
    if-eqz v4, :cond_9

    .line 780
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 781
    :cond_9
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_a

    .line 783
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 784
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    sub-int v9, v7, v1

    int-to-float v9, v9

    mul-float/2addr v9, v11

    add-float/2addr v9, v11

    float-to-int v9, v9

    int-to-float v9, v9

    sub-int v10, v6, v0

    int-to-float v10, v10

    mul-float/2addr v10, v11

    add-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 786
    :cond_a
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_c

    .line 787
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 790
    const/4 v2, 0x0

    .local v2, dx:F
    const/4 v3, 0x0

    .line 792
    .local v3, dy:F
    mul-int v8, v1, v6

    mul-int v9, v7, v0

    if-le v8, v9, :cond_b

    .line 793
    int-to-float v8, v6

    int-to-float v9, v0

    div-float v5, v8, v9

    .line 794
    .local v5, scale:F
    int-to-float v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v2, v8, v11

    .line 800
    :goto_2
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 801
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    add-float v9, v2, v11

    float-to-int v9, v9

    int-to-float v9, v9

    add-float v10, v3, v11

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 796
    .end local v5           #scale:F
    :cond_b
    int-to-float v8, v7

    int-to-float v9, v1

    div-float v5, v8, v9

    .line 797
    .restart local v5       #scale:F
    int-to-float v8, v6

    int-to-float v9, v0

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v3, v8, v11

    goto :goto_2

    .line 802
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v5           #scale:F
    :cond_c
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_e

    .line 803
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 808
    if-gt v1, v7, :cond_d

    if-gt v0, v6, :cond_d

    .line 809
    const/high16 v5, 0x3f80

    .line 815
    .restart local v5       #scale:F
    :goto_3
    int-to-float v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float/2addr v8, v11

    add-float/2addr v8, v11

    float-to-int v8, v8

    int-to-float v2, v8

    .line 816
    .restart local v2       #dx:F
    int-to-float v8, v6

    int-to-float v9, v0

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float/2addr v8, v11

    add-float/2addr v8, v11

    float-to-int v8, v8

    int-to-float v3, v8

    .line 818
    .restart local v3       #dy:F
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 819
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 811
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v5           #scale:F
    :cond_d
    int-to-float v8, v7

    int-to-float v9, v1

    div-float/2addr v8, v9

    int-to-float v9, v6

    int-to-float v10, v0

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .restart local v5       #scale:F
    goto :goto_3

    .line 822
    .end local v5           #scale:F
    :cond_e
    iget-object v8, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v9, v1

    int-to-float v10, v0

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 823
    iget-object v8, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    int-to-float v9, v7

    int-to-float v10, v6

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 825
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 826
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget-object v10, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    iget-object v11, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v11}, Landroid/widget/ImageView;->scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0
.end method

.method private initImageView()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 156
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 157
    return-void
.end method

.method private resizeFromDrawable()V
    .locals 4

    .prologue
    .line 576
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 577
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 578
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 579
    .local v2, w:I
    if-gez v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 580
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 581
    .local v1, h:I
    if-gez v1, :cond_1

    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 582
    :cond_1
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v3, :cond_3

    .line 583
    :cond_2
    iput v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 584
    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 585
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 588
    .end local v1           #h:I
    .end local v2           #w:I
    :cond_3
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .locals 4
    .parameter "desiredSize"
    .parameter "maxSize"
    .parameter "measureSpec"

    .prologue
    .line 714
    move v0, p1

    .line 715
    .local v0, result:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 716
    .local v1, specMode:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 717
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 735
    :goto_0
    return v0

    .line 722
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 723
    goto :goto_0

    .line 728
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 729
    goto :goto_0

    .line 732
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 717
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private resolveUri()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const-string v9, "Unable to open content: "

    const-string v7, "ImageView"

    .line 488
    iget-object v5, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 493
    .local v3, rsrc:Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 497
    const/4 v0, 0x0

    .line 499
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v5, p0, Landroid/widget/ImageView;->mResource:I

    if-eqz v5, :cond_3

    .line 501
    :try_start_0
    iget v5, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 541
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 502
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 503
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    iput-object v8, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 507
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v5, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 508
    iget-object v5, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 509
    .local v4, scheme:Ljava/lang/String;
    const-string v5, "android.resource"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 512
    :try_start_1
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v2

    .line 514
    .local v2, r:Landroid/content/ContentResolver$OpenResourceIdResult;
    iget-object v5, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v6, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 531
    .end local v2           #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    :goto_2
    if-nez v0, :cond_2

    .line 532
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resolveUri failed on bad bitmap uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 535
    iput-object v8, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 515
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 516
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "ImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 518
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    const-string v5, "content"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "file"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 521
    :cond_5
    :try_start_2
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_2

    .line 524
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 525
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "ImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 528
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    iget-object v5, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private static scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .locals 3
    .parameter "st"

    .prologue
    .line 599
    sget-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    iget v1, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 557
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 559
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 561
    :cond_0
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 562
    if-eqz p1, :cond_2

    .line 563
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 564
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 567
    :cond_1
    iget v0, p0, Landroid/widget/ImageView;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 568
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 569
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 570
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 571
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 573
    :cond_2
    return-void
.end method


# virtual methods
.method public final clearColorFilter()V
    .locals 1

    .prologue
    .line 908
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 909
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 834
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 835
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 836
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 839
    :cond_0
    return-void
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAligned:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "dr"

    .prologue
    .line 166
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 546
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    if-nez v0, :cond_0

    .line 547
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 551
    :goto_0
    return-object v0

    .line 548
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    if-nez v0, :cond_1

    .line 549
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    goto :goto_0

    .line 551
    :cond_1
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ImageView;->mState:[I

    invoke-static {v0, v1}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    move-result-object v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 843
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 845
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eqz v3, :cond_0

    .line 853
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-nez v3, :cond_2

    .line 854
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 856
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 857
    .local v0, saveCount:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 859
    iget-boolean v3, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eqz v3, :cond_3

    .line 860
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 861
    .local v1, scrollX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 862
    .local v2, scrollY:I
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/view/View;->mRight:I

    add-int/2addr v5, v1

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v6, v2

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 867
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_3
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 869
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_4

    .line 870
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 872
    :cond_4
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 873
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 25
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 604
    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 609
    const/4 v5, 0x0

    .line 612
    .local v5, desiredAspect:F
    const/16 v17, 0x0

    .line 615
    .local v17, resizeWidth:Z
    const/16 v16, 0x0

    .line 617
    .local v16, resizeHeight:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 619
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 620
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 621
    const/4 v7, 0x0

    .local v7, h:I
    move/from16 v18, v7

    .line 642
    .local v18, w:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v13, v0

    .line 643
    .local v13, pleft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v14, v0

    .line 644
    .local v14, pright:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v15, v0

    .line 645
    .local v15, ptop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v12, v0

    .line 650
    .local v12, pbottom:I
    if-nez v17, :cond_1

    if-eqz v16, :cond_9

    .line 657
    :cond_1
    add-int v21, v18, v13

    add-int v21, v21, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v19

    .line 661
    .local v19, widthSize:I
    add-int v21, v7, v15

    add-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v8

    .line 664
    .local v8, heightSize:I
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-eqz v21, :cond_3

    .line 666
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-int v22, v8, v15

    sub-int v22, v22, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v4, v21, v22

    .line 669
    .local v4, actualAspect:F
    sub-float v21, v4, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3e7ad7f29abcaf48L

    cmpl-double v21, v21, v23

    if-lez v21, :cond_3

    .line 671
    const/4 v6, 0x0

    .line 674
    .local v6, done:Z
    if-eqz v17, :cond_2

    .line 675
    sub-int v21, v8, v15

    sub-int v21, v21, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v13

    add-int v11, v21, v14

    .line 678
    .local v11, newWidth:I
    move v0, v11

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 679
    move/from16 v19, v11

    .line 680
    const/4 v6, 0x1

    .line 685
    .end local v11           #newWidth:I
    :cond_2
    if-nez v6, :cond_3

    if-eqz v16, :cond_3

    .line 686
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v15

    add-int v10, v21, v12

    .line 688
    .local v10, newHeight:I
    if-gt v10, v8, :cond_3

    .line 689
    move v8, v10

    .line 709
    .end local v4           #actualAspect:F
    .end local v6           #done:Z
    .end local v10           #newHeight:I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    .line 710
    return-void

    .line 623
    .end local v7           #h:I
    .end local v8           #heightSize:I
    .end local v12           #pbottom:I
    .end local v13           #pleft:I
    .end local v14           #pright:I
    .end local v15           #ptop:I
    .end local v18           #w:I
    .end local v19           #widthSize:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    move/from16 v18, v0

    .line 624
    .restart local v18       #w:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    move v7, v0

    .line 625
    .restart local v7       #h:I
    if-gtz v18, :cond_5

    const/16 v18, 0x1

    .line 626
    :cond_5
    if-gtz v7, :cond_6

    const/4 v7, 0x1

    .line 630
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 632
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 633
    .local v20, widthSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 635
    .local v9, heightSpecMode:I
    const/high16 v21, 0x4000

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    const/16 v21, 0x1

    move/from16 v17, v21

    .line 636
    :goto_2
    const/high16 v21, 0x4000

    move v0, v9

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    const/16 v21, 0x1

    move/from16 v16, v21

    .line 638
    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v5, v21, v22

    goto/16 :goto_0

    .line 635
    :cond_7
    const/16 v21, 0x0

    move/from16 v17, v21

    goto :goto_2

    .line 636
    :cond_8
    const/16 v21, 0x0

    move/from16 v16, v21

    goto :goto_3

    .line 699
    .end local v9           #heightSpecMode:I
    .end local v20           #widthSpecMode:I
    .restart local v12       #pbottom:I
    .restart local v13       #pleft:I
    .restart local v14       #pright:I
    .restart local v15       #ptop:I
    :cond_9
    add-int v21, v13, v14

    add-int v18, v18, v21

    .line 700
    add-int v21, v15, v12

    add-int v7, v7, v21

    .line 702
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumWidth()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 703
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumHeight()I

    move-result v21

    move v0, v7

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 705
    move/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/ImageView;->resolveSize(II)I

    move-result v19

    .line 706
    .restart local v19       #widthSize:I
    move v0, v7

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/ImageView;->resolveSize(II)I

    move-result v8

    .restart local v8       #heightSize:I
    goto/16 :goto_1
.end method

.method protected onSetAlpha(I)Z
    .locals 3
    .parameter "alpha"

    .prologue
    const/4 v2, 0x1

    .line 182
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 183
    shr-int/lit8 v1, p1, 0x7

    add-int v0, p1, v1

    .line 184
    .local v0, scale:I
    iget v1, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    if-eq v1, v0, :cond_0

    .line 185
    iput v0, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 186
    iput-boolean v2, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 187
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    :cond_0
    move v1, v2

    .line 191
    .end local v0           #scale:I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1
    .parameter "adjustViewBounds"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 204
    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 205
    if-eqz p1, :cond_0

    .line 206
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 208
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 927
    and-int/lit16 p1, p1, 0xff

    .line 928
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 929
    iput p1, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 930
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 931
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 932
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 934
    :cond_0
    return-void
.end method

.method public final setColorFilter(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 904
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 905
    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 892
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 893
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 917
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 918
    iput-object p1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 919
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 920
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 921
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 923
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 740
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 741
    .local v0, changed:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 742
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 743
    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 336
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 318
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 321
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 323
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 325
    :cond_0
    return-void
.end method

.method public setImageLevel(I)V
    .locals 1
    .parameter "level"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 362
    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 363
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 365
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 367
    :cond_0
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "matrix"

    .prologue
    .line 474
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    const/4 p1, 0x0

    .line 479
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 481
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 482
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 483
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 485
    :cond_3
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter "resId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    if-eq v0, p1, :cond_1

    .line 277
    :cond_0
    invoke-direct {p0, v1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    .line 279
    iput-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 280
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 281
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 282
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 284
    :cond_1
    return-void
.end method

.method public setImageState([IZ)V
    .locals 1
    .parameter "state"
    .parameter "merge"

    .prologue
    .line 340
    iput-object p1, p0, Landroid/widget/ImageView;->mState:[I

    .line 341
    iput-boolean p2, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 342
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 344
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 346
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 299
    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    .line 304
    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 305
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 306
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 307
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 309
    :cond_1
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .parameter "maxHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 251
    iput p1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 252
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter "maxWidth"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 229
    iput p1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 230
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .parameter "scaleType"

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 441
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 442
    iput-object p1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 444
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setWillNotCacheDrawing(Z)V

    .line 446
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 447
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 449
    :cond_1
    return-void

    .line 444
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 350
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 351
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 352
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 161
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
