.class public Lcom/motorola/CameraF/View/FocusView;
.super Landroid/view/View;
.source "FocusView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FocusView"


# instance fields
.field private campabilityChecked:Z

.field private mFocusArea:Landroid/graphics/RectF;

.field private mFocusFail:Z

.field private mFocusFailImage:Landroid/graphics/Bitmap;

.field private mFocusRegion:Landroid/graphics/RectF;

.field private mFocused:Z

.field private mFocusedImage:Landroid/graphics/Bitmap;

.field private mLastLeft:F

.field private mLastTop:F

.field private mNonFocusedImage:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field mSelected:Z

.field private mSelectedFocusImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocused:Z

    .line 45
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->mSelected:Z

    .line 46
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusFail:Z

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    .line 50
    iput v1, p0, Lcom/motorola/CameraF/View/FocusView;->mLastLeft:F

    .line 51
    iput v1, p0, Lcom/motorola/CameraF/View/FocusView;->mLastTop:F

    .line 52
    iput-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    .line 53
    iput-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    .line 54
    iput-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    .line 55
    iput-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mPaint:Landroid/graphics/Paint;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->campabilityChecked:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocused:Z

    .line 45
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->mSelected:Z

    .line 46
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusFail:Z

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    .line 50
    iput v1, p0, Lcom/motorola/CameraF/View/FocusView;->mLastLeft:F

    .line 51
    iput v1, p0, Lcom/motorola/CameraF/View/FocusView;->mLastTop:F

    .line 52
    iput-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    .line 53
    iput-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    .line 54
    iput-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    .line 55
    iput-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mPaint:Landroid/graphics/Paint;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->campabilityChecked:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocused:Z

    .line 45
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->mSelected:Z

    .line 46
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusFail:Z

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    .line 50
    iput v1, p0, Lcom/motorola/CameraF/View/FocusView;->mLastLeft:F

    .line 51
    iput v1, p0, Lcom/motorola/CameraF/View/FocusView;->mLastTop:F

    .line 52
    iput-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    .line 53
    iput-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    .line 54
    iput-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    .line 55
    iput-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mPaint:Landroid/graphics/Paint;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->campabilityChecked:Z

    .line 69
    return-void
.end method


# virtual methods
.method public getFocusArea()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getFocusAreaForHal()Landroid/graphics/Rect;
    .locals 9

    .prologue
    const/high16 v8, 0x3fc0

    .line 116
    iget-object v4, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v0, v4, v5

    .line 117
    .local v0, tempLeft:F
    iget-object v4, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v3, v4, v5

    .line 122
    .local v3, tempTop:F
    iget-boolean v4, p0, Lcom/motorola/CameraF/View/FocusView;->campabilityChecked:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 124
    iget-object v4, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v4, v3, v4

    const/high16 v5, 0x43f0

    mul-float v3, v4, v5

    .line 125
    iget-object v4, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x3ffb333333333333L

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3fb999999999999aL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 127
    iget-object v4, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v0, v4

    const/high16 v5, 0x4454

    mul-float v0, v4, v5

    .line 133
    :goto_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusViewWidth()F

    move-result v4

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusViewHeight()F

    move-result v5

    mul-float/2addr v5, v8

    add-float/2addr v5, v3

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 139
    .local v2, tempRegionF:Landroid/graphics/RectF;
    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 142
    .local v1, tempRegion:Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 144
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    .line 145
    const-string v4, "FocusView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFocusAreaForHal, left = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " top = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " right = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bottom = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    return-object v1

    .line 131
    .end local v1           #tempRegion:Landroid/graphics/Rect;
    .end local v2           #tempRegionF:Landroid/graphics/RectF;
    :cond_1
    iget-object v4, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v0, v4

    const/high16 v5, 0x4420

    mul-float v0, v4, v5

    goto :goto_0

    .line 137
    :cond_2
    new-instance v2, Landroid/graphics/RectF;

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusViewWidth()F

    move-result v4

    add-float/2addr v4, v0

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusViewHeight()F

    move-result v5

    add-float/2addr v5, v3

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v2       #tempRegionF:Landroid/graphics/RectF;
    goto :goto_1
.end method

.method public getFocusRegion()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public initFocusView()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const-string v6, "hasAlpha = "

    const-string v5, " getConfig = "

    const-string v3, "FocusView"

    .line 193
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 195
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 196
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 198
    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 201
    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 202
    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020032

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020035

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020033

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    .line 221
    :cond_3
    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    .line 224
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020034

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    .line 227
    :cond_4
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    .line 228
    const-string v1, "FocusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in initFocusView, mFocusedImage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v1, "FocusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in initFocusView, mFocusFailImage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v1, "FocusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in initFocusView, mNonFocusedImage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v1, "FocusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in initFocusView, mFocusedImage.width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mFocusedImage.height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hasAlpha = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getConfig = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v1, "FocusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in initFocusView, mNonFocusedImage.width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mNonFocusedImage.height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hasAlpha = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getConfig = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v1, "FocusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in initFocusView, mSelectedFocusImage.width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mSelectedFocusImage.height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hasAlpha = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getConfig = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_5
    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    .line 239
    :cond_6
    const/4 v1, 0x0

    .line 241
    :goto_0
    return v1

    :cond_7
    move v1, v4

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v1, 0x1

    .line 248
    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 250
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocused:Z

    if-ne v0, v1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/motorola/CameraF/View/FocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 267
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 268
    return-void

    .line 254
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->mSelected:Z

    if-ne v0, v1, :cond_2

    .line 256
    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/motorola/CameraF/View/FocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 258
    :cond_2
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusFail:Z

    if-ne v0, v1, :cond_3

    .line 260
    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/CameraF/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/motorola/CameraF/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/CameraF/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/motorola/CameraF/View/FocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/motorola/CameraF/View/FocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 166
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 167
    .local v1, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 169
    .local v0, heightSize:I
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 170
    const-string v2, "FocusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeasure width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 176
    return-void
.end method

.method public resetFocusArea()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 181
    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusViewWidth()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 182
    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusViewHeight()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 183
    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusViewWidth()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 184
    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusViewHeight()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 186
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "FocusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetFocusArea: left = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    return-void
.end method

.method public setFocusArea(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "focusRect"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iput-object p1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    .line 106
    :cond_0
    return-void
.end method

.method public setFocusRegion(Landroid/graphics/RectF;)V
    .locals 5
    .parameter "focusRect"

    .prologue
    const/high16 v4, 0x40a0

    const v3, 0x7f020033

    .line 74
    iput-object p1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    .line 76
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "FocusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusRegion FocusView width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setFocusViewWidth(F)V

    .line 80
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setFocusViewHeight(F)V

    .line 82
    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v1, 0x43f0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->campabilityChecked:Z

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v1, 0x43a0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->campabilityChecked:Z

    goto :goto_0
.end method

.method public updateFocusArea(ZZZ)V
    .locals 3
    .parameter "focused"
    .parameter "selected"
    .parameter "focusfail"

    .prologue
    const/high16 v2, 0x4040

    .line 152
    iget v0, p0, Lcom/motorola/CameraF/View/FocusView;->mLastLeft:F

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/motorola/CameraF/View/FocusView;->mLastTop:F

    iget-object v1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocused:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->mSelected:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusFail:Z

    if-eq v0, p3, :cond_1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/motorola/CameraF/View/FocusView;->mLastLeft:F

    .line 155
    iget-object v0, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/motorola/CameraF/View/FocusView;->mLastTop:F

    .line 156
    iput-boolean p1, p0, Lcom/motorola/CameraF/View/FocusView;->mFocused:Z

    .line 157
    iput-boolean p2, p0, Lcom/motorola/CameraF/View/FocusView;->mSelected:Z

    .line 158
    iput-boolean p3, p0, Lcom/motorola/CameraF/View/FocusView;->mFocusFail:Z

    .line 159
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/FocusView;->invalidate()V

    .line 161
    :cond_1
    return-void
.end method
