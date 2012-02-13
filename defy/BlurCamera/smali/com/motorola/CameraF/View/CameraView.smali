.class public Lcom/motorola/CameraF/View/CameraView;
.super Landroid/view/SurfaceView;
.source "CameraView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MotoCameraSurfaceView"


# instance fields
.field private mAspectRatio:F

.field private mHorizontalTileSize:I

.field private mVerticalTileSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/16 v0, 0x10

    .line 57
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 51
    iput v0, p0, Lcom/motorola/CameraF/View/CameraView;->mHorizontalTileSize:I

    .line 52
    iput v0, p0, Lcom/motorola/CameraF/View/CameraView;->mVerticalTileSize:I

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v0, 0x10

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput v0, p0, Lcom/motorola/CameraF/View/CameraView;->mHorizontalTileSize:I

    .line 52
    iput v0, p0, Lcom/motorola/CameraF/View/CameraView;->mVerticalTileSize:I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v0, 0x10

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput v0, p0, Lcom/motorola/CameraF/View/CameraView;->mHorizontalTileSize:I

    .line 52
    iput v0, p0, Lcom/motorola/CameraF/View/CameraView;->mVerticalTileSize:I

    .line 77
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 105
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 106
    .local v3, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 109
    .local v1, heightSpecSize:I
    move v2, v3

    .line 110
    .local v2, width:I
    move v0, v1

    .line 114
    .local v0, height:I
    int-to-float v4, v0

    iget v5, p0, Lcom/motorola/CameraF/View/CameraView;->mAspectRatio:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 117
    invoke-virtual {p0, v2, v0}, Lcom/motorola/CameraF/View/CameraView;->setMeasuredDimension(II)V

    .line 119
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 3
    .parameter "aspectRatio"

    .prologue
    const-string v2, "MotoCameraSurfaceView"

    .line 86
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "MotoCameraSurfaceView"

    const-string v0, "setAspectRatio() - Enter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    iget v0, p0, Lcom/motorola/CameraF/View/CameraView;->mAspectRatio:F

    invoke-static {v0, p1}, Lcom/motorola/CameraF/CameraGlobalTools;->compareFloat(FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "MotoCameraSurfaceView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAspectRatio() - setting aspect ratio to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    iput p1, p0, Lcom/motorola/CameraF/View/CameraView;->mAspectRatio:F

    .line 94
    :cond_2
    return-void
.end method

.method public setAspectRatio(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 81
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/CameraView;->setAspectRatio(F)V

    .line 82
    return-void
.end method

.method public setTileSize(II)V
    .locals 1
    .parameter "horizontalTileSize"
    .parameter "verticalTileSize"

    .prologue
    .line 66
    iget v0, p0, Lcom/motorola/CameraF/View/CameraView;->mHorizontalTileSize:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/motorola/CameraF/View/CameraView;->mVerticalTileSize:I

    if-eq v0, p2, :cond_1

    .line 68
    :cond_0
    iput p1, p0, Lcom/motorola/CameraF/View/CameraView;->mHorizontalTileSize:I

    .line 69
    iput p2, p0, Lcom/motorola/CameraF/View/CameraView;->mVerticalTileSize:I

    .line 70
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/CameraView;->requestLayout()V

    .line 71
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/CameraView;->invalidate()V

    .line 73
    :cond_1
    return-void
.end method
