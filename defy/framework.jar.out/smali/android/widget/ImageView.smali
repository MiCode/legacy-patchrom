.class public Landroid/widget/ImageView;
.super Landroid/view/View;
.source "ImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageView$1;,
        Landroid/widget/ImageView$CallbackRunnable;,
        Landroid/widget/ImageView$AnimatedGifDecoder;,
        Landroid/widget/ImageView$LoadImageDecoder;,
        Landroid/widget/ImageView$GifFrameAvailable;,
        Landroid/widget/ImageView$ImageDecoderReady;,
        Landroid/widget/ImageView$ScaleType;,
        Landroid/widget/ImageView$OnDecoderLoaded;
    }
.end annotation


# static fields
.field public static final PHOTO_FILL:I = 0x1

.field public static final PHOTO_OFF:I = 0x0

.field public static final PHOTO_ZOOM:I = 0x2

.field private static final sMultiplyPaint:Landroid/graphics/Paint;

.field private static final sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

.field private mAdjustViewBounds:Z

.field private mAlpha:I

.field private mAlternateImage:Landroid/graphics/Bitmap;

.field private mBaselineAligned:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMod:Z

.field private mCropToPadding:Z

.field private mDecoder:Landroid/widget/ImageDecoder;

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mHaveFrame:Z

.field private mIsMasked:Z

.field private mLevel:I

.field private mMaskDrawable:Landroid/graphics/drawable/Drawable;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMergeState:Z

.field private mPhotoMode:I

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mState:[I

.field private mStopReceived:Z

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

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/widget/ImageView;->sMultiplyPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/widget/ImageView;->sMultiplyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v0, Landroid/widget/ImageView;->sMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Landroid/widget/ImageView;->sMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

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

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v1, p0, Landroid/widget/ImageView;->mResource:I

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    iput-boolean v1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    iput v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    iput v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/ImageView;->mAlpha:I

    const/16 v0, 0x100

    iput v0, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    iput-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

    iput-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/widget/ImageView;->mState:[I

    iput-boolean v1, p0, Landroid/widget/ImageView;->mMergeState:Z

    iput v1, p0, Landroid/widget/ImageView;->mLevel:I

    iput-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    iput-boolean v1, p0, Landroid/widget/ImageView;->mBaselineAligned:Z

    iput-object v2, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Landroid/widget/ImageView;->mIsMasked:Z

    iput-object v2, p0, Landroid/widget/ImageView;->mDecoder:Landroid/widget/ImageDecoder;

    iput-object v2, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    iput-object v2, p0, Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Landroid/widget/ImageView;->mAlternateImage:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Landroid/widget/ImageView;->mStopReceived:Z

    iput v1, p0, Landroid/widget/ImageView;->mPhotoMode:I

    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v7, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v6, p0, Landroid/widget/ImageView;->mResource:I

    iput-boolean v6, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    iput-boolean v6, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    iput v7, p0, Landroid/widget/ImageView;->mMaxWidth:I

    iput v7, p0, Landroid/widget/ImageView;->mMaxHeight:I

    const/16 v4, 0xff

    iput v4, p0, Landroid/widget/ImageView;->mAlpha:I

    const/16 v4, 0x100

    iput v4, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    iput-boolean v6, p0, Landroid/widget/ImageView;->mColorMod:Z

    iput-object v5, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Landroid/widget/ImageView;->mState:[I

    iput-boolean v6, p0, Landroid/widget/ImageView;->mMergeState:Z

    iput v6, p0, Landroid/widget/ImageView;->mLevel:I

    iput-object v5, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    iput-boolean v6, p0, Landroid/widget/ImageView;->mBaselineAligned:Z

    iput-object v5, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v6, p0, Landroid/widget/ImageView;->mIsMasked:Z

    iput-object v5, p0, Landroid/widget/ImageView;->mDecoder:Landroid/widget/ImageDecoder;

    iput-object v5, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    iput-object v5, p0, Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;

    iput-object v5, p0, Landroid/widget/ImageView;->mAlternateImage:Landroid/graphics/Bitmap;

    iput-boolean v6, p0, Landroid/widget/ImageView;->mStopReceived:Z

    iput v6, p0, Landroid/widget/ImageView;->mPhotoMode:I

    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    sget-object v4, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ImageView;->mBaselineAligned:Z

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .local v2, index:I
    if-ltz v2, :cond_1

    sget-object v4, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .local v3, tint:I
    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/ImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/ImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/ImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/ImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/ImageView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/ImageView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/ImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/widget/ImageView;->mStopReceived:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/ImageView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/ImageView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/ImageView;->mAlternateImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/ImageView;)Landroid/widget/ImageView$AnimatedGifDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    return-object v0
.end method

.method static synthetic access$502(Landroid/widget/ImageView;Landroid/widget/ImageView$AnimatedGifDecoder;)Landroid/widget/ImageView$AnimatedGifDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    return-object p1
.end method

.method static synthetic access$700(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/ImageView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private applyColorMod()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/ImageView;->mAlpha:I

    iget v2, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    mul-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private configureBounds()V
    .locals 23

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ImageView;->mHaveFrame:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    move v7, v0

    .local v7, dwidth:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    move v6, v0

    .local v6, dheight:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v17, v18, v19

    .local v17, vwidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v19, v0

    sub-int v16, v18, v19

    .local v16, vheight:I
    if-ltz v7, :cond_2

    move/from16 v0, v17

    move v1, v7

    if-ne v0, v1, :cond_5

    :cond_2
    if-ltz v6, :cond_3

    move/from16 v0, v16

    move v1, v6

    if-ne v0, v1, :cond_5

    :cond_3
    const/16 v18, 0x1

    move/from16 v10, v18

    .local v10, fits:Z
    :goto_1
    if-lez v7, :cond_4

    if-lez v6, :cond_4

    sget-object v18, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    :goto_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->configureMask()V

    goto :goto_0

    .end local v10           #fits:Z
    :cond_5
    const/16 v18, 0x0

    move/from16 v10, v18

    goto :goto_1

    .restart local v10       #fits:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mPhotoMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move v3, v7

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v12, 0x0

    .local v12, left:I
    const/4 v15, 0x0

    .local v15, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .local v11, img:Landroid/graphics/Bitmap;
    mul-int v18, v7, v16

    mul-int v19, v17, v6

    sub-int v5, v18, v19

    .local v5, aspectDiff:I
    if-lez v5, :cond_8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    .local v14, scale:F
    move v0, v7

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v14

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object v0, v11

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/motorola/android/graphics/SmartCrop;->cropWidth(Landroid/graphics/Bitmap;I)I

    move-result v12

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mPhotoMode:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/high16 v18, 0x3f80

    cmpg-float v18, v14, v18

    if-gez v18, :cond_7

    new-instance v13, Landroid/graphics/Rect;

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v18, v14

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v18, v18, v12

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v19, v19, v15

    move-object v0, v13

    move v1, v12

    move v2, v15

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v13, r:Landroid/graphics/Rect;
    move-object v0, v11

    move-object v1, v13

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/graphics/SmartCrop;->zoom(Landroid/graphics/Bitmap;Landroid/graphics/Rect;II)V

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    iget v12, v13, Landroid/graphics/Rect;->left:I

    iget v15, v13, Landroid/graphics/Rect;->top:I

    .end local v13           #r:Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v14

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move v0, v12

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move v0, v15

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_2

    .end local v14           #scale:F
    :cond_8
    if-gez v5, :cond_9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    .restart local v14       #scale:F
    move v0, v6

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v14

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object v0, v11

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/motorola/android/graphics/SmartCrop;->cropHeight(Landroid/graphics/Bitmap;I)I

    move-result v15

    goto/16 :goto_3

    .end local v14           #scale:F
    :cond_9
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    .restart local v14       #scale:F
    goto/16 :goto_3

    .end local v5           #aspectDiff:I
    .end local v11           #img:Landroid/graphics/Bitmap;
    .end local v12           #left:I
    .end local v14           #scale:F
    .end local v15           #top:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move v3, v7

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v18, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_2

    :cond_c
    if-eqz v10, :cond_d

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_2

    :cond_d
    sget-object v18, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    sub-int v19, v17, v7

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    mul-float v19, v19, v20

    const/high16 v20, 0x3f00

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-int v20, v16, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f00

    mul-float v20, v20, v21

    const/high16 v21, 0x3f00

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/16 :goto_2

    :cond_e
    sget-object v18, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    .local v8, dx:F
    const/4 v9, 0x0

    .local v9, dy:F
    mul-int v18, v7, v16

    mul-int v19, v17, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    .restart local v14       #scale:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    sub-float v18, v18, v19

    const/high16 v19, 0x3f00

    mul-float v8, v18, v19

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v14

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f00

    add-float v19, v19, v8

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    add-float v20, v20, v9

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_2

    .end local v14           #scale:F
    :cond_f
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    .restart local v14       #scale:F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    sub-float v18, v18, v19

    const/high16 v19, 0x3f00

    mul-float v9, v18, v19

    goto :goto_4

    .end local v8           #dx:F
    .end local v9           #dy:F
    .end local v14           #scale:F
    :cond_10
    sget-object v18, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move v0, v7

    move/from16 v1, v17

    if-gt v0, v1, :cond_11

    move v0, v6

    move/from16 v1, v16

    if-gt v0, v1, :cond_11

    const/high16 v14, 0x3f80

    .restart local v14       #scale:F
    :goto_5
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    sub-float v18, v18, v19

    const/high16 v19, 0x3f00

    mul-float v18, v18, v19

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v8, v0

    .restart local v8       #dx:F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    sub-float v18, v18, v19

    const/high16 v19, 0x3f00

    mul-float v18, v18, v19

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v9, v0

    .restart local v9       #dy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v14

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v8

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_2

    .end local v8           #dx:F
    .end local v9           #dy:F
    .end local v14           #scale:F
    :cond_11
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .restart local v14       #scale:F
    goto :goto_5

    .end local v14           #scale:F
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move v0, v7

    int-to-float v0, v0

    move/from16 v21, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/widget/ImageView;->scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v21

    invoke-virtual/range {v18 .. v21}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2
.end method

.method private configureMask()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f00

    iget-object v4, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    iput-boolean v11, p0, Landroid/widget/ImageView;->mIsMasked:Z

    const/4 v1, 0x0

    .local v1, left:I
    const/4 v3, 0x0

    .local v3, top:I
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .local v2, right:I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .local v0, bottom:I
    iget-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v3

    int-to-float v7, v2

    int-to-float v8, v0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v9

    float-to-int v1, v4

    iget-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v9

    float-to-int v3, v4

    iget-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v9

    float-to-int v2, v4

    iget-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v9

    float-to-int v0, v4

    :cond_0
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v4, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v3           #top:I
    :goto_0
    iget-boolean v4, p0, Landroid/widget/ImageView;->mIsMasked:Z

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    iget-boolean v4, p0, Landroid/widget/ImageView;->mIsMasked:Z

    if-nez v4, :cond_2

    move v4, v11

    :goto_1
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setWillNotCacheDrawing(Z)V

    const/high16 v4, 0x10

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setDrawingCacheQuality(I)V

    return-void

    :cond_1
    iput-boolean v10, p0, Landroid/widget/ImageView;->mIsMasked:Z

    goto :goto_0

    :cond_2
    move v4, v10

    goto :goto_1
.end method

.method private initImageView()V
    .locals 1

    .prologue
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method private resizeFromDrawable()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .local v2, w:I
    if-gez v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .local v1, h:I
    if-gez v1, :cond_1

    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    :cond_1
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v3, :cond_3

    :cond_2
    iput v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

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
    move v0, p1

    .local v0, result:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .local v1, specMode:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    move v0, v2

    goto :goto_0

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

    iget-object v5, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, rsrc:Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v5, p0, Landroid/widget/ImageView;->mResource:I

    if-eqz v5, :cond_3

    :try_start_0
    iget v5, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v1, v5

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

    iput-object v8, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v5, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .local v4, scheme:Ljava/lang/String;
    const-string v5, "android.resource"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :try_start_1
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v2

    .local v2, r:Landroid/content/ContentResolver$OpenResourceIdResult;
    iget-object v5, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v6, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .end local v2           #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    :goto_2
    if-nez v0, :cond_2

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolveUri failed on bad bitmap uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-object v8, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    goto :goto_1

    :catch_1
    move-exception v5

    move-object v1, v5

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

    :catch_2
    move-exception v5

    move-object v1, v5

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
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget v0, p0, Landroid/widget/ImageView;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final clearColorFilter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getBaseline()I
    .locals 1

    .prologue
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
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "dr"

    .prologue
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    goto :goto_0

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
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .end local p0
    :cond_0
    :goto_0
    return-void

    .restart local p0
    :cond_1
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/ImageView;->mIsMasked:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView;->sMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .restart local p0
    :cond_2
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .local v0, saveCount:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v3, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eqz v3, :cond_4

    iget v1, p0, Landroid/view/View;->mScrollX:I

    .local v1, scrollX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

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

    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_4
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v3, p0, Landroid/widget/ImageView;->mIsMasked:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    sget-object v5, Landroid/widget/ImageView;->sMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .end local p0
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .restart local p0
    :cond_5
    iget-object p0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView;->sMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .restart local p0
    :cond_6
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_7
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 25
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->resolveUri()V

    const/4 v5, 0x0

    .local v5, desiredAspect:F
    const/16 v17, 0x0

    .local v17, resizeWidth:Z
    const/16 v16, 0x0

    .local v16, resizeHeight:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ImageView;->mDrawableWidth:I

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ImageView;->mDrawableHeight:I

    const/4 v7, 0x0

    .local v7, h:I
    move/from16 v18, v7

    .local v18, w:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v13, v0

    .local v13, pleft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v14, v0

    .local v14, pright:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v15, v0

    .local v15, ptop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v12, v0

    .local v12, pbottom:I
    if-nez v17, :cond_1

    if-eqz v16, :cond_9

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

    .local v8, heightSize:I
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-eqz v21, :cond_3

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

    const/4 v6, 0x0

    .local v6, done:Z
    if-eqz v17, :cond_2

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

    .local v11, newWidth:I
    move v0, v11

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    move/from16 v19, v11

    const/4 v6, 0x1

    .end local v11           #newWidth:I
    :cond_2
    if-nez v6, :cond_3

    if-eqz v16, :cond_3

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

    .local v10, newHeight:I
    if-gt v10, v8, :cond_3

    move v8, v10

    .end local v4           #actualAspect:F
    .end local v6           #done:Z
    .end local v10           #newHeight:I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void

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

    .restart local v18       #w:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    move v7, v0

    .restart local v7       #h:I
    if-gtz v18, :cond_5

    const/16 v18, 0x1

    :cond_5
    if-gtz v7, :cond_6

    const/4 v7, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .local v20, widthSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .local v9, heightSpecMode:I
    const/high16 v21, 0x4000

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    const/16 v21, 0x1

    move/from16 v17, v21

    :goto_2
    const/high16 v21, 0x4000

    move v0, v9

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    const/16 v21, 0x1

    move/from16 v16, v21

    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v5, v21, v22

    goto/16 :goto_0

    :cond_7
    const/16 v21, 0x0

    move/from16 v17, v21

    goto :goto_2

    :cond_8
    const/16 v21, 0x0

    move/from16 v16, v21

    goto :goto_3

    .end local v9           #heightSpecMode:I
    .end local v20           #widthSpecMode:I
    .restart local v12       #pbottom:I
    .restart local v13       #pleft:I
    .restart local v14       #pright:I
    .restart local v15       #ptop:I
    :cond_9
    add-int v21, v13, v14

    add-int v18, v18, v21

    add-int v21, v15, v12

    add-int v7, v7, v21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumWidth()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumHeight()I

    move-result v21

    move v0, v7

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/ImageView;->resolveSize(II)I

    move-result v19

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

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    shr-int/lit8 v1, p1, 0x7

    add-int v0, p1, v1

    .local v0, scale:I
    iget v1, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    iput-boolean v2, p0, Landroid/widget/ImageView;->mColorMod:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    :cond_0
    move v1, v2

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
    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    if-eqz p1, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    and-int/lit16 p1, p1, 0xff

    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/ImageView;->mAlpha:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setColorFilter(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter "color"
    .parameter "mode"

    .prologue
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

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
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .local v0, changed:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImageLevel(I)V
    .locals 1
    .parameter "level"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    :cond_0
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "matrix"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

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

    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

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

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    iput-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setImageState([IZ)V
    .locals 1
    .parameter "state"
    .parameter "merge"

    .prologue
    iput-object p1, p0, Landroid/widget/ImageView;->mState:[I

    iput-boolean p2, p0, Landroid/widget/ImageView;->mMergeState:Z

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
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

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setMaskResource(I)V
    .locals 2
    .parameter "resId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-direct {p0}, Landroid/widget/ImageView;->configureMask()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    iget-object v0, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMaxHeight(I)V
    .locals 0
    .parameter "maxHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter "maxWidth"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    return-void
.end method

.method public setPhotoMode(I)V
    .locals 1
    .parameter "mode"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget v0, p0, Landroid/widget/ImageView;->mPhotoMode:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroid/widget/ImageView;->mPhotoMode:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .parameter "scaleType"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    return-void
.end method

.method public startAnimation(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 6
    .parameter "uri"
    .parameter "mimeType"
    .parameter "alternateImage"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v5, "ImageView"

    const-string v2, "image/gif"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "ImageView"

    const-string v2, "Suports only gif or Earlier animation not stopped"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :goto_0
    return v2

    :cond_1
    const-string v2, "ImageView"

    const-string v2, "Start animation"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Landroid/widget/ImageView;->mStopReceived:Z

    iget-object v2, p0, Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;

    :cond_2
    iput-object p3, p0, Landroid/widget/ImageView;->mAlternateImage:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .local v0, callback:Landroid/widget/ImageView$OnDecoderLoaded;
    new-instance v0, Landroid/widget/ImageView$ImageDecoderReady;

    .end local v0           #callback:Landroid/widget/ImageView$OnDecoderLoaded;
    invoke-direct {v0, p0, v4}, Landroid/widget/ImageView$ImageDecoderReady;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView$1;)V

    .restart local v0       #callback:Landroid/widget/ImageView$OnDecoderLoaded;
    new-instance v1, Landroid/widget/ImageView$LoadImageDecoder;

    invoke-direct {v1, p0, v4}, Landroid/widget/ImageView$LoadImageDecoder;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView$1;)V

    .local v1, loadDecoder:Landroid/widget/ImageView$LoadImageDecoder;
    invoke-virtual {v1, p1, v0}, Landroid/widget/ImageView$LoadImageDecoder;->init(Landroid/net/Uri;Landroid/widget/ImageView$OnDecoderLoaded;)V

    invoke-virtual {v1}, Landroid/widget/ImageView$LoadImageDecoder;->start()V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    const-string v0, "ImageView"

    const-string v1, "Stop Animation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mStopReceived:Z

    iget-object v0, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    invoke-virtual {v0}, Landroid/widget/ImageView$AnimatedGifDecoder;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
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
