.class public Lcom/motorola/CameraF/Camcorder;
.super Landroid/app/Activity;
.source "Camcorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;,
        Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;,
        Lcom/motorola/CameraF/Camcorder$MainHandler;
    }
.end annotation


# static fields
.field private static final IS_VIDEO_MESSAGE_MODE_ENABLED:Ljava/lang/String; = "IsVideoMessageModeEnabled"

.field private static final TAG:Ljava/lang/String; = "MotoCamcorder"

.field private static final WIND_NOISE:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field static final mIsRotator:Z = false

.field private static final mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile; = null

.field private static final sCamcorderDefaultProfile:Ljava/lang/String; = "3gp,h264,15,128000,amrnb,12200,8000,1"


# instance fields
.field private currentDialog:I

.field private deleteDialog:Landroid/app/AlertDialog;

.field private mAudioMgr:Landroid/media/AudioManager;

.field private mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCodec:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field mCurrentZoomIndex:I

.field mDidRegister:Z

.field public mFailSafe:Z

.field private mFileFormat:Ljava/lang/String;

.field mGalleryItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsVideoCaptureIntent:Z

.field private mLastValidFileName:Ljava/lang/String;

.field private mLastValidMediaID:Ljava/lang/Integer;

.field private mLastValidUri:Landroid/net/Uri;

.field private mLocUtil:Lcom/motorola/CameraF/LocUtility;

.field mLocationManager:Landroid/location/LocationManager;

.field private mMain:Lcom/motorola/CameraF/View/CameraContentView;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field mMute:Landroid/widget/ToggleButton;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field mPausing:Z

.field mPostPanel:Landroid/widget/RelativeLayout;

.field private mPostText:Landroid/widget/TextView;

.field private mPreviewing:Z

.field public mRecInitThread:Ljava/lang/Thread;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field mResolution:Lcom/motorola/CameraF/CameraGlobalType$CamSize;

.field private mResolutionInService:Lcom/motorola/CameraF/CameraGlobalType$CamSize;

.field private mSavingProgress:Landroid/widget/ProgressBar;

.field private mSavingVideo:Landroid/view/View;

.field private mSavingVideoText:Landroid/widget/TextView;

.field private mShowToast:Z

.field private mShutterButton:Landroid/widget/ImageView;

.field private mStatus:I

.field public mStopRecordingThread:Ljava/lang/Thread;

.field mSurfaceHolder:Landroid/view/SurfaceHolder;

.field mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailOrientation:I

.field private mTime2Idle:J

.field private mTimeLimitMs:I

.field mToast:Landroid/widget/Toast;

.field mVToast:Landroid/widget/Toast;

.field mVideoFrame:Landroid/widget/ImageView;

.field mVideoFrameBitmap:Landroid/graphics/Bitmap;

.field mVideoPreview:Lcom/motorola/CameraF/View/CameraView;

.field private mVideoRemainingSecond:J

.field private mZoomAdjusting:Z

.field private final mZoomChangeListener:Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;

.field private maxMMSSize:I

.field private mrecordingElapsedTimeSeconds:J

.field private updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

.field private final windReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/String;

    const-string v1, "com.motorola.CameraF.Camcorder.WIND_NOISE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/CameraF/Camcorder;->WIND_NOISE:Ljava/lang/String;

    .line 128
    const-string v0, "ro.hw.rotator"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/CameraF/Camcorder;->mIsRotator:Z

    .line 159
    new-instance v0, Lcom/motorola/CameraF/MotoCamcorderProfile;

    invoke-direct {v0}, Lcom/motorola/CameraF/MotoCamcorderProfile;-><init>()V

    sput-object v0, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 137
    iput-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 142
    iput v2, p0, Lcom/motorola/CameraF/Camcorder;->mThumbnailOrientation:I

    .line 150
    iput v2, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    .line 151
    iput-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 155
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camcorder;->mPausing:Z

    .line 156
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camcorder;->mZoomAdjusting:Z

    .line 158
    new-instance v0, Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;-><init>(Lcom/motorola/CameraF/Camcorder;Lcom/motorola/CameraF/Camcorder$1;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mZoomChangeListener:Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;

    .line 162
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camcorder;->mDidRegister:Z

    .line 164
    iput v2, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentZoomIndex:I

    .line 169
    iput-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mResolutionInService:Lcom/motorola/CameraF/CameraGlobalType$CamSize;

    .line 174
    const v0, 0xea60

    iput v0, p0, Lcom/motorola/CameraF/Camcorder;->mTimeLimitMs:I

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mGalleryItems:Ljava/util/ArrayList;

    .line 180
    iput-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mLocationManager:Landroid/location/LocationManager;

    .line 182
    new-instance v0, Lcom/motorola/CameraF/Camcorder$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/motorola/CameraF/Camcorder$MainHandler;-><init>(Lcom/motorola/CameraF/Camcorder;Lcom/motorola/CameraF/Camcorder$1;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    .line 184
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camcorder;->mPreviewing:Z

    .line 190
    iput-object v1, p0, Lcom/motorola/CameraF/Camcorder;->deleteDialog:Landroid/app/AlertDialog;

    .line 192
    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/CameraF/Camcorder;->currentDialog:I

    .line 197
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camcorder;->mShowToast:Z

    .line 201
    iput-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mShutterButton:Landroid/widget/ImageView;

    .line 202
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camcorder;->mFailSafe:Z

    .line 203
    iput-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mSavingVideo:Landroid/view/View;

    .line 204
    iput-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mSavingVideoText:Landroid/widget/TextView;

    .line 210
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 1153
    new-instance v0, Lcom/motorola/CameraF/Camcorder$1;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/Camcorder$1;-><init>(Lcom/motorola/CameraF/Camcorder;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder;->windReceiver:Landroid/content/BroadcastReceiver;

    .line 1184
    new-instance v0, Lcom/motorola/CameraF/Camcorder$2;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/Camcorder$2;-><init>(Lcom/motorola/CameraF/Camcorder;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1488
    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/CameraF/Camcorder;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camcorder;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->initializeRecorder()V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/CameraF/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    return v0
.end method

.method static synthetic access$1202(Lcom/motorola/CameraF/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    return p1
.end method

.method static synthetic access$1300(Lcom/motorola/CameraF/Camcorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/motorola/CameraF/Camcorder;->mRecordingStartTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->updateRecordTime()V

    return-void
.end method

.method static synthetic access$1500(Lcom/motorola/CameraF/Camcorder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->launchGallery()V

    return-void
.end method

.method static synthetic access$1700(Lcom/motorola/CameraF/Camcorder;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camcorder;->writeTagToDB(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->acquireAndShowVideoFrame()V

    return-void
.end method

.method static synthetic access$1900(Lcom/motorola/CameraF/Camcorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/CameraF/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/motorola/CameraF/Camcorder;->mThumbnailOrientation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/motorola/CameraF/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$202(Lcom/motorola/CameraF/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Lcom/motorola/CameraF/Camcorder;->mThumbnailOrientation:I

    return p1
.end method

.method static synthetic access$2100(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->showPostRecordingAlert()V

    return-void
.end method

.method static synthetic access$2200(Lcom/motorola/CameraF/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camcorder;->mZoomAdjusting:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/motorola/CameraF/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/motorola/CameraF/Camcorder;->mZoomAdjusting:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/motorola/CameraF/Camcorder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camcorder;->zoomTo(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/motorola/CameraF/Camcorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/motorola/CameraF/Camcorder;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->startVideoRecording()V

    return-void
.end method

.method static synthetic access$2600(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    return-void
.end method

.method static synthetic access$2702(Lcom/motorola/CameraF/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Lcom/motorola/CameraF/Camcorder;->currentDialog:I

    return p1
.end method

.method static synthetic access$2800(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->enableSlowMotion()V

    return-void
.end method

.method static synthetic access$2900(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->enableFastMotion()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->enableMMSMode()V

    return-void
.end method

.method static synthetic access$3100(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->enableNormalVideoMode()V

    return-void
.end method

.method static synthetic access$3200(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->setCameraParameters()V

    return-void
.end method

.method static synthetic access$3300(Lcom/motorola/CameraF/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camcorder;->mShowToast:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/motorola/CameraF/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/motorola/CameraF/Camcorder;->mShowToast:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->showStorageToast()V

    return-void
.end method

.method static synthetic access$3500(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->updateRemainCount()V

    return-void
.end method

.method static synthetic access$3600(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->toggleTorch()V

    return-void
.end method

.method static synthetic access$3700(Lcom/motorola/CameraF/Camcorder;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mSavingProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/motorola/CameraF/Camcorder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mSavingVideoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/motorola/CameraF/Camcorder;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mSavingVideo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->closeCamera()V

    return-void
.end method

.method static synthetic access$4000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/motorola/CameraF/Camcorder;->WIND_NOISE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->interruptThumbnailThread()V

    return-void
.end method

.method static synthetic access$4200(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/motorola/CameraF/Camcorder;Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;)Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->stopVideoRecording()V

    return-void
.end method

.method static synthetic access$4400(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/motorola/CameraF/Camcorder;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->recycleVideoFrameBitmap()V

    return-void
.end method

.method static synthetic access$4700(Lcom/motorola/CameraF/Camcorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/motorola/CameraF/Camcorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->startPreview()V

    return-void
.end method

.method static synthetic access$4900(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/LocUtility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mLocUtil:Lcom/motorola/CameraF/LocUtility;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$5000(Lcom/motorola/CameraF/Camcorder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/motorola/CameraF/Camcorder;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->registerVideo()V

    return-void
.end method

.method static synthetic access$5300(Lcom/motorola/CameraF/Camcorder;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/motorola/CameraF/Camcorder;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->updateScenesEffects()V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/CamSetting/CamSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    return-object v0
.end method

.method private acquireAndShowVideoFrame()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "MotoCamcorder"

    .line 3743
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamcorder"

    const-string v2, "acquireAndShowVideoFrame : Enter"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    :cond_0
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mSavingVideo:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mSavingVideo:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 3746
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mSavingVideo:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3749
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    .line 3750
    .local v0, reviewTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_3

    .line 3753
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    const-string v2, "MotoCamcorder"

    const-string v2, "acquireAndShowVideoFrame : ReviewTime is Zero"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    :cond_2
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->interruptThumbnailThread()V

    .line 3758
    new-instance v2, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, p0, v3, v6}, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;-><init>(Lcom/motorola/CameraF/Camcorder;Landroid/graphics/Bitmap;Z)V

    iput-object v2, p0, Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    .line 3759
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v2}, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->start()V

    .line 3785
    :goto_0
    return-void

    .line 3764
    :cond_3
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->recycleVideoFrameBitmap()V

    .line 3766
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    const-string v2, "MotoCamcorder"

    const-string v2, "acquireAndShowVideoFrame : calling createVideoThumbnail"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    :cond_4
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidFileName:Ljava/lang/String;

    invoke-static {v2, v6}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    .line 3773
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->interruptThumbnailThread()V

    .line 3774
    new-instance v2, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, p0, v3, v5}, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;-><init>(Lcom/motorola/CameraF/Camcorder;Landroid/graphics/Bitmap;Z)V

    iput-object v2, p0, Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    .line 3775
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v2}, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->start()V

    .line 3777
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "MotoCamcorder"

    const-string v2, "acquireAndShowVideoFrame : createVideoThumbnail returned"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    :cond_5
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 3781
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mVideoFrame:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3782
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3784
    :cond_6
    const-string v2, "MotoCamcorder"

    const-string v2, "acquireAndShowVideoFrame : Exit"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private calculateServiceModeTime(II)V
    .locals 8
    .parameter "audioBitrate"
    .parameter "videoBitrate"

    .prologue
    const-string v7, "MotoCamcorder"

    .line 3113
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCamcorder"

    const-string v4, "calculateServiceModeTime() Enter"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    :cond_0
    const/4 v3, 0x0

    .line 3116
    .local v3, seconds:I
    const-wide/16 v1, 0x0

    .line 3118
    .local v1, filesize:J
    iget-boolean v4, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v4, :cond_1

    .line 3120
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->getDurationFromIntent()I

    move-result v3

    .line 3123
    :cond_1
    if-eqz v3, :cond_3

    .line 3125
    iput v3, p0, Lcom/motorola/CameraF/Camcorder;->mTimeLimitMs:I

    .line 3144
    :goto_0
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_2

    const-string v4, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateServiceModeTime() MMS Time limit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/CameraF/Camcorder;->mTimeLimitMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " & file size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    :cond_2
    return-void

    .line 3129
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mms_maximum_message_size"

    const v6, 0x4b000

    invoke-static {v4, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/motorola/CameraF/Camcorder;->maxMMSSize:I

    .line 3131
    iget-boolean v4, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v4, :cond_4

    .line 3133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->getFileSizeFromIntent()J

    move-result-wide v1

    .line 3136
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_5

    .line 3137
    iget v4, p0, Lcom/motorola/CameraF/Camcorder;->maxMMSSize:I

    const/16 v5, 0x3138

    sub-int/2addr v4, v5

    int-to-long v1, v4

    .line 3139
    :cond_5
    add-int v4, p2, p1

    shr-int/lit8 v0, v4, 0x3

    .line 3140
    .local v0, bitrate:I
    int-to-long v4, v0

    div-long v4, v1, v4

    long-to-int v4, v4

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/motorola/CameraF/Camcorder;->mTimeLimitMs:I

    goto :goto_0
.end method

.method private cancelRestartPreviewTimeout()V
    .locals 2

    .prologue
    .line 3569
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3570
    return-void
.end method

.method private cancelToast()V
    .locals 1

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2366
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mToast:Landroid/widget/Toast;

    .line 2369
    :cond_0
    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 6

    .prologue
    const-string v5, "MotoCamcorder"

    .line 1015
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    const-string v1, "cleanupEmptyFile() - Enter"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1018
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1019
    .local v0, f:Ljava/io/File;
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupEmptyFile() file length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1023
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupEmptyFile() - Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1027
    .end local v0           #f:Ljava/io/File;
    :cond_3
    return-void
.end method

.method private clearMessageQueue()V
    .locals 3

    .prologue
    const/16 v2, 0x1c

    .line 2700
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2701
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2702
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2703
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2704
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2705
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2706
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2707
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2708
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2709
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2710
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2711
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2712
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2713
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2714
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2715
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2716
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2717
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2718
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2719
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2720
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2721
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2722
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2723
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2724
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2725
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2726
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2727
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2728
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2729
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2730
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2731
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2732
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2733
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2734
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2735
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2736
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2737
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2738
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2739
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2740
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2741
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2742
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2743
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2744
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2745
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2746
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2747
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2748
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2749
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2750
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2751
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2752
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, "MotoCamcorder"

    .line 3151
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v0, "closeCamera() - Enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 3172
    :cond_1
    :goto_0
    return-void

    .line 3159
    :cond_2
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->torchOn:Z

    if-eqz v0, :cond_3

    .line 3160
    const-string v0, "MotoCamcorder"

    const-string v0, "Disabling torch in closeCamera()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    sput-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->torchOn:Z

    .line 3162
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 3165
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 3166
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 3167
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 3168
    iput-object v3, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    .line 3169
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camcorder;->mPreviewing:Z

    .line 3171
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v0, "closeCamera() - Exit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createVideoPath()V
    .locals 15

    .prologue
    const-string v14, "MotoCamcorder"

    .line 3276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3278
    .local v4, dateTaken:J
    invoke-static {v4, v5}, Lcom/motorola/CameraF/CameraGlobalTools;->createName(J)Ljava/lang/String;

    move-result-object v9

    .line 3279
    .local v9, title:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v12

    invoke-virtual {v12}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v3

    .line 3280
    .local v3, currentVideoMode:I
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v12

    invoke-virtual {v12}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v11

    .line 3281
    .local v11, vidResforProfile:Ljava/lang/String;
    iget-boolean v12, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v12, :cond_0

    const-string v12, "QVGA"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    const/4 v12, 0x5

    if-ne v3, v12, :cond_2

    .line 3283
    :cond_1
    const-string v11, "MMS"

    .line 3287
    :cond_2
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    invoke-virtual {v13, v11}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getOutputFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3295
    .local v0, FileName:Ljava/lang/String;
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3297
    .local v6, displayName:Ljava/lang/String;
    sget-object v2, Lcom/motorola/CameraF/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 3298
    .local v2, cameraDirPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3302
    .local v1, cameraDir:Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3309
    :cond_3
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/motorola/CameraF/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3311
    .local v8, filename:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    const/16 v12, 0x8

    invoke-direct {v10, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 3312
    .local v10, values:Landroid/content/ContentValues;
    const-string v12, "title"

    invoke-virtual {v10, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    const-string v12, "_display_name"

    invoke-virtual {v10, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3314
    const-string v12, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3315
    const-string v12, "mime_type"

    const-string v13, "video/3gpp"

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    const-string v12, "_data"

    invoke-virtual {v10, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3318
    iput-object v8, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    .line 3319
    iput-object v10, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 3320
    sget-boolean v12, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v12, :cond_4

    const-string v12, "MotoCamcorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createVideoPath() - mCurrentVideoFilename : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    :cond_4
    return-void

    .line 3289
    .end local v0           #FileName:Ljava/lang/String;
    .end local v1           #cameraDir:Ljava/io/File;
    .end local v2           #cameraDirPath:Ljava/lang/String;
    .end local v6           #displayName:Ljava/lang/String;
    .end local v8           #filename:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v12

    move-object v7, v12

    .line 3290
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v0, ".3gp"

    .restart local v0       #FileName:Ljava/lang/String;
    goto/16 :goto_0

    .line 3304
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v1       #cameraDir:Ljava/io/File;
    .restart local v2       #cameraDirPath:Ljava/lang/String;
    .restart local v6       #displayName:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 3306
    .local v7, e:Ljava/lang/SecurityException;
    sget-boolean v12, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v12, :cond_3

    const-string v12, "MotoCamcorder"

    const-string v12, "createVideoPath() - Failed to create camera directory"

    invoke-static {v14, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private doReturnToCaller(Z)V
    .locals 5
    .parameter "success"

    .prologue
    const-string v4, "MotoCamcorder"

    .line 3872
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3874
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 3875
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camcorder:doReturnToCaller: success uri ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    :cond_0
    const/4 v0, -0x1

    .line 3878
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3883
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/motorola/CameraF/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 3884
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->finish()V

    .line 3885
    return-void

    .line 3880
    .end local v0           #resultCode:I
    :cond_1
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    const-string v2, "MotoCamcorder"

    const-string v2, "Camcorder:doReturnToCaller: cancel"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private enableFastMotion()V
    .locals 4

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->releaseMediaRecorder()V

    .line 712
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 714
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, temp:Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, t:[Ljava/lang/String;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 718
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->closeCamera()V

    .line 719
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/motorola/CameraF/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    .line 720
    return-void
.end method

.method private enableMMSMode()V
    .locals 2

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->releaseMediaRecorder()V

    .line 738
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 740
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const-string v1, "320x240"

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 743
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->closeCamera()V

    .line 745
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/CameraF/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    .line 746
    return-void
.end method

.method private enableNormalVideoMode()V
    .locals 4

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->releaseMediaRecorder()V

    .line 752
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 754
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, temp:Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, t:[Ljava/lang/String;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 759
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->closeCamera()V

    .line 761
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/motorola/CameraF/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    .line 762
    return-void
.end method

.method private enableSlowMotion()V
    .locals 2

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->releaseMediaRecorder()V

    .line 726
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 727
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const-string v1, "320x240"

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 730
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->closeCamera()V

    .line 732
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/CameraF/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    .line 733
    return-void
.end method

.method private format2Time(J)Ljava/lang/String;
    .locals 14
    .parameter "seconds"

    .prologue
    .line 1128
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-ltz v10, :cond_3

    .line 1129
    const-wide/16 v10, 0xe10

    div-long v0, p1, v10

    .line 1130
    .local v0, hours:J
    const-wide/16 v10, 0xe10

    mul-long/2addr v10, v0

    sub-long v10, p1, v10

    const-wide/16 v12, 0x3c

    div-long v3, v10, v12

    .line 1131
    .local v3, minutes:J
    const-wide/16 v10, 0xe10

    mul-long/2addr v10, v0

    sub-long v10, p1, v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v3

    sub-long v6, v10, v12

    .line 1133
    .local v6, remainderSeconds:J
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 1134
    .local v8, secondsString:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_0

    .line 1135
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1137
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 1138
    .local v5, minutesString:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_1

    .line 1139
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1141
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1142
    .local v2, hoursString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_2

    .line 1143
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1145
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1149
    .end local v0           #hours:J
    .end local v2           #hoursString:Ljava/lang/String;
    .end local v3           #minutes:J
    .end local v5           #minutesString:Ljava/lang/String;
    .end local v6           #remainderSeconds:J
    .end local v8           #secondsString:Ljava/lang/String;
    .local v9, text:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 1147
    .end local v9           #text:Ljava/lang/String;
    :cond_3
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method private getCaptureVideoUriFromIntent()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 3943
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3944
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3946
    .local v1, myExtras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 3947
    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/Uri;

    move-object v2, p0

    .line 3949
    :goto_0
    return-object v2

    .restart local p0
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDurationFromIntent()I
    .locals 4

    .prologue
    const-string v3, "android.intent.extra.durationLimit"

    .line 3910
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3911
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 3913
    .local v1, seconds:I
    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3914
    const-string v2, "android.intent.extra.durationLimit"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3916
    :cond_0
    return v1
.end method

.method private getFileSizeFromIntent()J
    .locals 10

    .prologue
    const-wide/16 v5, 0x0

    const-string v4, "max_recording_size"

    const-string v9, "android.intent.extra.sizeLimit"

    const-string v8, "MotoCamcorder"

    const-string v7, "Camcorder:getFileSizeFromIntent:client set file size to "

    .line 3889
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 3890
    .local v2, intent:Landroid/content/Intent;
    const-wide/16 v0, 0x0

    .line 3893
    .local v0, filesize:J
    const-string v3, "max_recording_size"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3894
    const-string v3, "max_recording_size"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3896
    :cond_0
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1

    .line 3897
    const-string v3, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camcorder:getFileSizeFromIntent:client set file size to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3899
    :cond_1
    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3900
    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v9, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3902
    :cond_2
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_3

    .line 3903
    const-string v3, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camcorder:getFileSizeFromIntent:client set file size to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3905
    :cond_3
    return-wide v0
.end method

.method private getResolutionFromIntent()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v5, "android.intent.extra.videoQuality"

    .line 3921
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3922
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "320x240"

    .line 3924
    .local v1, resolution:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v3

    .line 3925
    .local v3, temp:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3927
    .local v2, t:[Ljava/lang/String;
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3929
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3931
    aget-object v1, v2, v6

    .line 3937
    :cond_0
    :goto_0
    return-object v1

    .line 3934
    :cond_1
    const-string v1, "320x240"

    goto :goto_0
.end method

.method private hidePostPanel()V
    .locals 2

    .prologue
    .line 3561
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3562
    const-string v0, "MotoCamcorder"

    const-string v1, "Camcorder:hidePostPanel:hidePostPanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->cancelRestartPreviewTimeout()V

    .line 3564
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mPostPanel:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3565
    return-void
.end method

.method private hideVideoFrame()V
    .locals 2

    .prologue
    .line 3788
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->recycleVideoFrameBitmap()V

    .line 3789
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mVideoFrame:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3790
    return-void
.end method

.method private hideVideoFrameAndStartPreview(Z)V
    .locals 4
    .parameter "startVF"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3712
    iput v2, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    .line 3713
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mPostText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3714
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->hidePostPanel()V

    .line 3715
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->hideVideoFrame()V

    .line 3716
    if-eqz p1, :cond_0

    .line 3718
    iput v3, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    .line 3719
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->startPreview()V

    .line 3722
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->initializeRecorder()V

    .line 3723
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->calcVideoTimeRemaining(Landroid/os/Handler;)V

    .line 3727
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 3729
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenController;->setVisibility(I)V

    .line 3730
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showTopStatusSet()V

    .line 3731
    const v0, 0x7f0e0031

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3732
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->toggleMediaControlsVisibility()V

    .line 3733
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 3734
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3735
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mShutterButton:Landroid/widget/ImageView;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3739
    :cond_0
    return-void
.end method

.method private declared-synchronized initializeRecorder()V
    .locals 19

    .prologue
    .line 767
    monitor-enter p0

    :try_start_0
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_0

    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - Enter"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 773
    .local v14, state:Ljava/lang/String;
    const-string v16, "bad_removal"

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 775
    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - bad removal of SD card, skip setting up recorder"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 782
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/CameraF/Camcorder;->mPausing:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    invoke-static {}, Lcom/motorola/CameraF/CameraGlobalTools;->hasStorage()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 794
    invoke-direct/range {p0 .. p0}, Lcom/motorola/CameraF/Camcorder;->createVideoPath()V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    .line 797
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_3

    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - Could not create videofile"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x38

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 767
    .end local v14           #state:Ljava/lang/String;
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 803
    .restart local v14       #state:Ljava/lang/String;
    :cond_4
    :try_start_2
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_5

    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - Creating new MediaRecorder"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_5
    new-instance v16, Landroid/media/MediaRecorder;

    invoke-direct/range {v16 .. v16}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 806
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v6

    .line 807
    .local v6, currentVideoMode:I
    const/16 v16, 0x6

    move v0, v6

    move/from16 v1, v16

    if-ne v0, v1, :cond_14

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera;->lock()V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    .line 811
    .local v11, params:Landroid/hardware/Camera$Parameters;
    const-string v16, "video-mode"

    sget-object v17, Lcom/motorola/CameraF/CameraGlobalType;->videoModeSetting:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera;->unlock()V

    .line 831
    .end local v11           #params:Landroid/hardware/Camera$Parameters;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 833
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAudioMuted()Z

    move-result v8

    .line 836
    .local v8, isMuteAudioOn:Z
    if-nez v8, :cond_7

    const/16 v16, 0x7

    move v0, v6

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    const/16 v16, 0x6

    move v0, v6

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 840
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 845
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v15

    .line 847
    .local v15, videoResforProfile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    const-string v16, "QVGA"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    :cond_8
    const/16 v16, 0x5

    move v0, v6

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 849
    :cond_9
    const-string v15, "MMS"

    .line 851
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getVideoBitrate()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 854
    if-nez v8, :cond_e

    const/16 v16, 0x7

    move v0, v6

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    const/16 v16, 0x6

    move v0, v6

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    .line 863
    :try_start_3
    sget-object v16, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getAudioSamplingRate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v13

    .line 870
    .local v13, samplingRate:I
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getAudioBitrate()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 873
    const/4 v10, 0x1

    .line 874
    .local v10, numChannels:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    .line 875
    .local v5, currentScene:I
    if-eqz v5, :cond_b

    const/16 v16, 0x2

    move v0, v5

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    .line 878
    :cond_b
    const/4 v10, 0x2

    .line 883
    :cond_c
    :try_start_5
    sget-object v16, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getAudioEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "amrwb"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 885
    const/4 v10, 0x1

    .line 886
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_d

    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - audio encoder = AMRWB"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    .line 925
    .end local v5           #currentScene:I
    .end local v10           #numChannels:I
    .end local v13           #samplingRate:I
    :cond_e
    :goto_3
    :try_start_6
    const-string v16, "MotoCamcorder"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "initializeRecorder() - set output file = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 930
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    move/from16 v16, v0

    if-nez v16, :cond_f

    const/16 v16, 0x5

    move v0, v6

    move/from16 v1, v16

    if-ne v0, v1, :cond_20

    .line 933
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/Camcorder;->mTimeLimitMs:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 934
    const-string v16, "MotoCamcorder"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "InitializeRecorder mTimeLimitMs"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/Camcorder;->mTimeLimitMs:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 947
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    sget-object v17, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getVideoFps(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 948
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_10

    const-string v16, "MotoCamcorder"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "video fps in initialize recorder"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getVideoFps(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2

    .line 956
    :cond_10
    :goto_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 957
    .local v12, s:Landroid/hardware/Camera$Size;
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_11

    const-string v16, "MotoCamcorder"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "initializeRecorder() - Setting Video Size to {"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v12

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v12

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "}"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object v0, v12

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    move-object v0, v12

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/media/MediaRecorder;->setVideoSize(II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 964
    :try_start_9
    sget-object v16, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getVideoEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "m4v"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_22

    .line 966
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_12

    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - video encoder = MPEG_4"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 998
    :cond_13
    :goto_6
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1002
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 1010
    :goto_7
    :try_start_c
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_1

    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - Exit"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 815
    .end local v8           #isMuteAudioOn:Z
    .end local v12           #s:Landroid/hardware/Camera$Size;
    .end local v15           #videoResforProfile:Ljava/lang/String;
    :cond_14
    const/16 v16, 0x7

    move v0, v6

    move/from16 v1, v16

    if-ne v0, v1, :cond_15

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera;->lock()V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    .line 819
    .restart local v11       #params:Landroid/hardware/Camera$Parameters;
    const-string v16, "video-mode"

    sget-object v17, Lcom/motorola/CameraF/CameraGlobalType;->videoModeSetting:[Ljava/lang/String;

    const/16 v18, 0x2

    aget-object v17, v17, v18

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera;->unlock()V

    goto/16 :goto_1

    .line 823
    .end local v11           #params:Landroid/hardware/Camera$Parameters;
    :cond_15
    const/16 v16, 0x8

    move v0, v6

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera;->lock()V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    .line 827
    .restart local v11       #params:Landroid/hardware/Camera$Parameters;
    const-string v16, "video-mode"

    sget-object v17, Lcom/motorola/CameraF/CameraGlobalType;->videoModeSetting:[Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera;->unlock()V

    goto/16 :goto_1

    .line 865
    .end local v11           #params:Landroid/hardware/Camera$Parameters;
    .restart local v8       #isMuteAudioOn:Z
    .restart local v15       #videoResforProfile:Ljava/lang/String;
    :catch_0
    move-exception v16

    move-object/from16 v7, v16

    .line 866
    .local v7, e:Ljava/lang/NullPointerException;
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_16

    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - Camcorder Profile not set. Defaulting sampling rate"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_16
    sget-object v16, Lcom/motorola/CameraF/CameraGlobalType;->MMS_VIDEO_CAPTURE_AUDIO_SAMPLINGRATE:Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v13

    .restart local v13       #samplingRate:I
    goto/16 :goto_2

    .line 890
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v5       #currentScene:I
    .restart local v10       #numChannels:I
    :cond_17
    :try_start_d
    sget-object v16, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getAudioEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "amrnb"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 892
    const/4 v10, 0x1

    .line 893
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_18

    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - audio encoder = AMRNB"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_3

    .line 917
    :catch_1
    move-exception v16

    move-object/from16 v7, v16

    .line 918
    .restart local v7       #e:Ljava/lang/NullPointerException;
    :try_start_e
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_19

    .line 919
    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - Camcorder profiles not set up. defaulting to audio encoder = AAC"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    .line 897
    .end local v7           #e:Ljava/lang/NullPointerException;
    :cond_1a
    :try_start_f
    sget-object v16, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getAudioEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "aacplus"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    .line 899
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_1b

    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - audio encoder = AACP"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto/16 :goto_3

    .line 903
    :cond_1c
    sget-object v16, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getAudioEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "qcelp"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 905
    const/4 v10, 0x1

    .line 906
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_1d

    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - audio encoder = QCELP"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const/16 v17, 0x6

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto/16 :goto_3

    .line 912
    :cond_1e
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_1f

    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - audio encoder = AAC"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_3

    .line 939
    .end local v5           #currentScene:I
    .end local v10           #numChannels:I
    .end local v13           #samplingRate:I
    :cond_20
    const-wide/32 v3, 0x79999999

    .line 943
    .local v3, MAX_ENCODED_FILE_SIZE:J
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const-wide/32 v17, 0x79999999

    invoke-virtual/range {v16 .. v18}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    goto/16 :goto_4

    .line 950
    .end local v3           #MAX_ENCODED_FILE_SIZE:J
    :catch_2
    move-exception v16

    move-object/from16 v7, v16

    .line 951
    .restart local v7       #e:Ljava/lang/NullPointerException;
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_21

    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - Camcorder Profile not set. Defaulting framerate"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    sget-object v17, Lcom/motorola/CameraF/CameraGlobalType;->MMS_VIDEO_CAPTURE_FRAMERATE:Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_5

    .line 969
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v12       #s:Landroid/hardware/Camera$Size;
    :cond_22
    :try_start_11
    sget-object v16, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getVideoEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "h263"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_24

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 973
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_13

    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - video encoder = H263"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_6

    .line 981
    :catch_3
    move-exception v16

    move-object/from16 v9, v16

    .line 984
    .local v9, npe:Ljava/lang/NullPointerException;
    :try_start_12
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_23

    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - video encoder = MPEG_4"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    goto/16 :goto_6

    .line 988
    :catch_4
    move-exception v16

    move-object/from16 v7, v16

    .line 990
    .local v7, e:Ljava/lang/Exception;
    :try_start_13
    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - setVideoEncoder failed"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_6

    .line 975
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #npe:Ljava/lang/NullPointerException;
    :cond_24
    :try_start_14
    sget-object v16, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getVideoEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "h264"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 978
    sget-boolean v16, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v16, :cond_13

    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - video encoder = H264"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    goto/16 :goto_6

    .line 993
    :catch_5
    move-exception v16

    move-object/from16 v7, v16

    .line 995
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_15
    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - setVideoEncoder failed"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1004
    .end local v7           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v16

    move-object/from16 v7, v16

    .line 1006
    .local v7, e:Ljava/io/IOException;
    const-string v16, "MotoCamcorder"

    const-string v17, "initializeRecorder() - prepare failed"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x39

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_7
.end method

.method private interruptThumbnailThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3838
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    if-eqz v0, :cond_3

    .line 3840
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    monitor-enter v0

    .line 3841
    :try_start_0
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3842
    const-string v1, "MotoCamcorder"

    const-string v2, "interruptThumbnailThread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3845
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3846
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3847
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3852
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v1}, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3853
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v1}, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3858
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3859
    iput-object v3, p0, Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    .line 3861
    :cond_3
    return-void

    .line 3858
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 3855
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isPostPanelVisible()Z
    .locals 2

    .prologue
    .line 3573
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3574
    const-string v0, "MotoCamcorder"

    const-string v1, "Camcorder:isPostPanelVisible:isPostPanelVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mPostPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 3867
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3868
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private launchGallery()V
    .locals 4

    .prologue
    .line 2833
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2834
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "LaunchMode"

    const-string v3, "camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2837
    const-string v2, "TYPE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2838
    const-string v2, "GalleryMode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2839
    const-string v2, "com.motorola.gallery"

    const-string v3, "com.motorola.gallery.ExternalViewImage"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2843
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camcorder;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2850
    :goto_0
    return-void

    .line 2845
    :catch_0
    move-exception v0

    .line 2847
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MotoCamcorder"

    const-string v3, "launchGallery() - couldn\'t launch gallery, activity doesn\'t exist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2848
    const v2, 0x7f0b0056

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/CameraF/Camcorder;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recycleVideoFrameBitmap()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, "MotoCamcorder"

    .line 3793
    const-string v0, "MotoCamcorder"

    const-string v0, "recycleVideoFrameBitmap : Enter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3795
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3796
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3797
    iput-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    .line 3799
    :cond_0
    const-string v0, "MotoCamcorder"

    const-string v0, "recycleVideoFrameBitmap : Exit"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    return-void
.end method

.method private registerVideo()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x0

    const-string v12, "MotoCamcorder"

    .line 3176
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v0, "registerVideo() - Enter"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    :cond_0
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 3180
    .local v11, videoTable:Landroid/net/Uri;
    if-nez v11, :cond_2

    .line 3181
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v0, "registerVideo() - videoTable == null!"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    :cond_1
    :goto_0
    return-void

    .line 3185
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_c

    .line 3191
    :try_start_0
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidFileName:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3192
    .local v8, f:Ljava/io/File;
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_size"

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3201
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mLocUtil:Lcom/motorola/CameraF/LocUtility;

    invoke-virtual {v0}, Lcom/motorola/CameraF/LocUtility;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    move-object v9, v0

    .line 3202
    .local v9, loc:Landroid/location/Location;
    :goto_1
    if-eqz v9, :cond_4

    .line 3204
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamcorder"

    const-string v0, "registerVideo() - adding resolution, duration, lat, long"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "latitude"

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3207
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "longitude"

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3218
    :cond_4
    :try_start_1
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    const-string v0, "MotoCamcorder"

    const-string v1, "registerVideo() - Trying to insert..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    :cond_5
    if-eqz v11, :cond_6

    .line 3224
    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "no_thumb"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 3227
    :cond_6
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidUri:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3236
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoCamcorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current video URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    :cond_7
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidUri:Landroid/net/Uri;

    if-eqz v0, :cond_d

    .line 3241
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v13

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3243
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3244
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidMediaID:Ljava/lang/Integer;

    .line 3247
    :cond_8
    if-eqz v6, :cond_9

    .line 3249
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3259
    :cond_9
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidMediaID:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 3261
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x31

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidMediaID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 3262
    .local v10, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3269
    .end local v10           #msg:Landroid/os/Message;
    :cond_a
    :goto_2
    iput-object v3, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 3271
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v0, "registerVideo() - Exit"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3194
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #f:Ljava/io/File;
    .end local v9           #loc:Landroid/location/Location;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 3196
    .local v7, e:Ljava/lang/Exception;
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v0, "registerVideo() - Failed to create mLastValidFileName"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #f:Ljava/io/File;
    :cond_b
    move-object v9, v3

    .line 3201
    goto/16 :goto_1

    .line 3212
    .end local v8           #f:Ljava/io/File;
    :cond_c
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v0, "mCurrentVideoValues == null!"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3230
    .restart local v8       #f:Ljava/io/File;
    .restart local v9       #loc:Landroid/location/Location;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 3232
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v0, "MotoCamcorder"

    const-string v0, "registerVideo() - mContentResolver.insert failed, returning from function"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3255
    .end local v7           #e:Ljava/lang/Exception;
    :cond_d
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v0, "mLastValidUri == null!"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3266
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_e
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_a

    const-string v0, "MotoCamcorder"

    const-string v0, "registerVideo() - mLastValidMediaID == null, aborting tagging"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private releaseMediaRecorder()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v4, "MotoCamcorder"

    .line 1031
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamcorder"

    const-string v2, "releaseMediaRecorder() - Enter"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_0
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1037
    :try_start_0
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - Waiting for MediaRecorder to init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_1
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    iput-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    .line 1047
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_3

    .line 1050
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, state:Ljava/lang/String;
    const-string v2, "bad_removal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1053
    const-string v2, "MotoCamcorder"

    const-string v2, "releaseMediaRecorder() - Not called in bad removal state of media, ok to call empty file cleanup"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->cleanupEmptyFile()V

    .line 1061
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 1062
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 1063
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1069
    .end local v1           #state:Ljava/lang/String;
    :cond_3
    :goto_2
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    const-string v2, "MotoCamcorder"

    const-string v2, "releaseMediaRecorder() - Exit"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_4
    return-void

    .line 1039
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1040
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "MotoCamcorder"

    const-string v3, "thread join interrupted for mRecInitThread thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1043
    iput-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iput-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    throw v2

    .line 1058
    .restart local v1       #state:Ljava/lang/String;
    :cond_6
    const-string v2, "MotoCamcorder"

    const-string v2, "releaseMediaRecorder() - Bad removal of media, skipping file cleanup"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1064
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1065
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "MotoCamcorder"

    const-string v2, "releaseMediaRecorder() - reset failed"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setCameraParameters()V
    .locals 14

    .prologue
    .line 2935
    sget-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_0

    const-string v11, "MotoCamcorder"

    const-string v12, "setCameraParameters() - Enter"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v2

    .line 2939
    .local v2, currentVideoMode:I
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v11}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    iput-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2943
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    const-string v12, "persist.sys.mot.encrypt.mmc"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_13

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v11, v12}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCamcorderAESProps(Z)V

    .line 2946
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    .line 2948
    invoke-static {}, Lcom/motorola/CameraF/CameraUtility;->getInstance()Lcom/motorola/CameraF/CameraUtility;

    move-result-object v11

    iget-object v12, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, p0, v12}, Lcom/motorola/CameraF/CameraUtility;->getCameraCapabilities(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 2953
    :cond_1
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v11

    sput v11, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_MAX_VALUE:I

    .line 2954
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v11

    sput-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->smoothZoomSupported:Z

    .line 2956
    sget-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_2

    .line 2957
    const-string v11, "MotoCamcorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setCameraParameters() - max zoom is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    const-string v11, "MotoCamcorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setCameraParameters() - SmoothZoomSupported is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/motorola/CameraF/CameraGlobalType;->smoothZoomSupported:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    :cond_2
    sget-object v11, Lcom/motorola/CameraF/CameraGlobalType;->MMS_VIDEO_CAPTURE_AUDIO_BITRATE:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2963
    .local v0, audioBitrate:I
    sget-object v11, Lcom/motorola/CameraF/CameraGlobalType;->MMS_VIDEO_CAPTURE_BITRATE:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2965
    .local v9, videoBitrate:I
    :try_start_0
    sget-object v11, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    const-string v12, "default"

    invoke-virtual {v11, v12}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getAudioBitrate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2966
    sget-object v11, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    const-string v12, "default"

    invoke-virtual {v11, v12}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getVideoBitrate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2967
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/motorola/CameraF/Camcorder;->mFailSafe:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2981
    :cond_3
    :goto_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/CameraF/CamSetting/CamSetting;->loadAutoDetectValues()V

    .line 2983
    iget-boolean v11, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v11, :cond_4

    .line 2985
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v11

    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->getResolutionFromIntent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setVideoResolutionService(Ljava/lang/String;)V

    .line 2990
    :cond_4
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v10

    .line 2994
    .local v10, videoResolution:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_16

    .line 2996
    sget-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_5

    const-string v11, "MotoCamcorder"

    const-string v12, "setCameraParameters() - setting our resolution to 320x240"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    :cond_5
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mVideoPreview:Lcom/motorola/CameraF/View/CameraView;

    const/16 v12, 0x140

    const/16 v13, 0xf0

    invoke-virtual {v11, v12, v13}, Lcom/motorola/CameraF/View/CameraView;->setAspectRatio(II)V

    .line 2998
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v12, 0x140

    const/16 v13, 0xf0

    invoke-virtual {v11, v12, v13}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2999
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v11

    const-string v12, "320x240"

    invoke-virtual {v11, v12}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 3035
    :goto_2
    move-object v8, v10

    .line 3036
    .local v8, vidResforProfile:Ljava/lang/String;
    :try_start_1
    iget-boolean v11, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v11, :cond_6

    const-string v11, "QVGA"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    :cond_6
    const/4 v11, 0x5

    if-ne v2, v11, :cond_8

    .line 3038
    :cond_7
    const-string v8, "MMS"

    .line 3040
    :cond_8
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAudioMuted()Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v11, 0x7

    if-eq v2, v11, :cond_9

    const/4 v11, 0x6

    if-ne v2, v11, :cond_1c

    :cond_9
    const/4 v11, 0x0

    move v0, v11

    .line 3045
    :goto_3
    sget-object v11, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    invoke-virtual {v11, v8}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getVideoBitrate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 3047
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v12, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    invoke-virtual {v12, v8}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getVideoFps(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 3049
    sget-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_a

    .line 3050
    const-string v11, "MotoCamcorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " video resolution: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " video bitrate: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " audio nitrate: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " video fps: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    invoke-virtual {v13, v8}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getVideoFps(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3059
    :cond_a
    :goto_4
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setAudioBitrate(I)V

    .line 3060
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setVideoBitrate(I)V

    .line 3062
    iget-boolean v11, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v11, :cond_b

    const/4 v11, 0x5

    if-ne v2, v11, :cond_c

    .line 3064
    :cond_b
    invoke-direct {p0, v0, v9}, Lcom/motorola/CameraF/Camcorder;->calculateServiceModeTime(II)V

    .line 3068
    :cond_c
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "auto"

    invoke-virtual {v11, v12}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 3070
    sget-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v11, :cond_d

    .line 3072
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "mot-picture-iso"

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v13

    invoke-virtual {v13}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentIsoValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    :cond_d
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "mot-exposure-offset"

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v13

    invoke-virtual {v13}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentExpValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    sget-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f

    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v11}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 3081
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v5

    .line 3082
    .local v5, sceneMode:I
    sget-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    if-nez v11, :cond_e

    .line 3083
    sget-object v11, Lcom/motorola/CameraF/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    array-length v11, v11

    if-ge v5, v11, :cond_e

    .line 3084
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/motorola/CameraF/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    aget-object v12, v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 3085
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v12, Lcom/motorola/CameraF/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    aget-object v12, v12, v5

    invoke-virtual {v11, v12}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3087
    :cond_e
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v12, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3090
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v11}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    iput-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3094
    .end local v5           #sceneMode:I
    :cond_f
    sget-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_11

    .line 3096
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentEffect()I

    move-result v1

    .line 3097
    .local v1, colorEffect:I
    sget-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_10

    const-string v11, "MotoCamcorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setCameraParameters() - ColorEffect is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    :cond_10
    sget-object v11, Lcom/motorola/CameraF/CameraGlobalType;->effectSetting:[Ljava/lang/String;

    array-length v11, v11

    if-ge v1, v11, :cond_11

    .line 3099
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/motorola/CameraF/CameraGlobalType;->effectSetting:[Ljava/lang/String;

    aget-object v12, v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 3101
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v12, Lcom/motorola/CameraF/CameraGlobalType;->effectSetting:[Ljava/lang/String;

    aget-object v12, v12, v1

    invoke-virtual {v11, v12}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 3107
    .end local v1           #colorEffect:I
    :cond_11
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v12, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3109
    sget-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_12

    const-string v11, "MotoCamcorder"

    const-string v12, "setCameraParameters() - Exit"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    :cond_12
    return-void

    .line 2943
    .end local v0           #audioBitrate:I
    .end local v8           #vidResforProfile:Ljava/lang/String;
    .end local v9           #videoBitrate:I
    .end local v10           #videoResolution:Ljava/lang/String;
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2969
    .restart local v0       #audioBitrate:I
    .restart local v9       #videoBitrate:I
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 2971
    .local v3, e:Ljava/lang/NullPointerException;
    iget-boolean v11, p0, Lcom/motorola/CameraF/Camcorder;->mFailSafe:Z

    if-nez v11, :cond_14

    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x70

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2972
    :cond_14
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/motorola/CameraF/Camcorder;->mFailSafe:Z

    .line 2973
    sget-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_15

    const-string v11, "MotoCamcorder"

    const-string v12, "Camacorder setup data missing. Defaulting to MMS video mode. BIG PROBLEM!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    :cond_15
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    const-string v12, "320x240"

    invoke-virtual {v11, v12}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setSensorVidResList(Ljava/lang/String;)V

    .line 2975
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    const-string v12, "320x240"

    invoke-virtual {v11, v12}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setAESSensorVidResList(Ljava/lang/String;)V

    .line 2976
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    const-string v12, "320x240"

    invoke-virtual {v11, v12}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 2977
    sget-object v11, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    const-string v12, "3gp,h264,15,128000,amrnb,12200,8000,1"

    invoke-virtual {v11, v12}, Lcom/motorola/CameraF/MotoCamcorderProfile;->setupDefaultTable(Ljava/lang/String;)V

    .line 2978
    sget-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_3

    const-string v11, "MotoCamcorder"

    const-string v12, "setCurrentVideoRes = 320x240"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3001
    .end local v3           #e:Ljava/lang/NullPointerException;
    .restart local v10       #videoResolution:Ljava/lang/String;
    :cond_16
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_18

    .line 3003
    sget-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_17

    const-string v11, "MotoCamcorder"

    const-string v12, "setCameraParameters() - setting our resolution to 320x240"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    :cond_17
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mVideoPreview:Lcom/motorola/CameraF/View/CameraView;

    const/16 v12, 0x140

    const/16 v13, 0xf0

    invoke-virtual {v11, v12, v13}, Lcom/motorola/CameraF/View/CameraView;->setAspectRatio(II)V

    .line 3005
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v12, 0x140

    const/16 v13, 0xf0

    invoke-virtual {v11, v12, v13}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 3006
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v11

    const-string v12, "320x240"

    invoke-virtual {v11, v12}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3009
    :cond_18
    if-nez v10, :cond_1a

    .line 3012
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    .line 3015
    .local v4, lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_19

    const-string v11, "MotoCamcorder"

    const-string v12, "setCameraParameters() - setting our resolution to max"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    :cond_19
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mVideoPreview:Lcom/motorola/CameraF/View/CameraView;

    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v12, v1, Landroid/hardware/Camera$Size;->width:I

    const/4 v13, 0x0

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v13, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12, v13}, Lcom/motorola/CameraF/View/CameraView;->setAspectRatio(II)V

    .line 3017
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v12, v1, Landroid/hardware/Camera$Size;->width:I

    const/4 v13, 0x0

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v13, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12, v13}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_2

    .line 3022
    .end local v4           #lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1a
    sget-boolean v11, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_1b

    const-string v11, "MotoCamcorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setCameraParameters() - setting our resolution to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    :cond_1b
    invoke-static {v10}, Lcom/motorola/CameraF/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3024
    .local v7, temp:Ljava/lang/String;
    const-string v11, "x"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3025
    .local v6, t:[Ljava/lang/String;
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mVideoPreview:Lcom/motorola/CameraF/View/CameraView;

    const/4 v12, 0x0

    aget-object v12, v6, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x1

    aget-object v13, v6, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/motorola/CameraF/View/CameraView;->setAspectRatio(II)V

    .line 3026
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    aget-object v12, v6, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x1

    aget-object v13, v6, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_2

    .line 3040
    .end local v6           #t:[Ljava/lang/String;
    .end local v7           #temp:Ljava/lang/String;
    .restart local v8       #vidResforProfile:Ljava/lang/String;
    :cond_1c
    :try_start_2
    sget-object v11, Lcom/motorola/CameraF/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/CameraF/MotoCamcorderProfile;

    invoke-virtual {v11, v8}, Lcom/motorola/CameraF/MotoCamcorderProfile;->getAudioBitrate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    move v0, v11

    goto/16 :goto_3

    .line 3053
    :catch_1
    move-exception v11

    move-object v3, v11

    .line 3054
    .restart local v3       #e:Ljava/lang/NullPointerException;
    iget-object v11, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v12, Lcom/motorola/CameraF/CameraGlobalType;->MMS_VIDEO_CAPTURE_FRAMERATE:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto/16 :goto_4
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    const-string v2, "MotoCamcorder"

    .line 2916
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    const-string v1, "setPreviewDisplay() - Enter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2930
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamcorder"

    const-string v1, "setPreviewDisplay() - Exit"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    :cond_1
    :goto_0
    return-void

    .line 2922
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2924
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MotoCamcorder"

    const-string v1, "setPreviewDisplay() -Failed to set Preview Display; Closing Camera"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->closeCamera()V

    .line 2926
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private showPostRecordingAlert()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 3542
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 3543
    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:showPostRecordingAlert:showPostRecordingAlert"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->cancelRestartPreviewTimeout()V

    .line 3548
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    .line 3549
    .local v0, reviewTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 3551
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mPostText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3552
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2, v4}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 3556
    :cond_1
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3557
    return-void
.end method

.method private showStorageToast()V
    .locals 4

    .prologue
    .line 2341
    const/4 v0, 0x0

    .line 2342
    .local v0, noStorageText:Ljava/lang/String;
    iget-wide v2, p0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    long-to-int v1, v2

    .line 2343
    .local v1, remaining:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2344
    const v2, 0x7f0b000c

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2350
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/motorola/CameraF/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2351
    return-void

    .line 2345
    :cond_1
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 2346
    const v2, 0x7f0b000d

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 2354
    if-nez p1, :cond_0

    .line 2362
    :goto_0
    return-void

    .line 2355
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 2356
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mToast:Landroid/widget/Toast;

    .line 2361
    :goto_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2358
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2359
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1
.end method

.method private startPreview()V
    .locals 9

    .prologue
    const/16 v8, 0x38

    const-string v7, "MotoCamcorder"

    .line 2854
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCamcorder"

    const-string v4, "startPreview() - Enter"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    :cond_0
    iget-boolean v4, p0, Lcom/motorola/CameraF/Camcorder;->mPreviewing:Z

    if-eqz v4, :cond_2

    .line 2912
    :cond_1
    :goto_0
    return-void

    .line 2862
    :cond_2
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_4

    .line 2864
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_3

    const-string v4, "MotoCamcorder"

    const-string v4, "startPreview() - mCameraDevice = null, opening"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2879
    :cond_4
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->lock()V

    .line 2880
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mZoomChangeListener:Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 2881
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v4}, Lcom/motorola/CameraF/Camcorder;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 2882
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->setCameraParameters()V

    .line 2884
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 2885
    .local v2, params:Landroid/hardware/Camera$Parameters;
    const-string v4, "video-mode"

    sget-object v5, Lcom/motorola/CameraF/CameraGlobalType;->videoModeSetting:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2890
    :try_start_1
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 2891
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/motorola/CameraF/Camcorder;->mPreviewing:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2906
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v4, :cond_5

    .line 2908
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->unlock()V

    .line 2911
    :cond_5
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_1

    const-string v4, "MotoCamcorder"

    const-string v4, "startPreview() - Exit"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2871
    .end local v2           #params:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 2873
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "MotoCamcorder"

    const-string v4, "startPreview() - failed to open camera"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2893
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v2       #params:Landroid/hardware/Camera$Parameters;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 2895
    .local v1, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->closeCamera()V

    .line 2896
    const-string v4, "MotoCamcorder"

    const-string v4, "startPreview() - failed to start preview"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "mot-camera-sdm-disabled"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2898
    .local v3, sdmStatus:Ljava/lang/String;
    if-eqz v3, :cond_6

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2899
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2901
    :cond_6
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private startVideoRecording()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v8, "MotoCamcorder"

    .line 3410
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCamcorder"

    const-string v4, "startVideoRecording() - Enter"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    :cond_0
    iget v4, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    if-ne v4, v9, :cond_8

    .line 3415
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideZoomSet()V

    .line 3418
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideSceneDialog()V

    .line 3425
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    if-eqz v4, :cond_1

    .line 3426
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->setAudioSceneParameter()V

    .line 3429
    :cond_1
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->updateCodecAndFileFormatFromIntent()V

    .line 3431
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v4, :cond_2

    .line 3433
    const-string v4, "MotoCamcorder"

    const-string v4, "startVideoRecording() - Media recorder was never initialized... Trying to init now"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->releaseMediaRecorder()V

    .line 3438
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->initializeRecorder()V

    .line 3443
    :cond_2
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3446
    :try_start_0
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_3

    const-string v4, "MotoCamcorder"

    const-string v5, "startVideoRecording() - Waiting for recorder to initialize"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    :cond_3
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3455
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 3456
    .local v2, mContext:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3457
    .local v1, i:Landroid/content/Intent;
    const-string v4, "command"

    const-string v5, "pause"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3458
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3463
    :try_start_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterToneOn()Z

    move-result v4

    if-nez v4, :cond_6

    .line 3464
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v4, :cond_5

    .line 3465
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 3467
    :cond_5
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    const/4 v5, 0x7

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 3470
    :cond_6
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 3471
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 3472
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V

    .line 3475
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mMute:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3489
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->IsAudioZoomOn()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3490
    const-string v4, "MicZoomON"

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    .line 3495
    :goto_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v3

    .line 3502
    .local v3, mCurrentScenes:I
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v4, v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 3503
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/CameraF/Camcorder;->mRecordingStartTime:J

    .line 3504
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    .line 3505
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 3506
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    iget-wide v5, p0, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/motorola/CameraF/View/Control/OnScreenController;->setRecordingTime(JI)V

    .line 3507
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v4, v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRecordingTime(Z)V

    .line 3509
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    .line 3510
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mShutterButton:Landroid/widget/ImageView;

    const v5, 0x7f020024

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3512
    :cond_7
    const v4, 0x7f0e0059

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3515
    const/4 v4, 0x4

    iput v4, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    .line 3516
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 3517
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x29

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3519
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3522
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #mContext:Landroid/content/Context;
    .end local v3           #mCurrentScenes:I
    :cond_8
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_9

    const-string v4, "MotoCamcorder"

    const-string v4, "startVideoRecording() - Exit"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    :cond_9
    :goto_2
    return-void

    .line 3448
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 3449
    .local v0, e:Ljava/lang/InterruptedException;
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_a

    const-string v4, "MotoCamcorder"

    const-string v4, "thread join interrupted for mRecInitThread thread"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    :cond_a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 3477
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #i:Landroid/content/Intent;
    .restart local v2       #mContext:Landroid/content/Context;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 3479
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "MotoCamcorder"

    const-string v4, "startVideoRecording() - Could not start media recorder. "

    invoke-static {v8, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3480
    iput v7, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    .line 3481
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->finish()V

    goto :goto_2

    .line 3492
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_b
    const-string v4, "MicZoomOFF"

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private stopVideoRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const-string v2, "MotoCamcorder"

    .line 3580
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3581
    const-string v0, "MotoCamcorder"

    const-string v0, "stopVideoRecording() - Enter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3583
    const-string v0, "MotoCamcorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopVideoRecording() - mMediaRecorder :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    const-string v0, "MotoCamcorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopVideoRecording() - mStatus :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    :cond_0
    iget v0, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_5

    .line 3589
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 3590
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 3591
    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/Camcorder;->camcordermuteonoff(Z)V

    .line 3594
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamcorder"

    const-string v0, "stopVideoRecording() - starting mStopRecordingThread"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/motorola/CameraF/Camcorder$7;

    invoke-direct {v1, p0}, Lcom/motorola/CameraF/Camcorder$7;-><init>(Lcom/motorola/CameraF/Camcorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    .line 3634
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3636
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3638
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 3639
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 3640
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mShutterButton:Landroid/widget/ImageView;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3643
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_4

    .line 3645
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/motorola/CameraF/Camcorder$8;

    invoke-direct {v1, p0}, Lcom/motorola/CameraF/Camcorder$8;-><init>(Lcom/motorola/CameraF/Camcorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3703
    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    .line 3706
    :cond_5
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    const-string v0, "MotoCamcorder"

    const-string v0, "stopVideoRecording() - Exit"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    :cond_6
    return-void
.end method

.method private stopVideoRecordingAndDisplayDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3527
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "Camcorder:stopVideoRecordingAndDisplayDialog:stopVideoRecordingAndDisplayDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    :cond_0
    iget v0, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3530
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideTopStatusSet()V

    .line 3531
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    .line 3532
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenController;->setShowRemainTime(Z)V

    .line 3533
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    iget-wide v1, p0, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->setRecordingTime(JI)V

    .line 3534
    const v0, 0x7f0e0031

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3535
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 3536
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->stopVideoRecording()V

    .line 3538
    :cond_1
    return-void
.end method

.method private toggleTorch()V
    .locals 3

    .prologue
    const-string v2, "flash-mode"

    const-string v1, "MotoCamcorder"

    .line 687
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->torchSupported:Z

    if-eqz v0, :cond_1

    .line 688
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->releaseMediaRecorder()V

    .line 689
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 690
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 691
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->torchOn:Z

    if-eqz v0, :cond_0

    .line 692
    const-string v0, "MotoCamcorder"

    const-string v0, "toggleTorch() turning torch On"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v1, "torch"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :goto_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 699
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 700
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 701
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->initializeRecorder()V

    .line 706
    :goto_1
    return-void

    .line 695
    :cond_0
    const-string v0, "MotoCamcorder"

    const-string v0, "toggleTorch() turning torch Off"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v1, "off"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_1
    const-string v0, "MotoCamcorder"

    const-string v0, "Torch not enabled, cannot toggle!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateCodecAndFileFormatFromIntent()V
    .locals 8

    .prologue
    const-string v7, "Camcorder:updateCodecAndFileFormatFromIntent:client not set a valid codec, use default"

    const-string v6, "3g2"

    const-string v5, "AMR/MPEG4"

    const-string v4, "3gp"

    const-string v3, "MotoCamcorder"

    .line 3954
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3955
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Codec"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3957
    const-string v1, "Codec"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCodec:Ljava/lang/String;

    .line 3958
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3959
    const-string v1, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camcorder:updateCodecAndFileFormatFromIntent:client set codec, codec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mCodec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "AMR/MPEG4"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "AAC/MPEG4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "QCELP/MPEG4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3974
    :cond_1
    :goto_0
    const-string v1, "File.Format"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3975
    const-string v1, "File.Format"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mFileFormat:Ljava/lang/String;

    .line 3976
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 3977
    const-string v1, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camcorder:updateCodecAndFileFormatFromIntent:client set file format, file format ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mFileFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    :cond_2
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "3gp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "3g2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3997
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "QCELP/MPEG4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3998
    const-string v1, "3g2"

    iput-object v6, p0, Lcom/motorola/CameraF/Camcorder;->mFileFormat:Ljava/lang/String;

    .line 4001
    :cond_4
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    .line 4002
    const-string v1, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camcorder:updateCodecAndFileFormatFromIntent:final:codec ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mCodec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file format ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mFileFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4003
    :cond_5
    return-void

    .line 3964
    :cond_6
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    .line 3965
    const-string v1, "MotoCamcorder"

    const-string v1, "Camcorder:updateCodecAndFileFormatFromIntent:client not set a valid codec, use default"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    :cond_7
    const-string v1, "AMR/MPEG4"

    iput-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mCodec:Ljava/lang/String;

    goto/16 :goto_0

    .line 3969
    :cond_8
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_9

    .line 3970
    const-string v1, "MotoCamcorder"

    const-string v1, "Camcorder:updateCodecAndFileFormatFromIntent:client not set codec, use default"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    :cond_9
    const-string v1, "AMR/MPEG4"

    iput-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mCodec:Ljava/lang/String;

    goto/16 :goto_0

    .line 3984
    :cond_a
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_b

    .line 3985
    const-string v1, "MotoCamcorder"

    const-string v1, "Camcorder:updateCodecAndFileFormatFromIntent:client not set a valid codec, use default"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    :cond_b
    const-string v1, "3gp"

    iput-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mFileFormat:Ljava/lang/String;

    goto :goto_1

    .line 3990
    :cond_c
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_d

    .line 3991
    const-string v1, "MotoCamcorder"

    const-string v1, "Camcorder:updateCodecAndFileFormatFromIntent:client not set file format, use default"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3993
    :cond_d
    const-string v1, "3gp"

    iput-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mFileFormat:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateRecordTime()V
    .locals 22

    .prologue
    .line 4010
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 4011
    .local v12, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mRecordingStartTime:J

    move-wide/from16 v18, v0

    sub-long v10, v12, v18

    .line 4012
    .local v10, delta:J
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v9

    .line 4013
    .local v9, currentVideoMode:I
    const-wide/16 v14, 0x0

    .line 4016
    .local v14, remainseconds:J
    const-wide/16 v4, 0x258

    .line 4017
    .local v4, EncryptionEnabledTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v4

    if-lez v18, :cond_0

    move-wide v6, v4

    .line 4019
    .local v6, Encryptionmodemax:J
    :goto_0
    const/16 v18, 0x7

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 4021
    sget-object v18, Lcom/motorola/CameraF/CameraGlobalType;->VIDEO_CAPTURE_SLOW_MOTION_FRAMERATE:Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sget-object v19, Lcom/motorola/CameraF/CameraGlobalType;->VIDEO_CAPTURE_FRAMERATE:Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    div-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v18, v18, v10

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4022
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSDEncryptionEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 4024
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    sub-long v14, v6, v18

    .line 4028
    :goto_1
    const-wide/16 v18, 0x1e

    cmp-long v18, v14, v18

    if-gtz v18, :cond_2

    const/high16 v18, -0x1

    move/from16 v8, v18

    .line 4062
    .local v8, color:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRemainTime()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 4063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide v1, v14

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->setRecordingTime(JI)V

    .line 4067
    :goto_3
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-gtz v18, :cond_e

    .line 4069
    invoke-direct/range {p0 .. p0}, Lcom/motorola/CameraF/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    .line 4075
    :goto_4
    return-void

    .line 4017
    .end local v6           #Encryptionmodemax:J
    .end local v8           #color:I
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-wide/from16 v6, v18

    goto :goto_0

    .line 4026
    .restart local v6       #Encryptionmodemax:J
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v20, v0

    sub-long v14, v18, v20

    goto :goto_1

    .line 4028
    :cond_2
    const/16 v18, -0x1

    move/from16 v8, v18

    goto :goto_2

    .line 4030
    :cond_3
    const/16 v18, 0x6

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 4033
    const-wide/16 v18, 0x4

    div-long v18, v10, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4034
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSDEncryptionEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 4036
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    sub-long v14, v6, v18

    .line 4040
    :goto_5
    const-wide/16 v18, 0x3

    cmp-long v18, v14, v18

    if-gtz v18, :cond_5

    const/high16 v18, -0x1

    move/from16 v8, v18

    .restart local v8       #color:I
    :goto_6
    goto/16 :goto_2

    .line 4038
    .end local v8           #color:I
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v20, v0

    sub-long v14, v18, v20

    goto :goto_5

    .line 4040
    :cond_5
    const/16 v18, -0x1

    move/from16 v8, v18

    goto :goto_6

    .line 4042
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    const/16 v18, 0x5

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 4044
    :cond_7
    const-wide/16 v18, 0x3e8

    div-long v18, v10, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4045
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/Camcorder;->mTimeLimitMs:I

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/Camcorder;->mTimeLimitMs:I

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v16, v18

    .line 4046
    .local v16, serviceModeMaxSeconds:J
    :goto_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    sub-long v14, v16, v18

    .line 4047
    const-wide/16 v18, 0xa

    cmp-long v18, v14, v18

    if-gtz v18, :cond_9

    const/high16 v18, -0x1

    move/from16 v8, v18

    .line 4049
    .restart local v8       #color:I
    :goto_8
    goto/16 :goto_2

    .line 4045
    .end local v8           #color:I
    .end local v16           #serviceModeMaxSeconds:J
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-wide/from16 v16, v18

    goto :goto_7

    .line 4047
    .restart local v16       #serviceModeMaxSeconds:J
    :cond_9
    const/16 v18, -0x1

    move/from16 v8, v18

    goto :goto_8

    .line 4052
    .end local v16           #serviceModeMaxSeconds:J
    :cond_a
    const-wide/16 v18, 0x3e8

    div-long v18, v10, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSDEncryptionEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 4054
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    sub-long v14, v6, v18

    .line 4058
    :goto_9
    const-wide/16 v18, 0xa

    cmp-long v18, v14, v18

    if-gtz v18, :cond_c

    const/high16 v18, -0x1

    move/from16 v8, v18

    .restart local v8       #color:I
    :goto_a
    goto/16 :goto_2

    .line 4056
    .end local v8           #color:I
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v20, v0

    sub-long v14, v18, v20

    goto :goto_9

    .line 4058
    :cond_c
    const/16 v18, -0x1

    move/from16 v8, v18

    goto :goto_a

    .line 4065
    .restart local v8       #color:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->setRecordingTime(JI)V

    goto/16 :goto_3

    .line 4073
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x29

    const-wide/16 v20, 0x3e8

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4
.end method

.method private updateRemainCount()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 3805
    iget-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRecordingTime(Z)V

    .line 3807
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v2

    .line 3810
    .local v2, currentVideoMode:I
    iget-boolean v5, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v5, :cond_0

    const/4 v5, 0x5

    if-ne v2, v5, :cond_3

    .line 3813
    :cond_0
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->VIDEO_CAM_DELTA:Z

    if-eqz v5, :cond_2

    .line 3815
    iget v5, p0, Lcom/motorola/CameraF/Camcorder;->mTimeLimitMs:I

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v3, v5

    .line 3816
    .local v3, serviceModeLimitSec:J
    iget-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v5}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRemainText()V

    .line 3817
    iget-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    iget-wide v6, p0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    cmp-long v6, v6, v3

    if-lez v6, :cond_1

    move-wide v6, v3

    :goto_0
    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateRemainText(Ljava/lang/String;Z)V

    .line 3833
    .end local v3           #serviceModeLimitSec:J
    :goto_1
    return-void

    .line 3817
    .restart local v3       #serviceModeLimitSec:J
    :cond_1
    iget-wide v6, p0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    goto :goto_0

    .line 3820
    .end local v3           #serviceModeLimitSec:J
    :cond_2
    iget-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v5}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    goto :goto_1

    .line 3822
    :cond_3
    iget-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    iget-boolean v5, v5, Lcom/motorola/CameraF/CamSetting/CamSetting;->mSDEncryptionEnabled:Z

    if-eqz v5, :cond_5

    .line 3824
    const-wide/16 v0, 0x258

    .line 3825
    .local v0, EncryptionEnabledTime:J
    iget-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v5}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRemainText()V

    .line 3826
    iget-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    iget-wide v6, p0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    cmp-long v6, v6, v0

    if-lez v6, :cond_4

    move-wide v6, v0

    :goto_2
    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateRemainText(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    iget-wide v6, p0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    goto :goto_2

    .line 3830
    .end local v0           #EncryptionEnabledTime:J
    :cond_5
    iget-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v5}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRemainText()V

    .line 3831
    iget-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    iget-wide v6, p0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateRemainText(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private updateScenesEffects()V
    .locals 4

    .prologue
    const-string v3, "MotoCamcorder"

    .line 1078
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    const-string v1, "updateScenesEffects() - Enter"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v0

    .line 1082
    .local v0, sceneMode:I
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    if-nez v1, :cond_2

    .line 1083
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/CameraF/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1085
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lcom/motorola/CameraF/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1087
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1090
    :cond_2
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1093
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->updateEffects()V

    .line 1095
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCamcorder"

    const-string v1, "updateScenesEffects() - Exit"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_3
    return-void
.end method

.method private writeTagToDB(Ljava/lang/Integer;)V
    .locals 13
    .parameter "mediaID"

    .prologue
    .line 3325
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getTagsListForDB()Ljava/util/List;

    move-result-object v9

    .line 3327
    .local v9, mTags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_1

    .line 3382
    :cond_0
    :goto_0
    return-void

    .line 3330
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 3331
    .local v10, size:I
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 3332
    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTags size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Media ID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    :cond_2
    if-eqz v10, :cond_0

    .line 3336
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v10, :cond_0

    .line 3338
    const/4 v6, 0x0

    .line 3339
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt$Tag;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local v6           #cursor:Landroid/database/Cursor;
    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3344
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 3346
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3347
    const/4 v6, 0x0

    .line 3349
    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 3350
    .local v11, tagValues:Landroid/content/ContentValues;
    const-string v1, "_data"

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    :try_start_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt$Tag;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3357
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt$Tag;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3358
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt$Tag;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local v6           #cursor:Landroid/database/Cursor;
    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3363
    .end local v11           #tagValues:Landroid/content/ContentValues;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3364
    new-instance v12, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 3366
    .local v12, uriValues:Landroid/content/ContentValues;
    const-string v0, "media_type"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3367
    const-string v0, "media_id"

    invoke-virtual {v12, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3368
    const-string v0, "keyword_id"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3370
    :try_start_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt$Association;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3374
    :goto_2
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt$Association;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3377
    .end local v12           #uriValues:Landroid/content/ContentValues;
    :cond_4
    if-eqz v6, :cond_5

    .line 3378
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3336
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 3353
    .restart local v11       #tagValues:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 3354
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MotoCamcorder"

    const-string v1, "writeTagToDB:insert failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3371
    .end local v7           #e:Ljava/lang/Exception;
    .end local v11           #tagValues:Landroid/content/ContentValues;
    .restart local v12       #uriValues:Landroid/content/ContentValues;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 3372
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v0, "MotoCamcorder"

    const-string v1, "writeTagToDB:insert to Association db failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private zoomTo(I)V
    .locals 3
    .parameter "zoom"

    .prologue
    .line 3387
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    .line 3406
    :cond_0
    :goto_0
    return-void

    .line 3391
    :cond_1
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->releaseMediaRecorder()V

    .line 3394
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 3395
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v0, :cond_3

    .line 3396
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSmoothZoom() - zoom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    goto :goto_0

    .line 3399
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 3400
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3402
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 3404
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->initializeRecorder()V

    goto :goto_0
.end method


# virtual methods
.method camcordermuteonoff(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    const-string v2, "MUTE"

    .line 4078
    const-string v0, "MotoCamcorder"

    const-string v1, "camcordermuteonoff:called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4080
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 4082
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 4085
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 4086
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    const-string v1, "MUTE"

    const-string v1, "on"

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4092
    :cond_1
    :goto_0
    return-void

    .line 4088
    :cond_2
    if-nez p1, :cond_1

    .line 4090
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    const-string v1, "MUTE"

    const-string v1, "off"

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public launchCamera()V
    .locals 3

    .prologue
    const-string v2, "Camtype"

    .line 1348
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/CameraF/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1349
    .local v0, picCamera:Landroid/content/Intent;
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1351
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-eqz v1, :cond_0

    const-string v1, "Camtype"

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1353
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 1354
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->finish()V

    .line 1355
    return-void

    .line 1352
    :cond_0
    const-string v1, "Camtype"

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public launchCameraInMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const-string v2, "Camtype"

    .line 1358
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/CameraF/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1360
    .local v0, picCamera:Landroid/content/Intent;
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1363
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-eqz v1, :cond_0

    const-string v1, "Camtype"

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1366
    :goto_0
    const-string v1, "Mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1367
    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 1368
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->finish()V

    .line 1369
    return-void

    .line 1364
    :cond_0
    const-string v1, "Camtype"

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, "MotoCamcorder"

    .line 2178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 2317
    :cond_0
    :goto_0
    return-void

    .line 2180
    :sswitch_0
    new-instance v4, Lcom/motorola/CameraF/Camcorder$5;

    invoke-direct {v4, p0}, Lcom/motorola/CameraF/Camcorder$5;-><init>(Lcom/motorola/CameraF/Camcorder;)V

    .line 2210
    .local v4, okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/motorola/CameraF/Camcorder$6;

    invoke-direct {v1, p0}, Lcom/motorola/CameraF/Camcorder$6;-><init>(Lcom/motorola/CameraF/Camcorder;)V

    .line 2217
    .local v1, cancelButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2218
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v5, 0x108003c

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2219
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2220
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0034

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2222
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2223
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2224
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 2229
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    .end local v1           #cancelButtonListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v4           #okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2230
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2231
    const-string v5, "video/3gpp"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2232
    const-string v5, "android.intent.extra.STREAM"

    iget-object v6, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2234
    const v5, 0x7f0b002e

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camcorder;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camcorder;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2236
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 2237
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    const v5, 0x7f0b0030

    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/CameraF/Camcorder;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2245
    .end local v2           #ex:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_2
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2246
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "LaunchMode"

    const-string v6, "camera"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2249
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/Camcorder;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2251
    :catch_1
    move-exception v2

    .line 2253
    .restart local v2       #ex:Landroid/content/ActivityNotFoundException;
    const v5, 0x7f0b0057

    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/CameraF/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2255
    const-string v5, "MotoCamcorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camcorder:onClick:Couldn\'t view video "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2262
    .end local v2           #ex:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_3
    iget-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2267
    :sswitch_4
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_1

    .line 2268
    const-string v5, "MotoCamcorder"

    const-string v5, "Camcorder:onClick:!!! enter retake !!!"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    :cond_1
    iget-boolean v5, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v5, :cond_0

    .line 2270
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2

    .line 2271
    const-string v5, "MotoCamcorder"

    const-string v5, "Camcorder:onClick:!!! enter retake - is intent mode !!!"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    :cond_2
    iget-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2280
    :sswitch_5
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_3

    .line 2281
    const-string v5, "MotoCamcorder"

    const-string v5, "Camcorder:onClick:!!! enter attach !!!"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    :cond_3
    iget-boolean v5, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v5, :cond_0

    .line 2283
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_4

    .line 2284
    const-string v5, "MotoCamcorder"

    const-string v5, "Camcorder:onClick:!!! enter attach - is intent mode!!!"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    :cond_4
    invoke-direct {p0, v8}, Lcom/motorola/CameraF/Camcorder;->doReturnToCaller(Z)V

    goto/16 :goto_0

    .line 2293
    :sswitch_6
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_5

    .line 2294
    const-string v5, "MotoCamcorder"

    const-string v5, "Camcorder:onClick:!!! enter cancel !!!"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    :cond_5
    iget-boolean v5, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v5, :cond_6

    .line 2297
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_6

    .line 2298
    const-string v5, "MotoCamcorder"

    const-string v5, "Camcorder:onClick:!!! enter cancel , is intent mode"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    :cond_6
    invoke-direct {p0, v6}, Lcom/motorola/CameraF/Camcorder;->doReturnToCaller(Z)V

    goto/16 :goto_0

    .line 2306
    :sswitch_7
    iget-object v5, p0, Lcom/motorola/CameraF/Camcorder;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2307
    invoke-virtual {p0, v8}, Lcom/motorola/CameraF/Camcorder;->camcordermuteonoff(Z)V

    goto/16 :goto_0

    .line 2309
    :cond_7
    invoke-virtual {p0, v6}, Lcom/motorola/CameraF/Camcorder;->camcordermuteonoff(Z)V

    goto/16 :goto_0

    .line 2178
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0070 -> :sswitch_3
        0x7f0e0072 -> :sswitch_1
        0x7f0e0093 -> :sswitch_7
        0x7f0e009d -> :sswitch_0
        0x7f0e009e -> :sswitch_2
        0x7f0e009f -> :sswitch_4
        0x7f0e00a1 -> :sswitch_5
        0x7f0e00a3 -> :sswitch_6
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    const-string v3, "MotoCamcorder"

    .line 2757
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0, p0, v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 2758
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged() - hardKeyboardHidden is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    :cond_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged() - Keyboard is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v2, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2763
    sget-boolean v0, Lcom/motorola/CameraF/Camcorder;->mIsRotator:Z

    if-eqz v0, :cond_2

    .line 2765
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/CameraF/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2769
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2770
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v11, 0x1

    const-string v12, "MotoCamcorder"

    .line 1818
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1820
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_0

    const-string v9, "MotoCamcorder"

    const-string v9, "onCreate() - Enter"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    :cond_0
    iget-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    check-cast v9, Lcom/motorola/CameraF/Camcorder$MainHandler;

    invoke-virtual {v9, p0}, Lcom/motorola/CameraF/Camcorder$MainHandler;->setActivityReference(Landroid/app/Activity;)V

    .line 1826
    const v9, 0x7f03001d

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->setContentView(I)V

    .line 1829
    const v9, 0x7f0e005b

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/motorola/CameraF/View/CameraView;

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mVideoPreview:Lcom/motorola/CameraF/View/CameraView;

    .line 1832
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isCamSettingInit()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1834
    invoke-static {p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->initCamSetting(Landroid/content/Context;)V

    .line 1837
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    .line 1840
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->isVideoCaptureIntent()Z

    move-result v9

    iput-boolean v9, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    .line 1841
    iget-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    iget-boolean v10, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setServiceMode(Z)V

    .line 1844
    iget-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v9, p0, v11}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 1848
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/motorola/CameraF/Camcorder$3;

    invoke-direct {v9, p0}, Lcom/motorola/CameraF/Camcorder$3;-><init>(Lcom/motorola/CameraF/Camcorder;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1854
    .local v8, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1857
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    .line 1860
    iget-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mVideoPreview:Lcom/motorola/CameraF/View/CameraView;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    .line 1861
    .local v4, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v4, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1862
    const/4 v9, 0x3

    invoke-interface {v4, v9}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1865
    const v9, 0x7f0e0095

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mVideoFrame:Landroid/widget/ImageView;

    .line 1868
    iget-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 1870
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_2

    const-string v9, "MotoCamcorder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate() - mIsVideoCaptureIntent is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1876
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f0e005a

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/motorola/CameraF/View/CameraContentView;

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mMain:Lcom/motorola/CameraF/View/CameraContentView;

    .line 1877
    iget-object v7, p0, Lcom/motorola/CameraF/Camcorder;->mMain:Lcom/motorola/CameraF/View/CameraContentView;

    .line 1879
    .local v7, main:Lcom/motorola/CameraF/View/CameraContentView;
    iput v11, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    .line 1884
    :try_start_0
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-ne v9, v11, :cond_6

    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    if-nez v9, :cond_6

    .line 1886
    const v9, 0x7f03000f

    invoke-virtual {v5, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/motorola/CameraF/View/CameraContentView;

    move-object v7, v0

    .line 1902
    :goto_0
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-ne v9, v11, :cond_8

    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    if-nez v9, :cond_8

    .line 1904
    const v9, 0x7f0e002e

    invoke-virtual {v7, v9}, Lcom/motorola/CameraF/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1924
    :goto_1
    const v9, 0x7f0e0058

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mShutterButton:Landroid/widget/ImageView;

    .line 1925
    iget-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v9, :cond_3

    .line 1926
    iget-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mShutterButton:Landroid/widget/ImageView;

    const v10, 0x7f020022

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1929
    :cond_3
    const v9, 0x7f0e0099

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mPostPanel:Landroid/widget/RelativeLayout;

    .line 1931
    const v9, 0x7f0e0064

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mPostText:Landroid/widget/TextView;

    .line 1934
    iget-boolean v9, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v9, :cond_a

    .line 1937
    const v9, 0x7f03001f

    iget-object v10, p0, Lcom/motorola/CameraF/Camcorder;->mPostPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mPostPanel:Landroid/widget/RelativeLayout;

    .line 1939
    const v9, 0x7f0e00a1

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1940
    .local v1, b:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1942
    const v9, 0x7f0e00a3

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #b:Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 1943
    .restart local v1       #b:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1945
    const v9, 0x7f0e009f

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #b:Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 1946
    .restart local v1       #b:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1961
    :goto_2
    const v9, 0x7f0e009e

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #b:Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 1962
    .restart local v1       #b:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1964
    const v9, 0x7f0e0093

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ToggleButton;

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mMute:Landroid/widget/ToggleButton;

    .line 1965
    iget-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v9, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1966
    iget-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mMute:Landroid/widget/ToggleButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1968
    const v9, 0x7f0e0096

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mSavingVideo:Landroid/view/View;

    .line 1969
    const v9, 0x7f0e0098

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mSavingVideoText:Landroid/widget/TextView;

    .line 1970
    const v9, 0x7f0e0097

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mSavingProgress:Landroid/widget/ProgressBar;

    .line 1973
    const-string v9, "location"

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/LocationManager;

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mLocationManager:Landroid/location/LocationManager;

    .line 1974
    new-instance v9, Lcom/motorola/CameraF/LocUtility;

    iget-object v10, p0, Lcom/motorola/CameraF/Camcorder;->mLocationManager:Landroid/location/LocationManager;

    invoke-direct {v9, p0, v10}, Lcom/motorola/CameraF/LocUtility;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mLocUtil:Lcom/motorola/CameraF/LocUtility;

    .line 1976
    iget-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v9

    if-ne v9, v11, :cond_4

    .line 1978
    new-instance v6, Ljava/lang/Thread;

    new-instance v9, Lcom/motorola/CameraF/Camcorder$4;

    invoke-direct {v9, p0}, Lcom/motorola/CameraF/Camcorder$4;-><init>(Lcom/motorola/CameraF/Camcorder;)V

    invoke-direct {v6, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1984
    .local v6, locThread:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1989
    .end local v6           #locThread:Ljava/lang/Thread;
    :cond_4
    iget-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    iget-object v10, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->setParams(Landroid/os/Handler;)V

    .line 1990
    iget-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9, v11}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 1991
    iget-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideZoomControlSet()V

    .line 1996
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2004
    :goto_3
    iget-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 2006
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_5

    const-string v9, "MotoCamcorder"

    const-string v9, "onCreate() - Exit"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_5
    return-void

    .line 1889
    .end local v1           #b:Landroid/widget/Button;
    :cond_6
    :try_start_2
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-ne v9, v11, :cond_7

    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    if-ne v9, v11, :cond_7

    .line 1891
    const v9, 0x7f030011

    invoke-virtual {v5, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/motorola/CameraF/View/CameraContentView;

    move-object v7, v0

    goto/16 :goto_0

    .line 1896
    :cond_7
    const v9, 0x7f030010

    invoke-virtual {v5, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/motorola/CameraF/View/CameraContentView;

    move-object v7, v0

    goto/16 :goto_0

    .line 1906
    :cond_8
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-ne v9, v11, :cond_9

    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    if-ne v9, v11, :cond_9

    .line 1908
    const v9, 0x7f0e002e

    invoke-virtual {v7, v9}, Lcom/motorola/CameraF/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    :try_end_2
    .catch Landroid/view/InflateException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1915
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 1918
    .local v2, e:Landroid/view/InflateException;
    const-string v9, "MotoCamcorder"

    const-string v9, "onCreate() - InflateException!"

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    invoke-virtual {v2}, Landroid/view/InflateException;->printStackTrace()V

    .line 1920
    const v9, 0x7f0b007a

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/motorola/CameraF/Camcorder;->showToast(Ljava/lang/String;)V

    .line 1921
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->finish()V

    goto/16 :goto_1

    .line 1912
    .end local v2           #e:Landroid/view/InflateException;
    :cond_9
    const v9, 0x7f0e002e

    :try_start_3
    invoke-virtual {v7, v9}, Lcom/motorola/CameraF/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    :try_end_3
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1949
    :cond_a
    const v9, 0x7f03001e

    iget-object v10, p0, Lcom/motorola/CameraF/Camcorder;->mPostPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/motorola/CameraF/Camcorder;->mPostPanel:Landroid/widget/RelativeLayout;

    .line 1951
    const v9, 0x7f0e009d

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1952
    .restart local v1       #b:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1954
    const v9, 0x7f0e0072

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #b:Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 1955
    .restart local v1       #b:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1957
    const v9, 0x7f0e0070

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #b:Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 1958
    .restart local v1       #b:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 1998
    :catch_1
    move-exception v3

    .line 2000
    .local v3, ex:Ljava/lang/InterruptedException;
    const-string v9, "MotoCamcorder"

    const-string v9, "onCreate() - failed to join preview thread, ignoring..."

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 1116
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog:id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_0
    const/4 v0, 0x0

    .line 1120
    .local v0, myDialog:Lcom/motorola/CameraF/CameraDialog;
    new-instance v0, Lcom/motorola/CameraF/CameraDialog;

    .end local v0           #myDialog:Lcom/motorola/CameraF/CameraDialog;
    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/CameraF/CameraDialog;-><init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/motorola/CameraF/View/Control/OnScreenController;Lcom/motorola/CameraF/CameraDialog$IDialogListener;)V

    .line 1122
    .restart local v0       #myDialog:Lcom/motorola/CameraF/CameraDialog;
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 1378
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 1379
    const-string v1, "MotoCamcorder"

    const-string v2, "onCreateOptionsMenu() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_2

    .line 1385
    :cond_1
    const/4 v1, 0x0

    .line 1393
    :goto_0
    return v1

    .line 1388
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1390
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1391
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    move v1, v3

    .line 1393
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2501
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2503
    const-string v0, "MotoCamcorder"

    const-string v1, "onDestroy() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    :cond_0
    iput-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mLocUtil:Lcom/motorola/CameraF/LocUtility;

    .line 2507
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0, p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->resetContext(Landroid/content/Context;)V

    .line 2508
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mMute:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    .line 2509
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2511
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mVToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 2512
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mVToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2514
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2515
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2321
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got Error callback from  MediaRecorder Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2327
    :cond_1
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const-string v1, "MotoCamcorder"

    .line 2331
    const/16 v0, 0x320

    if-ne p2, v0, :cond_2

    .line 2332
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v0, "Got Info callback from  MediaRecorder MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    .line 2339
    :cond_1
    :goto_0
    return-void

    .line 2334
    :cond_2
    const/16 v0, 0x321

    if-ne p2, v0, :cond_1

    .line 2336
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamcorder"

    const-string v0, "Got Info callback from  MediaRecorder MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    :cond_3
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v7, "MotoCamcorder"

    .line 2520
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown: + keyCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    :cond_0
    iget v2, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    move v2, v8

    .line 2652
    :goto_0
    return v2

    .line 2529
    :cond_1
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_2

    .line 2530
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 2533
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 2650
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    move v2, v8

    .line 2652
    goto :goto_0

    .line 2536
    :sswitch_0
    iget v2, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    if-ne v2, v5, :cond_5

    .line 2538
    iget-boolean v2, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_3

    .line 2540
    invoke-direct {p0, v8}, Lcom/motorola/CameraF/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    :goto_1
    move v2, v8

    .line 2565
    goto :goto_0

    .line 2544
    :cond_3
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->getCaptureVideoUriFromIntent()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_4

    .line 2547
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2550
    .local v1, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2558
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder;->mLastValidUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2563
    .end local v1           #f:Ljava/io/File;
    :cond_4
    :goto_3
    invoke-direct {p0, v6}, Lcom/motorola/CameraF/Camcorder;->doReturnToCaller(Z)V

    goto :goto_1

    .line 2552
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2554
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "MotoCamcorder"

    const-string v2, "Security exception deleting file!"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2559
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 2560
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MotoCamcorder"

    const-string v2, "Camcorder:onClick Back: file Delete failed"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2567
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #f:Ljava/io/File;
    :cond_5
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/CameraF/View/Control/OnScreenController;->isAdjusting()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2569
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2, v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideStatusSet(Z)V

    .line 2570
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mVideoPreview:Lcom/motorola/CameraF/View/CameraView;

    invoke-virtual {v2}, Lcom/motorola/CameraF/View/CameraView;->requestLayout()V

    .line 2571
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRemainText()V

    .line 2572
    const v2, 0x7f0e0031

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    move v2, v8

    .line 2573
    goto :goto_0

    .line 2575
    :cond_6
    iget v2, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    if-ne v2, v8, :cond_7

    .line 2576
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_7

    .line 2578
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 2579
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->finish()V

    move v2, v8

    .line 2580
    goto/16 :goto_0

    .line 2584
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2586
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_8

    .line 2588
    iget v2, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    if-ne v2, v8, :cond_a

    .line 2590
    iget-wide v2, p0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_9

    .line 2592
    const v2, 0x7f0b0078

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/CameraF/Camcorder;->showToast(Ljava/lang/String;)V

    :cond_8
    :goto_4
    move v2, v8

    .line 2609
    goto/16 :goto_0

    .line 2596
    :cond_9
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/CameraF/View/Control/OnScreenController;->rightSetFadeOut()V

    .line 2597
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->startVideoRecording()V

    goto :goto_4

    .line 2600
    :cond_a
    iget v2, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    if-ne v2, v4, :cond_b

    .line 2602
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    goto :goto_4

    .line 2604
    :cond_b
    iget v2, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    if-ne v2, v5, :cond_8

    .line 2606
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 2611
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_11

    .line 2612
    iget v2, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    if-ne v2, v8, :cond_f

    .line 2613
    iget-wide v2, p0, Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_d

    .line 2614
    const v2, 0x7f0b0078

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/CameraF/Camcorder;->showToast(Ljava/lang/String;)V

    :cond_c
    :goto_5
    move v2, v8

    .line 2632
    goto/16 :goto_0

    .line 2616
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/motorola/CameraF/Camcorder;->mTime2Idle:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_e

    move v2, v8

    .line 2618
    goto/16 :goto_0

    .line 2620
    :cond_e
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/CameraF/View/Control/OnScreenController;->rightSetFadeOut()V

    .line 2621
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2622
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->startVideoRecording()V

    goto :goto_5

    .line 2624
    :cond_f
    iget v2, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    if-ne v2, v4, :cond_c

    .line 2625
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/motorola/CameraF/Camcorder;->mRecordingStartTime:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    move v2, v8

    .line 2627
    goto/16 :goto_0

    .line 2629
    :cond_10
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    goto :goto_5

    :cond_11
    move v2, v8

    .line 2634
    goto/16 :goto_0

    .line 2637
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v8

    .line 2638
    goto/16 :goto_0

    .line 2640
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :sswitch_4
    move v2, v8

    .line 2644
    goto/16 :goto_0

    .line 2647
    :sswitch_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2533
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x15 -> :sswitch_5
        0x16 -> :sswitch_5
        0x17 -> :sswitch_2
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x1b -> :sswitch_1
        0x52 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2657
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2658
    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp: + keyCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 2660
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 2661
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 2662
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2664
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const-string v7, "orientation"

    const-string v5, "MotoCamcorder"

    .line 1448
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 1449
    const-string v2, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected() - Enter (item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1485
    :goto_0
    :pswitch_0
    return v4

    .line 1455
    :pswitch_1
    const-string v2, "MotoCamcorder"

    const-string v2, "MMS mode pressed in video mode"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->enableMMSMode()V

    goto :goto_0

    .line 1459
    :pswitch_2
    const-string v2, "MotoCamcorder"

    const-string v2, "Normal Video pressed in video mode"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->enableNormalVideoMode()V

    goto :goto_0

    .line 1463
    :pswitch_3
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1466
    :pswitch_4
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setLastCamcorderMode(I)V

    .line 1467
    invoke-static {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCameraLaunchFromCamcorderFlag(Z)V

    .line 1468
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getLastCameraMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/Camcorder;->launchCameraInMode(I)V

    goto :goto_0

    .line 1472
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1473
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/motorola/CameraF/TagsSetting;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1474
    const-string v2, "orientation"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1475
    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 1476
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setReturnFromTag(Z)V

    goto :goto_0

    .line 1479
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1480
    .local v1, settingIntent:Landroid/content/Intent;
    const-class v2, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1481
    const-string v2, "orientation"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1482
    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camcorder;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1452
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00b3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onPause()V
    .locals 9

    .prologue
    const/16 v8, 0x16

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x1

    const-string v4, "MotoCamcorder"

    .line 2382
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamcorder"

    const-string v2, "onPause() - Enter"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2387
    iput-boolean v5, p0, Lcom/motorola/CameraF/Camcorder;->mPausing:Z

    .line 2390
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v2

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mLocUtil:Lcom/motorola/CameraF/LocUtility;

    if-eqz v2, :cond_1

    .line 2392
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mLocUtil:Lcom/motorola/CameraF/LocUtility;

    invoke-virtual {v2}, Lcom/motorola/CameraF/LocUtility;->stopReceivingLocationUpdates()V

    .line 2396
    :cond_1
    iget v2, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    if-ne v2, v6, :cond_2

    .line 2398
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->stopVideoRecording()V

    .line 2401
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mVideoPreview:Lcom/motorola/CameraF/View/CameraView;

    invoke-virtual {v2, v6}, Lcom/motorola/CameraF/View/CameraView;->setVisibility(I)V

    .line 2405
    :cond_2
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->torchOn:Z

    if-eqz v2, :cond_4

    .line 2406
    const-string v2, "MotoCamcorder"

    const-string v2, "[jdbg] - Disabling torch in onPause()"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    .line 2408
    sput-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->torchOn:Z

    .line 2409
    :cond_3
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->toggleTorch()V

    .line 2414
    :cond_4
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2417
    :try_start_0
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "MotoCamcorder"

    const-string v3, "onPause() - Waiting for recording to stop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    :cond_5
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2424
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mSavingVideo:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mSavingVideo:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 2426
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mSavingVideo:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2429
    :cond_7
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2430
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_8

    .line 2431
    const-string v2, "MotoCamcorder"

    const-string v2, "onPause(): Pending DISPLAY_VIDEO_POSTVIEW"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    :cond_8
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2433
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 2435
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2436
    .local v0, broadUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 2446
    .end local v0           #broadUri:Landroid/net/Uri;
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->releaseMediaRecorder()V

    .line 2447
    iget v2, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_a

    .line 2448
    iput v5, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    .line 2452
    :cond_a
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->closeCamera()V

    .line 2455
    iget-boolean v2, p0, Lcom/motorola/CameraF/Camcorder;->mDidRegister:Z

    if-eqz v2, :cond_b

    .line 2457
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/Camcorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2458
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->windReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/Camcorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2459
    iput-boolean v7, p0, Lcom/motorola/CameraF/Camcorder;->mDidRegister:Z

    .line 2465
    :cond_b
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->cancelToast()V

    .line 2468
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideZoomSet()V

    .line 2471
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->deleteDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2473
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 2474
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/CameraF/Camcorder;->deleteDialog:Landroid/app/AlertDialog;

    .line 2478
    :cond_c
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideSceneDialog()V

    .line 2481
    iget v2, p0, Lcom/motorola/CameraF/Camcorder;->currentDialog:I

    const/4 v3, 0x5

    if-gt v2, v3, :cond_e

    .line 2483
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_d

    const-string v2, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause: Deleting dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/CameraF/Camcorder;->currentDialog:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    :cond_d
    iget v2, p0, Lcom/motorola/CameraF/Camcorder;->currentDialog:I

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/Camcorder;->removeDialog(I)V

    .line 2487
    :cond_e
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v2

    if-nez v2, :cond_f

    .line 2488
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->save()V

    .line 2491
    :cond_f
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->interruptThumbnailThread()V

    .line 2493
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->clearMessageQueue()V

    .line 2495
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_10

    const-string v2, "MotoCamcorder"

    const-string v2, "onPause() - Exit"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    :cond_10
    return-void

    .line 2419
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2420
    .local v1, e:Ljava/lang/InterruptedException;
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_11

    const-string v2, "MotoCamcorder"

    const-string v2, "thread join interrupted for mStopRecording thread"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    :cond_11
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 2440
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_12
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_9

    .line 2441
    const-string v2, "MotoCamcorder"

    const-string v2, "onPause: video path is null, will not send the URI to scanner "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const v8, 0x7f0e00b3

    const v7, 0x7f0e00b2

    const v6, 0x7f0e00b4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1398
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1400
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1401
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "IsVideoMessageModeEnabled"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1403
    .local v0, isVideoMessageModeEnabled:Z
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 1404
    const-string v2, "MotoCamcorder"

    const-string v3, "onPrepareOptionsMenu() - Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_0
    iget-boolean v2, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_2

    :cond_1
    move v2, v4

    .line 1443
    :goto_0
    return v2

    .line 1415
    :cond_2
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isVideoModesEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1416
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1417
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1419
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 1421
    if-eqz v0, :cond_3

    .line 1422
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1426
    :goto_1
    const v2, 0x7f0e00b5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    move v2, v5

    .line 1443
    goto :goto_0

    .line 1424
    :cond_3
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1429
    :cond_4
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1430
    const v2, 0x7f0e00b5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1433
    :cond_5
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-eqz v2, :cond_6

    .line 1435
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1436
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1439
    :cond_6
    const v2, 0x7f0e00b7

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1440
    const v2, 0x7f0e00b6

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/16 v10, 0x80

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "MotoCamcorder"

    .line 2069
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2071
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCamcorder"

    const-string v4, "onResume() - Enter"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    :cond_0
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v4, p0, v8}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 2076
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 2077
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 2079
    const v4, 0x7f0b0005

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2080
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_1

    .line 2082
    const-string v4, "MotoCamcorder"

    const-string v4, "onResume() - In call, cancelling launch of Camcorder"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->finish()V

    .line 2174
    :cond_2
    :goto_0
    return-void

    .line 2088
    :cond_3
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mVideoPreview:Lcom/motorola/CameraF/View/CameraView;

    invoke-virtual {v4, v7}, Lcom/motorola/CameraF/View/CameraView;->setVisibility(I)V

    .line 2090
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setDefaultZoomValue()V

    .line 2093
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->isVideoCaptureIntent()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setServiceMode(Z)V

    .line 2096
    iput-boolean v7, p0, Lcom/motorola/CameraF/Camcorder;->mPausing:Z

    .line 2097
    iput-boolean v7, p0, Lcom/motorola/CameraF/Camcorder;->mZoomAdjusting:Z

    .line 2099
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/Window;->addFlags(I)V

    .line 2102
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 2103
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 2104
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/Window;->addFlags(I)V

    .line 2107
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2109
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2110
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2111
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2112
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2113
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/motorola/CameraF/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2115
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v4, Lcom/motorola/CameraF/Camcorder;->WIND_NOISE:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2116
    .local v0, WindIntent:Landroid/content/IntentFilter;
    sget-object v4, Lcom/motorola/CameraF/Camcorder;->WIND_NOISE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2117
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->windReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/motorola/CameraF/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2118
    iput-boolean v8, p0, Lcom/motorola/CameraF/Camcorder;->mDidRegister:Z

    .line 2121
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->isVideoCaptureIntent()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setServiceMode(Z)V

    .line 2125
    iget-boolean v4, p0, Lcom/motorola/CameraF/Camcorder;->mPreviewing:Z

    if-nez v4, :cond_4

    .line 2127
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->startPreview()V

    .line 2130
    :cond_4
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_5

    .line 2131
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_2

    const-string v4, "MotoCamcorder"

    const-string v4, "onResume() - startPreview failed, just return"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2135
    :cond_5
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v4, :cond_6

    .line 2137
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x34

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2142
    :cond_6
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_7

    const-string v4, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume() - mStatus is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    :cond_7
    iget v4, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_8

    .line 2146
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Lcom/motorola/CameraF/CameraGlobalTools;->calcVideoTimeRemaining(Landroid/os/Handler;)V

    .line 2148
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/CameraF/View/Control/OnScreenController;->initZoomSet()V

    .line 2149
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 2150
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v4, v8}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2151
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v4, v7}, Lcom/motorola/CameraF/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 2154
    :cond_8
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2155
    .local v1, config:Landroid/content/res/Configuration;
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_9

    .line 2156
    const-string v4, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume() - hardKeyboardHidden is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    const-string v4, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume() - Keyboard is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :cond_9
    iget v4, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v8, :cond_a

    iget v4, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v4, :cond_a

    iget v4, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v4, v9, :cond_a

    .line 2162
    sget-boolean v4, Lcom/motorola/CameraF/Camcorder;->mIsRotator:Z

    if-eqz v4, :cond_a

    .line 2164
    const v4, 0x7f0b001d

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/motorola/CameraF/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2169
    :cond_a
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->interruptThumbnailThread()V

    .line 2170
    new-instance v4, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, v7}, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;-><init>(Lcom/motorola/CameraF/Camcorder;Landroid/graphics/Bitmap;Z)V

    iput-object v4, p0, Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    .line 2171
    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v4}, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->start()V

    .line 2173
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_2

    const-string v4, "MotoCamcorder"

    const-string v4, "onResume() - Exit"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1373
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 2014
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2064
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 2376
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2377
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 2669
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "Camcorder:onTouchEvent:START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 2671
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 2672
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2674
    iget v0, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 2676
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->toggleMediaControlsVisibility()V

    move v0, v2

    .line 2687
    :goto_0
    return v0

    .line 2678
    :cond_1
    iget v0, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 2679
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->isPostPanelVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2682
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mPostPanel:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2683
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mPostText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2684
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2687
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 2693
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 2694
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2695
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->cancelRestartPreviewTimeout()V

    .line 2696
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAudioSceneParameter()V
    .locals 8

    .prologue
    const-string v7, "="

    const-string v6, "MotoCamcorder"

    .line 1269
    const-string v3, "MotoCamcorder"

    const-string v3, "Camcorder:setAudioSceneParameter"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const-string v0, "motoVideoRecAudioSceneConfig"

    .line 1271
    .local v0, key:Ljava/lang/String;
    const-string v2, "Off"

    .line 1273
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v3, :cond_0

    .line 1274
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 1277
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v1

    .line 1278
    .local v1, m:I
    const-string v3, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio Scene Modes :getCurrentScene returned.. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    packed-switch v1, :pswitch_data_0

    .line 1307
    const-string v2, "Off"

    .line 1311
    :goto_0
    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v3, :cond_1

    .line 1312
    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1313
    const-string v3, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio Scene Modes : Updating.. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_1
    return-void

    .line 1282
    :pswitch_0
    const-string v2, "Concert"

    .line 1284
    goto :goto_0

    .line 1288
    :pswitch_1
    const-string v2, "Narrative"

    .line 1290
    goto :goto_0

    .line 1294
    :pswitch_2
    const-string v2, "Outdoor"

    .line 1296
    goto :goto_0

    .line 1300
    :pswitch_3
    const-string v2, "Subject"

    .line 1302
    goto :goto_0

    .line 1279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAudioZoomParameter(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    const-string v5, "MotoCamcorder"

    const-string v4, "="

    .line 1235
    const-string v1, "MotoCamcorder"

    const-string v1, "Camcorder:setAudioZoomParameter"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const-string v0, "motoVideoRecAudioSceneConfig"

    .line 1238
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 1239
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 1242
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 1243
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1244
    const-string v1, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Zoom Mode : Updating.. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const-string v2, "MotoCamcorder"

    .line 2774
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged() - Enter ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2778
    const-string v0, "MotoCamcorder"

    const-string v0, "surfaceChanged() - getSurface() returned null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    :cond_1
    :goto_0
    return-void

    .line 2782
    :cond_2
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camcorder;->mPausing:Z

    if-nez v0, :cond_1

    .line 2787
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    .line 2789
    const-string v0, "MotoCamcorder"

    const-string v0, "surfaceChanged() - mCameraDevice == null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2793
    :cond_3
    iget v0, p0, Lcom/motorola/CameraF/Camcorder;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 2795
    invoke-direct {p0}, Lcom/motorola/CameraF/Camcorder;->stopVideoRecording()V

    .line 2798
    :cond_4
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2800
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camcorder;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 2803
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_5

    .line 2805
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 2807
    :cond_5
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2810
    :cond_6
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v0, "surfaceChanged() - Exit"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    const-string v2, "surfaceCreated() - Enter"

    const-string v1, "MotoCamcorder"

    .line 2815
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v0, "surfaceCreated() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    :cond_0
    iput-object p1, p0, Lcom/motorola/CameraF/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2819
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v0, "surfaceCreated() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    const-string v2, "surfaceDestroyed() - Enter"

    const-string v1, "MotoCamcorder"

    .line 2824
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v0, "surfaceDestroyed() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2828
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v0, "surfaceDestroyed() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    :cond_1
    return-void
.end method

.method public updateAudioZoom()V
    .locals 5

    .prologue
    .line 1251
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getZoomNum()I

    move-result v1

    int-to-float v0, v1

    .line 1253
    .local v0, curZoom:F
    float-to-double v1, v0

    const-wide/high16 v3, 0x4008

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 1254
    const-string v1, "MicZoom4"

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    .line 1262
    :goto_0
    return-void

    .line 1255
    :cond_0
    float-to-double v1, v0

    const-wide/high16 v3, 0x4000

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 1256
    const-string v1, "MicZoom3"

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1257
    :cond_1
    float-to-double v1, v0

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 1258
    const-string v1, "MicZoom2"

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1260
    :cond_2
    const-string v1, "MicZoom1"

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateEffects()V
    .locals 4

    .prologue
    .line 1103
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentEffect()I

    move-result v0

    .line 1104
    .local v0, colorEffect:I
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEffects() - ColorEffect is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_0
    sget-object v1, Lcom/motorola/CameraF/CameraGlobalType;->effectSetting:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1107
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/CameraF/CameraGlobalType;->effectSetting:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1109
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lcom/motorola/CameraF/CameraGlobalType;->effectSetting:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 1110
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1113
    :cond_1
    return-void
.end method
