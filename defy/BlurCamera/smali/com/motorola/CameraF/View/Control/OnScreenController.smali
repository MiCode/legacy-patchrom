.class public abstract Lcom/motorola/CameraF/View/Control/OnScreenController;
.super Landroid/widget/RelativeLayout;
.source "OnScreenController.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "MotoOnScreenControllerBasic"

.field protected static mDisplayHeight:I

.field protected static mDisplayOrientation:I

.field protected static mDisplayWidth:I


# instance fields
.field protected mMainContext:Landroid/content/Context;

.field protected mMainHandler:Landroid/os/Handler;

.field protected mRecordingIndicatorView:Landroid/widget/ImageView;

.field protected mRecordingTimeView:Landroid/widget/TextView;

.field protected mRemainText:Landroid/widget/TextView;

.field protected mRightSet:Landroid/view/View;

.field protected mShowing:Z

.field protected mTagsSet:Landroid/view/View;

.field protected mThinBarImage:Landroid/view/View;

.field protected mZoomBar:Landroid/widget/ProgressBar;

.field protected mleftStatusSet:Landroid/view/View;

.field protected mshowRemainTime:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput v0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mDisplayWidth:I

    .line 51
    sput v0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mDisplayHeight:I

    .line 52
    sput v0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mDisplayOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mShowing:Z

    .line 69
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mShowing:Z

    .line 63
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mShowing:Z

    .line 57
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    .line 58
    return-void
.end method


# virtual methods
.method public abstract changeCaptureResource(I)V
.end method

.method public abstract getThumbImageView()Landroid/widget/ImageButton;
.end method

.method public abstract hideControllerPanel(Z)V
.end method

.method public abstract hideRemainText()V
.end method

.method public abstract hideRightSet()V
.end method

.method public abstract hideSceneDialog()V
.end method

.method public abstract hideStatusSet(Z)V
.end method

.method public abstract hideTopStatusSet()V
.end method

.method public abstract hideZoomControlSet()V
.end method

.method public abstract hideZoomSet()V
.end method

.method public abstract initZoomSet()V
.end method

.method public abstract isAdjusting()Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract needCenterVF()Z
.end method

.method public abstract rightSetFadeOut()V
.end method

.method public abstract setParams(Landroid/os/Handler;)V
.end method

.method public abstract setRecordButton(Z)V
.end method

.method public setRecordingTime(JI)V
    .locals 2
    .parameter "seconds"
    .parameter "color"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/motorola/CameraF/CameraGlobalTools;->format2Time(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method

.method public setRecordingTime(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    return-void
.end method

.method public setShowRemainTime(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mshowRemainTime:Z

    .line 198
    return-void
.end method

.method public abstract show()V
.end method

.method public abstract show(Z)V
.end method

.method public abstract showCameraCaptureControl(Z)V
.end method

.method public showRecordingIndicator(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mRecordingIndicatorView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mRecordingIndicatorView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showRecordingTime(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public abstract showRemainText()V
.end method

.method public showRemainTime()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mshowRemainTime:Z

    return v0
.end method

.method public abstract showRightSet()V
.end method

.method public abstract showTopStatusSet()V
.end method

.method public abstract showZoomControlSet()V
.end method

.method public abstract startZoom()V
.end method

.method public abstract toggleMediaControlsVisibility()V
.end method

.method public abstract touchZoomStatusUpdate()V
.end method

.method public abstract updateController()V
.end method

.method public abstract updateLocationText()V
.end method

.method public abstract updatePanoramaCaptureStatus(Z)V
.end method

.method public updateRemainText(Ljava/lang/String;Z)V
    .locals 7
    .parameter "text"
    .parameter "video"

    .prologue
    const/high16 v6, -0x1

    const/4 v5, -0x1

    .line 119
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoOnScreenControllerBasic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRemainText() - Enter; text is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mRemainText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    if-nez p1, :cond_2

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 126
    const-string p1, "0"

    .line 129
    :cond_3
    if-eqz p2, :cond_5

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_4

    .line 133
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mRemainText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    :goto_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 142
    .local v0, recordTime:J
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mRemainText:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/motorola/CameraF/CameraGlobalTools;->format2Time(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    .end local v0           #recordTime:J
    :cond_4
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mRemainText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 147
    :cond_5
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mRemainText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_6

    .line 151
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mRemainText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 155
    :cond_6
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenController;->mRemainText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public abstract updateStatusIcons()V
.end method

.method public abstract updateThumbnail(Landroid/graphics/Bitmap;I)V
.end method

.method public abstract updateZoom()V
.end method

.method public abstract updateZoom(I)V
.end method
