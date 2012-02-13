.class public Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;
.super Lcom/motorola/CameraF/View/Control/OnScreenController;
.source "OnScreenControllerPremium.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final CLICK_TOUCH_THRESHOLD:I = 0x1e

.field public static final DefaultTimeout:I = 0x1388

.field private static final EFFECTS:I = 0x2

.field private static final FLASH:I = 0x3

.field private static final MODE:I = 0x4

.field private static final NOSETTING:I = 0x0

.field private static final SCENES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MotoOnScreenControllerPremium"


# instance fields
.field private animListener:Landroid/view/animation/Animation$AnimationListener;

.field protected frameParams:Landroid/view/WindowManager$LayoutParams;

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

.field private mFlashNum:I

.field private mFlashTextID:I

.field private mGallerySpace:I

.field private mIsPre:Z

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

.field private mRecordingTimeView:Landroid/widget/TextView;

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

.field private mScenesCurrent:Landroid/widget/Button;

.field private mScenesDesc:Landroid/widget/TextView;

.field private mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

.field private mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

.field private mScenesIndicatorNum:I

.field private mScenesNext:Landroid/widget/Button;

.field private mScenesPre:Landroid/widget/Button;

.field private mScenesSet:Landroid/widget/LinearLayout;

.field private mScenesTextID:I

.field private mScenesTitle:Landroid/widget/TextView;

.field private mScenesTitleTextID:I

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

.field private trayDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/Control/OnScreenController;-><init>(Landroid/content/Context;)V

    .line 88
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTouchRespond:Z

    .line 89
    iput v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    .line 98
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowAlltimes:Z

    .line 100
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLockRightSet:Z

    .line 102
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mOnScreenMenuShowing:Z

    .line 105
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowSceneStatusIcon:Z

    .line 110
    const/16 v0, 0x96

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mGallerySpace:I

    .line 158
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mIsPre:Z

    .line 159
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mPanCapturing:Z

    .line 487
    new-instance v0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;-><init>(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->animListener:Landroid/view/animation/Animation$AnimationListener;

    .line 173
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainContext:Landroid/content/Context;

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/motorola/CameraF/View/Control/OnScreenController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTouchRespond:Z

    .line 89
    iput v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    .line 98
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowAlltimes:Z

    .line 100
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLockRightSet:Z

    .line 102
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mOnScreenMenuShowing:Z

    .line 105
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowSceneStatusIcon:Z

    .line 110
    const/16 v0, 0x96

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mGallerySpace:I

    .line 158
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mIsPre:Z

    .line 159
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mPanCapturing:Z

    .line 487
    new-instance v0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;-><init>(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->animListener:Landroid/view/animation/Animation$AnimationListener;

    .line 168
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainContext:Landroid/content/Context;

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/CameraF/View/Control/OnScreenController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTouchRespond:Z

    .line 89
    iput v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    .line 98
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowAlltimes:Z

    .line 100
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLockRightSet:Z

    .line 102
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mOnScreenMenuShowing:Z

    .line 105
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowSceneStatusIcon:Z

    .line 110
    const/16 v0, 0x96

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mGallerySpace:I

    .line 158
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mIsPre:Z

    .line 159
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mPanCapturing:Z

    .line 487
    new-instance v0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;-><init>(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->animListener:Landroid/view/animation/Animation$AnimationListener;

    .line 163
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainContext:Landroid/content/Context;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mIsPre:Z

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I

    return v0
.end method

.method static synthetic access$202(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I

    return p1
.end method

.method static synthetic access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)Lcom/motorola/CameraF/View/IndicatorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mSceneItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->changeCurrentScenes(IZ)V

    return-void
.end method

.method private changeCurrentScenes(IZ)V
    .locals 6
    .parameter "currentScenes"
    .parameter "update"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "MotoOnScreenControllerPremium"

    .line 958
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 959
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "changeCurrentScenes() - Enter"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    if-ne v0, v4, :cond_5

    .line 963
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mSceneItemList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/IndicatorView;->setHighlighted(I)V

    .line 965
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesTextID:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    if-eqz v0, :cond_1

    .line 968
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    invoke-virtual {v0, p1, v4}, Lcom/motorola/CameraF/View/ScenesScroll;->updateScreen(IZ)V

    .line 971
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentScene(I)V

    .line 999
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 1001
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1004
    :cond_3
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    .line 1005
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "changeCurrentScenes() - Exit"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_4
    return-void

    .line 974
    :cond_5
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 976
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectItemList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/IndicatorView;->setHighlighted(I)V

    .line 978
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    if-eqz v0, :cond_6

    .line 981
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    invoke-virtual {v0, p1, v3}, Lcom/motorola/CameraF/View/ScenesScroll;->updateScreen(IZ)V

    .line 984
    :cond_6
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentEffect(I)V

    goto :goto_0

    .line 987
    :cond_7
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 989
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeItemList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/IndicatorView;->setHighlighted(I)V

    .line 991
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 993
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    if-eqz v0, :cond_2

    .line 994
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    invoke-virtual {v0, p1, v3}, Lcom/motorola/CameraF/View/ScenesScroll;->updateScreen(IZ)V

    goto :goto_0
.end method

.method private initForMode()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const-string v2, "MotoOnScreenControllerPremium"

    .line 620
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 621
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "initForMode() - Enter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 625
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->scene_num_c:I

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicatorNum:I

    .line 626
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->effect_num_c:I

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectIndicatorNum:I

    .line 627
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mode_num:I

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeIndicatorNum:I

    .line 628
    const v0, 0x7f07001d

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesTitleTextID:I

    .line 629
    const v0, 0x7f07001e

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesTextID:I

    .line 630
    const v0, 0x7f0b002a

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mFlashTextID:I

    .line 631
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowSceneStatusIcon:Z

    .line 632
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mFlashNum:I

    .line 633
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalType;->sceneListC:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mSceneItemList:Ljava/util/List;

    .line 634
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalType;->effectListC:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectItemList:Ljava/util/List;

    .line 635
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalType;->modeList:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeItemList:Ljava/util/List;

    .line 662
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 663
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "initForMode() - Exit"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_2
    return-void

    .line 637
    :cond_3
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 639
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->scene_num_v:I

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicatorNum:I

    .line 640
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->effect_num_v:I

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectIndicatorNum:I

    .line 641
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mode_num:I

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeIndicatorNum:I

    .line 642
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    if-eqz v0, :cond_4

    .line 644
    const v0, 0x7f070022

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesTitleTextID:I

    .line 645
    const v0, 0x7f070024

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesTextID:I

    .line 652
    :goto_1
    const v0, 0x7f0b002f

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mFlashTextID:I

    .line 654
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowSceneStatusIcon:Z

    .line 656
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mFlashNum:I

    .line 657
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalType;->sceneListV:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mSceneItemList:Ljava/util/List;

    .line 658
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalType;->effectListV:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectItemList:Ljava/util/List;

    .line 659
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalType;->modeList:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeItemList:Ljava/util/List;

    goto :goto_0

    .line 649
    :cond_4
    const v0, 0x7f070020

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesTitleTextID:I

    .line 650
    const v0, 0x7f070023

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesTextID:I

    goto :goto_1
.end method

.method private initLeftStatusSet()V
    .locals 1

    .prologue
    .line 668
    const v0, 0x7f0e0039

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mleftStatusSet:Landroid/view/View;

    .line 669
    const v0, 0x7f0e003e

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusResolutionImg:Landroid/widget/ImageView;

    .line 670
    const v0, 0x7f0e003c

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusLocationImg:Landroid/widget/ImageView;

    .line 671
    const v0, 0x7f0e003b

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusTagEnableImg:Landroid/widget/ImageView;

    .line 672
    const v0, 0x7f0e003d

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusModeImg:Landroid/widget/ImageView;

    .line 673
    return-void
.end method

.method private initScenesSet()V
    .locals 5

    .prologue
    const-string v4, "MotoOnScreenControllerPremium"

    .line 799
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 800
    const-string v2, "MotoOnScreenControllerPremium"

    const-string v2, "initScenesSet() - Enter"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_0
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 805
    .local v1, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f0e0046

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesSet:Landroid/widget/LinearLayout;

    .line 808
    const v2, 0x7f030017

    :try_start_0
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesSet:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesSet:Landroid/widget/LinearLayout;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 819
    :goto_0
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesSet:Landroid/widget/LinearLayout;

    if-nez v2, :cond_2

    .line 821
    const-string v2, "MotoOnScreenControllerPremium"

    const-string v2, "mScenesSet = null!"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_1
    :goto_1
    return-void

    .line 810
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 812
    .local v0, e:Landroid/view/InflateException;
    invoke-virtual {v0}, Landroid/view/InflateException;->printStackTrace()V

    goto :goto_0

    .line 814
    .end local v0           #e:Landroid/view/InflateException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 816
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 824
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    const v2, 0x7f0e0088

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/CameraF/View/IndicatorView;

    iput-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    .line 825
    const v2, 0x7f0e0087

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesTitle:Landroid/widget/TextView;

    .line 826
    const v2, 0x7f0e008d

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesDesc:Landroid/widget/TextView;

    .line 828
    const v2, 0x7f0e008b

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/CameraF/View/ScenesScroll;

    iput-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    .line 829
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    if-eqz v2, :cond_3

    .line 831
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    iget v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mGallerySpace:I

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/View/ScenesScroll;->setSpacing(I)V

    .line 832
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    const v3, 0x7f0e008c

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/View/ScenesScroll;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesCurrent:Landroid/widget/Button;

    .line 833
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesCurrent:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 834
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesCurrent:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    const v3, 0x7f0e0089

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/View/ScenesScroll;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesPre:Landroid/widget/Button;

    .line 836
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    const v3, 0x7f0e008a

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/View/ScenesScroll;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesNext:Landroid/widget/Button;

    .line 839
    :cond_3
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    .line 840
    const-string v2, "MotoOnScreenControllerPremium"

    const-string v2, "initScenesSet() - Exit"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private rightSetFadeIn()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x0

    const-string v6, "MotoOnScreenControllerPremium"

    .line 1257
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 1258
    const-string v2, "MotoOnScreenControllerPremium"

    const-string v2, "rightSetFadeIn() - Enter"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v1

    .line 1261
    .local v1, isLocationOn:Z
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn()Z

    move-result v0

    .line 1263
    .local v0, isKeywordsOn:Z
    iget-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mOnScreenMenuShowing:Z

    if-nez v2, :cond_5

    .line 1265
    iput-boolean v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mOnScreenMenuShowing:Z

    .line 1267
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v2

    if-ne v2, v4, :cond_7

    iget-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mPanCapturing:Z

    if-eqz v2, :cond_7

    .line 1270
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1276
    :goto_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 1278
    :cond_1
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTagsSet:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1280
    :cond_2
    iget-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLockRightSet:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRightSet:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1290
    :cond_3
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRightSet:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1293
    :cond_4
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1294
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1297
    :cond_5
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_6

    .line 1298
    const-string v2, "MotoOnScreenControllerPremium"

    const-string v2, "rightSetFadeIn() - Exit"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_6
    return-void

    .line 1273
    :cond_7
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setImageGalleryResList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1572
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    if-nez v0, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return-void

    .line 1576
    :cond_1
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    if-ne v0, v3, :cond_2

    .line 1578
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mSceneItemList:Ljava/util/List;

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesTitleTextID:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/View/ScenesScroll;->setImageRes(Ljava/util/List;I)V

    .line 1579
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mSceneItemList:Ljava/util/List;

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/motorola/CameraF/View/ScenesScroll;->setSelectedItem(IZ)V

    goto :goto_0

    .line 1582
    :cond_2
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectItemList:Ljava/util/List;

    const v2, 0x7f070026

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/View/ScenesScroll;->setImageRes(Ljava/util/List;I)V

    .line 1585
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectItemList:Ljava/util/List;

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/View/ScenesScroll;->setSelectedItem(IZ)V

    goto :goto_0
.end method

.method private updateButtons()V
    .locals 9

    .prologue
    const/high16 v8, 0x7600

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 845
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 846
    const-string v2, "MotoOnScreenControllerPremium"

    const-string v3, "updateButtons() - Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_0
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 852
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRecordingIndicatorView:Landroid/widget/ImageView;

    const v3, 0x7f0200b3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 853
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 855
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRecordingIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 862
    :goto_0
    const/4 v0, 0x0

    .line 864
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 866
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v6}, Lcom/motorola/CameraF/CameraGlobalTools;->getMenuScenesResouce(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 867
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v8, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 868
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 869
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesButton:Landroid/widget/Button;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 877
    :goto_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 879
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->FLASH:Z

    if-eqz v2, :cond_5

    .line 882
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 915
    :goto_2
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mFlashButton:Landroid/widget/Button;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 919
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentEffect()I

    move-result v2

    if-nez v2, :cond_b

    .line 921
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 928
    :goto_3
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectsButton:Landroid/widget/Button;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 931
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 932
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v2

    if-nez v2, :cond_c

    .line 933
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 937
    :cond_1
    :goto_4
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 939
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    .line 940
    const-string v2, "MotoOnScreenControllerPremium"

    const-string v3, "updateButtons() - Exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_2
    return-void

    .line 859
    .end local v0           #draw:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRecordingIndicatorView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 871
    .restart local v0       #draw:Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v3

    invoke-static {v3}, Lcom/motorola/CameraF/CameraGlobalTools;->getMenuScenesResouce(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 872
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 873
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 874
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesButton:Landroid/widget/Button;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 887
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentFlash()I

    move-result v3

    invoke-static {v3}, Lcom/motorola/CameraF/CameraGlobalTools;->getMenuFlashResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_2

    .line 893
    :cond_6
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v1

    .line 894
    .local v1, scene:I
    if-eq v1, v6, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    .line 898
    :cond_7
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 906
    :goto_5
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v2

    if-eq v2, v6, :cond_8

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v2

    if-ne v2, v5, :cond_a

    .line 910
    :cond_8
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v8, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    .line 902
    :cond_9
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentFlash()I

    move-result v3

    invoke-static {v3}, Lcom/motorola/CameraF/CameraGlobalTools;->getMenuFlashResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_5

    .line 912
    :cond_a
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    .line 925
    .end local v1           #scene:I
    :cond_b
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_3

    .line 935
    :cond_c
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_4
.end method

.method private updateResImg()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const-string v8, "MotoOnScreenControllerPremium"

    .line 677
    const/4 v1, 0x0

    .line 681
    .local v1, currentRes:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v6

    if-nez v6, :cond_6

    .line 683
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v6

    if-ne v6, v7, :cond_2

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 685
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getPanoramaResolution()Ljava/lang/String;

    move-result-object v1

    .line 696
    :goto_0
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_0

    .line 697
    const-string v6, "MotoOnScreenControllerPremium"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateResImg() - currentRes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionValues:[Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    .line 702
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionValues:[Ljava/lang/CharSequence;

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 704
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionValues:[Ljava/lang/CharSequence;

    aget-object v6, v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 706
    iget-object v6, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusResolutionImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionImgs:[Ljava/lang/Integer;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 785
    .end local v3           #i:I
    :cond_1
    :goto_2
    return-void

    .line 687
    :cond_2
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v6

    if-nez v6, :cond_3

    .line 690
    const-string v1, "OneMP"

    goto :goto_0

    .line 694
    :cond_3
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 702
    .restart local v3       #i:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 715
    .end local v3           #i:I
    :cond_5
    iget-object v6, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusResolutionImg:Landroid/widget/ImageView;

    const v7, 0x7f0200ca

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 719
    :cond_6
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v6

    if-ne v6, v7, :cond_e

    .line 722
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    if-nez v6, :cond_7

    .line 724
    const-string v6, "MotoOnScreenControllerPremium"

    const-string v6, "updateResImg() - CamSetting is NULL!"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 729
    :cond_7
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v2

    .line 731
    .local v2, currentVideoMode:I
    const/4 v6, 0x5

    if-ne v2, v6, :cond_a

    .line 733
    const-string v1, "QVGA"

    .line 748
    :goto_3
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    .line 749
    .local v0, camSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    monitor-enter v0

    .line 750
    :try_start_0
    iget-object v6, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    if-nez v6, :cond_8

    .line 751
    const-string v6, "MotoOnScreenControllerPremium"

    const-string v7, "Waiting for the resolution setup"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 760
    :cond_8
    :goto_4
    :try_start_2
    iget-object v6, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    if-eqz v6, :cond_d

    .line 762
    iget-object v6, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 763
    .local v4, num:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    if-ge v3, v4, :cond_9

    .line 765
    iget-object v6, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 766
    .local v5, tempString:Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 768
    iget-object v6, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusResolutionImg:Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionImgs:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 778
    .end local v3           #i:I
    .end local v4           #num:I
    .end local v5           #tempString:Ljava/lang/String;
    :cond_9
    :goto_6
    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 735
    .end local v0           #camSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    :cond_a
    const/4 v6, 0x7

    if-ne v2, v6, :cond_b

    .line 738
    const-string v1, "QVGA"

    goto :goto_3

    .line 742
    :cond_b
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 763
    .restart local v0       #camSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    .restart local v3       #i:I
    .restart local v4       #num:I
    .restart local v5       #tempString:Ljava/lang/String;
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 776
    .end local v3           #i:I
    .end local v4           #num:I
    .end local v5           #tempString:Ljava/lang/String;
    :cond_d
    :try_start_3
    iget-object v6, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusResolutionImg:Landroid/widget/ImageView;

    const v7, 0x7f0200b1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 782
    .end local v0           #camSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    .end local v2           #currentVideoMode:I
    :cond_e
    const/4 v1, 0x0

    .line 783
    const-string v6, "MotoOnScreenControllerPremium"

    const-string v6, "updateResImg() - bad state, how did we get here?"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 754
    .restart local v0       #camSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    .restart local v2       #currentVideoMode:I
    :catch_0
    move-exception v6

    goto :goto_4
.end method

.method private updateTagImg()V
    .locals 2

    .prologue
    .line 789
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

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusTagEnableImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusTagEnableImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public changeCaptureResource(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 1468
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const-string v3, "MotoOnScreenControllerPremium"

    .line 1139
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 1140
    const-string v2, "MotoOnScreenControllerPremium"

    const-string v2, "dispatchTouchEvent() - Enter"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_0
    iget-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowing:Z

    if-eqz v2, :cond_4

    .line 1144
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 1145
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 1146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1147
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1149
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1170
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1178
    .end local v0           #x:F
    .end local v1           #y:F
    :goto_1
    return v2

    .line 1151
    .restart local v0       #x:F
    .restart local v1       #y:F
    :pswitch_0
    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mX:F

    .line 1152
    iput v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mY:F

    .line 1153
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTouchRespond:Z

    goto :goto_0

    .line 1157
    :pswitch_1
    iget-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowAlltimes:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTouchRespond:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mX:F

    sub-float/2addr v2, v0

    float-to-double v2, v2

    iget v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mY:F

    sub-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x403e

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 1160
    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mY:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mX:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 1161
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->onClickPre()V

    .line 1166
    :cond_2
    :goto_2
    iput-boolean v6, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTouchRespond:Z

    goto :goto_0

    .line 1162
    :cond_3
    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mY:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mX:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    .line 1164
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->onClickNext()V

    goto :goto_2

    .line 1176
    .end local v0           #x:F
    .end local v1           #y:F
    :cond_4
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "MotoOnScreenControllerPremium"

    const-string v2, "OnScreenController:dispatchTouchEvent: Event Consumed"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v2, v6

    .line 1178
    goto :goto_1

    .line 1149
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
    .line 179
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mThumbnailImageView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public hideControllerPanel(Z)V
    .locals 4
    .parameter "needsave"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1471
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowAlltimes:Z

    if-eqz v0, :cond_0

    .line 1473
    invoke-virtual {p0, p1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->hideStatusSet(Z)V

    .line 1474
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1477
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowing:Z

    if-eqz v0, :cond_1

    .line 1479
    iput-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowing:Z

    .line 1480
    iput-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mOnScreenMenuShowing:Z

    .line 1481
    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->setVisibility(I)V

    .line 1484
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1485
    return-void
.end method

.method public hideRemainText()V
    .locals 0

    .prologue
    .line 1616
    return-void
.end method

.method public hideRightSet()V
    .locals 2

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRightSet:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1594
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mThumbnailImageView:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1595
    return-void
.end method

.method public hideSceneDialog()V
    .locals 0

    .prologue
    .line 1444
    return-void
.end method

.method public hideStatusSet(Z)V
    .locals 8
    .parameter "save"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1184
    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1186
    if-eqz p1, :cond_0

    .line 1188
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentFlash:I

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    .line 1229
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->updateController()V

    .line 1232
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1234
    iput-boolean v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowAlltimes:Z

    .line 1235
    iput v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    .line 1237
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1238
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1239
    return-void

    .line 1191
    :cond_1
    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    if-eq v1, v6, :cond_2

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    if-ne v1, v5, :cond_0

    .line 1194
    :cond_2
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesSet:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1197
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mleftStatusSet:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1200
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 1201
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectsButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 1202
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 1204
    if-eqz p1, :cond_0

    .line 1206
    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    if-ne v1, v6, :cond_3

    .line 1208
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentScene(I)V

    .line 1209
    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I

    invoke-static {v1}, Lcom/motorola/CameraF/CameraGlobalTools;->isFlashAdjustable(I)I

    move-result v0

    .line 1211
    .local v0, flash:I
    if-eq v0, v4, :cond_0

    .line 1212
    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentFlash:I

    .line 1213
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentFlash:I

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    goto :goto_0

    .line 1217
    .end local v0           #flash:I
    :cond_3
    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    if-ne v1, v4, :cond_4

    .line 1219
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentEffect:I

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentEffect(I)V

    goto :goto_0

    .line 1221
    :cond_4
    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    if-ne v1, v5, :cond_0

    .line 1223
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    goto :goto_0
.end method

.method public hideTopStatusSet()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1627
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusResolutionImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1628
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1629
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusTagEnableImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1630
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusModeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1631
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTagsSet:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1632
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRecordingIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1633
    return-void
.end method

.method public hideZoomControlSet()V
    .locals 0

    .prologue
    .line 1435
    return-void
.end method

.method public hideZoomSet()V
    .locals 2

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mZoomBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mZoomBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mZoomBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1431
    :cond_0
    return-void
.end method

.method public initTagsSet()V
    .locals 2

    .prologue
    .line 1024
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1025
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v1, "OnScreenController:initTagsSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_0
    const v0, 0x7f0e0042

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTagsSet:Landroid/view/View;

    .line 1028
    const v0, 0x7f0e0043

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLocationTagsView:Landroid/widget/TextView;

    .line 1029
    const v0, 0x7f0e0044

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mKeywordTagsView:Landroid/widget/TextView;

    .line 1030
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTagsSet:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1031
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTagsSet:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1033
    return-void
.end method

.method public initZoomSet()V
    .locals 4

    .prologue
    .line 1010
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getZoomNum()I

    move-result v0

    .line 1011
    .local v0, currentZoom:I
    const v1, 0x7f0e0045

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mZoomBar:Landroid/widget/ProgressBar;

    .line 1014
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mZoomBar:Landroid/widget/ProgressBar;

    sget v2, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_MAX_VALUE:I

    const/4 v3, 0x0

    sub-int/2addr v2, v3

    sget v3, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_STEP:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1015
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mZoomBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1020
    return-void
.end method

.method public isAdjusting()Z
    .locals 1

    .prologue
    .line 1525
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowAlltimes:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1520
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowing:Z

    return v0
.end method

.method public needCenterVF()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1530
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

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
    .line 1121
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1122
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v1, "onAnimationEnd() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1128
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1132
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1133
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v1, "onAnimationStart() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0xd

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 236
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v1, "onClick() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTouchRespond:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowing:Z

    if-nez v0, :cond_2

    .line 442
    :cond_1
    :goto_0
    return-void

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 245
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 251
    :sswitch_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 256
    :sswitch_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 258
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 266
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesSet:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    .line 268
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->initScenesSet()V

    .line 272
    :cond_4
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    if-ne v0, v3, :cond_5

    .line 274
    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->hideStatusSet(Z)V

    goto :goto_0

    .line 277
    :cond_5
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 279
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->hideStatusSet(Z)V

    .line 283
    :cond_6
    iput-boolean v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowAlltimes:Z

    .line 284
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mOnScreenMenuShowing:Z

    if-nez v0, :cond_7

    .line 286
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRightSet:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iput-boolean v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mOnScreenMenuShowing:Z

    .line 291
    :cond_7
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 294
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentEffect()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentEffect:I

    .line 295
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I

    .line 298
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicatorNum:I

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/IndicatorView;->setIndicatorNum(I)V

    .line 299
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesTitle:Landroid/widget/TextView;

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 302
    iput v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    .line 305
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->setImageGalleryResList()V

    .line 308
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I

    invoke-direct {p0, v0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->changeCurrentScenes(IZ)V

    .line 309
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 310
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectsButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 311
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 314
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesSet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesSet:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 318
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesSet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 321
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mleftStatusSet:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->hideRightSet()V

    .line 327
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 332
    :sswitch_2
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v0

    if-nez v0, :cond_8

    .line 333
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 335
    :cond_8
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 339
    :sswitch_3
    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->hideStatusSet(Z)V

    .line 340
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 341
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRightSet:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 342
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->show()V

    goto/16 :goto_0

    .line 346
    :sswitch_4
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->onClickPre()V

    goto/16 :goto_0

    .line 349
    :sswitch_5
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->onClickNext()V

    goto/16 :goto_0

    .line 352
    :sswitch_6
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_9

    .line 353
    const-string v0, "MotoOnScreenControllerPremium"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnScreenController:onClick:beneffect, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_9
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesSet:Landroid/widget/LinearLayout;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->initScenesSet()V

    .line 356
    :cond_a
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesSet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 357
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    if-ne v0, v5, :cond_b

    .line 358
    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->hideStatusSet(Z)V

    .line 359
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 361
    :cond_b
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 362
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->hideStatusSet(Z)V

    .line 365
    :cond_c
    iput-boolean v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowAlltimes:Z

    .line 368
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 370
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 371
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentEffect()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentEffect:I

    .line 372
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I

    .line 373
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesTitle:Landroid/widget/TextView;

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 374
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectIndicatorNum:I

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/IndicatorView;->setIndicatorNum(I)V

    .line 375
    iput v5, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    .line 376
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->setImageGalleryResList()V

    .line 377
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentEffect:I

    invoke-direct {p0, v0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->changeCurrentScenes(IZ)V

    .line 378
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 379
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectsButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 380
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 381
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesSet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 383
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesSet:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 384
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesSet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 385
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mleftStatusSet:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 386
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->hideRightSet()V

    .line 388
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 393
    :sswitch_7
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v0

    if-nez v0, :cond_f

    .line 396
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    if-ne v0, v5, :cond_d

    .line 398
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 403
    :cond_d
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->isFlashAdjustable(I)I

    move-result v0

    if-eq v0, v5, :cond_e

    .line 405
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 410
    :cond_e
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 418
    :cond_f
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->FLASH:Z

    if-eqz v0, :cond_11

    .line 420
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->torchSupported:Z

    if-nez v0, :cond_10

    .line 422
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 424
    :cond_10
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 430
    :cond_11
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 436
    :sswitch_8
    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->hideControllerPanel(Z)V

    .line 437
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_12

    .line 438
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v1, "OnScreenController:onClick:send message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_12
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 247
    :sswitch_data_0
    .sparse-switch
        0x7f0e0030 -> :sswitch_0
        0x7f0e0032 -> :sswitch_1
        0x7f0e0034 -> :sswitch_6
        0x7f0e0036 -> :sswitch_7
        0x7f0e0038 -> :sswitch_2
        0x7f0e0042 -> :sswitch_8
        0x7f0e0089 -> :sswitch_4
        0x7f0e008a -> :sswitch_5
        0x7f0e008c -> :sswitch_3
    .end sparse-switch
.end method

.method public onClickNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 445
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    if-ne v0, v2, :cond_2

    .line 446
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->scrollLeft()V

    goto :goto_0

    .line 452
    :cond_2
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 453
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/IndicatorView;->next()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentEffect:I

    .line 454
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectItemList:Ljava/util/List;

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentEffect:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentEffect:I

    .line 455
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentEffect:I

    invoke-direct {p0, v0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->changeCurrentScenes(IZ)V

    goto :goto_0

    .line 456
    :cond_3
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/IndicatorView;->next()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentMode:I

    .line 458
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeItemList:Ljava/util/List;

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentMode:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentMode:I

    .line 459
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentMode:I

    invoke-direct {p0, v0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->changeCurrentScenes(IZ)V

    goto :goto_0
.end method

.method public onClickPre()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 465
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    if-ne v0, v2, :cond_2

    .line 467
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesGallery:Lcom/motorola/CameraF/View/ScenesScroll;

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->scrollRight()V

    goto :goto_0

    .line 476
    :cond_2
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 477
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/IndicatorView;->previous()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentEffect:I

    .line 478
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectItemList:Ljava/util/List;

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentEffect:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentEffect:I

    .line 479
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentEffect:I

    invoke-direct {p0, v0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->changeCurrentScenes(IZ)V

    goto :goto_0

    .line 480
    :cond_3
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/IndicatorView;->previous()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentMode:I

    .line 482
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeItemList:Ljava/util/List;

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentMode:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentMode:I

    .line 483
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentMode:I

    invoke-direct {p0, v0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->changeCurrentScenes(IZ)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v4, "MotoOnScreenControllerPremium"

    .line 548
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 549
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "onFinishInflate() - Enter"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    const v0, 0x7f0e0031

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRightSet:Landroid/view/View;

    .line 552
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRightSet:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 555
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->initForMode()V

    .line 557
    const v0, 0x7f0e0030

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mThumbnailImageView:Landroid/widget/ImageButton;

    .line 558
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRemainText:Landroid/widget/TextView;

    .line 559
    const v0, 0x7f0e003f

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRecordingIndicatorView:Landroid/widget/ImageView;

    .line 560
    const v0, 0x7f0e0041

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRecordingTimeView:Landroid/widget/TextView;

    .line 561
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    const v0, 0x7f0e0032

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesButton:Landroid/widget/Button;

    .line 565
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    :cond_1
    const v0, 0x7f0e0034

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectsButton:Landroid/widget/Button;

    .line 570
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectsButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mEffectsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    :cond_2
    const v0, 0x7f0e0038

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeButton:Landroid/widget/Button;

    .line 577
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->trayDrawable:Landroid/graphics/drawable/Drawable;

    .line 579
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 581
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 582
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    :cond_3
    :goto_0
    const v0, 0x7f0e0036

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mFlashButton:Landroid/widget/Button;

    .line 591
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mFlashButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 593
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mFlashButton:Landroid/widget/Button;

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mFlashTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 594
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mFlashButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    :cond_4
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->initLeftStatusSet()V

    .line 601
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->initTagsSet()V

    .line 604
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->updateController()V

    .line 607
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->initZoomSet()V

    .line 611
    invoke-super {p0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->onFinishInflate()V

    .line 613
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    .line 614
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "onFinishInflate() - Exit"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_5
    return-void

    .line 585
    :cond_6
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mModeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public rightSetFadeOut()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const-string v3, "MotoOnScreenControllerPremium"

    .line 1303
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1304
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "rightSetFadeOut() - Enter"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mOnScreenMenuShowing:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowAlltimes:Z

    if-nez v0, :cond_3

    .line 1308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mOnScreenMenuShowing:Z

    .line 1309
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTagsSet:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1311
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTagsSet:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1314
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1316
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLockRightSet:Z

    if-nez v0, :cond_2

    .line 1326
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRightSet:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1332
    :cond_3
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    .line 1333
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "rightSetFadeOut() - Exit"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_4
    return-void
.end method

.method public scrollLeft()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "MotoOnScreenControllerPremium"

    .line 515
    const-string v1, "MotoOnScreenControllerPremium"

    const-string v1, "OnScreenControlPremium:scrollLeft"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 517
    const-string v1, "MotoOnScreenControllerPremium"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollLeft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mIsPre:Z

    .line 519
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesPre:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesCurrent:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v4, v1, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 521
    .local v0, transAnim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 522
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->animListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 523
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 525
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesCurrent:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 526
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesPre:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 527
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesNext:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 528
    return-void
.end method

.method public scrollRight()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 532
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mIsPre:Z

    .line 534
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesNext:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesCurrent:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v3, v1, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 536
    .local v0, transAnim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 537
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->animListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 538
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 539
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesCurrent:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 540
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesPre:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 541
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesNext:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 543
    return-void
.end method

.method public setParams(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    .line 1110
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainContext:Landroid/content/Context;

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTranslateIn:Landroid/view/animation/AnimationSet;

    .line 1113
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTranslateIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1114
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainContext:Landroid/content/Context;

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTranslateOut:Landroid/view/animation/AnimationSet;

    .line 1116
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTranslateOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1117
    return-void
.end method

.method public setRecordButton(Z)V
    .locals 3
    .parameter "recording"

    .prologue
    const-string v2, "MotoOnScreenControllerPremium"

    .line 1086
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1088
    if-nez p1, :cond_2

    .line 1090
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1091
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "OnScreenController:setRecordButton, stop recording"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRecordingIndicatorView:Landroid/widget/ImageView;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1105
    :cond_1
    :goto_0
    return-void

    .line 1098
    :cond_2
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    .line 1099
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "OnScreenController:setRecordButton, start recording"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRecordingIndicatorView:Landroid/widget/ImageView;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 1452
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->show(I)V

    .line 1453
    return-void
.end method

.method public show(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    const/16 v3, 0x8

    .line 1497
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowing:Z

    if-nez v0, :cond_0

    .line 1499
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->setVisibility(I)V

    .line 1500
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->invalidate()V

    .line 1501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowing:Z

    .line 1504
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mOnScreenMenuShowing:Z

    if-nez v0, :cond_1

    .line 1506
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->rightSetFadeIn()V

    .line 1509
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1510
    if-gtz p1, :cond_2

    .line 1512
    const/16 p1, 0x1388

    .line 1515
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1516
    return-void
.end method

.method public show(Z)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 1456
    iput-boolean p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLockRightSet:Z

    .line 1457
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->show(I)V

    .line 1458
    return-void
.end method

.method public showCameraCaptureControl(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 1463
    return-void
.end method

.method public showRemainText()V
    .locals 0

    .prologue
    .line 1622
    return-void
.end method

.method public showRightSet()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1599
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRightSet:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1602
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mPanCapturing:Z

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mThumbnailImageView:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1610
    :goto_0
    return-void

    .line 1608
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showTopStatusSet()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1638
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusResolutionImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1639
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusLocationImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1640
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusTagEnableImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1641
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusModeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1642
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTagsSet:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1643
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mRecordingIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1644
    return-void
.end method

.method public showZoomControlSet()V
    .locals 0

    .prologue
    .line 1439
    return-void
.end method

.method public startZoom()V
    .locals 2

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mZoomBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 1339
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v1, "OnScreenController:adjustZoom:mZoomProgressBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :goto_0
    return-void

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mZoomBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1343
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1344
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public toggleMediaControlsVisibility()V
    .locals 2

    .prologue
    const-string v1, "MotoOnScreenControllerPremium"

    .line 1535
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1536
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "toggleMediaControlsVisibility() - Enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mZoomBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1568
    :cond_1
    :goto_0
    return-void

    .line 1546
    :cond_2
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowAlltimes:Z

    if-nez v0, :cond_1

    .line 1550
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mShowing:Z

    if-nez v0, :cond_3

    .line 1552
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->show()V

    .line 1566
    :goto_1
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 1567
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "toggleMediaControlsVisibility() - Exit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1556
    :cond_3
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mOnScreenMenuShowing:Z

    if-eqz v0, :cond_4

    .line 1558
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->rightSetFadeOut()V

    goto :goto_1

    .line 1562
    :cond_4
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->rightSetFadeIn()V

    goto :goto_1
.end method

.method public touchZoomStatusUpdate()V
    .locals 0

    .prologue
    .line 1349
    return-void
.end method

.method public updateController()V
    .locals 2

    .prologue
    const-string v1, "MotoOnScreenControllerPremium"

    .line 1243
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1244
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "updateController() - Enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->updateButtons()V

    .line 1248
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->updateStatusIcons()V

    .line 1249
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->updateTagImg()V

    .line 1251
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 1252
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "updateController() - Exit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_1
    return-void
.end method

.method public updateLocationText()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1392
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    .line 1394
    .local v1, setting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLocationTagsView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1425
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getLocStatus()I

    move-result v2

    if-nez v2, :cond_2

    .line 1398
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1402
    :cond_2
    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getLocStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1404
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1406
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1408
    :cond_3
    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getLocStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1410
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1416
    :cond_4
    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAddress()Ljava/lang/String;

    move-result-object v0

    .line 1417
    .local v0, adr:Ljava/lang/String;
    if-nez v0, :cond_5

    .line 1418
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1423
    :goto_1
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1421
    :cond_5
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public updatePanoramaCaptureStatus(Z)V
    .locals 0
    .parameter "capturing"

    .prologue
    .line 1372
    iput-boolean p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mPanCapturing:Z

    .line 1373
    return-void
.end method

.method public updateStatusIcons()V
    .locals 2

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->updateResImg()V

    .line 950
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->updateTagsSet()V

    .line 953
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusModeImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/CameraF/CameraGlobalTools;->getStatusModeResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 954
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

    .line 1037
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v1

    .line 1038
    .local v1, isLocationOn:Z
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn()Z

    move-result v0

    .line 1040
    .local v0, isKeywordsOn:Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_7

    .line 1041
    :cond_0
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTagsSet:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    if-eqz v1, :cond_2

    .line 1044
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1045
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1046
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->updateLocationText()V

    .line 1054
    :goto_0
    if-eqz v0, :cond_6

    .line 1055
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mKeywordTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1056
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getAllTags()Ljava/util/List;

    move-result-object v3

    .line 1057
    .local v3, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1058
    .local v2, loadedTags:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v9, :cond_3

    .line 1059
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

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b003f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1069
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mKeywordTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    .end local v2           #loadedTags:Ljava/lang/String;
    .end local v3           #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 1050
    :cond_2
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLocationTagsView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1052
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1061
    .restart local v2       #loadedTags:Ljava/lang/String;
    .restart local v3       #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v9, :cond_4

    .line 1062
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

    .line 1063
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 1064
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #loadedTags:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #loadedTags:Ljava/lang/String;
    goto :goto_1

    .line 1065
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1066
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1071
    .end local v2           #loadedTags:Ljava/lang/String;
    .end local v3           #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mKeywordTagsView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mKeywordTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1077
    :cond_7
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mTagsSet:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1078
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1079
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mKeywordTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1080
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 12
    .parameter "image"
    .parameter "orientation"

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x0

    const-string v11, ", "

    const-string v10, "MotoOnScreenControllerPremium"

    .line 185
    const/4 v7, 0x0

    .line 187
    .local v7, finalBitmap:Landroid/graphics/Bitmap;
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "updateThumbnail() - Enter"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v9

    .line 191
    .local v9, width:I
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v8

    .line 193
    .local v8, height:I
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 194
    const-string v0, "MotoOnScreenControllerPremium"

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

    .line 199
    :cond_1
    if-eqz v9, :cond_2

    if-eqz v8, :cond_2

    if-nez p1, :cond_4

    .line 201
    :cond_2
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    .line 202
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "updateThumbnail() - either thumbnail is null or widthxheight of our VIEW isn\'t valid"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_3
    const/4 v7, 0x0

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 231
    return-void

    .line 208
    :cond_4
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    .line 209
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "updateThumbnail() - everything is valid, set mini thumbnail"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_5
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 212
    const-string v0, "MotoOnScreenControllerPremium"

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

    .line 214
    :cond_6
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    .line 215
    const-string v0, "MotoOnScreenControllerPremium"

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

    .line 218
    :cond_7
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 219
    .local v5, rotationMatrix:Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 220
    sub-int v0, v9, v4

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-int v2, v8, v4

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 224
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_8

    .line 225
    const-string v0, "MotoOnScreenControllerPremium"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE_THUMBNAIL() - everything is valid, scaled w and h is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method public updateZoom()V
    .locals 5

    .prologue
    .line 1353
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getZoomNum()I

    move-result v0

    .line 1355
    .local v0, currentZoom:I
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mZoomBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    .line 1357
    const-string v1, "MotoOnScreenControllerPremium"

    const-string v2, "OnScreenController:adjustZoom:mZoomProgressBar is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :goto_0
    return-void

    .line 1362
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mZoomBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    sub-int v2, v0, v2

    sget v3, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_STEP:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1364
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public updateZoom(I)V
    .locals 4
    .parameter "zoomNum"

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mZoomBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 1377
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v1, "OnScreenController:adjustZoom:mZoomProgressBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :goto_0
    return-void

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mZoomBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    sub-int v1, p1, v1

    sget v2, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_STEP:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1384
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
