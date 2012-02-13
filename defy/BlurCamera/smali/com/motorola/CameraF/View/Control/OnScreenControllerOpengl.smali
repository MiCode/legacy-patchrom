.class public Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;
.super Lcom/motorola/CameraF/View/Control/OnScreenController;
.source "OnScreenControllerOpengl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$1;,
        Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;
    }
.end annotation


# static fields
.field private static final CLICK_TOUCH_THRESHOLD:I = 0x1e

.field public static final DefaultTimeout:I = 0x1388

.field private static final EFFECTS:I = 0x2

.field private static final FLASH:I = 0x3

.field private static final MODE:I = 0x4

.field public static final MSG_REQUESTRENDER:I = 0x3

.field public static final MSG_SCENECLICKED:I = 0x2

.field public static final MSG_SCENESCLOSED:I = 0x1

.field public static final MSG_SCENESELECTED:I = 0x0

.field private static final NOSETTING:I = 0x0

.field private static final SCENES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MotoOnScreenControllerOpenGL"


# instance fields
.field protected frameParams:Landroid/view/WindowManager$LayoutParams;

.field private mCaptureButton:Landroid/widget/ImageView;

.field private mCurrentEffect:I

.field private mCurrentFlash:I

.field private mCurrentMode:I

.field private mCurrentScenes:I

.field private mEffectIndicatorNum:I

.field private mEffectItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectsButton:Landroid/widget/Button;

.field private mFlashButton:Landroid/widget/Button;

.field private mFlashIcon:Landroid/widget/ImageView;

.field private mFlashLightTextID:I

.field private mFlashNum:I

.field private mFlashSet:Landroid/view/View;

.field private mFlashText:Landroid/widget/TextView;

.field private mFlashTextID:I

.field mImageCaptureMode:Ljava/lang/Boolean;

.field private mKeywordTagsView:Landroid/widget/TextView;

.field private mLocationTagsView:Landroid/widget/TextView;

.field private mLockRightSet:Z

.field private mModeButton:Landroid/widget/Button;

.field private mModeIndicatorNum:I

.field private mModeItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScreenMenuShowing:Z

.field private mPanCapturing:Z

.field private mRecording:Z

.field private mSceneFadeoutTime:I

.field private mSceneItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScenesButton:Landroid/widget/Button;

.field private mScenesDesc:Lcom/motorola/CameraF/View/TextChangeView;

.field private mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

.field private mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

.field private mScenesIndicatorNum:I

.field private mScenesSelectHandler:Landroid/os/Handler;

.field private mScenesSet:Landroid/widget/RelativeLayout;

.field private mScenesTextID:I

.field private mScenesTitle:Landroid/widget/TextView;

.field private mScenesTitleID:I

.field private mShowAlltimes:Z

.field private mShowSceneStatusIcon:Z

.field private mStatus:I

.field private mStatusLocationImg:Landroid/widget/ImageView;

.field private mStatusModeImg:Landroid/widget/ImageView;

.field private mStatusResolutionImg:Landroid/widget/ImageView;

.field private mStatusTagEnableImg:Landroid/widget/ImageView;

.field private mThumbnailImageView:Landroid/widget/ImageButton;

.field private mTouchRespond:Z

.field private mTranslateIn:Landroid/view/animation/AnimationSet;

.field private mTranslateOut:Landroid/view/animation/AnimationSet;

.field protected mWindowManager:Landroid/view/WindowManager;

.field private mX:F

.field private mY:F

.field private mZoomControlSet:Landroid/widget/LinearLayout;

.field private mZoomInButton:Landroid/widget/ImageView;

.field private mZoomOutButton:Landroid/widget/ImageView;

.field private trayDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/Control/OnScreenController;-><init>(Landroid/content/Context;)V

    .line 93
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTouchRespond:Z

    .line 94
    iput v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 103
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowAlltimes:Z

    .line 105
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    .line 107
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 110
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowSceneStatusIcon:Z

    .line 123
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 165
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    .line 176
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mSceneFadeoutTime:I

    .line 177
    new-instance v0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;-><init>(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$1;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSelectHandler:Landroid/os/Handler;

    .line 255
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainContext:Landroid/content/Context;

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/motorola/CameraF/View/Control/OnScreenController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTouchRespond:Z

    .line 94
    iput v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 103
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowAlltimes:Z

    .line 105
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    .line 107
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 110
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowSceneStatusIcon:Z

    .line 123
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 165
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    .line 176
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mSceneFadeoutTime:I

    .line 177
    new-instance v0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;-><init>(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$1;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSelectHandler:Landroid/os/Handler;

    .line 250
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainContext:Landroid/content/Context;

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/CameraF/View/Control/OnScreenController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTouchRespond:Z

    .line 94
    iput v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 103
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowAlltimes:Z

    .line 105
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    .line 107
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 110
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowSceneStatusIcon:Z

    .line 123
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 165
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    .line 176
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mSceneFadeoutTime:I

    .line 177
    new-instance v0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;-><init>(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$1;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSelectHandler:Landroid/os/Handler;

    .line 245
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainContext:Landroid/content/Context;

    .line 246
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->changeCurrentScenes(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mSceneFadeoutTime:I

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private addGLView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1108
    new-instance v0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    .line 1109
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v0, p0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1111
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 1112
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicatorNum:I

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setScenesNum(I)V

    .line 1113
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSelectHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setCallbackHandler(Landroid/os/Handler;)V

    .line 1114
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "before addView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1117
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/IndicatorView;->bringToFront()V

    .line 1118
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 1119
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesDesc:Lcom/motorola/CameraF/View/TextChangeView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/TextChangeView;->bringToFront()V

    .line 1121
    :cond_0
    return-void
.end method

.method private changeCurrentFlash(I)V
    .locals 3
    .parameter "currentFlash"

    .prologue
    .line 951
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 952
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    .line 963
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/motorola/CameraF/CameraGlobalTools;->getCenterFlashResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 964
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashLightTextID:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    return-void
.end method

.method private changeCurrentScenes(IZ)V
    .locals 7
    .parameter "currentScenes"
    .parameter "update"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v6, "MotoOnScreenControllerOpenGL"

    .line 1357
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1358
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "changeCurrentScenes() - Enter"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_0
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v3, :cond_5

    .line 1362
    iput p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentScenes:I

    .line 1363
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mSceneItemList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/IndicatorView;->setHighlighted(I)V

    .line 1365
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesDesc:Lcom/motorola/CameraF/View/TextChangeView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesTextID:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/TextChangeView;->setText(Ljava/lang/String;)V

    .line 1368
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentScene(I)V

    .line 1391
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 1393
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v5, :cond_7

    .line 1394
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1399
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    .line 1400
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "changeCurrentScenes() - Exit"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_4
    return-void

    .line 1370
    :cond_5
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v4, :cond_6

    .line 1372
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectItemList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/IndicatorView;->setHighlighted(I)V

    .line 1374
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesDesc:Lcom/motorola/CameraF/View/TextChangeView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/TextChangeView;->setText(Ljava/lang/String;)V

    .line 1377
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentEffect(I)V

    goto :goto_0

    .line 1379
    :cond_6
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v5, :cond_1

    .line 1381
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeItemList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/IndicatorView;->setHighlighted(I)V

    .line 1383
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesDesc:Lcom/motorola/CameraF/View/TextChangeView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/TextChangeView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1395
    :cond_7
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v4, :cond_3

    .line 1396
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private clearSelectedHandlerMsg()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSelectHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSelectHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    return-void
.end method

.method private initForMode()V
    .locals 4

    .prologue
    const v2, 0x7f07002c

    const/4 v1, 0x1

    const-string v3, "MotoOnScreenControllerOpenGL"

    .line 891
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 892
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "initForMode() - Enter"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 896
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->scene_num_c:I

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicatorNum:I

    .line 897
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->effect_num_c:I

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectIndicatorNum:I

    .line 898
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mode_num:I

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeIndicatorNum:I

    .line 899
    const v0, 0x7f07001d

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesTitleID:I

    .line 900
    const v0, 0x7f07001e

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesTextID:I

    .line 901
    const v0, 0x7f0b002a

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashTextID:I

    .line 902
    iput v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashLightTextID:I

    .line 903
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowSceneStatusIcon:Z

    .line 904
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashNum:I

    .line 905
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalType;->sceneListC:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mSceneItemList:Ljava/util/List;

    .line 906
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalType;->effectListC:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectItemList:Ljava/util/List;

    .line 907
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalType;->modeList:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeItemList:Ljava/util/List;

    .line 935
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 936
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "initForMode() - Exit"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_2
    return-void

    .line 909
    :cond_3
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 911
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->scene_num_v:I

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicatorNum:I

    .line 912
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->effect_num_v:I

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectIndicatorNum:I

    .line 913
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mode_num:I

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeIndicatorNum:I

    .line 914
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    if-eqz v0, :cond_4

    .line 916
    const v0, 0x7f070022

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesTitleID:I

    .line 917
    const v0, 0x7f070024

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesTextID:I

    .line 924
    :goto_1
    const v0, 0x7f0b002f

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashTextID:I

    .line 925
    iput v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashLightTextID:I

    .line 927
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowSceneStatusIcon:Z

    .line 929
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashNum:I

    .line 930
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalType;->sceneListV:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mSceneItemList:Ljava/util/List;

    .line 931
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalType;->effectListV:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectItemList:Ljava/util/List;

    .line 932
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalType;->modeList:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeItemList:Ljava/util/List;

    goto :goto_0

    .line 921
    :cond_4
    const v0, 0x7f070020

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesTitleID:I

    .line 922
    const v0, 0x7f070023

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesTextID:I

    goto :goto_1
.end method

.method private initLeftStatusSet()V
    .locals 1

    .prologue
    .line 971
    const v0, 0x7f0e0039

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mleftStatusSet:Landroid/view/View;

    .line 972
    const v0, 0x7f0e003e

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusResolutionImg:Landroid/widget/ImageView;

    .line 973
    const v0, 0x7f0e003c

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusLocationImg:Landroid/widget/ImageView;

    .line 974
    const v0, 0x7f0e003b

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusTagEnableImg:Landroid/widget/ImageView;

    .line 975
    const v0, 0x7f0e003d

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusModeImg:Landroid/widget/ImageView;

    .line 976
    return-void
.end method

.method private initScenesSet()V
    .locals 5

    .prologue
    const-string v4, "MotoOnScreenControllerOpenGL"

    .line 1125
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 1126
    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v2, "initScenesSet() - Enter"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_0
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1131
    .local v1, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f0e0046

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;

    .line 1132
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1135
    const v2, 0x7f030018

    :try_start_0
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1165
    :goto_0
    const v2, 0x7f0e0088

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/CameraF/View/IndicatorView;

    iput-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    .line 1166
    const v2, 0x7f0e0087

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesTitle:Landroid/widget/TextView;

    .line 1167
    const v2, 0x7f0e008d

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/CameraF/View/TextChangeView;

    iput-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesDesc:Lcom/motorola/CameraF/View/TextChangeView;

    .line 1169
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->addGLView()V

    .line 1170
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    .line 1171
    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v2, "after addView"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_1
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    .line 1174
    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v2, "initScenesSet() - Exit"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_2
    return-void

    .line 1137
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1139
    .local v0, e:Landroid/view/InflateException;
    invoke-virtual {v0}, Landroid/view/InflateException;->printStackTrace()V

    goto :goto_0

    .line 1141
    .end local v0           #e:Landroid/view/InflateException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1143
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private rightSetFadeIn()V
    .locals 10

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    const-string v9, "MotoOnScreenControllerOpenGL"

    .line 1664
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    .line 1665
    const-string v4, "MotoOnScreenControllerOpenGL"

    const-string v4, "rightSetFadeIn() - Enter"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v2

    .line 1668
    .local v2, isLocationOn:Z
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn()Z

    move-result v1

    .line 1670
    .local v1, isKeywordsOn:Z
    iget-boolean v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    if-nez v4, :cond_7

    .line 1672
    iput-boolean v5, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 1674
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v4

    if-ne v4, v5, :cond_9

    iget-boolean v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    if-eqz v4, :cond_9

    .line 1677
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1689
    :goto_0
    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 1691
    :cond_1
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTagsSet:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1693
    :cond_2
    iget-boolean v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRightSet:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_6

    .line 1702
    :cond_3
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1704
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1705
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1706
    const v4, 0x7f0e0033

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1708
    const v4, 0x7f0e0050

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1709
    .local v3, scenesLayout:Landroid/widget/RelativeLayout;
    if-eqz v3, :cond_4

    .line 1710
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1714
    .end local v3           #scenesLayout:Landroid/widget/RelativeLayout;
    :cond_4
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    .line 1716
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    iget v5, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashTextID:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 1717
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1718
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1719
    const v4, 0x7f0e0037

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1720
    const v4, 0x7f0e0052

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1722
    .local v0, flashLayout:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_5

    .line 1723
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1727
    .end local v0           #flashLayout:Landroid/widget/RelativeLayout;
    :cond_5
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRightSet:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1731
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThinBarImage:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1732
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1733
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 1736
    :cond_6
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1737
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1740
    :cond_7
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_8

    .line 1741
    const-string v4, "MotoOnScreenControllerOpenGL"

    const-string v4, "rightSetFadeIn() - Exit"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :cond_8
    return-void

    .line 1680
    :cond_9
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1681
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 1685
    :cond_a
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateButtons()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/high16 v10, 0x7600

    const/4 v9, 0x1

    const v8, -0x777778

    const/4 v7, 0x0

    .line 1180
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    .line 1181
    const-string v4, "MotoOnScreenControllerOpenGL"

    const-string v5, "updateButtons() - Enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_0
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1187
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1190
    const-string v4, "MotoOnScreenControllerOpenGL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rdh768: currentScene= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v5

    invoke-static {v5}, Lcom/motorola/CameraF/CameraGlobalTools;->getMenuScenesResouce(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1195
    .local v1, draw:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v4

    if-ne v4, v11, :cond_7

    .line 1197
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02003b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1198
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v10, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1199
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 1200
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 1241
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 1242
    if-eqz v1, :cond_2

    .line 1243
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v4, v7, v1, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1248
    :cond_2
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1250
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v4

    if-ne v4, v9, :cond_10

    .line 1252
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->FLASH:Z

    if-eqz v4, :cond_f

    .line 1255
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->torchOn:Z

    if-ne v9, v4, :cond_e

    .line 1256
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1313
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    if-eqz v4, :cond_4

    .line 1314
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    invoke-virtual {v4, v7, v1, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1318
    :cond_4
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentEffect()I

    move-result v4

    if-nez v4, :cond_16

    .line 1320
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1327
    :goto_2
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/Button;

    invoke-virtual {v4, v7, v1, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1330
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1331
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v4

    if-nez v4, :cond_17

    .line 1332
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1336
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeButton:Landroid/widget/Button;

    invoke-virtual {v4, v7, v1, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1338
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_6

    .line 1339
    const-string v4, "MotoOnScreenControllerOpenGL"

    const-string v5, "updateButtons() - Exit"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_6
    return-void

    .line 1203
    :cond_7
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v4

    if-ne v4, v9, :cond_8

    .line 1205
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1206
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v10, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1207
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 1208
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 1211
    :cond_8
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v4

    if-ne v4, v9, :cond_a

    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    if-eqz v4, :cond_a

    .line 1212
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_9

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1213
    :cond_9
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    .line 1217
    :cond_a
    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1218
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 1219
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 1226
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :cond_b
    const/4 v1, 0x0

    .line 1227
    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    if-eqz v4, :cond_c

    .line 1228
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1230
    :cond_c
    const v4, 0x7f0e0050

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1231
    .local v3, scenesButtonLayout:Landroid/widget/RelativeLayout;
    if-eqz v3, :cond_d

    .line 1232
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1234
    :cond_d
    const v4, 0x7f0e0033

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1236
    .local v0, divider1:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 1237
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1259
    .end local v0           #divider1:Landroid/widget/ImageView;
    .end local v3           #scenesButtonLayout:Landroid/widget/RelativeLayout;
    :cond_e
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1265
    :cond_f
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentFlash()I

    move-result v5

    invoke-static {v5}, Lcom/motorola/CameraF/CameraGlobalTools;->getMenuFlashResource(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1271
    :cond_10
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v4

    if-eq v4, v11, :cond_11

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v4

    if-ne v4, v9, :cond_12

    .line 1274
    :cond_11
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1275
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v10, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1276
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 1277
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 1283
    :cond_12
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v2

    .line 1284
    .local v2, sceneMode:I
    const/4 v4, 0x3

    if-eq v2, v4, :cond_13

    if-eq v2, v11, :cond_13

    const/4 v4, 0x5

    if-ne v2, v4, :cond_14

    .line 1288
    :cond_13
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1289
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v10, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1290
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 1291
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 1294
    :cond_14
    const/4 v4, 0x4

    if-ne v2, v4, :cond_15

    .line 1296
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1297
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v10, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1298
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 1299
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 1304
    :cond_15
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentFlash()I

    move-result v5

    invoke-static {v5}, Lcom/motorola/CameraF/CameraGlobalTools;->getMenuFlashResource(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1305
    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1306
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 1307
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 1324
    .end local v2           #sceneMode:I
    :cond_16
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_2

    .line 1334
    :cond_17
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020067

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_3
.end method

.method private updateResImg()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-string v7, "MotoOnScreenControllerOpenGL"

    .line 980
    const/4 v1, 0x0

    .line 984
    .local v1, currentRes:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v6

    if-nez v6, :cond_5

    .line 986
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v6

    if-ne v6, v8, :cond_1

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v6

    if-nez v6, :cond_1

    .line 988
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getPanoramaResolution()Ljava/lang/String;

    move-result-object v1

    .line 1001
    :goto_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionValues:[Ljava/lang/CharSequence;

    if-eqz v6, :cond_4

    .line 1003
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionValues:[Ljava/lang/CharSequence;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 1005
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionValues:[Ljava/lang/CharSequence;

    aget-object v6, v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1007
    iget-object v6, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusResolutionImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionImgs:[Ljava/lang/Integer;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1086
    .end local v3           #i:I
    :cond_0
    :goto_2
    return-void

    .line 990
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 993
    const-string v1, "OneMP"

    goto :goto_0

    .line 997
    :cond_2
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1003
    .restart local v3       #i:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1016
    .end local v3           #i:I
    :cond_4
    iget-object v6, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusResolutionImg:Landroid/widget/ImageView;

    const v7, 0x7f0200ca

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1020
    :cond_5
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v6

    if-ne v6, v8, :cond_d

    .line 1023
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    if-nez v6, :cond_6

    .line 1025
    const-string v6, "MotoOnScreenControllerOpenGL"

    const-string v6, "updateResImg() - CamSetting is NULL!"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1030
    :cond_6
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v2

    .line 1032
    .local v2, currentVideoMode:I
    const/4 v6, 0x5

    if-ne v2, v6, :cond_9

    .line 1034
    const-string v1, "QVGA"

    .line 1049
    :goto_3
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    .line 1050
    .local v0, camSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    monitor-enter v0

    .line 1051
    :try_start_0
    iget-object v6, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    if-nez v6, :cond_7

    .line 1052
    const-string v6, "MotoOnScreenControllerOpenGL"

    const-string v7, "Waiting for the resolution setup"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1061
    :cond_7
    :goto_4
    :try_start_2
    iget-object v6, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    if-eqz v6, :cond_c

    .line 1063
    iget-object v6, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 1064
    .local v4, num:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    if-ge v3, v4, :cond_8

    .line 1066
    iget-object v6, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1067
    .local v5, tempString:Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1069
    iget-object v6, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusResolutionImg:Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionImgs:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1079
    .end local v3           #i:I
    .end local v4           #num:I
    .end local v5           #tempString:Ljava/lang/String;
    :cond_8
    :goto_6
    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1036
    .end local v0           #camSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    :cond_9
    const/4 v6, 0x7

    if-ne v2, v6, :cond_a

    .line 1039
    const-string v1, "QVGA"

    goto :goto_3

    .line 1043
    :cond_a
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1064
    .restart local v0       #camSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    .restart local v3       #i:I
    .restart local v4       #num:I
    .restart local v5       #tempString:Ljava/lang/String;
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1077
    .end local v3           #i:I
    .end local v4           #num:I
    .end local v5           #tempString:Ljava/lang/String;
    :cond_c
    :try_start_3
    iget-object v6, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusResolutionImg:Landroid/widget/ImageView;

    const v7, 0x7f0200b1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 1083
    .end local v0           #camSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    .end local v2           #currentVideoMode:I
    :cond_d
    const/4 v1, 0x0

    .line 1084
    const-string v6, "MotoOnScreenControllerOpenGL"

    const-string v6, "updateResImg() - bad state, how did we get here?"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1055
    .restart local v0       #camSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    .restart local v2       #currentVideoMode:I
    :catch_0
    move-exception v6

    goto :goto_4
.end method

.method private updateTagImg()V
    .locals 2

    .prologue
    .line 1090
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusTagEnableImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1096
    :goto_0
    return-void

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusTagEnableImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public changeCaptureResource(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 2158
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 2159
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCaptureButton:Landroid/widget/ImageView;

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2164
    :goto_0
    return-void

    .line 2162
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCaptureButton:Landroid/widget/ImageView;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const-string v3, "MotoOnScreenControllerOpenGL"

    .line 1530
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 1531
    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v2, "dispatchTouchEvent() - Enter"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_0
    iget-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowing:Z

    if-eqz v2, :cond_4

    .line 1535
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 1536
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 1537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1538
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1540
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1561
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1569
    .end local v0           #x:F
    .end local v1           #y:F
    :goto_1
    return v2

    .line 1542
    .restart local v0       #x:F
    .restart local v1       #y:F
    :pswitch_0
    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mX:F

    .line 1543
    iput v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mY:F

    .line 1544
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTouchRespond:Z

    goto :goto_0

    .line 1548
    :pswitch_1
    iget-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowAlltimes:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTouchRespond:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mX:F

    sub-float/2addr v2, v0

    float-to-double v2, v2

    iget v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mY:F

    sub-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x403e

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 1551
    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mY:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mX:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 1552
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->onClickPre()V

    .line 1557
    :cond_2
    :goto_2
    iput-boolean v6, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTouchRespond:Z

    goto :goto_0

    .line 1553
    :cond_3
    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mY:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mX:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    .line 1555
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->onClickNext()V

    goto :goto_2

    .line 1567
    .end local v0           #x:F
    .end local v1           #y:F
    :cond_4
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v2, "OnScreenController:dispatchTouchEvent: Event Consumed"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v2, v6

    .line 1569
    goto :goto_1

    .line 1540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getThumbImageView()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public hideControllerPanel(Z)V
    .locals 4
    .parameter "needsave"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1973
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowAlltimes:Z

    if-eqz v0, :cond_0

    .line 1975
    invoke-virtual {p0, p1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->hideStatusSet(Z)V

    .line 1976
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1978
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    if-eqz v0, :cond_1

    .line 1979
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->onPause()V

    .line 1980
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v0, v2}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setVisibility(I)V

    .line 1981
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1984
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowing:Z

    if-eqz v0, :cond_2

    .line 1986
    iput-boolean v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowing:Z

    .line 1987
    iput-boolean v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 1988
    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->setVisibility(I)V

    .line 1991
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1992
    return-void
.end method

.method public hideRemainText()V
    .locals 2

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRemainText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2118
    return-void
.end method

.method public hideRightSet()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2079
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRightSet:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2080
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2081
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThinBarImage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2082
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 2084
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2085
    return-void
.end method

.method public hideSceneDialog()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1897
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1899
    :cond_0
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidescenedialog :: ENTER - mstatus is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1905
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mleftStatusSet:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1908
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    if-eqz v0, :cond_1

    .line 1911
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->onPause()V

    .line 1912
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v0, v4}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setVisibility(I)V

    .line 1916
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1917
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 1919
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 1920
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 1922
    iput-boolean v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowAlltimes:Z

    .line 1923
    iput v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 1925
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1927
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->rightSetFadeOut()V

    .line 1929
    :cond_3
    return-void
.end method

.method public hideStatusSet(Z)V
    .locals 1
    .parameter "save"

    .prologue
    .line 1574
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->hideStatusSet(ZZ)V

    .line 1575
    return-void
.end method

.method public hideStatusSet(ZZ)V
    .locals 7
    .parameter "save"
    .parameter "scenesAnim"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1579
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1581
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashSet:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashSet:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1583
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashSet:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1585
    :cond_0
    if-eqz p1, :cond_1

    .line 1587
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentFlash:I

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    .line 1635
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->updateController()V

    .line 1638
    if-eqz p1, :cond_2

    .line 1639
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1641
    :cond_2
    iput-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowAlltimes:Z

    .line 1642
    iput v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 1644
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1645
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1646
    return-void

    .line 1590
    :cond_3
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eq v0, v5, :cond_4

    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eq v0, v6, :cond_4

    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v3, :cond_1

    .line 1593
    :cond_4
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1596
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mleftStatusSet:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    if-eqz v0, :cond_5

    .line 1598
    if-eqz p2, :cond_7

    .line 1599
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->closeScrollView()V

    .line 1608
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 1609
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 1611
    :cond_6
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 1612
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 1614
    if-eqz p1, :cond_1

    .line 1616
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v5, :cond_8

    .line 1618
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentScenes:I

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentScene(I)V

    goto :goto_0

    .line 1601
    :cond_7
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->onPause()V

    .line 1602
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v0, v4}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setVisibility(I)V

    goto :goto_1

    .line 1623
    :cond_8
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v6, :cond_9

    .line 1625
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentEffect:I

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentEffect(I)V

    goto :goto_0

    .line 1627
    :cond_9
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v3, :cond_1

    .line 1629
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    goto/16 :goto_0
.end method

.method public hideTopStatusSet()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2127
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusResolutionImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2128
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2129
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusTagEnableImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2130
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusModeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2131
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTagsSet:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2132
    return-void
.end method

.method public hideZoomControlSet()V
    .locals 2

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomControlSet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomControlSet:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1885
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomControlSet:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1887
    :cond_0
    return-void
.end method

.method public hideZoomSet()V
    .locals 2

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1881
    :cond_0
    return-void
.end method

.method public initTagsSet()V
    .locals 2

    .prologue
    .line 1430
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1431
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "OnScreenController:initTagsSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_0
    const v0, 0x7f0e0042

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTagsSet:Landroid/view/View;

    .line 1434
    const v0, 0x7f0e0043

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    .line 1435
    const v0, 0x7f0e0044

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mKeywordTagsView:Landroid/widget/TextView;

    .line 1436
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTagsSet:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1437
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTagsSet:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1439
    return-void
.end method

.method public initZoomSet()V
    .locals 4

    .prologue
    .line 1405
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getZoomNum()I

    move-result v0

    .line 1406
    .local v0, currentZoom:I
    const v1, 0x7f0e0045

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomBar:Landroid/widget/ProgressBar;

    .line 1407
    const v1, 0x7f0e0057

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomInButton:Landroid/widget/ImageView;

    .line 1408
    const v1, 0x7f0e0055

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomOutButton:Landroid/widget/ImageView;

    .line 1409
    const v1, 0x7f0e0054

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomControlSet:Landroid/widget/LinearLayout;

    .line 1410
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomInButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1411
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomOutButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1420
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomBar:Landroid/widget/ProgressBar;

    sget v2, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_MAX_VALUE:I

    const/4 v3, 0x0

    sub-int/2addr v2, v3

    sget v3, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_STEP:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1421
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1426
    return-void
.end method

.method public isAdjusting()Z
    .locals 1

    .prologue
    .line 2032
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowAlltimes:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 2027
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowing:Z

    return v0
.end method

.method public needCenterVF()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2037
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1512
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1513
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "onAnimationEnd() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1519
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1523
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1524
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "onAnimationStart() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "MotoOnScreenControllerOpenGL"

    .line 331
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 332
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v1, "onClick() - Enter"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTouchRespond:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowing:Z

    if-nez v1, :cond_2

    .line 640
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 340
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 347
    :sswitch_0
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 351
    :sswitch_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 352
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 354
    :cond_3
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 355
    iget-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRecording:Z

    if-eqz v1, :cond_4

    .line 356
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 358
    :cond_4
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    .line 359
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v1, "OnScreenController:onClick:btnCapture, startRecording"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->rightSetFadeOut()V

    .line 361
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 369
    :sswitch_2
    iget-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRecording:Z

    if-eqz v1, :cond_6

    .line 370
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v1, "recording now, don\'t handle Scene button"

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :cond_6
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRightSet:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_1

    .line 379
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v1

    if-eq v1, v4, :cond_7

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v1

    if-eq v1, v3, :cond_7

    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_7

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-ne v1, v4, :cond_8

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 386
    :cond_7
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 391
    :cond_8
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x39

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 394
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_a

    .line 396
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->initScenesSet()V

    .line 403
    :cond_9
    :goto_1
    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v1, v4, :cond_b

    .line 405
    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->hideStatusSet(Z)V

    .line 406
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    iget v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mSceneFadeoutTime:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 397
    :cond_a
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    if-eqz v1, :cond_9

    .line 398
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->removeScenesSurface()V

    .line 399
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->addGLView()V

    goto :goto_1

    .line 409
    :cond_b
    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v1, v3, :cond_f

    .line 411
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->onPause()V

    .line 412
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setVisibility(I)V

    .line 413
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->updateController()V

    .line 421
    :cond_c
    :goto_2
    iput-boolean v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowAlltimes:Z

    .line 422
    iget-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    if-nez v1, :cond_d

    .line 424
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRightSet:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iput-boolean v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 429
    :cond_d
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 432
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentEffect()I

    move-result v1

    iput v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentEffect:I

    .line 433
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v1

    iput v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentScenes:I

    .line 436
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicatorNum:I

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/View/IndicatorView;->setIndicatorNum(I)V

    .line 437
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mSceneItemList:Ljava/util/List;

    iget v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentScenes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/View/IndicatorView;->setHighlighted(I)V

    .line 439
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesTitle:Landroid/widget/TextView;

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 440
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesDesc:Lcom/motorola/CameraF/View/TextChangeView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesTextID:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentScenes:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/View/TextChangeView;->setText(Ljava/lang/String;)V

    .line 443
    iput v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 445
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 446
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 447
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 450
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->clearSelectedHandlerMsg()V

    .line 451
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v1, "mScenesGallery.onResume()"

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    if-eqz v1, :cond_e

    .line 453
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->onResume()V

    .line 454
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentScenes:I

    invoke-virtual {v1, v2, v4}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setCurrentScenes(IZ)V

    .line 455
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->requestRender()V

    .line 456
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v1, v5}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setVisibility(I)V

    .line 459
    :cond_e
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v1, "mScenesGallery.requestRender()"

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 464
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mleftStatusSet:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRightSet:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 415
    :cond_f
    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 417
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->hideStatusSet(Z)V

    goto/16 :goto_2

    .line 474
    :sswitch_3
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btnMode width & Height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_10

    .line 476
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 478
    :cond_10
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 496
    :sswitch_4
    iget-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRecording:Z

    if-eqz v1, :cond_11

    .line 497
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v1, "recording now, don\'t handle Effects button"

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 502
    :cond_11
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRightSet:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_1

    .line 506
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_12

    .line 507
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnScreenController:onClick:beneffect, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_12
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_14

    .line 510
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->initScenesSet()V

    .line 516
    :cond_13
    :goto_3
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 517
    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v1, v3, :cond_15

    .line 518
    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->hideStatusSet(Z)V

    .line 519
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    iget v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mSceneFadeoutTime:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 511
    :cond_14
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    if-eqz v1, :cond_13

    .line 512
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->removeScenesSurface()V

    .line 513
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->addGLView()V

    goto :goto_3

    .line 521
    :cond_15
    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 522
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->hideStatusSet(Z)V

    .line 529
    :cond_16
    :goto_4
    iput-boolean v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowAlltimes:Z

    .line 532
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x39

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 534
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 535
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentEffect()I

    move-result v1

    iput v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentEffect:I

    .line 536
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v1

    iput v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentScenes:I

    .line 537
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesTitle:Landroid/widget/TextView;

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 538
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectIndicatorNum:I

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/View/IndicatorView;->setIndicatorNum(I)V

    .line 539
    iput v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 542
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesDesc:Lcom/motorola/CameraF/View/TextChangeView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentEffect:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/View/TextChangeView;->setText(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectItemList:Ljava/util/List;

    iget v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentEffect:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/View/IndicatorView;->setHighlighted(I)V

    .line 546
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->clearSelectedHandlerMsg()V

    .line 547
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    if-eqz v1, :cond_17

    .line 548
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->onResume()V

    .line 549
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentScenes:I

    invoke-virtual {v1, v2, v5}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setCurrentScenes(IZ)V

    .line 550
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->requestRender()V

    .line 551
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v1, v5}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setVisibility(I)V

    .line 554
    :cond_17
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    if-eqz v1, :cond_18

    .line 555
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 557
    :cond_18
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 558
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 559
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 560
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 563
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mleftStatusSet:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 564
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRightSet:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 566
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 524
    :cond_19
    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v1, v4, :cond_16

    .line 525
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->onPause()V

    .line 526
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setVisibility(I)V

    .line 527
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->updateController()V

    goto/16 :goto_4

    .line 570
    :sswitch_5
    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eq v1, v4, :cond_1a

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v1, v3, :cond_1b

    .line 571
    :cond_1a
    invoke-virtual {p0, v5, v5}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->hideStatusSet(ZZ)V

    .line 574
    :cond_1b
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_20

    .line 577
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v1

    if-eq v1, v3, :cond_1c

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v1

    if-ne v1, v4, :cond_1d

    .line 580
    :cond_1c
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 581
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 585
    :cond_1d
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v0

    .line 587
    .local v0, currentScene:I
    if-eq v0, v3, :cond_1e

    if-eq v0, v6, :cond_1e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    .line 592
    :cond_1e
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 593
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 598
    :cond_1f
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 606
    .end local v0           #currentScene:I
    :cond_20
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->FLASH:Z

    if-eqz v1, :cond_22

    .line 608
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    iget-boolean v1, v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->torchSupported:Z

    if-nez v1, :cond_21

    .line 610
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 611
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 613
    :cond_21
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 620
    :cond_22
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 626
    :sswitch_6
    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->hideControllerPanel(Z)V

    .line 627
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_23

    .line 628
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v1, "OnScreenController:onClick:send message"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_23
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 632
    :sswitch_7
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 633
    iget-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mshowRemainTime:Z

    if-nez v1, :cond_24

    .line 634
    iput-boolean v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mshowRemainTime:Z

    .line 638
    :goto_5
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 636
    :cond_24
    iput-boolean v5, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mshowRemainTime:Z

    goto :goto_5

    .line 342
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0030 -> :sswitch_0
        0x7f0e0032 -> :sswitch_2
        0x7f0e0034 -> :sswitch_4
        0x7f0e0036 -> :sswitch_5
        0x7f0e0038 -> :sswitch_3
        0x7f0e0041 -> :sswitch_7
        0x7f0e0042 -> :sswitch_6
        0x7f0e0058 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClickNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 675
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 676
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 679
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v2, :cond_1

    .line 680
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->turnToNext()V

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 683
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectItemList:Ljava/util/List;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/IndicatorView;->next()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentEffect:I

    .line 684
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentEffect:I

    invoke-direct {p0, v0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->changeCurrentScenes(IZ)V

    goto :goto_0

    .line 685
    :cond_2
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 686
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/IndicatorView;->next()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentMode:I

    .line 687
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeItemList:Ljava/util/List;

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentMode:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentMode:I

    .line 688
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentMode:I

    invoke-direct {p0, v0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->changeCurrentScenes(IZ)V

    goto :goto_0
.end method

.method public onClickPre()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 695
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 696
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 699
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v2, :cond_1

    .line 701
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->turnToPre()V

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 704
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectItemList:Ljava/util/List;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/IndicatorView;->previous()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentEffect:I

    .line 705
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentEffect:I

    invoke-direct {p0, v0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->changeCurrentScenes(IZ)V

    goto :goto_0

    .line 706
    :cond_2
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 707
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/IndicatorView;->previous()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentMode:I

    .line 708
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeItemList:Ljava/util/List;

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentMode:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentMode:I

    .line 709
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCurrentMode:I

    invoke-direct {p0, v0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->changeCurrentScenes(IZ)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 10

    .prologue
    const v8, 0x7f0e0052

    const v7, 0x7f0e0037

    const/4 v6, 0x0

    const/16 v5, 0x8

    const-string v9, "MotoOnScreenControllerOpenGL"

    .line 774
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 775
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v3, "onFinishInflate() - Enter"

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_0
    const v3, 0x7f0e0031

    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRightSet:Landroid/view/View;

    .line 778
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRightSet:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 780
    const v3, 0x7f0e0059

    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThinBarImage:Landroid/view/View;

    .line 781
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThinBarImage:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 784
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->initForMode()V

    .line 786
    const v3, 0x7f0e0030

    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    .line 787
    const v3, 0x7f0e0040

    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRemainText:Landroid/widget/TextView;

    .line 789
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 790
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 792
    :cond_1
    const v3, 0x7f0e0041

    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRecordingTimeView:Landroid/widget/TextView;

    .line 793
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 795
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 796
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRecordingTimeView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 797
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    :cond_2
    const v3, 0x7f0e0032

    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    .line 802
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    .line 803
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    :cond_3
    const v3, 0x7f0e0034

    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/Button;

    .line 807
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    .line 808
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    :cond_4
    const v3, 0x7f0e0038

    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeButton:Landroid/widget/Button;

    .line 813
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeButton:Landroid/widget/Button;

    if-eqz v3, :cond_5

    .line 815
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v3

    if-nez v3, :cond_9

    .line 816
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 817
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    :cond_5
    :goto_0
    const v3, 0x7f0e0058

    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCaptureButton:Landroid/widget/ImageView;

    .line 834
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCaptureButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    .line 835
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 837
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 840
    :cond_6
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->trayDrawable:Landroid/graphics/drawable/Drawable;

    .line 842
    const v3, 0x7f0e0036

    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    .line 843
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    if-eqz v3, :cond_7

    .line 845
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    .line 847
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 848
    invoke-virtual {p0, v7}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 850
    invoke-virtual {p0, v8}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 851
    .local v1, flashLayout:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_7

    .line 852
    invoke-virtual {p0, v8}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 867
    .end local v1           #flashLayout:Landroid/widget/RelativeLayout;
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->initLeftStatusSet()V

    .line 870
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->initTagsSet()V

    .line 873
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->updateController()V

    .line 878
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->initZoomSet()V

    .line 882
    invoke-super {p0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->onFinishInflate()V

    .line 884
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_8

    .line 885
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v3, "onFinishInflate() - Exit"

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_8
    return-void

    .line 819
    :cond_9
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mModeButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 820
    const v3, 0x7f0e0053

    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 821
    .local v2, modesLayout:Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_a

    .line 822
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 824
    :cond_a
    invoke-virtual {p0, v7}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 825
    .local v0, divider3:Landroid/widget/ImageView;
    if-eqz v0, :cond_5

    .line 826
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 857
    .end local v0           #divider3:Landroid/widget/ImageView;
    .end local v2           #modesLayout:Landroid/widget/RelativeLayout;
    :cond_b
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    iget v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashTextID:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 858
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 859
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    invoke-virtual {p0, v7}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 644
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 651
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 646
    :pswitch_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "onLongClick -- Actiondown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 644
    :pswitch_data_0
    .packed-switch 0x7f0e0058
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v3, 0x6e

    const/4 v2, 0x1

    const-string v1, "MotoOnScreenControllerOpenGL"

    .line 2167
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "onTouch -- Enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2208
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2171
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2173
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "onTouch -- Actionup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2176
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2184
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 2185
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "onTouch zoom in actionup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2187
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2188
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "onTouch zoom in actiondown"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2194
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 2195
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "onTouch zoom out actionup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2198
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2199
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "onTouch zoom out actiondown"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2168
    :pswitch_data_0
    .packed-switch 0x7f0e0055
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeScenesSurface()V
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->onPause()V

    .line 1101
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    .line 1103
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1105
    :cond_0
    return-void
.end method

.method public rightSetFadeOut()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v4, "MotoOnScreenControllerOpenGL"

    .line 1746
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1747
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "rightSetFadeOut() - Enter"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowAlltimes:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1751
    :cond_2
    iput-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 1752
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTagsSet:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1754
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTagsSet:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1758
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1760
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    if-nez v0, :cond_4

    .line 1770
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRightSet:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1771
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThinBarImage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1772
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1773
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 1776
    :cond_4
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1779
    :cond_5
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 1780
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "rightSetFadeOut() - Exit"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :cond_6
    return-void
.end method

.method public setParams(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 1499
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    .line 1501
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainContext:Landroid/content/Context;

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTranslateIn:Landroid/view/animation/AnimationSet;

    .line 1504
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTranslateIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1505
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainContext:Landroid/content/Context;

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTranslateOut:Landroid/view/animation/AnimationSet;

    .line 1507
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTranslateOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1508
    return-void
.end method

.method public setRecordButton(Z)V
    .locals 2
    .parameter "recording"

    .prologue
    .line 1492
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1494
    iput-boolean p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRecording:Z

    .line 1496
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 1938
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->show(I)V

    .line 1939
    return-void
.end method

.method public show(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    const/16 v3, 0x8

    .line 2004
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowing:Z

    if-nez v0, :cond_0

    .line 2006
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->setVisibility(I)V

    .line 2007
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->invalidate()V

    .line 2008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowing:Z

    .line 2011
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    if-nez v0, :cond_1

    .line 2013
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->rightSetFadeIn()V

    .line 2016
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2017
    if-gtz p1, :cond_2

    .line 2019
    const/16 p1, 0x1388

    .line 2022
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2023
    return-void
.end method

.method public show(Z)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 1942
    iput-boolean p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    .line 1943
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->show(I)V

    .line 1944
    return-void
.end method

.method public showCameraCaptureControl(Z)V
    .locals 6
    .parameter "show"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1948
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "showCameraCaptureControl() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRightSet:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1950
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowing:Z

    if-nez v0, :cond_0

    .line 1951
    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->setVisibility(I)V

    .line 1952
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->invalidate()V

    .line 1953
    iput-boolean v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowing:Z

    .line 1956
    :cond_0
    if-eqz p1, :cond_1

    .line 1957
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1958
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThinBarImage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1959
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1960
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1961
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 1968
    :goto_0
    return-void

    .line 1963
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1964
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThinBarImage:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1965
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public showRecordingIndicator(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 2153
    return-void
.end method

.method public showRemainText()V
    .locals 2

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRemainText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2123
    return-void
.end method

.method public showRightSet()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2089
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mRightSet:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2091
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2092
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThinBarImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2093
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 2099
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    if-eqz v0, :cond_1

    .line 2102
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2113
    :goto_0
    return-void

    .line 2105
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2106
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 2110
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showTopStatusSet()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2136
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusResolutionImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2137
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2138
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusTagEnableImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2139
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusModeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2140
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->updateTagImg()V

    .line 2141
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->updateTagsSet()V

    .line 2142
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2143
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2146
    :goto_0
    return-void

    .line 2145
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showZoomControlSet()V
    .locals 2

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomControlSet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomControlSet:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomControlSet:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1893
    :cond_0
    return-void
.end method

.method public startZoom()V
    .locals 2

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 1786
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "OnScreenController:adjustZoom:mZoomProgressBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    :goto_0
    return-void

    .line 1789
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1790
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1791
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public toggleMediaControlsVisibility()V
    .locals 2

    .prologue
    const-string v1, "MotoOnScreenControllerOpenGL"

    .line 2042
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2043
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "toggleMediaControlsVisibility() - Enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 2075
    :cond_1
    :goto_0
    return-void

    .line 2053
    :cond_2
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowAlltimes:Z

    if-nez v0, :cond_1

    .line 2057
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mShowing:Z

    if-nez v0, :cond_3

    .line 2059
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->show()V

    .line 2073
    :goto_1
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 2074
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "toggleMediaControlsVisibility() - Exit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2063
    :cond_3
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    if-eqz v0, :cond_4

    .line 2065
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->rightSetFadeOut()V

    goto :goto_1

    .line 2069
    :cond_4
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->rightSetFadeIn()V

    goto :goto_1
.end method

.method public touchZoomStatusUpdate()V
    .locals 0

    .prologue
    .line 1797
    return-void
.end method

.method public updateController()V
    .locals 2

    .prologue
    const-string v1, "MotoOnScreenControllerOpenGL"

    .line 1650
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1651
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "updateController() - Enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->updateButtons()V

    .line 1655
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->updateStatusIcons()V

    .line 1656
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->updateTagImg()V

    .line 1658
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 1659
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "updateController() - Exit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_1
    return-void
.end method

.method public updateLocationText()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1842
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    .line 1844
    .local v1, setting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1875
    :cond_0
    :goto_0
    return-void

    .line 1846
    :cond_1
    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getLocStatus()I

    move-result v2

    if-nez v2, :cond_2

    .line 1848
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1850
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1852
    :cond_2
    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getLocStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1854
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1856
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1858
    :cond_3
    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getLocStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1860
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1862
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1866
    :cond_4
    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAddress()Ljava/lang/String;

    move-result-object v0

    .line 1867
    .local v0, adr:Ljava/lang/String;
    if-nez v0, :cond_5

    .line 1868
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1873
    :goto_1
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1871
    :cond_5
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public updatePanoramaCaptureStatus(Z)V
    .locals 0
    .parameter "capturing"

    .prologue
    .line 1823
    iput-boolean p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    .line 1824
    return-void
.end method

.method public updateStatusIcons()V
    .locals 2

    .prologue
    .line 1346
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->updateResImg()V

    .line 1349
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->updateTagsSet()V

    .line 1352
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusModeImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/CameraF/CameraGlobalTools;->getStatusModeResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1353
    return-void
.end method

.method public updateTagsSet()V
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    const-string v10, ","

    .line 1443
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v1

    .line 1444
    .local v1, isLocationOn:Z
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn()Z

    move-result v0

    .line 1446
    .local v0, isKeywordsOn:Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_7

    .line 1447
    :cond_0
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTagsSet:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1448
    if-eqz v1, :cond_2

    .line 1450
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1451
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1452
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->updateLocationText()V

    .line 1460
    :goto_0
    if-eqz v0, :cond_6

    .line 1461
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mKeywordTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1462
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getAllTags()Ljava/util/List;

    move-result-object v3

    .line 1463
    .local v3, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1464
    .local v2, loadedTags:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v9, :cond_3

    .line 1465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "additional tags"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1475
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mKeywordTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1488
    .end local v2           #loadedTags:Ljava/lang/String;
    .end local v3           #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 1456
    :cond_2
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1458
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1467
    .restart local v2       #loadedTags:Ljava/lang/String;
    .restart local v3       #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v9, :cond_4

    .line 1468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1469
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 1470
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #loadedTags:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #loadedTags:Ljava/lang/String;
    goto :goto_1

    .line 1471
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1472
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1477
    .end local v2           #loadedTags:Ljava/lang/String;
    .end local v3           #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mKeywordTagsView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1478
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mKeywordTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1483
    :cond_7
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mTagsSet:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1484
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1485
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mKeywordTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1486
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 12
    .parameter "image"
    .parameter "orientation"

    .prologue
    const/16 v4, 0x12

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-string v11, ", "

    const-string v10, "MotoOnScreenControllerOpenGL"

    .line 267
    const/4 v7, 0x0

    .line 269
    .local v7, finalBitmap:Landroid/graphics/Bitmap;
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "updateThumbnail() - Enter"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v9

    .line 273
    .local v9, width:I
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v8

    .line 275
    .local v8, height:I
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 276
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThumbnail - mThumbnailImageView measured width x height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    if-eqz v9, :cond_2

    if-eqz v8, :cond_2

    if-nez p1, :cond_4

    .line 283
    :cond_2
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    .line 284
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "updateThumbnail() - either thumbnail is null or widthxheight of our VIEW isn\'t valid"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_3
    const/4 v7, 0x0

    .line 321
    :goto_0
    if-nez v7, :cond_c

    .line 322
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 326
    :goto_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 327
    return-void

    .line 287
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 289
    const/4 v7, 0x0

    goto :goto_0

    .line 293
    :cond_5
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 294
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v0, "updateThumbnail() - everything is valid, set mini thumbnail"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_6
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    .line 297
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThumbnail() - everything is valid, scale is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v8

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_7
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_8

    .line 300
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThumbnail() - everything is valid, w and h is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_8
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 305
    .local v5, rotationMatrix:Landroid/graphics/Matrix;
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_9

    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThumbnail() - orientation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_9
    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 308
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_a

    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThumbnail() Scale W & H"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v2, v9, v4

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x14

    sub-int v2, v8, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_a
    sub-int v0, v9, v4

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/16 v2, 0x14

    sub-int v2, v8, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 313
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 314
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_b

    .line 315
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_THUMBNAIL() - everything is valid, scaled w and h is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 324
    .end local v5           #rotationMatrix:Landroid/graphics/Matrix;
    :cond_c
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public updateZoom()V
    .locals 5

    .prologue
    const-string v3, "MotoOnScreenControllerOpenGL"

    .line 1801
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getZoomNum()I

    move-result v0

    .line 1803
    .local v0, currentZoom:I
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    .line 1805
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v1, "OnScreenController:adjustZoom:mZoomProgressBar is null"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :goto_0
    return-void

    .line 1809
    :cond_0
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 1810
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateZoom() - current zoom is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    sub-int v2, v0, v2

    sget v3, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_STEP:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1815
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public updateZoom(I)V
    .locals 4
    .parameter "zoomNum"

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 1828
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "OnScreenController:adjustZoom:mZoomProgressBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :goto_0
    return-void

    .line 1833
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mZoomBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    sub-int v1, p1, v1

    sget v2, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_STEP:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1835
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
