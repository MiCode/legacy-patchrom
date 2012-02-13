.class public Lcom/motorola/CameraF/CamSetting/CamSetting;
.super Ljava/lang/Object;
.source "CamSetting.java"


# static fields
.field private static final KEYWORD_PREFIX_C:Ljava/lang/String; = "camera "

.field private static final KEYWORD_PREFIX_V:Ljava/lang/String; = "video "

.field private static final KEY_EXPOSURE_VALUE:Ljava/lang/String; = "Exposure"

.field protected static final KEY_FACE_TRACKING:Ljava/lang/String; = "Face Detection"

.field private static final KEY_IMAGE_STABILIZATION:Ljava/lang/String; = "Image Stabilization"

.field private static final KEY_ISO_VALUE:Ljava/lang/String; = "ISO equivalent senstivity"

.field private static final KEY_MUTE_AUDIO:Ljava/lang/String; = "Mute Audio"

.field protected static final KEY_REVIEW_TIME:Ljava/lang/String; = "Review Time"

.field protected static final KEY_SHUTTER_ANIMATION:Ljava/lang/String; = "Shutter Animation"

.field protected static final KEY_SHUTTER_TONE_SWITCH:Ljava/lang/String; = "Shutter Tone"

.field private static final MODE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MotoCamSetting"

.field private static cameraLaunchedFromCamcorder:Z

.field private static currentAudioZoom:Z

.field private static mSelf:Lcom/motorola/CameraF/CamSetting/CamSetting;


# instance fields
.field private AESSensorVidResolutions:Ljava/lang/String;

.field private currentAESResolution:Ljava/lang/String;

.field private currentAddress:Ljava/lang/String;

.field private currentAppMode:I

.field private currentEffect:I

.field private currentEffectV:I

.field private currentExpValue:Ljava/lang/String;

.field private currentFlash:I

.field private currentFlashV:I

.field private currentIsoValue:Ljava/lang/String;

.field private currentMode:I

.field private currentModeV:I

.field private currentPanShotResolution:Ljava/lang/String;

.field private currentReslVService:Ljava/lang/String;

.field private currentScene:I

.field private currentSceneV:I

.field private currentSingleShotResolution:Ljava/lang/String;

.field private currentStitchMode:Ljava/lang/String;

.field private currentVideoResolution:Ljava/lang/String;

.field private currentZoom:I

.field private currentZoomV:I

.field public effect_num_c:I

.field public effect_num_v:I

.field public expValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public featureFaceDetectionEnabled:Z

.field public featureMultishotEnabled:Z

.field public featurePanoramaEnabled:Z

.field private focusViewHeight:F

.field private focusViewWidth:F

.field private isAutoShareOn:Z

.field private isInfiniteFocus:Z

.field private isKeyWordTagsOn:Z

.field private isLocationOn:Z

.field private isSearchingLoc:I

.field public isoValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private lastCamcorderMode:I

.field private lastCameraMode:I

.field private mAudioBitrate:I

.field public mAutoFocusAvailable:Z

.field private mContext:Landroid/content/Context;

.field private mInScroll:Z

.field private mIsServiceMode:Z

.field private mLoadSettingPref:Landroid/content/SharedPreferences;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mReturnFromTag:Z

.field public mSDEncryptionEnabled:Z

.field private mSupportedScenesList:Ljava/lang/String;

.field private mVideoBitrate:I

.field private mVideoModesEnabled:Z

.field private maxPanResolution:Ljava/lang/String;

.field private maxPicResolution:Ljava/lang/String;

.field private minPicResolution:Ljava/lang/String;

.field private misTrackingFace:Z

.field public mode_num:I

.field public panResolutionEntries:[Ljava/lang/CharSequence;

.field public panResolutionImgs:[Ljava/lang/Integer;

.field public panResolutionValues:[Ljava/lang/CharSequence;

.field public picResolutionEntries:[Ljava/lang/CharSequence;

.field public picResolutionImgs:[Ljava/lang/Integer;

.field public picResolutionValues:[Ljava/lang/CharSequence;

.field public scene_num_c:I

.field public scene_num_v:I

.field private sensorExpValues:Ljava/lang/String;

.field private sensorFlashModes:Ljava/lang/String;

.field private sensorFocusModes:Ljava/lang/String;

.field private sensorIsoValues:Ljava/lang/String;

.field public sensorSupportedVidResList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sensorVidResolutions:Ljava/lang/String;

.field public serviceModeResolution:Ljava/lang/String;

.field public supportedPanResolutionEntries:[Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public torchSupported:Z

.field public videoResolutionEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public videoResolutionImgs:[I

.field public videoResolutionSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public videoResolutionValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAudioZoom:Z

    .line 168
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->cameraLaunchedFromCamcorder:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "tx"

    .prologue
    const/4 v4, 0x3

    const/high16 v3, 0x42c8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->tags:Ljava/util/List;

    .line 61
    iput-boolean v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn:Z

    .line 62
    iput-boolean v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isSearchingLoc:I

    .line 71
    iput-boolean v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mReturnFromTag:Z

    .line 74
    iput-boolean v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mInScroll:Z

    .line 77
    iput v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->focusViewWidth:F

    .line 78
    iput v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->focusViewHeight:F

    .line 81
    iput v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->scene_num_c:I

    .line 82
    iput v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->scene_num_v:I

    .line 83
    iput v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->effect_num_c:I

    .line 84
    iput v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->effect_num_v:I

    .line 86
    iput v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mode_num:I

    .line 90
    iput-object v2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionEntries:[Ljava/lang/CharSequence;

    .line 91
    iput-object v2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionValues:[Ljava/lang/CharSequence;

    .line 92
    iput-object v2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionImgs:[Ljava/lang/Integer;

    .line 114
    iput v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->lastCameraMode:I

    .line 115
    const/16 v0, 0x8

    iput v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->lastCamcorderMode:I

    .line 118
    const-string v0, "OneMP"

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->serviceModeResolution:Ljava/lang/String;

    .line 121
    iput v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentZoom:I

    .line 128
    const-string v0, "left-right"

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentStitchMode:Ljava/lang/String;

    .line 129
    iput-boolean v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInfiniteFocus:Z

    .line 130
    iput-boolean v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->misTrackingFace:Z

    .line 132
    iput v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentZoomV:I

    .line 143
    const-string v0, "QVGA"

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentReslVService:Ljava/lang/String;

    .line 158
    iput-boolean v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->torchSupported:Z

    .line 159
    iput-boolean v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSDEncryptionEnabled:Z

    .line 162
    const v0, 0x7a1200

    iput v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mVideoBitrate:I

    .line 163
    const v0, 0x17700

    iput v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mAudioBitrate:I

    .line 165
    iput-object v2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAddress:Ljava/lang/String;

    .line 178
    iput-boolean v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mAutoFocusAvailable:Z

    .line 187
    if-eqz p1, :cond_0

    .line 189
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    .line 192
    const-string v0, "com.motorola.CameraF_preferences"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    .line 195
    const-string v0, "com.motorola.CameraF_pref_loadsetting"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mLoadSettingPref:Landroid/content/SharedPreferences;

    .line 199
    invoke-virtual {p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->load()V

    .line 202
    invoke-virtual {p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->loadConfig()I

    .line 205
    iput v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentMode:I

    .line 208
    :cond_0
    return-void
.end method

.method private createLoadSettingPref()V
    .locals 11

    .prologue
    const/16 v9, 0x8

    const-string v10, "video "

    const-string v8, "camera "

    .line 757
    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    const-string v6, "com.motorola.CameraF_pref_loadsetting"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mLoadSettingPref:Landroid/content/SharedPreferences;

    .line 759
    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mLoadSettingPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 760
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 762
    const/4 v1, 0x0

    .line 764
    .local v1, i:I
    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 765
    .local v4, settingItem:[Ljava/lang/String;
    :goto_0
    if-ge v1, v9, :cond_0

    .line 766
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camera "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, itemKeyword:Ljava/lang/String;
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->sceneListC:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 768
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 771
    .end local v2           #itemKeyword:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 772
    const/4 v3, 0x0

    .line 773
    .local v3, scene_num:I
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    if-eqz v5, :cond_1

    .line 774
    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 775
    const/4 v3, 0x5

    .line 780
    :goto_1
    if-ge v1, v3, :cond_2

    .line 781
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 782
    .restart local v2       #itemKeyword:Ljava/lang/String;
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->sceneListV:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 783
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 777
    .end local v2           #itemKeyword:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 778
    const/4 v3, 0x2

    goto :goto_1

    .line 786
    :cond_2
    const/4 v1, 0x0

    .line 787
    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 788
    :goto_2
    if-ge v1, v9, :cond_3

    .line 789
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camera "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 790
    .restart local v2       #itemKeyword:Ljava/lang/String;
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->effectListC:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 791
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 792
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->effectListV:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 793
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 796
    .end local v2           #itemKeyword:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .line 797
    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 798
    :goto_3
    const/4 v5, 0x7

    if-ge v1, v5, :cond_4

    .line 799
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camera "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 800
    .restart local v2       #itemKeyword:Ljava/lang/String;
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 801
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 804
    .end local v2           #itemKeyword:Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 806
    return-void
.end method

.method public static getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSelf:Lcom/motorola/CameraF/CamSetting/CamSetting;

    return-object v0
.end method

.method public static declared-synchronized initCamSetting(Landroid/content/Context;)V
    .locals 3
    .parameter "mc"

    .prologue
    const-string v0, "MotoCamSetting"

    .line 212
    const-class v0, Lcom/motorola/CameraF/CamSetting/CamSetting;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 213
    const-string v1, "MotoCamSetting"

    const-string v2, "initCamSetting() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    if-eqz p0, :cond_1

    .line 219
    new-instance v1, Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-direct {v1, p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSelf:Lcom/motorola/CameraF/CamSetting/CamSetting;

    .line 220
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 221
    const-string v1, "MotoCamSetting"

    const-string v2, "new CamSetting instance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 225
    const-string v1, "MotoCamSetting"

    const-string v2, "initCamSetting() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_2
    monitor-exit v0

    return-void

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isCamSettingInit()Z
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSelf:Lcom/motorola/CameraF/CamSetting/CamSetting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraLaunchedFromCamcorder()Z
    .locals 1

    .prologue
    .line 243
    sget-boolean v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->cameraLaunchedFromCamcorder:Z

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadFlexValue()I
    .locals 21

    .prologue
    .line 617
    sget-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v17, :cond_0

    .line 618
    const-string v17, "MotoCamSetting"

    const-string v18, "loadFlexValue() - Enter"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v7, entriesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v15, valuesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080004

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->IMAGE_STABILIZATION:Z

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080005

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->PANORAMA:Z

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/high16 v18, 0x7f09

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sput-object v17, Lcom/motorola/CameraF/CameraGlobalType;->SCREEN_DELAY:Ljava/lang/Integer;

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090001

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    sput v17, Lcom/motorola/CameraF/CameraGlobalType;->INACTIVITY_TIMEOUT_THRESHOLD:I

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080006

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->MMS_SUPPORT_FLEX:Z

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sput-object v17, Lcom/motorola/CameraF/CameraGlobalType;->MMS_VIDEO_CAPTURE_RESOLUTION_WIDTH:Ljava/lang/Integer;

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090003

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sput-object v17, Lcom/motorola/CameraF/CameraGlobalType;->MMS_VIDEO_CAPTURE_RESOLUTION_HEIGHT:Ljava/lang/Integer;

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090004

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sput-object v17, Lcom/motorola/CameraF/CameraGlobalType;->MMS_VIDEO_CAPTURE_DURATION:Ljava/lang/Integer;

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080007

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->MMS_VIDEO_PAUSE_RESUME:Z

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080008

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080009

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_AUDIO_ZOOM_SETTING:Z

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f08000b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->REMAINING_REC_TIME:Z

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f08000c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->FLASH:Z

    .line 640
    sget-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->FLASH:Z

    if-nez v17, :cond_1

    const/16 v17, 0x1

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->LED:Z

    .line 642
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f08000d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->FACE_TRACKING:Z

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090005

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sput-object v17, Lcom/motorola/CameraF/CameraGlobalType;->NO_OF_FACES:Ljava/lang/Integer;

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f08000e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->SELF_SHOT:Z

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f08000f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->MULTISHOT:Z

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080010

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->FASTMOTION_REC:Z

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080011

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->SLOWMOTION_REC:Z

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080012

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->VIDEO_CAM_DELTA:Z

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080013

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->ZOOMKEY_ONSCREEN:Z

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080014

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->CAPTUREKEY_ONSCREEN:Z

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f08000d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_FACE_TRACK_SETTING:Z

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080016

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_EXP_SETTING:Z

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080015

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_ISO_SETTING:Z

    .line 662
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 663
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 666
    const/4 v11, 0x0

    .line 667
    .local v11, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f07001b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_3

    aget-object v8, v5, v10

    .line 668
    .local v8, flexentry:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "bool"

    const-string v20, "com.motorola.CameraF"

    move-object/from16 v0, v18

    move-object v1, v8

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f070019

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    aget-object v17, v17, v11

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f07001a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    aget-object v17, v17, v11

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 667
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 674
    .end local v8           #flexentry:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    sput-object v17, Lcom/motorola/CameraF/CameraGlobalType;->reviewTimeEntries:[Ljava/lang/CharSequence;

    .line 676
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    sput-object v17, Lcom/motorola/CameraF/CameraGlobalType;->reviewTimeValues:[Ljava/lang/CharSequence;

    .line 678
    sget-object v17, Lcom/motorola/CameraF/CameraGlobalType;->reviewTimeEntries:[Ljava/lang/CharSequence;

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 679
    sget-object v17, Lcom/motorola/CameraF/CameraGlobalType;->reviewTimeValues:[Ljava/lang/CharSequence;

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 714
    .local v6, display:Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v17

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v17

    move/from16 v16, v17

    .line 715
    .local v16, width:I
    :goto_1
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v17

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v17

    move/from16 v9, v17

    .line 717
    .local v9, height:I
    :goto_2
    const/4 v13, 0x0

    .line 718
    .local v13, premium:Z
    const/16 v17, 0x1e0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_b

    const/16 v17, 0x140

    move v0, v9

    move/from16 v1, v17

    if-lt v0, v1, :cond_b

    .line 719
    const/4 v13, 0x1

    .line 720
    sget-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v17, :cond_4

    .line 721
    const-string v17, "MotoCamSetting"

    const-string v18, "loadFlexValue() - Based on display size, selecting PREMIUM camera mode"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_4
    :goto_3
    if-nez v13, :cond_5

    .line 731
    const/16 v17, 0x0

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    .line 732
    const/16 v17, 0x0

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->camHardKeyPresent:Z

    .line 733
    const/16 v17, 0x0

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->correctVolumeKeyPlacement:Z

    .line 734
    const/16 v17, 0x0

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->FACE_TRACKING:Z

    .line 735
    const/16 v17, 0x0

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    .line 739
    :cond_5
    const-string v17, "ro.media.capture.shuttertone"

    const-string v18, "0"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 740
    .local v14, shutterToneUI:Ljava/lang/String;
    const-string v17, "ro.camera.sound.forced"

    const-string v18, "0"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 742
    .local v4, ForceShutterTone:Ljava/lang/String;
    const-string v17, "1"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    const-string v17, "0"

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 744
    const/16 v17, 0x1

    sput-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->SHUTTER_TONE_MENU_ENABLED:Z

    .line 748
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isDriod2()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->droidDisableFunctions()V

    .line 750
    :cond_7
    sget-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v17, :cond_8

    .line 751
    const-string v17, "MotoCamSetting"

    const-string v18, "loadFlexValue() - Exit"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_8
    const/16 v17, 0x1

    return v17

    .line 714
    .end local v4           #ForceShutterTone:Ljava/lang/String;
    .end local v9           #height:I
    .end local v13           #premium:Z
    .end local v14           #shutterToneUI:Ljava/lang/String;
    .end local v16           #width:I
    :cond_9
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v17

    move/from16 v16, v17

    goto/16 :goto_1

    .line 715
    .restart local v16       #width:I
    :cond_a
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v17

    move/from16 v9, v17

    goto/16 :goto_2

    .line 724
    .restart local v9       #height:I
    .restart local v13       #premium:Z
    :cond_b
    sget-boolean v17, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v17, :cond_4

    .line 725
    const-string v17, "MotoCamSetting"

    const-string v18, "loadFlexValue() - Based on display size, selecting BASIC camera mode"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static setCameraLaunchFromCamcorderFlag(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 252
    const-string v0, "MotoCamSetting"

    const-string v1, "setCamcorderFromCameraFlag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sput-boolean p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->cameraLaunchedFromCamcorder:Z

    .line 254
    return-void
.end method


# virtual methods
.method public IsAudioZoomOn()Z
    .locals 3

    .prologue
    .line 1407
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_AUDIO_ZOOM_SETTING:Z

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentAudioZoom"

    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->AUDIO_ZOOM:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetAudioZoom(Z)V
    .locals 2
    .parameter "toggle"

    .prologue
    .line 1416
    iget-object v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1417
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sput-boolean p1, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAudioZoom:Z

    .line 1418
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->save()V

    .line 1419
    return-void
.end method

.method public addNewTag(Ljava/lang/String;)Z
    .locals 2
    .parameter "tag"

    .prologue
    .line 1473
    :try_start_0
    iget-object v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->tags:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1474
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1475
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearTags()V
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1483
    return-void
.end method

.method public droidDisableFunctions()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1698
    sput-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    .line 1699
    sput-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_AUDIO_ZOOM_SETTING:Z

    .line 1700
    const-string v0, "MotoCamSetting"

    const-string v1, "Droid2 disabel the Droid2 720p"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    return-void
.end method

.method public enableAutoFocus()V
    .locals 1

    .prologue
    .line 1754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mAutoFocusAvailable:Z

    .line 1756
    return-void
.end method

.method public getAllTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getAudioBitrate()I
    .locals 1

    .prologue
    .line 1713
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mAudioBitrate:I

    return v0
.end method

.method public getCurrentAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentAppMode()I
    .locals 1

    .prologue
    .line 1366
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    return v0
.end method

.method public getCurrentCameraMode()I
    .locals 2

    .prologue
    .line 1179
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1180
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentMode:I

    .line 1184
    :goto_0
    return v0

    .line 1181
    :cond_0
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1182
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentModeV:I

    goto :goto_0

    .line 1184
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentEffect()I
    .locals 2

    .prologue
    .line 1164
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1166
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentEffect:I

    .line 1174
    :goto_0
    return v0

    .line 1168
    :cond_0
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1170
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentEffectV:I

    goto :goto_0

    .line 1174
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentExpValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentExpValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFlash()I
    .locals 2

    .prologue
    .line 1206
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1208
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentFlash:I

    .line 1214
    :goto_0
    return v0

    .line 1210
    :cond_0
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1212
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentFlashV:I

    goto :goto_0

    .line 1214
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentIsoValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentIsoValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPanShotRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentPanShotResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPanShotResDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentPanShotResolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScene()I
    .locals 3

    .prologue
    .line 1147
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1149
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentScene:I

    .line 1158
    :goto_0
    return v0

    .line 1151
    :cond_0
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentSceneVideo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 1158
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentSingleShotRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1031
    invoke-virtual {p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSingleShotResDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentVideoResDimensions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAESResolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1002
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentVideoResolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpValues()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorExpValues:Ljava/lang/String;

    return-object v0
.end method

.method public getFlashModes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorFlashModes:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusModes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorFocusModes:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusViewHeight()F
    .locals 1

    .prologue
    .line 1122
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->focusViewHeight:F

    return v0
.end method

.method public getFocusViewWidth()F
    .locals 1

    .prologue
    .line 1117
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->focusViewWidth:F

    return v0
.end method

.method public getIsoValues()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorIsoValues:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCamcorderMode()I
    .locals 1

    .prologue
    .line 1201
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->lastCamcorderMode:I

    return v0
.end method

.method public getLastCameraMode()I
    .locals 1

    .prologue
    .line 1193
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->lastCameraMode:I

    return v0
.end method

.method public getLocStatus()I
    .locals 1

    .prologue
    .line 1663
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isSearchingLoc:I

    return v0
.end method

.method public getMaxPanResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPanResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPicResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getMinPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->minPicResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getPanResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentPanShotResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getPanoramaResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1371
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mIsServiceMode:Z

    if-eqz v0, :cond_0

    .line 1373
    const-string v0, "OneMP"

    .line 1378
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentPanShotResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPicResolution()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1243
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mIsServiceMode:Z

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->serviceModeResolution:Ljava/lang/String;

    .line 1253
    :goto_0
    return-object v0

    .line 1247
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1249
    const-string v0, "OneMP"

    goto :goto_0

    .line 1253
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentSingleShotResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public getReviewTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1436
    const-string v0, "0"

    return-object v0
.end method

.method public getSensorVidResList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1288
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->AESSensorVidResolutions:Ljava/lang/String;

    .line 1295
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorVidResolutions:Ljava/lang/String;

    goto :goto_0
.end method

.method public getShutterAnimation()Z
    .locals 3

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Shutter Animation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShutterToneOn()Z
    .locals 3

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Shutter Tone"

    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getStitchMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentStitchMode:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedScenes()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1748
    const-string v0, "MotoCamSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportedScenesList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSupportedScenesList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSupportedScenesList:Ljava/lang/String;

    return-object v0
.end method

.method public getTagsListForDB()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1493
    .local v0, tagsToDB:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1501
    iget-object v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn:Z

    if-eqz v1, :cond_1

    .line 1504
    iget-object v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->tags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1506
    :cond_1
    return-object v0
.end method

.method public getTagsString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1511
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1513
    .local v1, keywords:Ljava/lang/StringBuffer;
    iget-boolean v2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1515
    iget-object v2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1518
    :cond_0
    iget-boolean v2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->tags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1520
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->tags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1522
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1523
    iget-object v2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->tags:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1526
    .end local v0           #i:I
    :cond_1
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    .line 1527
    const-string v2, "MotoCamSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CamSetting:getTagsString: return tags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getVideoBitrate()I
    .locals 1

    .prologue
    .line 1707
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mVideoBitrate:I

    return v0
.end method

.method public getVideoResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1446
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mIsServiceMode:Z

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentReslVService:Ljava/lang/String;

    .line 1457
    :goto_0
    return-object v0

    .line 1450
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_1

    .line 1452
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAESResolution:Ljava/lang/String;

    goto :goto_0

    .line 1457
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentVideoResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public getZoomNum()I
    .locals 2

    .prologue
    .line 1136
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1137
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentZoom:I

    .line 1141
    :goto_0
    return v0

    .line 1138
    :cond_0
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1139
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentZoomV:I

    goto :goto_0

    .line 1141
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getcurrentExposure()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Exposure"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getcurrentISO()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ISO equivalent senstivity"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAudioMuted()Z
    .locals 3

    .prologue
    .line 1398
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_MUTE_AUDIO_SETTING:Z

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Mute Audio"

    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->MUTE_AUDIO:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1401
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoFocusSupported()Z
    .locals 1

    .prologue
    .line 1758
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mAutoFocusAvailable:Z

    return v0
.end method

.method public isAutoShare()Z
    .locals 1

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoShareOn:Z

    return v0
.end method

.method public isDriod2()Z
    .locals 6

    .prologue
    const-string v5, "MotoCamSetting"

    const-string v4, "Droid2 isDroid2 in setting"

    .line 1687
    const/4 v1, 0x0

    .line 1688
    .local v1, misDroid2:Z
    const-string v2, "ro.media.capture.maxres"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1689
    .local v0, highCamRes:Ljava/lang/String;
    const-string v2, "8m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1690
    const/4 v1, 0x0

    .line 1693
    :goto_0
    const-string v2, "MotoCamSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Droid2 isDroid2 in setting"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const-string v2, "MotoCamSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Droid2 isDroid2 in setting"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    return v1

    .line 1692
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isFaceTrackingOn()Z
    .locals 3

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Face Detection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isInScroll()Z
    .locals 1

    .prologue
    .line 1107
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mInScroll:Z

    return v0
.end method

.method public isInServiceMode()Z
    .locals 1

    .prologue
    .line 1087
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mIsServiceMode:Z

    return v0
.end method

.method public isInfiniteFocus()Z
    .locals 1

    .prologue
    .line 1677
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInfiniteFocus:Z

    return v0
.end method

.method public isKeyWordTagsOn()Z
    .locals 1

    .prologue
    .line 1077
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn:Z

    return v0
.end method

.method public isLocationOn()Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn:Z

    return v0
.end method

.method public isReturnFromTag()Z
    .locals 1

    .prologue
    .line 1097
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mReturnFromTag:Z

    return v0
.end method

.method public isVideoModesEnabled()Z
    .locals 1

    .prologue
    .line 1733
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mVideoModesEnabled:Z

    return v0
.end method

.method public load()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v10, "QVGA"

    const-string v9, "MotoCamSetting"

    .line 811
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 812
    const-string v3, "MotoCamSetting"

    const-string v3, "load() - Enter"

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_0
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->tags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 818
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tagsNum"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 819
    .local v2, tagsNum:I
    const/4 v0, 0x0

    .line 820
    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->tags:Ljava/util/List;

    iget-object v4, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    add-int/lit8 v0, v0, 0x1

    .line 825
    goto :goto_0

    .line 828
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "maxPicResolution"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPicResolution:Ljava/lang/String;

    .line 831
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "maxPanResolution"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPanResolution:Ljava/lang/String;

    .line 834
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "sensorVidResolutions"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorVidResolutions:Ljava/lang/String;

    .line 836
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "AESSensorVidResolutions"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->AESSensorVidResolutions:Ljava/lang/String;

    .line 839
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "currentSingleShotResolution"

    const-string v5, "ThreeMP"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentSingleShotResolution:Ljava/lang/String;

    .line 842
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "currentVideoResolution"

    const-string v5, "QVGA"

    invoke-interface {v3, v4, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentVideoResolution:Ljava/lang/String;

    .line 845
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "currentAESResolution"

    const-string v5, "QVGA"

    invoke-interface {v3, v4, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAESResolution:Ljava/lang/String;

    .line 848
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "currentPanShotResolution"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentPanShotResolution:Ljava/lang/String;

    .line 851
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "isLocationOn"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn:Z

    .line 854
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "isKeyWordTagsOn"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn:Z

    .line 856
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "isAutoShareOn"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoShareOn:Z

    .line 859
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "currentFaceTracking"

    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->FACE_TRACKING:Z

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->misTrackingFace:Z

    .line 862
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "currentEffect"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentEffect:I

    .line 865
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "currentScene"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentScene:I

    .line 868
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "currentAudioZoom"

    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->AUDIO_ZOOM:Z

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAudioZoom:Z

    .line 881
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "sensorFlashModes"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorFlashModes:Ljava/lang/String;

    .line 882
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "sensorFocusModes"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorFocusModes:Ljava/lang/String;

    .line 885
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "currentFlash"

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentFlash:I

    .line 888
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "currentEffectVideo"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentEffectV:I

    .line 901
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "currentFlashVideo"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentFlashV:I

    .line 903
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v3, :cond_2

    .line 905
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "sensorIsoValues"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorIsoValues:Ljava/lang/String;

    .line 907
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "currentIsoValue"

    const-string v5, "auto"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentIsoValue:Ljava/lang/String;

    .line 910
    :cond_2
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "sensorExpValues"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorExpValues:Ljava/lang/String;

    .line 914
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "currentExpValue"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentExpValue:Ljava/lang/String;

    .line 917
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "currentMode"

    const/16 v5, 0x8

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentModeV:I

    .line 919
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "featureMultishotEnabled"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureMultishotEnabled:Z

    .line 920
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "featureFaceDetectionEnabled"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureFaceDetectionEnabled:Z

    .line 921
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "featurePanoramaEnabled"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featurePanoramaEnabled:Z

    .line 922
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "VideoModesEnabled"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mVideoModesEnabled:Z

    .line 923
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "DynamicFocusRegionEnabled"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    .line 925
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "torchSupported"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->torchSupported:Z

    .line 926
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "mSupportedScenesList"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSupportedScenesList:Ljava/lang/String;

    .line 928
    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "mAutoFocusAvailable"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mAutoFocusAvailable:Z

    .line 929
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_3

    .line 930
    const-string v3, "MotoCamSetting"

    const-string v3, "load() - Exit"

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_3
    return-void
.end method

.method public loadAutoDetectValues()V
    .locals 26

    .prologue
    .line 331
    sget-boolean v21, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v21, :cond_0

    .line 333
    const-string v21, "MotoCamSetting"

    const-string v22, "loadAutoDetectValues() - Enter"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v2, entriesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v19, valuesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v4, imgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 343
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 344
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPicResolution:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "EightMPW"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/high16 v22, 0x7f07

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 353
    .local v18, titleArr:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070001

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 354
    .local v14, resValueArr:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070002

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 356
    .local v10, resImgArr:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, ind:I
    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 357
    aget-object v21, v18, v5

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    aget-object v21, v14, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    aget-object v22, v10, v5

    const-string v23, "drawable"

    const-string v24, "com.motorola.CameraF"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 362
    .end local v5           #ind:I
    .end local v10           #resImgArr:[Ljava/lang/String;
    .end local v14           #resValueArr:[Ljava/lang/String;
    .end local v18           #titleArr:[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPicResolution:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "EightMP"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070004

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 365
    .restart local v18       #titleArr:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070005

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 366
    .restart local v14       #resValueArr:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070006

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 368
    .restart local v10       #resImgArr:[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5       #ind:I
    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 369
    aget-object v21, v18, v5

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    aget-object v21, v14, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    aget-object v22, v10, v5

    const-string v23, "drawable"

    const-string v24, "com.motorola.CameraF"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 374
    .end local v5           #ind:I
    .end local v10           #resImgArr:[Ljava/lang/String;
    .end local v14           #resValueArr:[Ljava/lang/String;
    .end local v18           #titleArr:[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPicResolution:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "FiveMPW"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070008

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 377
    .restart local v18       #titleArr:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070009

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 378
    .restart local v14       #resValueArr:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07000a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 379
    .restart local v10       #resImgArr:[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5       #ind:I
    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 380
    aget-object v21, v18, v5

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    aget-object v21, v14, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    aget-object v22, v10, v5

    const-string v23, "drawable"

    const-string v24, "com.motorola.CameraF"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 385
    .end local v5           #ind:I
    .end local v10           #resImgArr:[Ljava/lang/String;
    .end local v14           #resValueArr:[Ljava/lang/String;
    .end local v18           #titleArr:[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPicResolution:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "FiveMP"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07000c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 388
    .restart local v18       #titleArr:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07000d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 389
    .restart local v14       #resValueArr:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07000e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 390
    .restart local v10       #resImgArr:[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5       #ind:I
    :goto_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 391
    aget-object v21, v18, v5

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    aget-object v21, v14, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    aget-object v22, v10, v5

    const-string v23, "drawable"

    const-string v24, "com.motorola.CameraF"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 399
    .end local v5           #ind:I
    .end local v10           #resImgArr:[Ljava/lang/String;
    .end local v14           #resValueArr:[Ljava/lang/String;
    .end local v18           #titleArr:[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070010

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 400
    .restart local v18       #titleArr:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070011

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 401
    .restart local v14       #resValueArr:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070012

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 402
    .restart local v10       #resImgArr:[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5       #ind:I
    :goto_4
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 403
    aget-object v21, v18, v5

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    aget-object v21, v14, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    aget-object v22, v10, v5

    const-string v23, "drawable"

    const-string v24, "com.motorola.CameraF"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 410
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionEntries:[Ljava/lang/CharSequence;

    .line 411
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionValues:[Ljava/lang/CharSequence;

    .line 412
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionImgs:[Ljava/lang/Integer;

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionEntries:[Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionValues:[Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionImgs:[Ljava/lang/Integer;

    move-object/from16 v21, v0

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 416
    sget-boolean v21, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v21, :cond_6

    .line 418
    const-string v21, "MotoCamSetting"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "loadAutoDetectValues() - setMinPicResolution to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070011

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f070010

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    sub-int v24, v24, v25

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_6
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070011

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070010

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setMinPicResolution(Ljava/lang/String;)V

    .line 423
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 424
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 425
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPanResolution:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "EightMPW"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/high16 v22, 0x7f07

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070001

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070002

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 433
    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 434
    aget-object v21, v18, v5

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    aget-object v21, v14, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    aget-object v22, v10, v5

    const-string v23, "drawable"

    const-string v24, "com.motorola.CameraF"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 439
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPanResolution:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "EightMP"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070004

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070005

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070006

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 445
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 446
    aget-object v21, v18, v5

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    aget-object v21, v14, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    aget-object v22, v10, v5

    const-string v23, "drawable"

    const-string v24, "com.motorola.CameraF"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 451
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPanResolution:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "FiveMPW"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070008

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070009

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07000a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 456
    const/4 v5, 0x0

    :goto_7
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 457
    aget-object v21, v18, v5

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    aget-object v21, v14, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    aget-object v22, v10, v5

    const-string v23, "drawable"

    const-string v24, "com.motorola.CameraF"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 462
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPanResolution:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "FiveMP"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07000c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07000d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07000e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 467
    const/4 v5, 0x0

    :goto_8
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 468
    aget-object v21, v18, v5

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    aget-object v21, v14, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    aget-object v22, v10, v5

    const-string v23, "drawable"

    const-string v24, "com.motorola.CameraF"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 474
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPanResolution:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "ThreeMP"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070010

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070011

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070012

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 479
    const/4 v5, 0x0

    :goto_9
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 480
    aget-object v21, v18, v5

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    aget-object v21, v14, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    aget-object v22, v10, v5

    const-string v23, "drawable"

    const-string v24, "com.motorola.CameraF"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 490
    :cond_b
    sget-boolean v21, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v21, :cond_c

    .line 491
    const-string v21, "MotoCamSetting"

    const-string v22, "loadFlexValue() - No valid resolutions from sensor, defaulting to 3MP for Panorama settings"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070010

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070011

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070012

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 495
    const/4 v5, 0x0

    :goto_a
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 496
    aget-object v21, v18, v5

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    aget-object v21, v14, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    aget-object v22, v10, v5

    const-string v23, "drawable"

    const-string v24, "com.motorola.CameraF"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 504
    :cond_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->panResolutionEntries:[Ljava/lang/CharSequence;

    .line 505
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->panResolutionValues:[Ljava/lang/CharSequence;

    .line 506
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->panResolutionImgs:[Ljava/lang/Integer;

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->panResolutionEntries:[Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->panResolutionValues:[Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->panResolutionImgs:[Ljava/lang/Integer;

    move-object/from16 v21, v0

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 513
    monitor-enter p0

    .line 514
    :try_start_0
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionEntries:Ljava/util/List;

    .line 515
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    .line 516
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionSummaries:Ljava/util/List;

    .line 517
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v20, vidResolutionImgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070014

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 526
    .local v8, resArr:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070015

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 527
    .local v11, resName:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070017

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 528
    .local v13, resValue:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070016

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 529
    .local v12, resSummary:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070018

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 530
    .local v9, resImg:[Ljava/lang/String;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 531
    .local v15, temp:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    move v0, v3

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    .line 533
    const/4 v5, 0x0

    :goto_c
    move-object v0, v8

    array-length v0, v0

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    .line 535
    aget-object v21, v15, v3

    aget-object v22, v8, v5

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionEntries:Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v22, v11, v5

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v22, v13, v5

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionSummaries:Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v22, v12, v5

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    aget-object v22, v9, v5

    const-string v23, "drawable"

    const-string v24, "com.motorola.CameraF"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 533
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 549
    :cond_10
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionImgs:[I

    .line 550
    const/4 v5, 0x0

    .end local v2           #entriesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :goto_d
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_11

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionImgs:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    aput v22, v21, v5

    .line 550
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 554
    :cond_11
    const-string v21, "MotoCamSetting"

    const-string v22, "Notify resolution setup completed vidResolutionImgs"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 556
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    sget-boolean v21, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v21, :cond_15

    .line 561
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->isoValues:Ljava/util/List;

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorIsoValues:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorIsoValues:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 564
    .local v17, tempIso:[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_e
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move v0, v3

    move/from16 v1, v21

    if-ge v0, v1, :cond_15

    .line 566
    const/4 v7, 0x0

    .local v7, indIso:I
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070028

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move v0, v7

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    .line 568
    aget-object v21, v17, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070028

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v7

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isoValues:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070028

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v7

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 556
    .end local v3           #i:I
    .end local v7           #indIso:I
    .end local v8           #resArr:[Ljava/lang/String;
    .end local v9           #resImg:[Ljava/lang/String;
    .end local v11           #resName:[Ljava/lang/String;
    .end local v12           #resSummary:[Ljava/lang/String;
    .end local v13           #resValue:[Ljava/lang/String;
    .end local v15           #temp:[Ljava/lang/String;
    .end local v17           #tempIso:[Ljava/lang/String;
    .end local v20           #vidResolutionImgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v21

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v21

    .line 566
    .restart local v3       #i:I
    .restart local v7       #indIso:I
    .restart local v8       #resArr:[Ljava/lang/String;
    .restart local v9       #resImg:[Ljava/lang/String;
    .restart local v11       #resName:[Ljava/lang/String;
    .restart local v12       #resSummary:[Ljava/lang/String;
    .restart local v13       #resValue:[Ljava/lang/String;
    .restart local v15       #temp:[Ljava/lang/String;
    .restart local v17       #tempIso:[Ljava/lang/String;
    .restart local v20       #vidResolutionImgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 577
    .end local v7           #indIso:I
    .end local v17           #tempIso:[Ljava/lang/String;
    :cond_14
    const-string v21, "MotoCamSetting"

    const-string v22, "CamSetting: In loadAutoDetectValues -  Sensor returned null, loading the default iso values"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v7, 0x0

    .restart local v7       #indIso:I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070028

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move v0, v7

    move/from16 v1, v21

    if-ge v0, v1, :cond_15

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isoValues:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070028

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v7

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 585
    .end local v7           #indIso:I
    :cond_15
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->expValues:Ljava/util/List;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorExpValues:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorExpValues:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 588
    .local v16, tempExp:[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_11
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    move v0, v3

    move/from16 v1, v21

    if-ge v0, v1, :cond_19

    .line 590
    const/4 v6, 0x0

    .local v6, indExp:I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070029

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move v0, v6

    move/from16 v1, v21

    if-ge v0, v1, :cond_16

    .line 592
    aget-object v21, v16, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070029

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v6

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->expValues:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070029

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v6

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 590
    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 601
    .end local v6           #indExp:I
    .end local v16           #tempExp:[Ljava/lang/String;
    :cond_18
    const-string v21, "MotoCamSetting"

    const-string v22, "CamSetting: In loadAutoDetectValues - Sensor returned null, loading the default exposure offset values"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v6, 0x0

    .restart local v6       #indExp:I
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070029

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move v0, v6

    move/from16 v1, v21

    if-ge v0, v1, :cond_19

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->expValues:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070029

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v6

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 608
    .end local v6           #indExp:I
    :cond_19
    sget-boolean v21, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v21, :cond_1a

    .line 610
    const-string v21, "MotoCamSetting"

    const-string v22, "loadAutoDetectValues() - Exit"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_1a
    return-void
.end method

.method public loadConfig()I
    .locals 3

    .prologue
    const-string v2, "MotoCamSetting"

    .line 258
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 259
    const-string v1, "MotoCamSetting"

    const-string v1, "loadConfig() - Enter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->loadFlexValue()I

    move-result v0

    .line 263
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->loadSettingInit()V

    .line 265
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 266
    const-string v1, "MotoCamSetting"

    const-string v1, "loadConfig() - Exit"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    return v0
.end method

.method public loadSettingInit()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, i:I
    const/4 v1, 0x0

    .line 274
    .local v1, hasItem:Z
    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, settingItem:[Ljava/lang/String;
    const/4 v0, 0x1

    .line 279
    .local v0, empty:Z
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->sceneListC:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 280
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_0

    .line 282
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->sceneListC:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_0
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->sceneListC:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->scene_num_c:I

    .line 286
    const/4 v3, 0x0

    .line 287
    .local v3, nb_scenes:I
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    if-eqz v5, :cond_2

    .line 288
    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 289
    const/4 v3, 0x5

    .line 294
    :goto_1
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_1

    .line 295
    const-string v5, "MotoCamSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Droid2 video scene number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->sceneListV:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 298
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 299
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->sceneListV:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 291
    :cond_2
    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 292
    const/4 v3, 0x2

    goto :goto_1

    .line 301
    :cond_3
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->sceneListV:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->scene_num_v:I

    .line 303
    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 304
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->effectListC:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 305
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v8, :cond_4

    .line 306
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->effectListC:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 308
    :cond_4
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->effectListC:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->effect_num_c:I

    .line 310
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->effectListV:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 311
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_5

    .line 312
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->effectListV:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 314
    :cond_5
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->effectListV:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->effect_num_v:I

    .line 316
    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 317
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 319
    const/4 v2, 0x0

    :goto_5
    const/4 v5, 0x7

    if-ge v2, v5, :cond_6

    .line 320
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 322
    :cond_6
    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mode_num:I

    .line 323
    return-void
.end method

.method public declared-synchronized resetContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1348
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    .line 1349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    :cond_0
    monitor-exit p0

    return-void

    .line 1348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public save()V
    .locals 7

    .prologue
    const-string v6, "MotoCamSetting"

    .line 935
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    .line 936
    const-string v4, "MotoCamSetting"

    const-string v4, "save() - Enter"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_0
    iget-object v4, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 940
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->tags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 941
    .local v3, tagsNum:I
    const-string v4, "tagsNum"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 943
    const/4 v1, 0x0

    .line 944
    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 945
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 946
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->tags:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 947
    add-int/lit8 v1, v1, 0x1

    .line 948
    goto :goto_0

    .line 950
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    const-string v4, "isLocationOn"

    iget-boolean v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 951
    const-string v4, "isKeyWordTagsOn"

    iget-boolean v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 952
    const-string v4, "isAutoShareOn"

    iget-boolean v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoShareOn:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 953
    const-string v4, "currentEffect"

    iget v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentEffect:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 954
    const-string v4, "currentScene"

    iget v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentScene:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 955
    const-string v4, "maxPicResolution"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPicResolution:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 956
    const-string v4, "minPicResolution"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->minPicResolution:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 957
    const-string v4, "maxPanResolution"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPanResolution:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 958
    const-string v4, "sensorVidResolutions"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorVidResolutions:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 959
    const-string v4, "AESSensorVidResolutions"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->AESSensorVidResolutions:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 960
    const-string v4, "currentSingleShotResolution"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentSingleShotResolution:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 961
    const-string v4, "currentVideoResolution"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentVideoResolution:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 962
    const-string v4, "currentAESResolution"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAESResolution:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 963
    const-string v4, "currentPanShotResolution"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentPanShotResolution:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 964
    const-string v4, "currentFlash"

    iget v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentFlash:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 965
    const-string v4, "currentEffectVideo"

    iget v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentEffectV:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 966
    const-string v4, "currentSceneVideo"

    iget v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentSceneV:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 970
    const-string v4, "currentAudioZoom"

    sget-boolean v5, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAudioZoom:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 971
    const-string v4, "currentFlashVideo"

    iget v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentFlashV:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 972
    const-string v4, "currentFaceTracking"

    iget-boolean v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->misTrackingFace:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 973
    const-string v4, "sensorFlashModes"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorFlashModes:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 974
    const-string v4, "sensorFocusModes"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorFocusModes:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 976
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v4, :cond_2

    .line 977
    const-string v4, "currentIsoValue"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentIsoValue:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 978
    const-string v4, "sensorIsoValues"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorIsoValues:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 980
    :cond_2
    const-string v4, "currentExpValue"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentExpValue:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 981
    const-string v4, "sensorExpValues"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorExpValues:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 982
    const-string v4, "featureMultishotEnabled"

    iget-boolean v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureMultishotEnabled:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 983
    const-string v4, "featureFaceDetectionEnabled"

    iget-boolean v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureFaceDetectionEnabled:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 984
    const-string v4, "featurePanoramaEnabled"

    iget-boolean v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featurePanoramaEnabled:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 985
    const-string v4, "VideoModesEnabled"

    iget-boolean v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mVideoModesEnabled:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 986
    const-string v4, "DynamicFocusRegionEnabled"

    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 987
    const-string v4, "torchSupported"

    iget-boolean v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->torchSupported:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 988
    const-string v4, "mSupportedScenesList"

    iget-object v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSupportedScenesList:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 989
    const-string v4, "mAutoFocusAvailable"

    iget-boolean v5, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mAutoFocusAvailable:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 991
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 993
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_3

    .line 994
    const-string v4, "MotoCamSetting"

    const-string v4, "save() - Exit"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_3
    return-void
.end method

.method public setAESSensorVidResList(Ljava/lang/String;)V
    .locals 0
    .parameter "newres"

    .prologue
    .line 1762
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->AESSensorVidResolutions:Ljava/lang/String;

    .line 1763
    return-void
.end method

.method public setAudioBitrate(I)V
    .locals 0
    .parameter "bitrate"

    .prologue
    .line 1710
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mAudioBitrate:I

    .line 1711
    return-void
.end method

.method public setAutoShare(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "on"

    .prologue
    .line 1542
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoShareOn:Z

    .line 1543
    return-void
.end method

.method public setCamcorderAESProps(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1724
    iput-boolean p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSDEncryptionEnabled:Z

    .line 1725
    return-void
.end method

.method public setCurrentAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAddress:Ljava/lang/String;

    .line 1225
    return-void
.end method

.method public declared-synchronized setCurrentAppMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 1354
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    .line 1356
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    const-string v1, "com.motorola.CameraF_preferences"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    .line 1359
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    const-string v1, "com.motorola.CameraF_pref_loadsetting"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mLoadSettingPref:Landroid/content/SharedPreferences;

    .line 1362
    iput p2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    monitor-exit p0

    return-void

    .line 1354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCurrentEffect(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 1593
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 1595
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentEffect:I

    .line 1601
    :cond_0
    :goto_0
    return-void

    .line 1597
    :cond_1
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1599
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentEffectV:I

    goto :goto_0
.end method

.method public setCurrentExpValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newExp"

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentExpValue:Ljava/lang/String;

    .line 1063
    return-void
.end method

.method public setCurrentFlash(I)V
    .locals 2
    .parameter "flash"

    .prologue
    .line 1646
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 1648
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentFlash:I

    .line 1654
    :cond_0
    :goto_0
    return-void

    .line 1650
    :cond_1
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1652
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentFlashV:I

    goto :goto_0
.end method

.method public setCurrentIsoValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newIso"

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentIsoValue:Ljava/lang/String;

    .line 1053
    return-void
.end method

.method public setCurrentMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const-string v3, "setCurrentMode"

    const-string v2, "MotoCamSetting"

    .line 1607
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_2

    .line 1610
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 1614
    :cond_0
    const-string v0, "MotoCamSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentModeV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentModeV:I

    .line 1634
    :goto_0
    return-void

    .line 1619
    :cond_1
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentMode:I

    goto :goto_0

    .line 1623
    :cond_2
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1625
    const-string v0, "MotoCamSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentMode"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentModeV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentModeV:I

    goto :goto_0

    .line 1631
    :cond_3
    const-string v0, "MotoCamSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentMode"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentModeV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentModeV:I

    goto :goto_0
.end method

.method public setCurrentPanShotRes(Ljava/lang/String;)V
    .locals 0
    .parameter "newRes"

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentPanShotResolution:Ljava/lang/String;

    .line 1068
    return-void
.end method

.method public setCurrentScene(I)V
    .locals 3
    .parameter "scene"

    .prologue
    const/4 v2, 0x1

    .line 1571
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_3

    .line 1573
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentScene:I

    .line 1574
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentScene:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentScene:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1577
    :cond_0
    iput-boolean v2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInfiniteFocus:Z

    .line 1589
    :cond_1
    :goto_0
    return-void

    .line 1581
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInfiniteFocus:Z

    goto :goto_0

    .line 1584
    :cond_3
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    if-ne v0, v2, :cond_1

    .line 1586
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentSceneV:I

    .line 1587
    invoke-virtual {p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->save()V

    goto :goto_0
.end method

.method public setCurrentSingleShotRes(Ljava/lang/String;)V
    .locals 0
    .parameter "newRes"

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentSingleShotResolution:Ljava/lang/String;

    .line 1043
    return-void
.end method

.method public setCurrentStitchMode(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1638
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1640
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentStitchMode:Ljava/lang/String;

    .line 1642
    :cond_0
    return-void
.end method

.method public setCurrentVideoRes(Ljava/lang/String;)V
    .locals 1
    .parameter "newRes"

    .prologue
    .line 1009
    iget-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_0

    .line 1010
    invoke-static {p1}, Lcom/motorola/CameraF/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAESResolution:Ljava/lang/String;

    .line 1014
    :goto_0
    return-void

    .line 1012
    :cond_0
    invoke-static {p1}, Lcom/motorola/CameraF/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentVideoResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultAESVideoResolution()V
    .locals 4

    .prologue
    .line 1774
    iget-object v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->AESSensorVidResolutions:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1775
    .local v0, temp:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/motorola/CameraF/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAESResolution:Ljava/lang/String;

    .line 1776
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultVideoResolution() - currentAESResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAESResolution:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_0
    return-void
.end method

.method public setDefaultVideoResolution()V
    .locals 4

    .prologue
    .line 1766
    iget-object v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorVidResolutions:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1767
    .local v0, temp:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/motorola/CameraF/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentVideoResolution:Ljava/lang/String;

    .line 1768
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultVideoResolution() - setCurrentVideoRes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentVideoResolution:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    :cond_0
    return-void
.end method

.method public setDefaultZoomValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1559
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 1561
    iput v2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentZoom:I

    .line 1567
    :cond_0
    :goto_0
    return-void

    .line 1563
    :cond_1
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1565
    iput v2, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentZoomV:I

    goto :goto_0
.end method

.method public setExpValues(Ljava/lang/String;)V
    .locals 0
    .parameter "expV"

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorExpValues:Ljava/lang/String;

    .line 1344
    return-void
.end method

.method public setFaceDetectionEnable()V
    .locals 1

    .prologue
    .line 1468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureFaceDetectionEnabled:Z

    .line 1469
    return-void
.end method

.method public setFaceTracking(Z)V
    .locals 3
    .parameter "toggle"

    .prologue
    .line 1426
    iput-boolean p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->misTrackingFace:Z

    .line 1427
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set misFaceTracking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_0
    return-void
.end method

.method public setFlashModes(Ljava/lang/String;)V
    .locals 0
    .parameter "modes"

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorFlashModes:Ljava/lang/String;

    .line 1324
    return-void
.end method

.method public setFocusModes(Ljava/lang/String;)V
    .locals 0
    .parameter "modes"

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorFocusModes:Ljava/lang/String;

    .line 1314
    return-void
.end method

.method public setFocusViewHeight(F)V
    .locals 0
    .parameter "val"

    .prologue
    .line 1132
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->focusViewHeight:F

    .line 1133
    return-void
.end method

.method public setFocusViewWidth(F)V
    .locals 0
    .parameter "val"

    .prologue
    .line 1127
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->focusViewWidth:F

    .line 1128
    return-void
.end method

.method public setInScroll(Z)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 1112
    iput-boolean p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mInScroll:Z

    .line 1113
    return-void
.end method

.method public setIsoValues(Ljava/lang/String;)V
    .locals 0
    .parameter "isoV"

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorIsoValues:Ljava/lang/String;

    .line 1334
    return-void
.end method

.method public setKeyWordsTagsOn(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "on"

    .prologue
    .line 1538
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn:Z

    .line 1539
    return-void
.end method

.method public setLastCamcorderMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1197
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->lastCamcorderMode:I

    .line 1198
    return-void
.end method

.method public setLastCameraMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1189
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->lastCameraMode:I

    .line 1190
    return-void
.end method

.method public setLocationOn(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "on"

    .prologue
    .line 1533
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn:Z

    .line 1534
    return-void
.end method

.method public setMaxPanResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "max"

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPanResolution:Ljava/lang/String;

    .line 1385
    return-void
.end method

.method public setMaxPicResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "max"

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->maxPicResolution:Ljava/lang/String;

    .line 1266
    return-void
.end method

.method public setMinPicResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "max"

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->minPicResolution:Ljava/lang/String;

    .line 1278
    return-void
.end method

.method public setMultishotEnable()V
    .locals 1

    .prologue
    .line 1463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureMultishotEnabled:Z

    .line 1464
    return-void
.end method

.method public setPanoramaFeatureEnable()V
    .locals 1

    .prologue
    .line 1720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featurePanoramaEnabled:Z

    .line 1721
    return-void
.end method

.method public setReturnFromTag(Z)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 1102
    iput-boolean p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mReturnFromTag:Z

    .line 1103
    return-void
.end method

.method public setSearchingLoc(I)V
    .locals 0
    .parameter "search"

    .prologue
    .line 1658
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isSearchingLoc:I

    .line 1659
    return-void
.end method

.method public setSensorVidResList(Ljava/lang/String;)V
    .locals 0
    .parameter "vidRes"

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->sensorVidResolutions:Ljava/lang/String;

    .line 1304
    return-void
.end method

.method public setServiceMode(Z)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 1092
    iput-boolean p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mIsServiceMode:Z

    .line 1093
    return-void
.end method

.method public setSupportedScenes(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 1744
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSupportedScenesList:Ljava/lang/String;

    .line 1745
    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 0
    .parameter "bitrate"

    .prologue
    .line 1704
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mVideoBitrate:I

    .line 1705
    return-void
.end method

.method public setVideoModesEnabled(Z)V
    .locals 0
    .parameter "videoModesEnabled"

    .prologue
    .line 1740
    iput-boolean p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mVideoModesEnabled:Z

    .line 1741
    return-void
.end method

.method public setVideoResolutionService(Ljava/lang/String;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 1441
    invoke-static {p1}, Lcom/motorola/CameraF/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentReslVService:Ljava/lang/String;

    .line 1442
    return-void
.end method

.method public setZoomNum(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 1547
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 1549
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentZoom:I

    .line 1555
    :cond_0
    :goto_0
    return-void

    .line 1551
    :cond_1
    iget v0, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1553
    iput p1, p0, Lcom/motorola/CameraF/CamSetting/CamSetting;->currentZoomV:I

    goto :goto_0
.end method
