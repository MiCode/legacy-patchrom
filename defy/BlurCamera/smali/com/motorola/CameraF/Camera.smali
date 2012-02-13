.class public Lcom/motorola/CameraF/Camera;
.super Landroid/app/Activity;
.source "Camera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/motorola/CameraF/CameraDialog$IDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/CameraF/Camera$MotoCameraOnZoomChangeListener;,
        Lcom/motorola/CameraF/Camera$MotoCameraErrorCallback;,
        Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;,
        Lcom/motorola/CameraF/Camera$JpegPictureCallback;,
        Lcom/motorola/CameraF/Camera$PostViewPictureCallback;,
        Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;,
        Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;,
        Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;,
        Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;,
        Lcom/motorola/CameraF/Camera$PanoramaShutterCallback;,
        Lcom/motorola/CameraF/Camera$PanoramaErrorCallback;,
        Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;,
        Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;,
        Lcom/motorola/CameraF/Camera$storageRunnable;,
        Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;,
        Lcom/motorola/CameraF/Camera$storeImageRunnable;,
        Lcom/motorola/CameraF/Camera$ImageCapture;,
        Lcom/motorola/CameraF/Camera$MainHandler;,
        Lcom/motorola/CameraF/Camera$Capturer;
    }
.end annotation


# static fields
.field private static final ACTION_IMAGE_CAPTURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE"

.field public static final CAMERA_TASK_FLATTENNAME:Ljava/lang/String; = "com.motorola.CameraF"

.field private static final FOCUS_BEEP_VOLUME:I = 0x64

.field private static final MULTI_SHOT_MAX_COUNT:I = 0x6

.field private static final ROTATOR_ORIENTATION_OFFSET:I = 0x5a

.field public static final TAG:Ljava/lang/String; = "MotoCamera"

#the value of this static final field might be set in the static constructor
.field static final mIsRotator:Z = false

.field public static mMultishotUriList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final qvga_res:Ljava/lang/String; = "320x240"

.field public static final sTempCropFilename:Ljava/lang/String; = "crop-temp"


# instance fields
.field private bGLSurfaceViewPlaying:Z

.field private currentDialog:I

.field private firstDownTime:J

.field private focusViewSelected:Z

.field private mAudioMgr:Landroid/media/AudioManager;

.field private mAutoFocusCallback:Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;

.field private mBlackout:Landroid/widget/ImageView;

.field private mBlackoutBackground:Landroid/graphics/drawable/Drawable;

.field private mBmpPostView:Landroid/graphics/Bitmap;

.field private mCallToast:Landroid/widget/Toast;

.field private mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

.field private mCamUtil:Lcom/motorola/CameraF/CameraUtility;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraView:Lcom/motorola/CameraF/View/CameraView;

.field private mCaptureOnFaceDetect:Z

.field private mCaptureOnFocus:Z

.field private mCaptureOnShortPress:Z

.field private mCaptureProcessingView:Landroid/view/View;

.field public mCaptureStartTime:J

.field mConfig_PL:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field public mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

.field private mCurrentStitchMode:I

.field private mDLSRRender:Lcom/motorola/CameraF/View/DLSRShutterRenderer;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field mDetectedFaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mDidRegister:Z

.field private mDisplayHeight:I

.field private mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

.field private mFaceDetectCallback:Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;

.field private mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

.field private mFaceTracking:Z

.field private mFirstTimeInitialized:Z

.field private mFocus:Landroid/graphics/drawable/Drawable;

.field private mFocusMode:I

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private mFocusView:Landroid/widget/ImageView;

.field private mFocusd:Landroid/graphics/drawable/Drawable;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mHandler:Landroid/os/Handler;

.field public mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

.field public mImageCount:I

.field private mIsFocusButtonPressed:Z

.field private mIsFocusFail:Z

.field private mIsFocused:Z

.field private mIsFocusing:Z

.field private mIsImageCaptureIntent:Z

.field public mIsRotatorClosed:Z

.field private mIsSpeakerOn:Z

.field private mIsStitching:Z

.field private mKeepAndRestartPreview:Z

.field mLastOrientation:I

.field private mLatchedOrientation:I

.field private mLocUtil:Lcom/motorola/CameraF/LocUtility;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLockRightSet:Z

.field private mMain:Lcom/motorola/CameraF/View/CameraContentView;

.field private mMenuOpened:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

.field private mPanBeepSound:Landroid/media/MediaPlayer;

.field private mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;

.field private mPanoramaMaxShot:I

.field private mPanoramaObj:Lcom/motorola/android/camera/Panorama;

.field private mPanoramaPostView:Landroid/graphics/Bitmap;

.field private mPanoramaPostviewCallback:Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;

.field private mPanoramaShotTaken:I

.field private mPanoramaShutterCallback:Lcom/motorola/CameraF/Camera$PanoramaShutterCallback;

.field private mPanoramaViewfinderInfoCallback:Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

.field public mPausing:Z

.field public mPicturesRemaining:I

.field private mPostPicturePanel:Landroid/widget/LinearLayout;

.field private mPostText:Landroid/widget/TextView;

.field private mPreviewHeight:F

.field private mPreviewWidth:F

.field public mPreviewing:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRender:Lcom/motorola/CameraF/View/CameraShutterRender;

.field private mSaveImageProcessingView:Landroid/view/View;

.field private mShutterCallback:Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;

.field public mShutterCallbackTime:J

.field public mShutterLag:J

.field private mStatus:I

.field private mStitchingMsgText:Landroid/widget/TextView;

.field private mStitchingProgress:Landroid/widget/ProgressBar;

.field private mStoreThread:Ljava/lang/Thread;

.field private mSupportedPictureSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceHeight:F

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:F

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailOrientation:I

.field private mTime2Idle:J

.field private mToast:Landroid/widget/Toast;

.field private mZoomAdjusting:Z

.field private final mZoomChangeListener:Lcom/motorola/CameraF/Camera$MotoCameraOnZoomChangeListener;

.field public onScreenStatus:I

.field public prevFlash:I

.field private secondDownTime:J

.field private updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

.field private useHpDefaultFocusConfiguration:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "ro.hw.rotator"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/CameraF/Camera;->mIsRotator:Z

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/CameraF/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/high16 v6, 0x43a0

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 148
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsRotatorClosed:Z

    .line 152
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mFirstTimeInitialized:Z

    .line 154
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mZoomAdjusting:Z

    .line 155
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    .line 157
    iput v1, p0, Lcom/motorola/CameraF/Camera;->mImageCount:I

    .line 158
    iput-wide v3, p0, Lcom/motorola/CameraF/Camera;->mCaptureStartTime:J

    .line 159
    iput-wide v3, p0, Lcom/motorola/CameraF/Camera;->mShutterCallbackTime:J

    .line 160
    iput-wide v3, p0, Lcom/motorola/CameraF/Camera;->mShutterLag:J

    .line 161
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    .line 162
    iput v1, p0, Lcom/motorola/CameraF/Camera;->onScreenStatus:I

    .line 165
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 166
    iput v1, p0, Lcom/motorola/CameraF/Camera;->prevFlash:I

    .line 167
    iput v5, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    .line 168
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mDidRegister:Z

    .line 169
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocusing:Z

    .line 170
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    .line 171
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z

    .line 172
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocusButtonPressed:Z

    .line 173
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocusFail:Z

    .line 174
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mLockRightSet:Z

    .line 175
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFaceDetect:Z

    .line 176
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnShortPress:Z

    .line 177
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mMenuOpened:Z

    .line 181
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mLocationManager:Landroid/location/LocationManager;

    .line 183
    iput v1, p0, Lcom/motorola/CameraF/Camera;->mThumbnailOrientation:I

    .line 186
    iput v1, p0, Lcom/motorola/CameraF/Camera;->mDisplayHeight:I

    .line 187
    const/high16 v0, 0x4420

    iput v0, p0, Lcom/motorola/CameraF/Camera;->mPreviewWidth:F

    .line 188
    iput v6, p0, Lcom/motorola/CameraF/Camera;->mPreviewHeight:F

    .line 189
    const/high16 v0, 0x4420

    iput v0, p0, Lcom/motorola/CameraF/Camera;->mSurfaceWidth:F

    .line 190
    iput v6, p0, Lcom/motorola/CameraF/Camera;->mSurfaceHeight:F

    .line 192
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/CameraF/Camera;->mLastOrientation:I

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/CameraF/Camera;->mConfig_PL:I

    .line 195
    iput-boolean v5, p0, Lcom/motorola/CameraF/Camera;->mKeepAndRestartPreview:Z

    .line 196
    new-instance v0, Lcom/motorola/CameraF/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/motorola/CameraF/Camera$MainHandler;-><init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    .line 197
    new-instance v0, Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;-><init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mShutterCallback:Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;

    .line 198
    new-instance v0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;-><init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mAutoFocusCallback:Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;

    .line 199
    new-instance v0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;-><init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mFaceDetectCallback:Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;

    .line 201
    new-instance v0, Lcom/motorola/CameraF/Camera$MotoCameraOnZoomChangeListener;

    invoke-direct {v0, p0, v2}, Lcom/motorola/CameraF/Camera$MotoCameraOnZoomChangeListener;-><init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mZoomChangeListener:Lcom/motorola/CameraF/Camera$MotoCameraOnZoomChangeListener;

    .line 202
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    .line 205
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 207
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    .line 208
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    .line 213
    new-instance v0, Lcom/motorola/CameraF/Camera$PanoramaShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/CameraF/Camera$PanoramaShutterCallback;-><init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaShutterCallback:Lcom/motorola/CameraF/Camera$PanoramaShutterCallback;

    .line 214
    new-instance v0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;-><init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaPostviewCallback:Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;

    .line 215
    new-instance v0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;-><init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaViewfinderInfoCallback:Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;

    .line 216
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsStitching:Z

    .line 219
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;

    .line 224
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    .line 225
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;

    .line 230
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    .line 233
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->focusViewSelected:Z

    .line 240
    iput v1, p0, Lcom/motorola/CameraF/Camera;->mLatchedOrientation:I

    .line 242
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    .line 243
    iput v1, p0, Lcom/motorola/CameraF/Camera;->mCurrentStitchMode:I

    .line 244
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mFaceTracking:Z

    .line 246
    iput v1, p0, Lcom/motorola/CameraF/Camera;->mFocusMode:I

    .line 248
    iput v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I

    .line 249
    iput v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I

    .line 250
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    .line 251
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    .line 253
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

    .line 256
    iput-wide v3, p0, Lcom/motorola/CameraF/Camera;->firstDownTime:J

    .line 257
    iput-wide v3, p0, Lcom/motorola/CameraF/Camera;->secondDownTime:J

    .line 258
    iput-boolean v5, p0, Lcom/motorola/CameraF/Camera;->useHpDefaultFocusConfiguration:Z

    .line 264
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->bGLSurfaceViewPlaying:Z

    .line 266
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mSupportedPictureSizes:Ljava/util/List;

    .line 268
    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/CameraF/Camera;->currentDialog:I

    .line 4903
    new-instance v0, Lcom/motorola/CameraF/Camera$5;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/Camera$5;-><init>(Lcom/motorola/CameraF/Camera;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/LocUtility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mLocUtil:Lcom/motorola/CameraF/LocUtility;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/motorola/CameraF/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/motorola/CameraF/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mIsSpeakerOn:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/motorola/CameraF/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/motorola/CameraF/Camera;->mIsSpeakerOn:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->closeCamera()V

    return-void
.end method

.method static synthetic access$1600(Lcom/motorola/CameraF/Camera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPostText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->restartPreview()V

    return-void
.end method

.method static synthetic access$1900(Lcom/motorola/CameraF/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isMultishotMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/motorola/CameraF/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/motorola/CameraF/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera;->enablePanorama(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->enableFaceTracking()V

    return-void
.end method

.method static synthetic access$2300(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->disableFaceTracking()V

    return-void
.end method

.method static synthetic access$2400(Lcom/motorola/CameraF/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    return v0
.end method

.method static synthetic access$2402(Lcom/motorola/CameraF/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput p1, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    return p1
.end method

.method static synthetic access$2500(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->updateRemainCount()V

    return-void
.end method

.method static synthetic access$2600(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->updateFocusIndicator()V

    return-void
.end method

.method static synthetic access$2700(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->launchGallery()V

    return-void
.end method

.method static synthetic access$2800(Lcom/motorola/CameraF/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/motorola/CameraF/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/motorola/CameraF/Camera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/motorola/CameraF/Camera;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera;->writeTagToDB(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->enableSingleShot()V

    return-void
.end method

.method static synthetic access$3200(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->stopPanoramaCapture()V

    return-void
.end method

.method static synthetic access$3302(Lcom/motorola/CameraF/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/motorola/CameraF/Camera;->mIsFocusing:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/motorola/CameraF/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/motorola/CameraF/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/motorola/CameraF/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnShortPress:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CamSetting/CamSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->autoFocus()V

    return-void
.end method

.method static synthetic access$3900(Lcom/motorola/CameraF/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I

    return v0
.end method

.method static synthetic access$3902(Lcom/motorola/CameraF/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput p1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I

    return p1
.end method

.method static synthetic access$3908(Lcom/motorola/CameraF/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 133
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I

    return v0
.end method

.method static synthetic access$4000(Lcom/motorola/CameraF/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I

    return v0
.end method

.method static synthetic access$4002(Lcom/motorola/CameraF/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput p1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I

    return p1
.end method

.method static synthetic access$4100(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->startShutterAnim()V

    return-void
.end method

.method static synthetic access$4200(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->stopShutterAnim()V

    return-void
.end method

.method static synthetic access$4300(Lcom/motorola/CameraF/Camera;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera;->changeZoom(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/motorola/CameraF/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mZoomAdjusting:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/motorola/CameraF/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/motorola/CameraF/Camera;->mZoomAdjusting:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/motorola/CameraF/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera;->zoomTo(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/motorola/CameraF/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/motorola/CameraF/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mThumbnailOrientation:I

    return v0
.end method

.method static synthetic access$4702(Lcom/motorola/CameraF/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput p1, p0, Lcom/motorola/CameraF/Camera;->mThumbnailOrientation:I

    return p1
.end method

.method static synthetic access$4712(Lcom/motorola/CameraF/Camera;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mThumbnailOrientation:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/motorola/CameraF/Camera;->mThumbnailOrientation:I

    return v0
.end method

.method static synthetic access$4802(Lcom/motorola/CameraF/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput p1, p0, Lcom/motorola/CameraF/Camera;->currentDialog:I

    return p1
.end method

.method static synthetic access$4900(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->launchCamcorder()V

    return-void
.end method

.method static synthetic access$5000(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->enableSmileSelfPortrait()V

    return-void
.end method

.method static synthetic access$5100(Lcom/motorola/CameraF/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mCurrentStitchMode:I

    return v0
.end method

.method static synthetic access$5102(Lcom/motorola/CameraF/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput p1, p0, Lcom/motorola/CameraF/Camera;->mCurrentStitchMode:I

    return p1
.end method

.method static synthetic access$5200(Lcom/motorola/CameraF/Camera;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/motorola/CameraF/Camera;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/motorola/CameraF/Camera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/motorola/CameraF/Camera;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/motorola/CameraF/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$5500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/PanoramaIndicatorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/motorola/CameraF/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/motorola/CameraF/Camera;->mIsStitching:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->enableMultiShot()V

    return-void
.end method

.method static synthetic access$5800(Lcom/motorola/CameraF/Camera;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/motorola/CameraF/Camera;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/motorola/CameraF/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CameraUtility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/motorola/CameraF/Camera;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->getFaceDetectAreas()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FocusView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/motorola/CameraF/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFaceDetect:Z

    return v0
.end method

.method static synthetic access$6402(Lcom/motorola/CameraF/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFaceDetect:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->clearFocus()V

    return-void
.end method

.method static synthetic access$6600(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$6700(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->setCameraParameters()V

    return-void
.end method

.method static synthetic access$6800(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->updateScenesEffects()V

    return-void
.end method

.method static synthetic access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/motorola/CameraF/Camera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mBmpPostView:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/motorola/CameraF/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/motorola/CameraF/Camera;->mBmpPostView:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/motorola/CameraF/Camera;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mStoreThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/motorola/CameraF/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/motorola/CameraF/Camera;->mStoreThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/motorola/CameraF/Camera;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->initPostPanel()V

    return-void
.end method

.method static synthetic access$7500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/CameraView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraView:Lcom/motorola/CameraF/View/CameraView;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/Camera$PanoramaShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaShutterCallback:Lcom/motorola/CameraF/Camera$PanoramaShutterCallback;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaPostviewCallback:Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaViewfinderInfoCallback:Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/android/camera/Panorama;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mShutterCallback:Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->showStorageToast()V

    return-void
.end method

.method static synthetic access$8300(Lcom/motorola/CameraF/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mLockRightSet:Z

    return v0
.end method

.method static synthetic access$8400(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/CameraContentView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mMain:Lcom/motorola/CameraF/View/CameraContentView;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/motorola/CameraF/Camera;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCaptureProcessingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/motorola/CameraF/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mMenuOpened:Z

    return v0
.end method

.method static synthetic access$8800(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaPostView:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/motorola/CameraF/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaPostView:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$8900(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->stopPreview()V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->startPreview()V

    return-void
.end method

.method static synthetic access$9000(Lcom/motorola/CameraF/Camera;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->interruptThumbnailThread()V

    return-void
.end method

.method static synthetic access$9200(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;)Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    return-object p1
.end method

.method static synthetic access$9300(Lcom/motorola/CameraF/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mKeepAndRestartPreview:Z

    return v0
.end method

.method static synthetic access$9400(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/CameraShutterRender;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mRender:Lcom/motorola/CameraF/View/CameraShutterRender;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/motorola/CameraF/Camera;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mSaveImageProcessingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/motorola/CameraF/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mIsFocusButtonPressed:Z

    return v0
.end method

.method static synthetic access$9702(Lcom/motorola/CameraF/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/motorola/CameraF/Camera;->mIsFocusFail:Z

    return p1
.end method

.method static synthetic access$9800(Lcom/motorola/CameraF/Camera;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->checkStorage()V

    return-void
.end method

.method private autoFocus()V
    .locals 5

    .prologue
    const-string v4, "MotoCamera"

    .line 2411
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoFocus() - Enter  mIsFocusing is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocusing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->updateFocusIndicator()V

    .line 2416
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mIsFocusing:Z

    if-nez v0, :cond_3

    .line 2418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mIsFocusing:Z

    .line 2420
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    if-eqz v0, :cond_2

    .line 2422
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->useHpDefaultFocusConfiguration:Z

    if-nez v0, :cond_2

    .line 2426
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v2}, Lcom/motorola/CameraF/View/FocusView;->getFocusAreaForHal()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/CameraUtility;->setFocusArea(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)V

    .line 2428
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 2429
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2430
    :cond_1
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v0, "autoFocus, use HP manual region focus"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_5

    .line 2436
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mAutoFocusCallback:Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2438
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2449
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    const-string v0, "autoFocus() - Exit"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    :cond_4
    return-void

    .line 2444
    :cond_5
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamera"

    const-string v0, "autoFocus() - Invalid camera!!!!!!!!!"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelPanoramaCapture()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, "MotoCamera"

    .line 2247
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "cancelPanoramaCapture() - Enter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    if-eqz v0, :cond_1

    .line 2250
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v0}, Lcom/motorola/android/camera/Panorama;->cancelCapture()V

    .line 2252
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 2253
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsStitching:Z

    .line 2255
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v0, "cancelPanoramaCapture() - Exit"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    :cond_2
    return-void
.end method

.method private cancelPhoto()Z
    .locals 2

    .prologue
    .line 5219
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5220
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->setResult(I)V

    .line 5222
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->finish()V

    .line 5223
    const/4 v0, 0x1

    return v0
.end method

.method private cancelStorageToast()V
    .locals 1

    .prologue
    .line 4213
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 4214
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 4215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mToast:Landroid/widget/Toast;

    .line 4217
    :cond_0
    return-void
.end method

.method private changeZoom(Ljava/lang/Boolean;)V
    .locals 10
    .parameter "zoom"

    .prologue
    const-wide/16 v8, 0x5dc

    const/16 v7, 0xb

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6119
    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocusing:Z

    if-eq v4, v1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    if-eq v4, v1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocusButtonPressed:Z

    if-ne v4, v1, :cond_1

    .line 6121
    :cond_0
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Focus is in progress, mIsFocusing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/CameraF/Camera;->mIsFocusing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsFocused = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsFocusButtonPressed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/CameraF/Camera;->mIsFocusButtonPressed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6124
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->onScreenCaptureUp()V

    .line 6127
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_3

    .line 6185
    :cond_2
    :goto_0
    return-void

    .line 6130
    :cond_3
    iget v1, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->isAdjusting()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mZoomAdjusting:Z

    if-nez v1, :cond_2

    .line 6132
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 6133
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideTopStatusSet()V

    .line 6134
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    .line 6135
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->rightSetFadeOut()V

    .line 6136
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->startZoom()V

    .line 6138
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getZoomNum()I

    move-result v0

    .line 6140
    .local v0, zoomValue:I
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    .line 6141
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CURRENT ZOOM:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6144
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_8

    .line 6147
    sget v1, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_MAX_VALUE:I

    if-ge v0, v1, :cond_7

    .line 6148
    iput-boolean v4, p0, Lcom/motorola/CameraF/Camera;->mZoomAdjusting:Z

    .line 6149
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v1, :cond_6

    .line 6150
    sget v1, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-direct {p0, v1}, Lcom/motorola/CameraF/Camera;->zoomTo(I)V

    .line 6176
    :goto_1
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->smoothZoomSupported:Z

    if-nez v1, :cond_5

    .line 6177
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateZoom()V

    .line 6178
    iput-boolean v5, p0, Lcom/motorola/CameraF/Camera;->mZoomAdjusting:Z

    .line 6180
    :cond_5
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 6152
    :cond_6
    sget v1, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_STEP:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/motorola/CameraF/Camera;->zoomTo(I)V

    .line 6153
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    sget v2, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_STEP:I

    add-int/2addr v2, v0

    sget v3, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setZoomNum(I)V

    goto :goto_1

    .line 6157
    :cond_7
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 6162
    :cond_8
    if-lez v0, :cond_a

    .line 6163
    iput-boolean v4, p0, Lcom/motorola/CameraF/Camera;->mZoomAdjusting:Z

    .line 6164
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v1, :cond_9

    .line 6165
    invoke-direct {p0, v5}, Lcom/motorola/CameraF/Camera;->zoomTo(I)V

    goto :goto_1

    .line 6167
    :cond_9
    sget v1, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_STEP:I

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lcom/motorola/CameraF/Camera;->zoomTo(I)V

    .line 6168
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    sget v2, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_STEP:I

    sub-int v2, v0, v2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setZoomNum(I)V

    goto :goto_1

    .line 6172
    :cond_a
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private checkAndSnap(I)V
    .locals 5
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x1

    const-string v4, "checkAndSnap() - mIsFocused: "

    const-string v2, "MotoCamera"

    .line 2558
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "checkAndSnap() - Enter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    :cond_0
    const-string v0, "MotoCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndSnap() - mIsFocused: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsFocusFail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocusFail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPreviewing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CameraGlobalType.AUTOFOCUS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCaptureOnFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsFocusButtonPressed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocusButtonPressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mIsFocusFail:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2573
    :cond_1
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 2574
    const-string v0, "MotoCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndSnap() - mIsFocused: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsFocusFail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocusFail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mPreviewing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CameraGlobalType.AUTOFOCUS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    if-eqz v0, :cond_3

    .line 2578
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-virtual {v0}, Lcom/motorola/CameraF/Camera$ImageCapture;->onSnap()V

    .line 2598
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    const-string v0, "checkAndSnap() - Exit"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    :cond_4
    return-void

    .line 2584
    :cond_5
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    const-string v0, "MotoCamera"

    const-string v0, "checkAndSnap() - autofocus if not already ongoing"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    :cond_6
    const/16 v0, 0x17

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_3

    .line 2586
    :cond_7
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mIsFocusButtonPressed:Z

    if-nez v0, :cond_8

    .line 2588
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    if-eqz v0, :cond_3

    .line 2589
    iput-boolean v3, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z

    .line 2590
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->autoFocus()V

    goto :goto_0

    .line 2593
    :cond_8
    iput-boolean v3, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z

    goto :goto_0
.end method

.method private checkForKodakPerfectTouch()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 5821
    const/4 v1, 0x0

    .line 5824
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.kodak.kpt"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5831
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForKodakPerfectTouch() - packageInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v2, v5

    .line 5832
    :goto_0
    return v2

    .line 5827
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 5829
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkResolutionAndConvert(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "origRes"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 606
    iget-object v7, p0, Lcom/motorola/CameraF/Camera;->mSupportedPictureSizes:Ljava/util/List;

    if-nez v7, :cond_0

    move-object v7, v10

    .line 636
    :goto_0
    return-object v7

    .line 610
    :cond_0
    move-object v3, p1

    .line 611
    .local v3, newRes:Ljava/lang/String;
    const/16 v7, 0x78

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    move v2, v9

    .line 612
    .local v2, isDimension:Z
    :goto_1
    if-nez v2, :cond_2

    .line 614
    invoke-static {p1}, Lcom/motorola/CameraF/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 615
    if-nez v3, :cond_2

    move-object v7, v10

    .line 617
    goto :goto_0

    .end local v2           #isDimension:Z
    :cond_1
    move v2, v11

    .line 611
    goto :goto_1

    .line 622
    .restart local v2       #isDimension:Z
    :cond_2
    const-string v7, "x"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 623
    .local v5, temp:[Ljava/lang/String;
    aget-object v7, v5, v11

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 624
    .local v6, width:I
    aget-object v7, v5, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 627
    .local v0, height:I
    iget-object v7, p0, Lcom/motorola/CameraF/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 628
    .local v4, size:I
    sub-int v1, v4, v9

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_5

    .line 629
    iget-object v7, p0, Lcom/motorola/CameraF/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->width:I

    if-ne v7, v6, :cond_4

    iget-object v7, p0, Lcom/motorola/CameraF/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    if-ne v7, v0, :cond_4

    .line 632
    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/motorola/CameraF/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    move-object v7, p1

    goto :goto_0

    .line 628
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    move-object v7, v10

    .line 636
    goto :goto_0
.end method

.method private checkStorage()V
    .locals 2

    .prologue
    const-string v1, "MotoCamera"

    .line 4951
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "checkStorage() - Enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4953
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->updateRemainCount()V

    .line 4955
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v0, "checkStorage() - Exit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4956
    :cond_1
    return-void
.end method

.method private clearFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2454
    const-string v0, "MotoCamera"

    const-string v1, "clearFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2456
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 2459
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2460
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mIsFocusing:Z

    .line 2461
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z

    .line 2462
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnShortPress:Z

    .line 2463
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    .line 2464
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mIsFocusButtonPressed:Z

    .line 2465
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mIsFocusFail:Z

    .line 2466
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isFaceTrackingOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/FaceTrackingView;->clearFocusAreas()V

    .line 2467
    :cond_1
    return-void
.end method

.method private clearMessageQueue()V
    .locals 3

    .prologue
    const/16 v2, 0x1c

    .line 1651
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1652
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1653
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1654
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1655
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1656
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1657
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1658
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1659
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1660
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1661
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1662
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1663
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1664
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1665
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1666
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1667
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1668
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1669
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1670
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1671
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1672
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1673
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1674
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1675
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1676
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1677
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1678
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1679
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1681
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1682
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1683
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1684
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1685
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1686
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1687
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1688
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1689
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1690
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1691
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1692
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1693
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1694
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1695
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1696
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1697
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1698
    return-void
.end method

.method private closeCamera()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "MotoCamera"

    .line 1897
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v1, "closeCamera() - Enter"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    if-eqz v1, :cond_1

    .line 1902
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1, v4}, Lcom/motorola/android/camera/Panorama;->setErrorCallback(Lcom/motorola/android/camera/Panorama$ErrorCallback;)V

    .line 1903
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama;->release()V

    .line 1904
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 1906
    :try_start_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1914
    :cond_1
    :goto_0
    iput-object v4, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    .line 1915
    iput-object v4, p0, Lcom/motorola/CameraF/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    .line 1917
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_3

    .line 1919
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setFaceDetectCallback(Landroid/hardware/Camera$FaceDetectCallback;)V

    .line 1920
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "face-track-mode"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "face-detect-areas"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 1922
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "mot-face-detect-areas"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 1923
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1925
    const-string v1, "MotoCamera"

    const-string v1, "closeCamera - mCameraDevice.stopPreview"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    if-eqz v1, :cond_2

    .line 1927
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 1929
    :cond_2
    const-string v1, "MotoCamera"

    const-string v1, "closeCamera - mCameraDevice.stopPreview returned"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1931
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1932
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 1935
    iput-object v4, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    .line 1936
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    .line 1939
    :cond_3
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoCamera"

    const-string v1, "closeCamera() - Exit"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    :cond_4
    return-void

    .line 1908
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1910
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MotoCamera"

    const-string v1, "closeCamera : reconnect failed"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disableCurrentMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const-string v1, "MotoCamera"

    .line 2364
    packed-switch p1, :pswitch_data_0

    .line 2391
    :goto_0
    :pswitch_0
    return-void

    .line 2368
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->disableMultishot()V

    goto :goto_0

    .line 2371
    :pswitch_2
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->disablePanorama()V

    goto :goto_0

    .line 2374
    :pswitch_3
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->disableFaceTracking()V

    goto :goto_0

    .line 2377
    :pswitch_4
    const-string v0, "MotoCamera"

    const-string v0, "Disabling FAST MOTION MODE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2380
    :pswitch_5
    const-string v0, "MotoCamera"

    const-string v0, "Disabling SLOW MOTION MODE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2383
    :pswitch_6
    const-string v0, "MotoCamera"

    const-string v0, "Disabling NORMAL VIDEO MODE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2386
    :pswitch_7
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->disableSmileSelfPortrait()V

    goto :goto_0

    .line 2364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private disableFaceTracking()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "MotoCamera"

    .line 2060
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "disableFaceTracking() - Enter"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2068
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mFaceTracking:Z

    .line 2071
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/FaceTrackingView;->setVisibility(I)V

    .line 2072
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    if-eqz v0, :cond_4

    .line 2073
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v0, v2}, Lcom/motorola/CameraF/View/FocusView;->setVisibility(I)V

    .line 2076
    :cond_1
    :goto_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 2078
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2080
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 2085
    :cond_2
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamera"

    const-string v0, "disableFaceTracking() - Exit"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    :cond_3
    return-void

    .line 2074
    :cond_4
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2075
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private disableMultishot()V
    .locals 3

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 2406
    :cond_0
    :goto_0
    return-void

    .line 2398
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "face-detect-areas"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 2399
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "mot-face-detect-areas"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 2402
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/CameraUtility;->setBurstCaptureCount(Landroid/hardware/Camera$Parameters;I)V

    .line 2403
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2404
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isFaceTrackingOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-eqz v0, :cond_0

    .line 2405
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->enableFaceTracking()V

    goto :goto_0
.end method

.method private disablePanorama()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "MotoCamera"

    .line 2033
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    if-eqz v1, :cond_0

    .line 2035
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1, v2}, Lcom/motorola/android/camera/Panorama;->setErrorCallback(Lcom/motorola/android/camera/Panorama$ErrorCallback;)V

    .line 2036
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama;->release()V

    .line 2038
    :cond_0
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    .line 2039
    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    .line 2040
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v1, "disablePanorama() - Enter"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isFaceTrackingOn()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-eqz v1, :cond_2

    .line 2043
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->enableFaceTracking()V

    .line 2045
    :cond_2
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2048
    :try_start_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2056
    :goto_0
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCamera"

    const-string v1, "disablePanorama() - Exit"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    :cond_3
    return-void

    .line 2050
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2052
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MotoCamera"

    const-string v1, "disablePanorama : reconnect failed"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->closeCamera()V

    goto :goto_0
.end method

.method private enableFaceTracking()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const-string v3, "MotoCamera"

    .line 2016
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "enableFaceTracking() - Enter"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mFaceTracking:Z

    .line 2020
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/FaceTrackingView;->setVisibility(I)V

    .line 2021
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/FaceTrackingView;->updateFocusAreas(Z)V

    .line 2022
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    if-eqz v0, :cond_3

    .line 2023
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v0, v2}, Lcom/motorola/CameraF/View/FocusView;->setVisibility(I)V

    .line 2027
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v0, "enableFaceTracking() - Exit"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_2
    return-void

    .line 2024
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2025
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private enableMultiShot()V
    .locals 3

    .prologue
    const-string v2, "MotoCamera"

    .line 1968
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "enableMultiShot() - Enter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1973
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentFlash()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/Camera;->prevFlash:I

    .line 1977
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/CameraF/Camera;->disableCurrentMode(I)V

    .line 1978
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->disableFaceTracking()V

    .line 1981
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 1983
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1986
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    .line 1988
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 1992
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 1993
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 1994
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showTopStatusSet()V

    .line 1996
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->updateRemainCount()V

    .line 1998
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mPicturesRemaining:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    .line 2000
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V

    .line 2004
    :cond_3
    sget-object v0, Lcom/motorola/CameraF/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2005
    sget-object v0, Lcom/motorola/CameraF/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 2009
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->restartPreview()V

    .line 2011
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    const-string v0, "enableMultiShot() - Exit"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :cond_4
    return-void
.end method

.method private enablePanorama(Z)V
    .locals 13
    .parameter "restartPreview"

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 2243
    :cond_0
    :goto_0
    return-void

    .line 2093
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2094
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "enablePanorama() - Service Mode; Panorama unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2098
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    if-nez v0, :cond_3

    .line 2100
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->init(Landroid/hardware/Camera;)Lcom/motorola/android/camera/Panorama;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    .line 2101
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v0}, Lcom/motorola/android/camera/Panorama;->getParameters()Lcom/motorola/android/camera/Panorama$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    .line 2102
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    new-instance v1, Lcom/motorola/CameraF/Camera$PanoramaErrorCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/CameraF/Camera$PanoramaErrorCallback;-><init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/camera/Panorama;->setErrorCallback(Lcom/motorola/android/camera/Panorama$ErrorCallback;)V

    .line 2105
    :cond_3
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePanorama() - Enter ; mParameters_pan is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :cond_4
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-eqz v0, :cond_6

    .line 2112
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_5

    .line 2114
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentFlash()I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/Camera;->prevFlash:I

    .line 2117
    :cond_5
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/CameraF/Camera;->disableCurrentMode(I)V

    .line 2118
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->disableFaceTracking()V

    .line 2122
    :cond_6
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getZoomNum()I

    move-result v0

    if-eqz v0, :cond_9

    .line 2125
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    .line 2126
    const-string v0, "MotoCamera"

    const-string v1, "enablePanorama() - Reset zoom since entering panoramic mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    :cond_7
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setDefaultZoomValue()V

    .line 2130
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_8

    .line 2132
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getZoomNum()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2133
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2136
    :cond_8
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->initZoomSet()V

    .line 2140
    :cond_9
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 2142
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2145
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    .line 2146
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 2150
    :cond_a
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 2153
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getStitchMode()Ljava/lang/String;

    move-result-object v11

    .line 2157
    .local v11, stitchMode:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentPanShotRes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;)I

    move-result v10

    .line 2159
    .local v10, remainCount:I
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v0}, Lcom/motorola/android/camera/Panorama$Parameters;->getMaxShotNumber()I

    move-result v0

    if-le v10, v0, :cond_b

    .line 2161
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v0}, Lcom/motorola/android/camera/Panorama$Parameters;->getMaxShotNumber()I

    move-result v10

    .line 2163
    :cond_b
    iput v10, p0, Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I

    .line 2164
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I

    .line 2168
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    .line 2169
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    .line 2171
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

    .line 2172
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Lcom/motorola/CameraF/Camera;->mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 2173
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2174
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 2175
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/motorola/CameraF/Camera$4;

    invoke-direct {v1, p0}, Lcom/motorola/CameraF/Camera$4;-><init>(Lcom/motorola/CameraF/Camera;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2194
    :cond_c
    :goto_1
    const/4 v0, 0x1

    if-ge v10, v0, :cond_e

    .line 2196
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V

    .line 2197
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->enableSingleShot()V

    .line 2242
    :cond_d
    :goto_2
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "enablePanorama() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2190
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 2192
    .local v7, ex:Ljava/io/IOException;
    const-string v0, "MotoCamera"

    const-string v1, "enablePanorama() - failed to load audio for pan beep"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2202
    .end local v7           #ex:Ljava/io/IOException;
    :cond_e
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentPanShotResDimension()Ljava/lang/String;

    move-result-object v9

    .line 2203
    .local v9, panSize:Ljava/lang/String;
    const-string v0, "x"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2205
    .local v12, temp:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->updateRemainCount()V

    .line 2207
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_f

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePanorama, stitchMode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxShotNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :cond_f
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v0, v11}, Lcom/motorola/android/camera/Panorama$Parameters;->setPanoramaMode(Ljava/lang/String;)V

    .line 2211
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    iget v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/camera/Panorama$Parameters;->setShotNumber(I)V

    .line 2212
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v12, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/camera/Panorama$Parameters;->setPanoramaResolution(II)V

    .line 2217
    :try_start_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v0, v1}, Lcom/motorola/android/camera/Panorama;->setParameters(Lcom/motorola/android/camera/Panorama$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2228
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2229
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2232
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    iget v2, p0, Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 2233
    .local v8, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2236
    if-eqz p1, :cond_d

    .line 2237
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->restartPreview()V

    .line 2238
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->updateFocusIndicator()V

    goto/16 :goto_2

    .line 2219
    .end local v8           #msg:Landroid/os/Message;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 2221
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "MotoCamera"

    const-string v1, "enterPanoramaMode() - failed to set panoramic parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V

    .line 2224
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->enableSingleShot()V

    goto/16 :goto_0
.end method

.method private enableSingleShot()V
    .locals 2

    .prologue
    .line 1944
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/CameraF/Camera;->disableCurrentMode(I)V

    .line 1946
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 1948
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1951
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget v1, p0, Lcom/motorola/CameraF/Camera;->prevFlash:I

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    .line 1952
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 1955
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 1957
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1959
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->restartPreview()V

    .line 1960
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 1961
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showTopStatusSet()V

    .line 1962
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->updateRemainCount()V

    .line 1964
    return-void
.end method

.method private enableSmileSelfPortrait()V
    .locals 5

    .prologue
    const/4 v3, 0x3

    const-string v4, "MotoCamera"

    .line 2302
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 2330
    :cond_0
    :goto_0
    return-void

    .line 2305
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    .line 2306
    .local v0, camSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 2308
    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/motorola/CameraF/Camera;->disableCurrentMode(I)V

    .line 2309
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamera"

    const-string v1, "Since already tracking just disable face track timer"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    :cond_2
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2311
    invoke-virtual {v0, v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 2312
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "face-detect-num-faces"

    const-string v3, "6"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "face-track-frame-skip"

    const-string v3, "60"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "face-track-mode"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mFaceDetectCallback:Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setFaceDetectCallback(Landroid/hardware/Camera$FaceDetectCallback;)V

    .line 2316
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2318
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 2319
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2320
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2322
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->restartPreview()V

    .line 2324
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->enableFaceTracking()V

    .line 2326
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCamera"

    const-string v1, "SELF enable selfPortrait timer"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_3
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private getFaceDetectAreas()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object v14, v0

    if-nez v14, :cond_0

    .line 6036
    const-string v14, "MotoCamera"

    const-string v15, "Camera no ready yet"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6037
    const/4 v14, 0x0

    .line 6084
    :goto_0
    return-object v14

    .line 6039
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    .line 6040
    .local v11, params:Landroid/hardware/Camera$Parameters;
    const-string v14, "face-detect-areas"

    invoke-virtual {v11, v14}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6042
    .local v5, facedetectareas:Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    const/4 v14, 0x6

    invoke-direct {v9, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 6043
    .local v9, mFaceRects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 6044
    const/4 v10, 0x0

    .line 6046
    .local v10, mNumFaces:I
    if-eqz v5, :cond_3

    .line 6047
    const-string v14, "MotoCamera"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FACE_DETECTED areas"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6049
    const-string v14, ","

    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 6051
    .local v4, faceareas:[Ljava/lang/String;
    const-string v14, "MotoCamera"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "faceareas: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "facedetectareas: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6052
    array-length v14, v4

    if-nez v14, :cond_1

    .line 6053
    const/4 v14, 0x0

    goto :goto_0

    .line 6056
    :cond_1
    const/4 v14, 0x0

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 6057
    const-string v14, "MotoCamera"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "face-detect-areas reports "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " faces but contains only "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v4

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    div-int/lit8 v16, v16, 0x4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " set(s) of coordinates."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6058
    array-length v14, v4

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x4

    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 6060
    if-lez v10, :cond_2

    .line 6062
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/Camera;->mSurfaceWidth:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/Camera;->mPreviewWidth:F

    move v15, v0

    div-float v2, v14, v15

    .line 6063
    .local v2, RATE2:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/Camera;->mSurfaceHeight:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/Camera;->mPreviewHeight:F

    move v15, v0

    div-float v1, v14, v15

    .line 6065
    .local v1, RATE:F
    const/4 v7, 0x1

    .local v7, i:I
    :goto_1
    if-gt v7, v10, :cond_2

    .line 6066
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 6067
    .local v3, faceRect:Landroid/graphics/Rect;
    const/4 v14, 0x1

    sub-int v14, v7, v14

    mul-int/lit8 v14, v14, 0x4

    add-int/lit8 v14, v14, 0x1

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    mul-float v12, v14, v1

    .line 6068
    .local v12, top:F
    const/4 v14, 0x1

    sub-int v14, v7, v14

    mul-int/lit8 v14, v14, 0x4

    add-int/lit8 v14, v14, 0x2

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    mul-float v8, v14, v2

    .line 6069
    .local v8, left:F
    const/4 v14, 0x1

    sub-int v14, v7, v14

    mul-int/lit8 v14, v14, 0x4

    add-int/lit8 v14, v14, 0x3

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    mul-float v13, v14, v2

    .line 6070
    .local v13, width:F
    const/4 v14, 0x1

    sub-int v14, v7, v14

    mul-int/lit8 v14, v14, 0x4

    add-int/lit8 v14, v14, 0x4

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    mul-float v6, v14, v1

    .line 6072
    .local v6, height:F
    float-to-int v14, v12

    iput v14, v3, Landroid/graphics/Rect;->top:I

    .line 6073
    float-to-int v14, v8

    iput v14, v3, Landroid/graphics/Rect;->left:I

    .line 6074
    iget v14, v3, Landroid/graphics/Rect;->top:I

    float-to-int v15, v6

    add-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->bottom:I

    .line 6075
    iget v14, v3, Landroid/graphics/Rect;->left:I

    float-to-int v15, v13

    add-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->right:I

    .line 6077
    const/4 v14, 0x1

    sub-int v14, v7, v14

    invoke-virtual {v9, v14, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6065
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v1           #RATE:F
    .end local v2           #RATE2:F
    .end local v3           #faceRect:Landroid/graphics/Rect;
    .end local v6           #height:F
    .end local v7           #i:I
    .end local v8           #left:F
    .end local v12           #top:F
    .end local v13           #width:F
    :cond_2
    move-object v14, v9

    .line 6080
    goto/16 :goto_0

    .line 6083
    .end local v4           #faceareas:[Ljava/lang/String;
    :cond_3
    const-string v14, "MotoCamera"

    const-string v15, "no faces detected"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6084
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private getMaxPictureResolution()Ljava/lang/String;
    .locals 5

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, res:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mSupportedPictureSizes:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 564
    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mSupportedPictureSizes:Ljava/util/List;

    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 566
    .local v1, size:Landroid/hardware/Camera$Size;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/CameraF/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .end local v1           #size:Landroid/hardware/Camera$Size;
    :cond_0
    if-nez v0, :cond_1

    .line 570
    const-string v2, "MotoCamera"

    const-string v3, "getMaxPictureResolution: ERROR no max resolution"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v0, "OneMP"

    .line 574
    :cond_1
    return-object v0
.end method

.method private getMinPictureResolution()Ljava/lang/String;
    .locals 4

    .prologue
    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, res:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mSupportedPictureSizes:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 583
    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mSupportedPictureSizes:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 586
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    const/16 v3, 0x280

    if-le v2, v3, :cond_0

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/CameraF/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .end local v1           #size:Landroid/hardware/Camera$Size;
    :cond_0
    if-nez v0, :cond_1

    .line 593
    const-string v2, "MotoCamera"

    const-string v3, "getMinPictureResolution: ERROR no min resolution"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v0, "OneMP"

    .line 597
    :cond_1
    return-object v0
.end method

.method private getResolutionFromIntent()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "MotoCamera"

    .line 6004
    const/4 v1, 0x0

    .line 6006
    .local v1, resolution:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 6007
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string v2, "output"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6011
    const-string v2, "Image.Resolution"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6012
    if-eqz v1, :cond_0

    .line 6013
    invoke-direct {p0, v1}, Lcom/motorola/CameraF/Camera;->checkResolutionAndConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6016
    :cond_0
    if-nez v1, :cond_1

    .line 6019
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->getMaxPictureResolution()Ljava/lang/String;

    move-result-object v1

    .line 6020
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResolutionFromIntent: sent via URI, use max resolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6031
    :cond_1
    :goto_0
    return-object v1

    .line 6027
    :cond_2
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->getMinPictureResolution()Ljava/lang/String;

    move-result-object v1

    .line 6028
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResolutionFromIntent: sent image via intent, use min resolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initPostPanel()V
    .locals 9

    .prologue
    const v8, 0x7f0e0070

    const/16 v7, 0x8

    .line 1714
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1715
    .local v2, inflate:Landroid/view/LayoutInflater;
    const v5, 0x7f0e0067

    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    .line 1716
    const/4 v0, 0x0

    .line 1718
    .local v0, b:Landroid/widget/Button;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1719
    const v5, 0x7f030014

    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    .line 1721
    const v5, 0x7f0e007b

    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #b:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1722
    .restart local v0       #b:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1724
    const v5, 0x7f0e0079

    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #b:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1725
    .restart local v0       #b:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1727
    const v5, 0x7f0e007d

    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #b:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1728
    .restart local v0       #b:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1769
    :goto_0
    return-void

    .line 1730
    :cond_0
    const/4 v3, 0x0

    .line 1732
    .local v3, kodakExists:Z
    const v5, 0x7f030013

    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    .line 1735
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->checkForKodakPerfectTouch()Z

    move-result v3

    .line 1737
    if-eqz v3, :cond_2

    .line 1738
    invoke-virtual {p0, v8}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #b:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1739
    .restart local v0       #b:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1749
    :goto_1
    const v5, 0x7f0e0072

    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #b:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1750
    .restart local v0       #b:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1752
    const v5, 0x7f0e0074

    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #b:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1753
    .restart local v0       #b:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1755
    const v5, 0x7f0e0076

    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #b:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1756
    .restart local v0       #b:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1758
    const-string v5, "ro.mot.deblur"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1760
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1761
    const v5, 0x7f0e0077

    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1762
    .local v1, dividerView:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1766
    .end local v1           #dividerView:Landroid/view/View;
    :cond_1
    const v5, 0x7f0e0078

    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #b:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1767
    .restart local v0       #b:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1741
    :cond_2
    invoke-virtual {p0, v8}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1742
    .local v4, kodakView:Landroid/view/View;
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1744
    const v5, 0x7f0e0071

    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1745
    .restart local v1       #dividerView:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private initShutterView()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/16 v1, 0x8

    .line 1237
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1238
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 1240
    new-instance v0, Lcom/motorola/CameraF/View/CameraShutterRender;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/View/CameraShutterRender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mRender:Lcom/motorola/CameraF/View/CameraShutterRender;

    .line 1241
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mRender:Lcom/motorola/CameraF/View/CameraShutterRender;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/CameraShutterRender;->SetCallBackHandle(Landroid/os/Handler;)V

    .line 1242
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mRender:Lcom/motorola/CameraF/View/CameraShutterRender;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1245
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    .line 1246
    const v0, 0x7f0e005a

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/CameraF/View/CameraContentView;

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mMain:Lcom/motorola/CameraF/View/CameraContentView;

    .line 1247
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mMain:Lcom/motorola/CameraF/View/CameraContentView;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/View/CameraContentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1252
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1253
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/16 v1, 0x8

    const-string v3, "MotoCamera"

    .line 1183
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "initViews() - Enter"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_0
    const v0, 0x7f0e005c

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mCaptureProcessingView:Landroid/view/View;

    .line 1187
    const v0, 0x7f0e005d

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mSaveImageProcessingView:Landroid/view/View;

    .line 1189
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 1191
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRemainText()V

    .line 1199
    :goto_0
    const v0, 0x7f0e0062

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    .line 1200
    const v0, 0x7f0e0061

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/CameraF/View/FocusView;

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    .line 1203
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    if-eqz v0, :cond_3

    .line 1204
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1205
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/FocusView;->initFocusView()Z

    .line 1206
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/FocusView;->resetFocusArea()V

    .line 1207
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->updateFocusIndicator()V

    .line 1217
    :goto_1
    const v0, 0x7f0e0064

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mPostText:Landroid/widget/TextView;

    .line 1218
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPostText:Landroid/widget/TextView;

    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1219
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPostText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1220
    const v0, 0x7f0e0060

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;

    .line 1223
    const v0, 0x7f0e0065

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    .line 1224
    const v0, 0x7f0e0066

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    .line 1225
    const v0, 0x7f0e005e

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    .line 1228
    const v0, 0x7f0e005f

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/CameraF/View/FaceTrackingView;

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    .line 1229
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    invoke-virtual {v0, v2}, Lcom/motorola/CameraF/View/FaceTrackingView;->setVisibility(I)V

    .line 1231
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v0, "initViews() - Exit"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_1
    return-void

    .line 1195
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    goto/16 :goto_0

    .line 1208
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1209
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/FocusView;->setVisibility(I)V

    goto :goto_1

    .line 1211
    :cond_4
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/FocusView;->setVisibility(I)V

    .line 1212
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private initializeFirstTime()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "MotoCamera"

    .line 1101
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "initializeFirstTime() - Enter"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_2

    .line 1158
    :cond_1
    :goto_0
    return-void

    .line 1110
    :cond_2
    new-instance v0, Lcom/motorola/CameraF/Camera$2;

    invoke-direct {v0, p0, p0}, Lcom/motorola/CameraF/Camera$2;-><init>(Lcom/motorola/CameraF/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 1120
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1123
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mLocationManager:Landroid/location/LocationManager;

    .line 1124
    new-instance v0, Lcom/motorola/CameraF/LocUtility;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mLocationManager:Landroid/location/LocationManager;

    invoke-direct {v0, p0, v1}, Lcom/motorola/CameraF/LocUtility;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mLocUtil:Lcom/motorola/CameraF/LocUtility;

    .line 1126
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1128
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mLocUtil:Lcom/motorola/CameraF/LocUtility;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/LocUtility;->startReceivingLocationUpdates(Landroid/os/Handler;)V

    .line 1131
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 1136
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->initViews()V

    .line 1139
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->checkStorage()V

    .line 1142
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->installIntentFilter()V

    .line 1145
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->initializeFocusTone()V

    .line 1149
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/CameraF/Camera;->disableCurrentMode(I)V

    .line 1151
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 1155
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mFirstTimeInitialized:Z

    .line 1157
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v0, "initializeFirstTime() - Exit"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initializeFocusTone()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v4, "MotoCamera"

    .line 1322
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v1, "initializeFocusTone() - Enter"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterToneOn()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x4

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    :goto_0
    iput-object v1, p0, Lcom/motorola/CameraF/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    :goto_1
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v1, "initializeFocusTone() - Exit"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_1
    return-void

    :cond_2
    move-object v1, v5

    .line 1326
    goto :goto_0

    .line 1328
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1330
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "MotoCamera"

    const-string v1, "initializeFocusTone() - failed to initialize tone"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iput-object v5, p0, Lcom/motorola/CameraF/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1
.end method

.method private initializeSecondTime()V
    .locals 4

    .prologue
    const-string v3, "MotoCamera"

    .line 1290
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v1, "initializeSecondTime() - Enter"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->initializeFocusTone()V

    .line 1296
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 1299
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1301
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/motorola/CameraF/Camera$3;

    invoke-direct {v1, p0}, Lcom/motorola/CameraF/Camera$3;-><init>(Lcom/motorola/CameraF/Camera;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1307
    .local v0, locThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1310
    .end local v0           #locThread:Ljava/lang/Thread;
    :cond_1
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->installIntentFilter()V

    .line 1312
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->initializeFocusTone()V

    .line 1313
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->updateFocusIndicator()V

    .line 1315
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->checkStorage()V

    .line 1317
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamera"

    const-string v1, "initializeSecondTime() - Exit"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_2
    return-void
.end method

.method private installIntentFilter()V
    .locals 4

    .prologue
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    const-string v2, "MotoCamera"

    .line 1162
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v1, "installIntentFilter() - Enter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1165
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1166
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1167
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1168
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1169
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1170
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1172
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1173
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/CameraF/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1176
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mDidRegister:Z

    .line 1178
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v1, "installIntentFilter() - Exit"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_1
    return-void
.end method

.method private interruptThumbnailThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6091
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    if-eqz v0, :cond_3

    .line 6093
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    monitor-enter v0

    .line 6094
    :try_start_0
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 6095
    const-string v1, "MotoCamera"

    const-string v2, "interruptThumbnailThread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6097
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6098
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6099
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 6100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6105
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    invoke-virtual {v1}, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6106
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    invoke-virtual {v1}, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6111
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6112
    iput-object v3, p0, Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    .line 6114
    :cond_3
    return-void

    .line 6111
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 6108
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isMultishotMode()Z
    .locals 2

    .prologue
    .line 1646
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPanoramaMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1642
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPickIntent()Z
    .locals 2

    .prologue
    .line 4898
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4899
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchCamcorder()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const-string v4, "Camtype"

    .line 5838
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5839
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 5841
    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mCallToast:Landroid/widget/Toast;

    if-eqz v2, :cond_1

    .line 5842
    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mCallToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 5843
    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mCallToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5848
    :goto_0
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 5850
    const-string v2, "MotoCamera"

    const-string v3, "launchCamcorder() - In call, cancelling launch of Camcorder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5863
    :cond_0
    :goto_1
    return-void

    .line 5845
    :cond_1
    const v2, 0x7f0b0005

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/CameraF/Camera;->mCallToast:Landroid/widget/Toast;

    .line 5846
    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mCallToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5855
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/CameraF/Camcorder;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5856
    .local v1, videoCamera:Landroid/content/Intent;
    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5858
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-eqz v2, :cond_3

    const-string v2, "Camtype"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5860
    :goto_2
    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camera;->startActivity(Landroid/content/Intent;)V

    .line 5862
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->finish()V

    goto :goto_1

    .line 5859
    :cond_3
    const-string v2, "Camtype"

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method private launchGallery()V
    .locals 4

    .prologue
    .line 3235
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3238
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "TYPE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3239
    const-string v2, "GalleryMode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3240
    const-string v2, "LaunchMode"

    const-string v3, "camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3241
    const-string v2, "com.motorola.gallery"

    const-string v3, "com.motorola.gallery.ExternalViewImage"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3245
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3252
    :goto_0
    return-void

    .line 3247
    :catch_0
    move-exception v0

    .line 3249
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MotoCamera"

    const-string v3, "launchGallery() - couldn\'t launch gallery, activity doesn\'t exist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3250
    const v2, 0x7f0b0056

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private postAfterKeep(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 5867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mKeepAndRestartPreview:Z

    .line 5868
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5869
    return-void
.end method

.method private removeShutterView()V
    .locals 2

    .prologue
    .line 1256
    const v0, 0x7f0e005a

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/CameraF/View/CameraContentView;

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mMain:Lcom/motorola/CameraF/View/CameraContentView;

    .line 1257
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mMain:Lcom/motorola/CameraF/View/CameraContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mMain:Lcom/motorola/CameraF/View/CameraContentView;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/CameraContentView;->removeView(Landroid/view/View;)V

    .line 1260
    :cond_0
    return-void
.end method

.method private restartPreview()V
    .locals 2

    .prologue
    const-string v1, "MotoCamera"

    .line 1888
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "restartPreview() - Enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->startPreview()V

    .line 1892
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v0, "restartPreview() - Exit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :cond_1
    return-void
.end method

.method private selectPhoto()Z
    .locals 28

    .prologue
    .line 4995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/motorola/CameraF/Camera$ImageCapture;->getLastCaptureUri()Landroid/net/Uri;

    move-result-object v18

    .line 4997
    .local v18, lastUri:Landroid/net/Uri;
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectPhoto uri is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4998
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/motorola/CameraF/Camera$ImageCapture;->setDone(Z)V

    .line 4999
    const/4 v3, 0x0

    .line 5001
    .local v3, bitmap:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 5002
    .local v11, cropValue:Ljava/lang/String;
    const/16 v25, 0x0

    .line 5004
    .local v25, saveUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    .line 5005
    .local v19, myExtras:Landroid/os/Bundle;
    if-eqz v19, :cond_1

    .line 5007
    const-string v4, "output"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v25

    .end local v25           #saveUri:Landroid/net/Uri;
    check-cast v25, Landroid/net/Uri;

    .line 5008
    .restart local v25       #saveUri:Landroid/net/Uri;
    const-string v4, "crop"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5009
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_1

    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectPhoto myExtras :  saveUri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cropValue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5012
    :cond_1
    if-nez v11, :cond_13

    .line 5020
    if-eqz v25, :cond_8

    .line 5023
    const/16 v17, 0x0

    .line 5024
    .local v17, inputStream:Ljava/io/InputStream;
    const/16 v22, 0x0

    .line 5026
    .local v22, outputStream:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v17

    .line 5027
    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectPhoto - inputStream.available() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v22

    .line 5029
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v12, v4, [B

    .line 5030
    .local v12, data:[B
    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 5031
    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 5032
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 5033
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5042
    if-eqz v17, :cond_2

    .line 5044
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5049
    :cond_2
    :goto_0
    if-eqz v22, :cond_3

    .line 5051
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5058
    :cond_3
    :goto_1
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/Camera;->setResult(I)V

    .line 5059
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/Camera;->finish()V

    .line 5215
    .end local v12           #data:[B
    .end local v17           #inputStream:Ljava/io/InputStream;
    .end local v22           #outputStream:Ljava/io/OutputStream;
    :goto_2
    const/4 v4, 0x1

    :cond_4
    :goto_3
    return v4

    .line 5045
    .restart local v12       #data:[B
    .restart local v17       #inputStream:Ljava/io/InputStream;
    .restart local v22       #outputStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v16

    .line 5046
    .local v16, ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v5, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5052
    .end local v16           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v16

    .line 5053
    .restart local v16       #ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v5, "selectPhoto - IOException Ignore close exception for outputStream"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5035
    .end local v12           #data:[B
    .end local v16           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v4

    move-object/from16 v16, v4

    .line 5036
    .restart local v16       #ex:Ljava/io/IOException;
    :try_start_3
    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectPhoto - IOException save to uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5037
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/Camera;->setResult(I)V

    .line 5038
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/Camera;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5039
    const/4 v4, 0x1

    .line 5042
    if-eqz v17, :cond_5

    .line 5044
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 5049
    :cond_5
    :goto_4
    if-eqz v22, :cond_4

    .line 5051
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 5052
    :catch_3
    move-exception v16

    .line 5053
    const-string v5, "MotoCamera"

    const-string v6, "selectPhoto - IOException Ignore close exception for outputStream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5045
    :catch_4
    move-exception v16

    .line 5046
    const-string v5, "MotoCamera"

    const-string v6, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 5042
    .end local v16           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v17, :cond_6

    .line 5044
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 5049
    :cond_6
    :goto_5
    if-eqz v22, :cond_7

    .line 5051
    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 5054
    :cond_7
    :goto_6
    throw v4

    .line 5045
    :catch_5
    move-exception v16

    .line 5046
    .restart local v16       #ex:Ljava/io/IOException;
    const-string v5, "MotoCamera"

    const-string v6, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 5052
    .end local v16           #ex:Ljava/io/IOException;
    :catch_6
    move-exception v16

    .line 5053
    .restart local v16       #ex:Ljava/io/IOException;
    const-string v5, "MotoCamera"

    const-string v6, "selectPhoto - IOException Ignore close exception for outputStream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 5065
    .end local v16           #ex:Ljava/io/IOException;
    .end local v17           #inputStream:Ljava/io/InputStream;
    .end local v22           #outputStream:Ljava/io/OutputStream;
    :cond_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v3

    .line 5074
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_9

    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectPhoto returning bitmap to app w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5077
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/Camera;->mLastOrientation:I

    move/from16 v21, v0

    .line 5079
    .local v21, orientation:I
    invoke-static/range {v21 .. v21}, Lcom/motorola/CameraF/ImageManager;->roundOrientation(I)I

    move-result v21

    .line 5081
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_a

    .line 5082
    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ImageCapture:storeImage - orientation is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/CameraF/Camera;->mIsRotatorClosed:Z

    move v4, v0

    if-eqz v4, :cond_b

    .line 5086
    add-int/lit8 v21, v21, 0x5a

    .line 5089
    :cond_b
    const/16 v4, 0x10e

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_10

    const/16 v21, 0x0

    .line 5092
    :goto_7
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 5093
    .local v8, bmpRotMtx:Landroid/graphics/Matrix;
    move/from16 v0, v21

    int-to-float v0, v0

    move v4, v0

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 5095
    const/16 v24, 0x0

    .line 5096
    .local v24, retBmp:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_e

    .line 5098
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 5099
    .local v6, width:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 5100
    .local v7, height:I
    mul-int v4, v6, v7

    const v5, 0x12c00

    if-le v4, v5, :cond_11

    .line 5101
    const/16 v14, 0x140

    .line 5102
    .local v14, dstWidth:I
    const/16 v13, 0xf0

    .line 5103
    .local v13, dstHeight:I
    if-ge v6, v7, :cond_c

    .line 5105
    const/16 v14, 0xf0

    .line 5106
    const/16 v13, 0x140

    .line 5108
    :cond_c
    int-to-float v4, v14

    int-to-float v5, v6

    div-float/2addr v4, v5

    int-to-float v5, v13

    int-to-float v9, v7

    div-float/2addr v5, v9

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 5109
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_d

    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectPhoto scaling scalew="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int v9, v14, v6

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " scaleh="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int v9, v13, v7

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5110
    :cond_d
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 5120
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v13           #dstHeight:I
    .end local v14           #dstWidth:I
    :cond_e
    :goto_8
    if-eqz v24, :cond_12

    .line 5121
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_f

    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectPhoto return bitmap: w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    :cond_f
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    const-string v6, "inline-data"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "data"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/Camera;->setResult(ILandroid/content/Intent;)V

    .line 5128
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/Camera;->finish()V

    goto/16 :goto_2

    .line 5067
    .end local v8           #bmpRotMtx:Landroid/graphics/Matrix;
    .end local v21           #orientation:I
    .end local v24           #retBmp:Landroid/graphics/Bitmap;
    :catch_7
    move-exception v4

    move-object v15, v4

    .line 5068
    .local v15, e:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectPhoto - IOException read from uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5069
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/Camera;->setResult(I)V

    .line 5070
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/Camera;->finish()V

    .line 5071
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 5090
    .end local v15           #e:Ljava/io/IOException;
    .restart local v21       #orientation:I
    :cond_10
    add-int/lit8 v21, v21, 0x5a

    goto/16 :goto_7

    .line 5114
    .restart local v6       #width:I
    .restart local v7       #height:I
    .restart local v8       #bmpRotMtx:Landroid/graphics/Matrix;
    .restart local v24       #retBmp:Landroid/graphics/Bitmap;
    :cond_11
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v24

    goto/16 :goto_8

    .line 5124
    .end local v6           #width:I
    .end local v7           #height:I
    :cond_12
    const-string v4, "MotoCamera"

    const-string v5, "selectPhoto ERROR: bitmap too big"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5125
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/Camera;->setResult(I)V

    goto :goto_9

    .line 5136
    .end local v8           #bmpRotMtx:Landroid/graphics/Matrix;
    .end local v21           #orientation:I
    .end local v24           #retBmp:Landroid/graphics/Bitmap;
    :cond_13
    const/16 v27, 0x0

    .line 5137
    .local v27, tempUri:Landroid/net/Uri;
    const/16 v26, 0x0

    .line 5138
    .local v26, tempStream:Ljava/io/FileOutputStream;
    const/16 v17, 0x0

    .line 5143
    .restart local v17       #inputStream:Ljava/io/InputStream;
    :try_start_9
    const-string v4, "crop-temp"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    move-result-object v23

    .line 5146
    .local v23, path:Ljava/io/File;
    :try_start_a
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    .line 5152
    :goto_a
    :try_start_b
    const-string v4, "crop-temp"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v26

    .line 5154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v17

    .line 5155
    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectPhoto - inputStream.available() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5156
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v12, v4, [B

    .line 5157
    .restart local v12       #data:[B
    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 5158
    move-object/from16 v0, v26

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5159
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 5161
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V

    .line 5162
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    move-result-object v27

    .line 5172
    if-eqz v17, :cond_14

    .line 5174
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 5179
    :cond_14
    :goto_b
    if-eqz v26, :cond_15

    .line 5181
    :try_start_d
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    .line 5188
    :cond_15
    :goto_c
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 5189
    .local v20, newExtras:Landroid/os/Bundle;
    const-string v4, "circle"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 5190
    const-string v4, "circleCrop"

    const-string v5, "true"

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5191
    :cond_16
    if-eqz v25, :cond_1b

    .line 5192
    const-string v4, "output"

    move-object/from16 v0, v20

    move-object v1, v4

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5196
    :goto_d
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 5202
    .local v10, cropIntent:Landroid/content/Intent;
    const-string v4, "com.android.camera.action.CROP"

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5203
    const-string v4, "image/jpeg"

    move-object v0, v10

    move-object/from16 v1, v27

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5204
    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5206
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 5148
    .end local v10           #cropIntent:Landroid/content/Intent;
    .end local v12           #data:[B
    .end local v20           #newExtras:Landroid/os/Bundle;
    :catch_8
    move-exception v15

    .line 5150
    .local v15, e:Ljava/lang/SecurityException;
    :try_start_e
    const-string v4, "MotoCamera"

    const-string v5, "Security exception deleting file!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    goto/16 :goto_a

    .line 5163
    .end local v15           #e:Ljava/lang/SecurityException;
    .end local v23           #path:Ljava/io/File;
    :catch_9
    move-exception v4

    move-object/from16 v16, v4

    .line 5164
    .local v16, ex:Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    :try_start_f
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/Camera;->setResult(I)V

    .line 5165
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/Camera;->finish()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 5166
    const/4 v4, 0x1

    .line 5172
    if-eqz v17, :cond_17

    .line 5174
    :try_start_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 5179
    .end local v16           #ex:Ljava/io/FileNotFoundException;
    :cond_17
    :goto_e
    if-eqz v26, :cond_4

    .line 5181
    :try_start_11
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    goto/16 :goto_3

    .line 5182
    :catch_a
    move-exception v5

    goto/16 :goto_3

    .line 5175
    .restart local v12       #data:[B
    .restart local v23       #path:Ljava/io/File;
    :catch_b
    move-exception v16

    .line 5176
    .local v16, ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v5, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 5175
    .end local v12           #data:[B
    .end local v23           #path:Ljava/io/File;
    .local v16, ex:Ljava/io/FileNotFoundException;
    :catch_c
    move-exception v16

    .line 5176
    .local v16, ex:Ljava/io/IOException;
    const-string v5, "MotoCamera"

    const-string v6, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 5167
    .end local v16           #ex:Ljava/io/IOException;
    :catch_d
    move-exception v4

    move-object/from16 v16, v4

    .line 5168
    .restart local v16       #ex:Ljava/io/IOException;
    const/4 v4, 0x0

    :try_start_12
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/Camera;->setResult(I)V

    .line 5169
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/Camera;->finish()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 5170
    const/4 v4, 0x1

    .line 5172
    if-eqz v17, :cond_18

    .line 5174
    :try_start_13
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    .line 5179
    :cond_18
    :goto_f
    if-eqz v26, :cond_4

    .line 5181
    :try_start_14
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e

    goto/16 :goto_3

    .line 5182
    :catch_e
    move-exception v5

    goto/16 :goto_3

    .line 5175
    :catch_f
    move-exception v16

    .line 5176
    const-string v5, "MotoCamera"

    const-string v6, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 5172
    .end local v16           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    if-eqz v17, :cond_19

    .line 5174
    :try_start_15
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    .line 5179
    :cond_19
    :goto_10
    if-eqz v26, :cond_1a

    .line 5181
    :try_start_16
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_12

    .line 5184
    :cond_1a
    :goto_11
    throw v4

    .line 5175
    :catch_10
    move-exception v16

    .line 5176
    .restart local v16       #ex:Ljava/io/IOException;
    const-string v5, "MotoCamera"

    const-string v6, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 5194
    .end local v16           #ex:Ljava/io/IOException;
    .restart local v12       #data:[B
    .restart local v20       #newExtras:Landroid/os/Bundle;
    .restart local v23       #path:Ljava/io/File;
    :cond_1b
    const-string v4, "return-data"

    const/4 v5, 0x1

    move-object/from16 v0, v20

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_d

    .line 5182
    .end local v20           #newExtras:Landroid/os/Bundle;
    :catch_11
    move-exception v4

    goto/16 :goto_c

    .end local v12           #data:[B
    .end local v23           #path:Ljava/io/File;
    :catch_12
    move-exception v5

    goto :goto_11
.end method

.method private setCameraParameters()V
    .locals 24

    .prologue
    .line 644
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_0

    const-string v20, "MotoCamera"

    const-string v21, "setCameraParameters() - Enter"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "face-detect-areas"

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "mot-face-detect-areas"

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v20, v0

    const-string v21, "persist.sys.mot.encrypt.mmc"

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    const/16 v21, 0x1

    :goto_0
    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCamcorderAESProps(Z)V

    .line 659
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_1

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/CameraUtility;->getCameraCapabilities(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 665
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->loadAutoDetectValues()V

    .line 667
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/CameraF/Camera;->mIsImageCaptureIntent:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 668
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/motorola/CameraF/Camera;->getResolutionFromIntent()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->serviceModeResolution:Ljava/lang/String;

    .line 671
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v20

    sput v20, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_MAX_VALUE:I

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v20

    sput-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->smoothZoomSupported:Z

    .line 674
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_3

    .line 675
    const-string v20, "MotoCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setCameraParameters() - max zoom is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string v20, "MotoCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setCameraParameters() - SmoothZoomSupported is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->smoothZoomSupported:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v10

    .line 682
    .local v10, mode:I
    if-eqz v10, :cond_4

    const/16 v20, 0x3

    move v0, v10

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 686
    :cond_4
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentSingleShotResDimension()Ljava/lang/String;

    move-result-object v13

    .line 687
    .local v13, pictureSize:Ljava/lang/String;
    if-nez v13, :cond_14

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mSupportedPictureSizes:Ljava/util/List;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/Camera;->mSupportedPictureSizes:Ljava/util/List;

    .line 693
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mSupportedPictureSizes:Ljava/util/List;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    move-object v0, v5

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mSupportedPictureSizes:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    move-object v0, v5

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 727
    .end local v13           #pictureSize:Ljava/lang/String;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v18

    .line 728
    .local v18, size:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCameraView:Lcom/motorola/CameraF/View/CameraView;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/motorola/CameraF/View/CameraView;->setAspectRatio(II)V

    .line 736
    const-string v20, "ro.media.camerapreview.reg"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 737
    .local v14, pr:Ljava/lang/String;
    const-string v20, "ro.media.camerapreview.wide"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 739
    .local v15, pw:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_19

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_19

    .line 742
    :try_start_0
    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const v21, 0x3fab851f

    cmpl-float v20, v20, v21

    if-lez v20, :cond_18

    .line 744
    const-string v20, "x"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 745
    .local v16, pwidth:I
    const-string v20, "x"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 759
    .local v12, pheight:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 760
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/CameraF/Camera;->mPreviewWidth:F

    .line 761
    move v0, v12

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/CameraF/Camera;->mPreviewHeight:F

    .line 762
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_7

    const-string v20, "MotoCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Preview set from Camera media Profiles pw: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "pr: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    .end local v12           #pheight:I
    .end local v16           #pwidth:I
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v8

    .line 787
    .local v8, frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_8

    .line 789
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isDriod2()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const/16 v21, 0x18

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 798
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const/16 v21, 0x5f

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 801
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_a

    .line 803
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v17

    .line 805
    .local v17, sceneMode:I
    invoke-direct/range {p0 .. p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v20

    sget-object v21, Lcom/motorola/CameraF/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    sget-object v21, Lcom/motorola/CameraF/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 808
    :cond_9
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusModes()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/motorola/CameraF/CameraGlobalType;->focusSetting:[Ljava/lang/String;

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    sget-object v21, Lcom/motorola/CameraF/CameraGlobalType;->focusSetting:[Ljava/lang/String;

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 810
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/CameraF/Camera;->mFocusMode:I

    .line 848
    .end local v17           #sceneMode:I
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_b

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 851
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "face-detect-areas"

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "mot-face-detect-areas"

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 862
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 865
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentEffect()I

    move-result v5

    .line 866
    .local v5, colorEffect:I
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_c

    const-string v20, "MotoCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setCameraParameters() - ColorEffect is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_c
    sget-object v20, Lcom/motorola/CameraF/CameraGlobalType;->effectSetting:[Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move v0, v5

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/motorola/CameraF/CameraGlobalType;->effectSetting:[Ljava/lang/String;

    aget-object v21, v21, v5

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    sget-object v21, Lcom/motorola/CameraF/CameraGlobalType;->effectSetting:[Ljava/lang/String;

    aget-object v21, v21, v5

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 878
    .end local v5           #colorEffect:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "auto"

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 880
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v20

    if-nez v20, :cond_10

    const/16 v20, 0x1

    sget-boolean v21, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v20

    if-nez v20, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/motorola/CameraF/Camera;->isMultishotMode()Z

    move-result v20

    if-nez v20, :cond_10

    .line 882
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isFaceTrackingOn()Z

    move-result v20

    if-nez v20, :cond_e

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_20

    .line 884
    :cond_e
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_f

    const-string v20, "MotoCamera"

    const-string v21, "setCameraParameters() Face Tracking pref is ON"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "face-detect-num-faces"

    const-string v22, "6"

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "face-track-frame-skip"

    const-string v22, "60"

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "face-track-mode"

    const-string v22, "on"

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mFaceDetectCallback:Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera;->setFaceDetectCallback(Landroid/hardware/Camera$FaceDetectCallback;)V

    .line 897
    :cond_10
    :goto_6
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v20, :cond_11

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "mot-picture-iso"

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentIsoValue()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "mot-exposure-offset"

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentExpValue()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 912
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_12

    const-string v20, "MotoCamera"

    const-string v21, "setCameraParameters() - Exit"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_12
    return-void

    .line 656
    .end local v8           #frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10           #mode:I
    .end local v14           #pr:Ljava/lang/String;
    .end local v15           #pw:Ljava/lang/String;
    .end local v18           #size:Landroid/hardware/Camera$Size;
    :cond_13
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 698
    .restart local v10       #mode:I
    .restart local v13       #pictureSize:Ljava/lang/String;
    :cond_14
    const-string v20, "x"

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 699
    .local v19, temp:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v21, v19, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0x1

    aget-object v22, v19, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_1

    .line 702
    .end local v13           #pictureSize:Ljava/lang/String;
    .end local v19           #temp:[Ljava/lang/String;
    :cond_15
    const/16 v20, 0x1

    move v0, v10

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 704
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentPanShotResDimension()Ljava/lang/String;

    move-result-object v13

    .line 705
    .restart local v13       #pictureSize:Ljava/lang/String;
    if-eqz v13, :cond_16

    .line 707
    const-string v20, "x"

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 708
    .restart local v19       #temp:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v21, v19, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0x1

    aget-object v22, v19, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_1

    .line 712
    .end local v19           #temp:[Ljava/lang/String;
    :cond_16
    const-string v20, "MotoCamera"

    const-string v21, "setCameraParameters() - no valid setting for panorama!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 715
    .end local v13           #pictureSize:Ljava/lang/String;
    :cond_17
    const/16 v20, 0x2

    move v0, v10

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureMultishotEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const/16 v22, 0x6

    invoke-virtual/range {v20 .. v22}, Lcom/motorola/CameraF/CameraUtility;->setBurstCaptureCount(Landroid/hardware/Camera$Parameters;I)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const/16 v21, 0x500

    const/16 v22, 0x3c0

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_1

    .line 749
    .restart local v14       #pr:Ljava/lang/String;
    .restart local v15       #pw:Ljava/lang/String;
    .restart local v18       #size:Landroid/hardware/Camera$Size;
    :cond_18
    :try_start_1
    const-string v20, "x"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 750
    .restart local v16       #pwidth:I
    const-string v20, "x"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    .restart local v12       #pheight:I
    goto/16 :goto_2

    .line 754
    .end local v12           #pheight:I
    .end local v16           #pwidth:I
    :catch_0
    move-exception v20

    move-object/from16 v7, v20

    .line 755
    .local v7, e:Ljava/lang/NumberFormatException;
    const/16 v16, 0x280

    .line 756
    .restart local v16       #pwidth:I
    const/16 v12, 0x1e0

    .restart local v12       #pheight:I
    goto/16 :goto_2

    .line 768
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .end local v12           #pheight:I
    .end local v16           #pwidth:I
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 769
    .local v6, display:Landroid/view/Display;
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_1a

    const-string v20, "MotoCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setCameraParameters() - Display size is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_1a
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/CameraF/Camera;->mDisplayHeight:I

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v9

    .line 776
    .local v9, lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v22

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v23

    move-object v0, v9

    move-wide/from16 v1, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/CameraF/CameraGlobalTools;->getOptimalPreviewSize(Ljava/util/List;DII)Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 777
    .local v11, optimalSize:Landroid/hardware/Camera$Size;
    if-eqz v11, :cond_7

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object v0, v11

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    move-object v0, v11

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 780
    move-object v0, v11

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/CameraF/Camera;->mPreviewWidth:F

    .line 781
    move-object v0, v11

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/CameraF/Camera;->mPreviewHeight:F

    goto/16 :goto_3

    .line 793
    .end local v6           #display:Landroid/view/Display;
    .end local v9           #lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v11           #optimalSize:Landroid/hardware/Camera$Size;
    .restart local v8       #frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const/16 v21, 0x1c

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto/16 :goto_4

    .line 814
    .restart local v17       #sceneMode:I
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/motorola/CameraF/Camera;->isMultishotMode()Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    sget-object v21, Lcom/motorola/CameraF/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    sget-object v21, Lcom/motorola/CameraF/CameraGlobalType;->focusSetting:[Ljava/lang/String;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 818
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/CameraF/Camera;->mFocusMode:I

    goto/16 :goto_5

    .line 821
    :cond_1d
    sget-object v20, Lcom/motorola/CameraF/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    .line 823
    const/16 v20, 0x6

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    sget-object v21, Lcom/motorola/CameraF/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 825
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusModes()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/motorola/CameraF/CameraGlobalType;->focusSetting:[Ljava/lang/String;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    sget-object v21, Lcom/motorola/CameraF/CameraGlobalType;->focusSetting:[Ljava/lang/String;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 827
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/CameraF/Camera;->mFocusMode:I

    goto/16 :goto_5

    .line 832
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/Camera;->mFocusMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_1f

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    sget-object v21, Lcom/motorola/CameraF/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    sget-object v21, Lcom/motorola/CameraF/CameraGlobalType;->focusSetting:[Ljava/lang/String;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    sget-object v21, Lcom/motorola/CameraF/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    aget-object v21, v21, v17

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 838
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/CameraF/Camera;->mFocusMode:I

    goto/16 :goto_5

    .line 841
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    sget-object v21, Lcom/motorola/CameraF/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    aget-object v21, v21, v17

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 891
    .end local v17           #sceneMode:I
    :cond_20
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_21

    const-string v20, "MotoCamera"

    const-string v21, "setCameraParameters() Face Tracking pref is OFF"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "face-track-mode"

    const-string v22, "off"

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera;->setFaceDetectCallback(Landroid/hardware/Camera$FaceDetectCallback;)V

    goto/16 :goto_6
.end method

.method private setPostOptionsOnClickListener()V
    .locals 2

    .prologue
    .line 1704
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1705
    const v1, 0x7f0e0076

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1706
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1707
    const v1, 0x7f0e0078

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #b:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1708
    .restart local v0       #b:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1710
    .end local v0           #b:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    const-string v3, "MotoCamera"

    .line 917
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v1, "setPreviewDisplay() - Enter"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v2, "setPreviewDisplay() - calling mCameraDevice.setPreviewDisplay()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_0
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamera"

    const-string v1, "setPreviewDisplay() - Exit"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_2
    return-void

    .line 924
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 926
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MotoCamera"

    const-string v1, "error setting preview display, closing camera"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->closeCamera()V

    .line 928
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private showStorageToast()V
    .locals 3

    .prologue
    .line 4187
    const/4 v0, 0x0

    .line 4189
    .local v0, noStorageText:Ljava/lang/String;
    iget v1, p0, Lcom/motorola/CameraF/Camera;->mPicturesRemaining:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4191
    const v1, 0x7f0b000c

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4197
    :goto_0
    invoke-direct {p0, v0}, Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V

    .line 4198
    return-void

    .line 4195
    :cond_0
    const v1, 0x7f0b000d

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 4201
    if-nez p1, :cond_0

    .line 4209
    :goto_0
    return-void

    .line 4202
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 4203
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mToast:Landroid/widget/Toast;

    .line 4208
    :goto_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4205
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 4206
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1
.end method

.method private startPreview()V
    .locals 8

    .prologue
    const/16 v7, 0x38

    const-string v6, "MotoCamera"

    .line 478
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCamera"

    const-string v3, "startPreview() - Enter"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mCaptureProcessingView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mCaptureProcessingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 480
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mCaptureProcessingView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 484
    :cond_1
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_3

    .line 486
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_2

    const-string v3, "MotoCamera"

    const-string v3, "startPreview() - mCameraDevice = null, opening"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :cond_3
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v4, Lcom/motorola/CameraF/Camera$MotoCameraErrorCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/motorola/CameraF/Camera$MotoCameraErrorCallback;-><init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 502
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/motorola/CameraF/Camera;->mZoomChangeListener:Lcom/motorola/CameraF/Camera$MotoCameraOnZoomChangeListener;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 514
    iget-boolean v3, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    if-eqz v3, :cond_5

    .line 516
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_4

    const-string v3, "MotoCamera"

    const-string v3, "startPreview() - preview already running, call stopPreview()"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_4
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->stopPreview()V

    .line 521
    :cond_5
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v3}, Lcom/motorola/CameraF/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 523
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v3, :cond_7

    .line 525
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->setCameraParameters()V

    .line 530
    :try_start_1
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_6

    const-string v3, "MotoCamera"

    const-string v4, "startPreview() - calling mCameraDevice.startPreview()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_6
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 532
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 547
    :cond_7
    :goto_0
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v3, :cond_8

    .line 548
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v3

    if-nez v3, :cond_b

    .line 549
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showZoomControlSet()V

    .line 554
    :cond_8
    :goto_1
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_9

    const-string v3, "MotoCamera"

    const-string v3, "startPreview() - Exit"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_9
    :goto_2
    return-void

    .line 493
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 495
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "MotoCamera"

    const-string v3, "startPreview() - failed to open camera"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 534
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 536
    .local v1, ex:Ljava/lang/Throwable;
    const-string v3, "MotoCamera"

    const-string v3, "startPreview() - failed to start preview"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    .line 538
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->closeCamera()V

    .line 539
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "mot-camera-sdm-disabled"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, sdmStatus:Ljava/lang/String;
    if-eqz v2, :cond_a

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 541
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 543
    :cond_a
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 552
    .end local v1           #ex:Ljava/lang/Throwable;
    .end local v2           #sdmStatus:Ljava/lang/String;
    :cond_b
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideZoomControlSet()V

    goto :goto_1
.end method

.method private startShutterAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1263
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isMultishotMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->bGLSurfaceViewPlaying:Z

    if-nez v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    .line 1266
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1267
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camera;->bGLSurfaceViewPlaying:Z

    .line 1268
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mRender:Lcom/motorola/CameraF/View/CameraShutterRender;

    invoke-virtual {v0, v2}, Lcom/motorola/CameraF/View/CameraShutterRender;->SetRunning(Z)V

    .line 1270
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 1271
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 1272
    const-string v0, "MotoCamera"

    const-string v1, "startShutterAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopPanoramaCapture()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "MotoCamera"

    .line 2260
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v1, "stopPanoramaCapture() - Enter"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->stopPreview()V

    .line 2264
    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mPausing:Z

    if-nez v1, :cond_2

    .line 2266
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v1, "start timeout timer for PANORAMA_PICTURE_CALLBACK"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2272
    :cond_2
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    if-eqz v1, :cond_3

    .line 2273
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama;->stopCapture()V

    .line 2275
    :cond_3
    iget v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I

    iput v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I

    .line 2276
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->reset()V

    .line 2277
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->setVisibility(I)V

    .line 2278
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1, v5}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideControllerPanel(Z)V

    .line 2279
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1, v5}, Lcom/motorola/CameraF/View/Control/OnScreenController;->changeCaptureResource(I)V

    .line 2280
    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mPausing:Z

    if-nez v1, :cond_5

    .line 2282
    :try_start_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 2283
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2289
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2290
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2291
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2292
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2295
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsStitching:Z

    .line 2297
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    const-string v1, "MotoCamera"

    const-string v1, "stopPanoramaCapture() - Exit"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :cond_6
    return-void

    .line 2284
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2285
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/CameraF/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;

    .line 2286
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    const-string v1, "MotoCamera"

    .line 1874
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "stopPreview() - Enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    if-eqz v0, :cond_2

    .line 1878
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v0, "stopPreview() - we are previewing and need to stop, call cameradevice.stopPreview()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1882
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    .line 1883
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamera"

    const-string v0, "stopPreview() - Exit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :cond_3
    return-void
.end method

.method private stopShutterAnim()V
    .locals 3

    .prologue
    const-string v2, "MotoCamera"

    .line 1277
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isMultishotMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    const-string v0, "MotoCamera"

    const-string v0, "w20919 stopShutterAnim"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1281
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 1282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera;->bGLSurfaceViewPlaying:Z

    .line 1283
    const-string v0, "MotoCamera"

    const-string v0, "w20919 openGL pause"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateFocusIndicator()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    const-string v5, "MotoCamera"

    .line 2471
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v1, "updateFocusIndicator() - Enter"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_0
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    if-eqz v1, :cond_c

    .line 2475
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v1, "updateFocusIndicator() - DYNAMIC_REGION_FOCUS"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    if-nez v1, :cond_3

    .line 2477
    const-string v1, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDrawFocusView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    :cond_2
    :goto_0
    return-void

    .line 2481
    :cond_3
    iget v1, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-gt v1, v2, :cond_5

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->isAdjusting()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInfiniteFocus()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v1

    if-ne v1, v2, :cond_7

    .line 2484
    :cond_5
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v1, v3}, Lcom/motorola/CameraF/View/FocusView;->setVisibility(I)V

    .line 2553
    :cond_6
    :goto_1
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamera"

    const-string v1, "updateFocusIndicator() - Exit"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2486
    :cond_7
    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mFaceTracking:Z

    if-ne v1, v2, :cond_9

    .line 2487
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    if-nez v1, :cond_8

    .line 2488
    const-string v1, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFaceTracker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2491
    :cond_8
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->getFaceDetectAreas()Ljava/util/ArrayList;

    move-result-object v0

    .line 2492
    .local v0, foundFaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    const-string v1, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FACE_TRACK mode getting faces: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    if-eqz v0, :cond_6

    .line 2494
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    invoke-virtual {v1, v0}, Lcom/motorola/CameraF/View/FaceTrackingView;->setFocusAreas(Ljava/util/ArrayList;)V

    .line 2495
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    iget-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/View/FaceTrackingView;->updateFocusAreas(Z)V

    goto :goto_1

    .line 2499
    .end local v0           #foundFaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_9
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_a

    const-string v1, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in updateFocusIndicator, mDrawFocusView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    :cond_a
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_b

    const-string v1, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in updateFocusIndicator, mIsFocused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " focusViewSelected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/CameraF/Camera;->focusViewSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    :cond_b
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v1, v4}, Lcom/motorola/CameraF/View/FocusView;->setVisibility(I)V

    .line 2502
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    iget-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    iget-boolean v3, p0, Lcom/motorola/CameraF/Camera;->focusViewSelected:Z

    iget-boolean v4, p0, Lcom/motorola/CameraF/Camera;->mIsFocusFail:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/CameraF/View/FocusView;->updateFocusArea(ZZZ)V

    goto/16 :goto_1

    .line 2505
    :cond_c
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2507
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_d

    .line 2508
    const-string v1, "MotoCamera"

    const-string v1, "updateFocusIndicator() - AUTOFOCUS"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    :cond_d
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    if-nez v1, :cond_e

    .line 2510
    const-string v1, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFocusView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2514
    :cond_e
    iget v1, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-gt v1, v2, :cond_10

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->isAdjusting()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInfiniteFocus()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v1

    if-eq v1, v2, :cond_10

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mFaceTracking:Z

    if-ne v1, v2, :cond_11

    .line 2517
    :cond_10
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2519
    :cond_11
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isFaceTrackingOn()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 2521
    :cond_12
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    if-nez v1, :cond_13

    .line 2522
    const-string v1, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFaceTracker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2525
    :cond_13
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->getFaceDetectAreas()Ljava/util/ArrayList;

    move-result-object v0

    .line 2526
    .restart local v0       #foundFaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    const-string v1, "MotoCamera"

    const-string v1, "FACE_TRACK mode getting faces:"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    if-eqz v0, :cond_6

    .line 2528
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    invoke-virtual {v1, v0}, Lcom/motorola/CameraF/View/FaceTrackingView;->setFocusAreas(Ljava/util/ArrayList;)V

    .line 2529
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    iget-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/View/FaceTrackingView;->updateFocusAreas(Z)V

    .line 2530
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2534
    .end local v0           #foundFaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_14
    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    if-eqz v1, :cond_16

    .line 2535
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFocusd:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_15

    .line 2536
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/Camera;->mFocusd:Landroid/graphics/drawable/Drawable;

    .line 2537
    :cond_15
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mFocusd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2544
    :goto_2
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2540
    :cond_16
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFocus:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_17

    .line 2541
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/Camera;->mFocus:Landroid/graphics/drawable/Drawable;

    .line 2542
    :cond_17
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mFocus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 2548
    :cond_18
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_19

    const-string v1, "MotoCamera"

    const-string v1, "updateFocusIndicator() - FIXED FOCUS"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    :cond_19
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2550
    :cond_1a
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v1, v6}, Lcom/motorola/CameraF/View/FocusView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateRemainCount()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "MotoCamera"

    .line 5873
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamera"

    const-string v2, "updateRemainCount() - Enter"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5876
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 5878
    :cond_1
    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    .line 5886
    :goto_0
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5888
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentPanShotRes()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/CameraF/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/motorola/CameraF/Camera;->mPicturesRemaining:I

    .line 5896
    :goto_1
    invoke-virtual {p0, v5}, Lcom/motorola/CameraF/Camera;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "camera_image_counter"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 5897
    .local v1, toShowCounter:I
    if-eqz v1, :cond_6

    .line 5899
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/CameraF/CameraGlobalTools;->getImageCount(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/motorola/CameraF/Camera;->mImageCount:I

    .line 5900
    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/motorola/CameraF/Camera;->mImageCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/CameraF/Camera;->mPicturesRemaining:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateRemainText(Ljava/lang/String;Z)V

    .line 5907
    :goto_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 5908
    .local v0, state:Ljava/lang/String;
    iget v2, p0, Lcom/motorola/CameraF/Camera;->mPicturesRemaining:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string v2, "bad_removal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5911
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->showStorageToast()V

    .line 5914
    :cond_2
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_3

    const-string v2, "MotoCamera"

    const-string v2, "updateRemainCount() - Exit"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5915
    :cond_3
    return-void

    .line 5882
    .end local v0           #state:Ljava/lang/String;
    .end local v1           #toShowCounter:I
    :cond_4
    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRemainText()V

    goto :goto_0

    .line 5893
    :cond_5
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/CameraF/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/motorola/CameraF/Camera;->mPicturesRemaining:I

    goto :goto_1

    .line 5904
    .restart local v1       #toShowCounter:I
    :cond_6
    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    iget v3, p0, Lcom/motorola/CameraF/Camera;->mPicturesRemaining:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateRemainText(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method private updateScenesEffects()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "face-detect-areas"

    const-string v6, "MotoCamera"

    .line 3277
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v1, "updateScenesEffects() - Enter"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v0

    .line 3281
    .local v0, sceneMode:I
    sget-object v1, Lcom/motorola/CameraF/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3282
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 3283
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lcom/motorola/CameraF/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3284
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lcom/motorola/CameraF/CameraGlobalType;->focusSetting:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3285
    iput v4, p0, Lcom/motorola/CameraF/Camera;->mFocusMode:I

    .line 3302
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "face-detect-areas"

    invoke-virtual {v1, v7}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3303
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "mot-face-detect-areas"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3305
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3307
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isMultishotMode()Z

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v1

    if-ne v1, v4, :cond_7

    .line 3309
    :cond_2
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    .line 3326
    :goto_1
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 3329
    :cond_3
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3332
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3335
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "face-detect-areas"

    invoke-virtual {v1, v7}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3336
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "mot-face-detect-areas"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3339
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->updateEffects()V

    .line 3341
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoCamera"

    const-string v1, "updateScenesEffects() - Exit"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    :cond_4
    return-void

    .line 3288
    :cond_5
    iget v1, p0, Lcom/motorola/CameraF/Camera;->mFocusMode:I

    if-eqz v1, :cond_6

    .line 3289
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lcom/motorola/CameraF/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3290
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lcom/motorola/CameraF/CameraGlobalType;->focusSetting:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3291
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3293
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lcom/motorola/CameraF/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3294
    iput v3, p0, Lcom/motorola/CameraF/Camera;->mFocusMode:I

    goto/16 :goto_0

    .line 3296
    :cond_6
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lcom/motorola/CameraF/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3313
    :cond_7
    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    if-eq v0, v5, :cond_8

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 3315
    :cond_8
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    goto :goto_1

    .line 3317
    :cond_9
    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 3319
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    goto/16 :goto_1

    .line 3323
    :cond_a
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    goto/16 :goto_1
.end method

.method private writeTagToDB(Ljava/lang/Integer;)V
    .locals 13
    .parameter "mediaID"

    .prologue
    .line 5919
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getTagsListForDB()Ljava/util/List;

    move-result-object v9

    .line 5921
    .local v9, mTags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_1

    .line 5976
    :cond_0
    :goto_0
    return-void

    .line 5924
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 5925
    .local v10, size:I
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 5926
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTags size is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5928
    :cond_2
    if-eqz v10, :cond_0

    .line 5930
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v10, :cond_0

    .line 5932
    const/4 v6, 0x0

    .line 5933
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;

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

    .line 5937
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 5940
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5941
    const/4 v6, 0x0

    .line 5943
    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 5944
    .local v11, tagValues:Landroid/content/ContentValues;
    const-string v1, "_data"

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5946
    :try_start_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt$Tag;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5951
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt$Tag;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5952
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;

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

    .line 5957
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

    .line 5958
    new-instance v12, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 5960
    .local v12, uriValues:Landroid/content/ContentValues;
    const-string v0, "media_type"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5961
    const-string v0, "media_id"

    invoke-virtual {v12, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5962
    const-string v0, "keyword_id"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5964
    :try_start_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt$Association;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5968
    :goto_2
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt$Association;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5971
    .end local v12           #uriValues:Landroid/content/ContentValues;
    :cond_4
    if-eqz v6, :cond_5

    .line 5972
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5930
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 5947
    .restart local v11       #tagValues:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 5948
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MotoCamera"

    const-string v1, "writeTagToDB:insert failed; return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5965
    .end local v7           #e:Ljava/lang/Exception;
    .end local v11           #tagValues:Landroid/content/ContentValues;
    .restart local v12       #uriValues:Landroid/content/ContentValues;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 5966
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v0, "MotoCamera"

    const-string v1, "writeTagToDB:insert to Association db failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private zoomTo(I)V
    .locals 2
    .parameter "zoom"

    .prologue
    .line 5981
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v0, :cond_2

    .line 5983
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 6000
    :cond_0
    :goto_0
    return-void

    .line 5988
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    goto :goto_0

    .line 5992
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 5997
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 5998
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method


# virtual methods
.method public disableSmileSelfPortrait()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "MotoCamera"

    .line 2334
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 2336
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "disable selfPortrait timer"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2338
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 2339
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isFaceTrackingOn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2340
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v0, "DisableSmileSelfPortrait Face Tracking pref is ON"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    :cond_1
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->enableFaceTracking()V

    .line 2347
    :goto_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    if-eqz v0, :cond_3

    .line 2348
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isFaceTrackingOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2349
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2350
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2353
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/FaceTrackingView;->setVisibility(I)V

    .line 2358
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 2360
    :cond_4
    return-void

    .line 2344
    :cond_5
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    const-string v0, "MotoCamera"

    const-string v0, "DisableSmileSelfPortrait Face Tracking pref is OFF"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    :cond_6
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->disableFaceTracking()V

    goto :goto_0

    .line 2351
    :cond_7
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    if-eqz v0, :cond_2

    .line 2352
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v0, v2}, Lcom/motorola/CameraF/View/FocusView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v6, "MotoCamera"

    .line 4961
    iget-object v4, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 4963
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    .line 4964
    const-string v4, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult() - Enter.  requestCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : resultCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4967
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4991
    :goto_0
    return-void

    .line 4969
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4970
    .local v2, intent:Landroid/content/Intent;
    if-eqz p3, :cond_1

    .line 4971
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4972
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 4973
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4976
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0, p2, v2}, Lcom/motorola/CameraF/Camera;->setResult(ILandroid/content/Intent;)V

    .line 4977
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->finish()V

    .line 4979
    const-string v4, "crop-temp"

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 4982
    .local v3, path:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4984
    :catch_0
    move-exception v0

    .line 4986
    .local v0, e:Ljava/lang/SecurityException;
    const-string v4, "MotoCamera"

    const-string v4, "Security exception deleting file!"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4967
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 5689
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mStoreThread:Ljava/lang/Thread;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mStoreThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5691
    :try_start_0
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mStoreThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5695
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 5817
    :goto_1
    :pswitch_0
    return-void

    .line 5692
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 5693
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 5698
    .end local v2           #e:Ljava/lang/InterruptedException;
    :pswitch_1
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-virtual {v6}, Lcom/motorola/CameraF/Camera$ImageCapture;->getLastCaptureUri()Landroid/net/Uri;

    move-result-object v5

    .line 5702
    .local v5, u:Landroid/net/Uri;
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.kodak.kpt.ACTION_KPT"

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5703
    .local v3, intent:Landroid/content/Intent;
    const/4 v6, 0x5

    invoke-virtual {p0, v3, v6}, Lcom/motorola/CameraF/Camera;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 5705
    .end local v3           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 5706
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "MotoCamera"

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5713
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v5           #u:Landroid/net/Uri;
    :pswitch_2
    invoke-virtual {p1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5714
    move-object v1, p1

    .line 5715
    .local v1, deleteButton:Landroid/view/View;
    new-instance v4, Lcom/motorola/CameraF/Camera$6;

    invoke-direct {v4, p0}, Lcom/motorola/CameraF/Camera$6;-><init>(Lcom/motorola/CameraF/Camera;)V

    .line 5743
    .local v4, okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/motorola/CameraF/Camera$7;

    invoke-direct {v0, p0, v1}, Lcom/motorola/CameraF/Camera$7;-><init>(Lcom/motorola/CameraF/Camera;Landroid/view/View;)V

    .line 5751
    .local v0, cancelButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/CameraF/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 5752
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    const v7, 0x108003c

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 5753
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0024

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 5754
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0033

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5756
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    const/4 v7, -0x3

    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0027

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 5757
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    const/4 v7, -0x1

    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0028

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 5758
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 5762
    .end local v0           #cancelButtonListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v1           #deleteButton:Landroid/view/View;
    .end local v4           #okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    :pswitch_3
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5763
    new-instance v6, Lcom/motorola/CameraF/Camera$8;

    invoke-direct {v6, p0}, Lcom/motorola/CameraF/Camera$8;-><init>(Lcom/motorola/CameraF/Camera;)V

    invoke-direct {p0, v6}, Lcom/motorola/CameraF/Camera;->postAfterKeep(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 5780
    :pswitch_4
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5781
    new-instance v6, Lcom/motorola/CameraF/Camera$9;

    invoke-direct {v6, p0}, Lcom/motorola/CameraF/Camera$9;-><init>(Lcom/motorola/CameraF/Camera;)V

    invoke-direct {p0, v6}, Lcom/motorola/CameraF/Camera;->postAfterKeep(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 5795
    :pswitch_5
    invoke-virtual {p1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5797
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-virtual {v6}, Lcom/motorola/CameraF/Camera$ImageCapture;->getLastCaptureUri()Landroid/net/Uri;

    move-result-object v5

    .line 5798
    .restart local v5       #u:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.motorola.CameraF.ONLINE_ALBUM_UPLOAD"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5799
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "image/*"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5800
    const/4 v6, 0x4

    invoke-virtual {p0, v3, v6}, Lcom/motorola/CameraF/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 5804
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #u:Landroid/net/Uri;
    :pswitch_6
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->selectPhoto()Z

    goto/16 :goto_1

    .line 5808
    :pswitch_7
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5809
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 5813
    :pswitch_8
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5814
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->cancelPhoto()Z

    goto/16 :goto_1

    .line 5695
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0070
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/16 v5, 0x2c

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v6, "MotoCamera"

    .line 1774
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0, p0, v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 1776
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

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

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

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

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v2, :cond_4

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v3, :cond_4

    sget-boolean v0, Lcom/motorola/CameraF/Camera;->mIsRotator:Z

    if-eqz v0, :cond_4

    .line 1781
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mIsRotatorClosed:Z

    if-nez v0, :cond_2

    .line 1782
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I

    iget v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I

    if-ge v0, v1, :cond_3

    .line 1788
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1790
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->stopPanoramaCapture()V

    .line 1794
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mIsRotatorClosed:Z

    .line 1811
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1812
    return-void

    .line 1792
    :cond_3
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1796
    :cond_4
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mIsRotatorClosed:Z

    if-ne v0, v2, :cond_5

    .line 1797
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I

    iget v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I

    if-ge v0, v1, :cond_5

    .line 1803
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1805
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->stopPanoramaCapture()V

    .line 1808
    :cond_5
    iput-boolean v4, p0, Lcom/motorola/CameraF/Camera;->mIsRotatorClosed:Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    const v14, 0x7f0b007a

    const/4 v13, 0x0

    const/4 v11, 0x1

    const-string v12, "MotoCamera"

    .line 937
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 939
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_0

    const-string v9, "MotoCamera"

    const-string v9, "onCreate() - Enter"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_0
    iget-object v9, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    check-cast v9, Lcom/motorola/CameraF/Camera$MainHandler;

    invoke-virtual {v9, p0}, Lcom/motorola/CameraF/Camera$MainHandler;->setActivityReference(Landroid/app/Activity;)V

    .line 945
    const v9, 0x7f030012

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camera;->setContentView(I)V

    .line 948
    const v9, 0x7f0e005b

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/motorola/CameraF/View/CameraView;

    iput-object v9, p0, Lcom/motorola/CameraF/Camera;->mCameraView:Lcom/motorola/CameraF/View/CameraView;

    .line 951
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isCamSettingInit()Z

    move-result v9

    if-nez v9, :cond_1

    .line 953
    invoke-static {p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->initCamSetting(Landroid/content/Context;)V

    .line 956
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CameraUtility;->getInstance()Lcom/motorola/CameraF/CameraUtility;

    move-result-object v9

    iput-object v9, p0, Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    .line 958
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    iput-object v9, p0, Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;

    .line 961
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isImageCaptureIntent()Z

    move-result v9

    iput-boolean v9, p0, Lcom/motorola/CameraF/Camera;->mIsImageCaptureIntent:Z

    .line 962
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    iput-object v9, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    .line 964
    iget-object v9, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v9, p0, v13}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 965
    iget-object v9, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    iget-boolean v10, p0, Lcom/motorola/CameraF/Camera;->mIsImageCaptureIntent:Z

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setServiceMode(Z)V

    .line 968
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/motorola/CameraF/Camera$1;

    invoke-direct {v9, p0}, Lcom/motorola/CameraF/Camera$1;-><init>(Lcom/motorola/CameraF/Camera;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 976
    .local v8, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 977
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_4

    .line 978
    const-string v9, "Mode"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 979
    .local v7, mode:I
    iget-object v9, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v9, v7}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 985
    .end local v7           #mode:I
    :goto_0
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 988
    iget-object v9, p0, Lcom/motorola/CameraF/Camera;->mCameraView:Lcom/motorola/CameraF/View/CameraView;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    .line 989
    .local v4, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v4, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 990
    const/4 v9, 0x3

    invoke-interface {v4, v9}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 993
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 996
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f0e005a

    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/motorola/CameraF/View/CameraContentView;

    iput-object v9, p0, Lcom/motorola/CameraF/Camera;->mMain:Lcom/motorola/CameraF/View/CameraContentView;

    .line 997
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mMain:Lcom/motorola/CameraF/View/CameraContentView;

    .line 1002
    .local v6, main:Lcom/motorola/CameraF/View/CameraContentView;
    :try_start_0
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-ne v9, v11, :cond_5

    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    if-nez v9, :cond_5

    .line 1004
    const v9, 0x7f03000f

    invoke-virtual {v5, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/motorola/CameraF/View/CameraContentView;

    move-object v6, v0

    .line 1020
    :goto_1
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-ne v9, v11, :cond_7

    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    if-nez v9, :cond_7

    .line 1022
    const v9, 0x7f0e002e

    invoke-virtual {v6, v9}, Lcom/motorola/CameraF/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    iput-object v9, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :goto_2
    :try_start_1
    iget-object v9, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->setParams(Landroid/os/Handler;)V

    .line 1047
    iget-object v9, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 1049
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v9

    if-nez v9, :cond_9

    .line 1050
    iget-object v9, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showZoomControlSet()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1066
    :goto_3
    :try_start_2
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_2

    const-string v9, "MotoCamera"

    const-string v10, "onCreate() - joining startPreviewThread"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1075
    :goto_4
    iget-object v9, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 1077
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_3

    const-string v9, "MotoCamera"

    const-string v9, "onCreate() - Exit"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_3
    :goto_5
    return-void

    .line 981
    .end local v4           #holder:Landroid/view/SurfaceHolder;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #main:Lcom/motorola/CameraF/View/CameraContentView;
    :cond_4
    iget-object v9, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v9, v13}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    goto/16 :goto_0

    .line 1007
    .restart local v4       #holder:Landroid/view/SurfaceHolder;
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    .restart local v6       #main:Lcom/motorola/CameraF/View/CameraContentView;
    :cond_5
    :try_start_3
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-ne v9, v11, :cond_6

    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    if-ne v9, v11, :cond_6

    .line 1009
    const v9, 0x7f030011

    invoke-virtual {v5, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/motorola/CameraF/View/CameraContentView;

    move-object v6, v0

    goto :goto_1

    .line 1014
    :cond_6
    const v9, 0x7f030010

    invoke-virtual {v5, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/motorola/CameraF/View/CameraContentView;

    move-object v6, v0

    goto :goto_1

    .line 1024
    :cond_7
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-ne v9, v11, :cond_8

    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    if-ne v9, v11, :cond_8

    .line 1026
    const v9, 0x7f0e002e

    invoke-virtual {v6, v9}, Lcom/motorola/CameraF/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    iput-object v9, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    :try_end_3
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1033
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 1036
    .local v1, e:Landroid/view/InflateException;
    const-string v9, "MotoCamera"

    const-string v9, "onCreate() - InflateException!"

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-virtual {v1}, Landroid/view/InflateException;->printStackTrace()V

    .line 1038
    invoke-virtual {p0, v14}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->finish()V

    goto :goto_5

    .line 1030
    .end local v1           #e:Landroid/view/InflateException;
    :cond_8
    const v9, 0x7f0e002e

    :try_start_4
    invoke-virtual {v6, v9}, Lcom/motorola/CameraF/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;

    iput-object v9, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    :try_end_4
    .catch Landroid/view/InflateException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 1053
    :cond_9
    :try_start_5
    iget-object v9, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideZoomControlSet()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 1055
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 1056
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v9, "MotoCamera"

    const-string v9, "onCreate() - InflateException!"

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1058
    invoke-virtual {p0, v14}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->finish()V

    goto :goto_5

    .line 1069
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 1071
    .local v2, exception:Ljava/lang/InterruptedException;
    const-string v9, "MotoCamera"

    const-string v9, "onCreate() - failed to join startPreviewThread"

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 1620
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

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

    .line 1622
    :cond_0
    const/4 v0, 0x0

    .line 1624
    .local v0, myDialog:Lcom/motorola/CameraF/CameraDialog;
    new-instance v0, Lcom/motorola/CameraF/CameraDialog;

    .end local v0           #myDialog:Lcom/motorola/CameraF/CameraDialog;
    iget-object v3, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-object v1, p0

    move v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/CameraF/CameraDialog;-><init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/motorola/CameraF/View/Control/OnScreenController;Lcom/motorola/CameraF/CameraDialog$IDialogListener;)V

    .line 1626
    .restart local v0       #myDialog:Lcom/motorola/CameraF/CameraDialog;
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 294
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 297
    :cond_0
    const/4 v1, 0x0

    .line 305
    :goto_0
    return v1

    .line 300
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 302
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 303
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    move v1, v2

    .line 305
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1609
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "onDestroy() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mLocUtil:Lcom/motorola/CameraF/LocUtility;

    .line 1613
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0, p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->resetContext(Landroid/content/Context;)V

    .line 1614
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1615
    return-void
.end method

.method public onDialogCreate()V
    .locals 2

    .prologue
    .line 1636
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1637
    const-string v0, "MotoCamera"

    const-string v1, "onDialogCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mMenuOpened:Z

    .line 1639
    return-void
.end method

.method public onDialogDismiss()V
    .locals 2

    .prologue
    .line 1630
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1631
    const-string v0, "MotoCamera"

    const-string v1, "onDialogDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mMenuOpened:Z

    .line 1633
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x1

    const-string v5, "MotoCamera"

    .line 5262
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown() - Enter keyCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isFinshing(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mstatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5265
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 5388
    :goto_0
    return v1

    .line 5268
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 5269
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 5272
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 5275
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_2

    .line 5276
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 5279
    :cond_2
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mStoreThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mStoreThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5281
    :try_start_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mStoreThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5287
    :cond_3
    :goto_1
    sparse-switch p1, :sswitch_data_0

    move v1, v7

    .line 5388
    goto :goto_0

    .line 5282
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 5283
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 5289
    .end local v0           #e:Ljava/lang/InterruptedException;
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v7

    goto :goto_0

    .line 5292
    :cond_4
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    if-ne v1, v7, :cond_5

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterAnimation()Z

    move-result v1

    if-ne v1, v7, :cond_5

    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->stopShutterAnim()V

    .line 5294
    :cond_5
    iget v1, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-ne v1, v4, :cond_6

    move v1, v7

    .line 5295
    goto :goto_0

    .line 5298
    :cond_6
    iget v1, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v1

    if-nez v1, :cond_8

    .line 5301
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    .line 5303
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5306
    :cond_7
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5307
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v1, v7

    .line 5308
    goto :goto_0

    .line 5309
    :cond_8
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->isAdjusting()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5310
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1, v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideStatusSet(Z)V

    .line 5311
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    .line 5313
    :goto_2
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->updateFocusIndicator()V

    .line 5314
    const v1, 0x7f0e0031

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    move v1, v7

    .line 5315
    goto/16 :goto_0

    .line 5312
    :cond_9
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRemainText()V

    goto :goto_2

    .line 5316
    :cond_a
    iget v1, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-ne v1, v7, :cond_b

    .line 5317
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_b

    .line 5318
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 5319
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->finish()V

    move v1, v7

    .line 5320
    goto/16 :goto_0

    .line 5323
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 5325
    :sswitch_1
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_c

    const-string v1, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown() - keycode_focus event.getRepeatCount() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5327
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_d

    move v1, v7

    goto/16 :goto_0

    .line 5328
    :cond_d
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_e

    const-string v1, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown() - keycode_focus mstatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5331
    :cond_e
    iget v1, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-eq v1, v4, :cond_f

    .line 5332
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1, v7}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideControllerPanel(Z)V

    .line 5333
    :cond_f
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->onScreenCaptureFocus()V

    move v1, v7

    .line 5335
    goto/16 :goto_0

    .line 5338
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v7

    .line 5339
    goto/16 :goto_0

    .line 5341
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 5343
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_11

    move v1, v7

    goto/16 :goto_0

    .line 5344
    :cond_11
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->onScreenCaptureDown()V

    move v1, v7

    .line 5346
    goto/16 :goto_0

    .line 5348
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_14

    iget v1, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-ne v1, v7, :cond_14

    .line 5350
    iget v1, p0, Lcom/motorola/CameraF/Camera;->mPicturesRemaining:I

    if-ge v1, v7, :cond_12

    .line 5351
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->showStorageToast()V

    move v1, v7

    .line 5352
    goto/16 :goto_0

    .line 5354
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/motorola/CameraF/Camera;->mTime2Idle:J

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_13

    move v1, v7

    .line 5355
    goto/16 :goto_0

    .line 5357
    :cond_13
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1, v7}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideControllerPanel(Z)V

    .line 5358
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera;->checkAndSnap(I)V

    :cond_14
    move v1, v7

    .line 5360
    goto/16 :goto_0

    .line 5362
    :sswitch_5
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v1

    if-nez v1, :cond_15

    .line 5363
    sget-boolean v1, Lcom/motorola/CameraF/Camera;->mIsRotator:Z

    if-eqz v1, :cond_16

    .line 5364
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/CameraF/Camera;->changeZoom(Ljava/lang/Boolean;)V

    :cond_15
    :goto_3
    move v1, v7

    .line 5371
    goto/16 :goto_0

    .line 5367
    :cond_16
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/CameraF/Camera;->changeZoom(Ljava/lang/Boolean;)V

    goto :goto_3

    .line 5373
    :sswitch_6
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v1

    if-nez v1, :cond_17

    .line 5374
    sget-boolean v1, Lcom/motorola/CameraF/Camera;->mIsRotator:Z

    if-eqz v1, :cond_18

    .line 5375
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/CameraF/Camera;->changeZoom(Ljava/lang/Boolean;)V

    :cond_17
    :goto_4
    move v1, v7

    .line 5383
    goto/16 :goto_0

    .line 5378
    :cond_18
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/CameraF/Camera;->changeZoom(Ljava/lang/Boolean;)V

    goto :goto_4

    .line 5386
    :sswitch_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 5287
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x15 -> :sswitch_7
        0x16 -> :sswitch_7
        0x17 -> :sswitch_4
        0x18 -> :sswitch_6
        0x19 -> :sswitch_5
        0x1b -> :sswitch_3
        0x50 -> :sswitch_1
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 5229
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5230
    const/4 v0, 0x0

    .line 5256
    :goto_0
    return v0

    .line 5232
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 5233
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 5235
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5237
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera:onKeyUp: + keyCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5239
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 5240
    sparse-switch p1, :sswitch_data_0

    .line 5256
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 5244
    :sswitch_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->onScreenCaptureUp()V

    goto :goto_1

    .line 5250
    :sswitch_1
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v0, :cond_2

    .line 5251
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto :goto_1

    .line 5240
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 2604
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2606
    const-string v0, "MotoCamera"

    const-string v1, "onLowMemory() Called!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v7, "orientation"

    .line 431
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 432
    const-string v2, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected() - Enter : (item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 472
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mMenuOpened:Z

    move v2, v5

    .line 473
    :goto_1
    return v2

    .line 437
    :pswitch_1
    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v2, v5

    .line 438
    goto :goto_1

    .line 440
    :pswitch_2
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setLastCameraMode(I)V

    .line 441
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getLastCamcorderMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 442
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->launchCamcorder()V

    goto :goto_0

    .line 445
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 446
    .local v1, tagintent:Landroid/content/Intent;
    const-class v2, Lcom/motorola/CameraF/TagsSetting;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 447
    const-string v2, "orientation"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camera;->startActivity(Landroid/content/Intent;)V

    .line 449
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setReturnFromTag(Z)V

    goto :goto_0

    .line 452
    .end local v1           #tagintent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 453
    .local v0, settingintent:Landroid/content/Intent;
    const-class v2, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 454
    const-string v2, "orientation"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 458
    .end local v0           #settingintent:Landroid/content/Intent;
    :pswitch_5
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->enableMultiShot()V

    goto :goto_0

    .line 461
    :pswitch_6
    const v2, 0x7f0b00f9

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 462
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->enableSmileSelfPortrait()V

    goto :goto_0

    .line 465
    :pswitch_7
    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 468
    :pswitch_8
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->enableSingleShot()V

    goto :goto_0

    .line 435
    :pswitch_data_0
    .packed-switch 0x7f0e00b2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 412
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 413
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 414
    const-string v0, "MotoCamera"

    const-string v1, "onOptionsMenuClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mMenuOpened:Z

    .line 419
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const-string v2, "MotoCamera"

    .line 1491
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "onPause() - Enter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 1496
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterAnimation()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1498
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->removeShutterView()V

    .line 1502
    :cond_1
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mPausing:Z

    .line 1505
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->clearFocus()V

    .line 1508
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mLocUtil:Lcom/motorola/CameraF/LocUtility;

    if-eqz v0, :cond_2

    .line 1510
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mLocUtil:Lcom/motorola/CameraF/LocUtility;

    invoke-virtual {v0}, Lcom/motorola/CameraF/LocUtility;->stopReceivingLocationUpdates()V

    .line 1514
    :cond_2
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->stopPreview()V

    .line 1517
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideZoomSet()V

    .line 1520
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1522
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1523
    iput-object v3, p0, Lcom/motorola/CameraF/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 1527
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideSceneDialog()V

    .line 1530
    iget v0, p0, Lcom/motorola/CameraF/Camera;->currentDialog:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_5

    .line 1531
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause: Deleting dialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/CameraF/Camera;->currentDialog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_4
    iget v0, p0, Lcom/motorola/CameraF/Camera;->currentDialog:I

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->removeDialog(I)V

    .line 1535
    :cond_5
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_6

    .line 1537
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1540
    :cond_6
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 1543
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I

    iget v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I

    if-ge v0, v1, :cond_8

    .line 1545
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoCamera"

    const-string v0, "Camera:onPause:PanoramaMode calling stopPanoramaCapture"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_7
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->stopPanoramaCapture()V

    .line 1555
    :cond_8
    :goto_0
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mDidRegister:Z

    if-eqz v0, :cond_9

    .line 1557
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mDidRegister:Z

    .line 1562
    :cond_9
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_a

    .line 1564
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1565
    iput-object v3, p0, Lcom/motorola/CameraF/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 1571
    :cond_a
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->cancelStorageToast()V

    .line 1573
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1574
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->save()V

    .line 1577
    :cond_b
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->interruptThumbnailThread()V

    .line 1581
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->clearMessageQueue()V

    .line 1583
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1585
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_c

    const-string v0, "MotoCamera"

    const-string v0, "onPause() - Exit"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :cond_c
    return-void

    .line 1550
    :cond_d
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->closeCamera()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f0e00b2

    const v5, 0x7f0e00b8

    const v4, 0x7f0e00b9

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 314
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mIsFocusing:Z

    if-eqz v0, :cond_2

    .line 317
    :cond_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 318
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareOptionsMenu mPreviewing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCaptureOnFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsFocusing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mIsFocusing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v3

    .line 406
    :goto_0
    return v0

    .line 323
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 325
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    .line 326
    const-string v0, "MotoCamera"

    const-string v1, "onPrepareOptionsMenu() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_3
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->PANORAMA:Z

    if-eqz v0, :cond_4

    .line 333
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 334
    const v0, 0x7f0e00b3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 335
    const v0, 0x7f0e00b7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 336
    const v0, 0x7f0e00b6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 338
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 341
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 342
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 351
    :cond_4
    :goto_1
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-eqz v0, :cond_5

    .line 352
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureFaceDetectionEnabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureMultishotEnabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featurePanoramaEnabled:Z

    if-nez v0, :cond_7

    .line 354
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 404
    :cond_5
    :goto_2
    iput-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mMenuOpened:Z

    move v0, v2

    .line 406
    goto :goto_0

    .line 347
    :cond_6
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 348
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 356
    :cond_7
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureFaceDetectionEnabled:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureMultishotEnabled:Z

    if-nez v0, :cond_9

    .line 358
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 361
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 362
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 367
    :cond_8
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 368
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 371
    :cond_9
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featurePanoramaEnabled:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureMultishotEnabled:Z

    if-nez v0, :cond_b

    .line 373
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 375
    const v0, 0x7f0e00ba

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 376
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 380
    :cond_a
    const v0, 0x7f0e00ba

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 381
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 384
    :cond_b
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featurePanoramaEnabled:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureFaceDetectionEnabled:Z

    if-nez v0, :cond_d

    .line 386
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 388
    const v0, 0x7f0e00bb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 389
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 393
    :cond_c
    const v0, 0x7f0e00bb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 394
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 399
    :cond_d
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 400
    const v0, 0x7f0e00b3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string v5, "MotoCamera"

    .line 1340
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1341
    iput-boolean v3, p0, Lcom/motorola/CameraF/Camera;->mIsFocusing:Z

    .line 1342
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v1, "onResume() - Enter"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 1347
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v1, p0, v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 1348
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setDefaultZoomValue()V

    .line 1351
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isImageCaptureIntent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsImageCaptureIntent:Z

    .line 1352
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mIsImageCaptureIntent:Z

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setServiceMode(Z)V

    .line 1354
    iput-boolean v3, p0, Lcom/motorola/CameraF/Camera;->mPausing:Z

    .line 1355
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1357
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsStitching:Z

    if-eqz v1, :cond_9

    .line 1361
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v1, "----OnResume, still stitching panorama-----"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1363
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1364
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1365
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1461
    :cond_2
    :goto_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPickIntent()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setServiceMode(Z)V

    .line 1462
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->mLastIsService:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isReturnFromTag()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1464
    :cond_3
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->load()V

    .line 1467
    :cond_4
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v1

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-ne v6, v1, :cond_7

    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isMultishotMode()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1469
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isFaceTrackingOn()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    .line 1471
    :cond_5
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    const-string v1, "MotoCamera"

    const-string v1, "OnResume Face Tracking pref is ON"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_6
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->enableFaceTracking()V

    .line 1481
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->interruptThumbnailThread()V

    .line 1482
    new-instance v1, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    invoke-direct {v1, p0, v7}, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;-><init>(Lcom/motorola/CameraF/Camera;[B)V

    iput-object v1, p0, Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    .line 1483
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    invoke-virtual {v1}, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->start()V

    .line 1485
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_8

    const-string v1, "MotoCamera"

    const-string v1, "onResume() - Exit"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_8
    :goto_2
    return-void

    .line 1370
    :cond_9
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPostText:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPostText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1372
    :cond_a
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    .line 1373
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1374
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1376
    :cond_b
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1378
    :cond_c
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1380
    :cond_d
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1383
    :cond_e
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    if-eqz v1, :cond_f

    .line 1385
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-virtual {v1}, Lcom/motorola/CameraF/Camera$ImageCapture;->clearLastData()V

    .line 1386
    iput-object v7, p0, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    .line 1390
    :cond_f
    new-instance v1, Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-direct {v1, p0}, Lcom/motorola/CameraF/Camera$ImageCapture;-><init>(Lcom/motorola/CameraF/Camera;)V

    iput-object v1, p0, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    .line 1393
    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    if-nez v1, :cond_11

    .line 1395
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_10

    const-string v1, "MotoCamera"

    const-string v1, "onResume() - preview not running, call startPreview()"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_10
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->startPreview()V

    .line 1399
    :cond_11
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_12

    .line 1400
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_8

    const-string v1, "MotoCamera"

    const-string v1, "onResume() - startPreview failed, just return"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1404
    :cond_12
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_13

    const-string v1, "MotoCamera"

    const-string v1, "onResume() - valid surfaceholder"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_13
    iput v6, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    .line 1410
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_14

    const-string v1, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w20919 onResume() - Enter 111"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_14
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    if-ne v1, v6, :cond_18

    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterAnimation()Z

    move-result v1

    if-ne v6, v1, :cond_18

    .line 1413
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->initShutterView()V

    .line 1420
    :goto_3
    iget-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mFirstTimeInitialized:Z

    if-nez v1, :cond_19

    .line 1422
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_15

    const-string v1, "MotoCamera"

    const-string v1, "onResume() - we haven\'t initialized before, call firstTimeInit()"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_15
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->initializeFirstTime()V

    .line 1437
    :cond_16
    :goto_4
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->initZoomSet()V

    .line 1438
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 1439
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRightSet()V

    .line 1440
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showTopStatusSet()V

    .line 1441
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1, v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 1443
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1444
    .local v0, config:Landroid/content/res/Configuration;
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_17

    .line 1445
    const-string v1, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() - hardKeyboardHidden is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const-string v1, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() - Keyboard is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_17
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v6, :cond_1c

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v1, :cond_1c

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    sget-boolean v1, Lcom/motorola/CameraF/Camera;->mIsRotator:Z

    if-eqz v1, :cond_1c

    .line 1451
    iput-boolean v6, p0, Lcom/motorola/CameraF/Camera;->mIsRotatorClosed:Z

    .line 1453
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1455
    const v1, 0x7f0b001e

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1417
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_18
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->stopShutterAnim()V

    goto/16 :goto_3

    .line 1427
    :cond_19
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1a

    const-string v1, "MotoCamera"

    const-string v1, "onResume() - we have already init\'ed, call secondTimeInit()"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_1a
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->initializeSecondTime()V

    .line 1429
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1431
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1b

    const-string v1, "MotoCamera"

    const-string v1, "On Resume(); Enable Panorama"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_1b
    invoke-direct {p0, v3}, Lcom/motorola/CameraF/Camera;->enablePanorama(Z)V

    goto/16 :goto_4

    .line 1457
    .restart local v0       #config:Landroid/content/res/Configuration;
    :cond_1c
    iput-boolean v3, p0, Lcom/motorola/CameraF/Camera;->mIsRotatorClosed:Z

    goto/16 :goto_0

    .line 1475
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_1d
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1e

    const-string v1, "MotoCamera"

    const-string v1, "OnResume Face Tracking pref is OFF"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_1e
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->disableFaceTracking()V

    goto/16 :goto_1
.end method

.method public onScreenCaptureDown()V
    .locals 5

    .prologue
    const/16 v4, 0x1b

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5403
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-ne v0, v1, :cond_5

    .line 5405
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mPicturesRemaining:I

    if-ge v0, v1, :cond_1

    .line 5407
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->showStorageToast()V

    .line 5449
    :cond_0
    :goto_0
    return-void

    .line 5410
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mIsFocusButtonPressed:Z

    if-eqz v0, :cond_2

    .line 5411
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnShortPress:Z

    .line 5414
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideControllerPanel(Z)V

    .line 5416
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 5418
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFaceDetect:Z

    .line 5419
    invoke-direct {p0, v4}, Lcom/motorola/CameraF/Camera;->checkAndSnap(I)V

    goto :goto_0

    .line 5427
    :cond_3
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    const-string v1, "onKeyDown() - calling checkAndSnap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5428
    :cond_4
    invoke-direct {p0, v4}, Lcom/motorola/CameraF/Camera;->checkAndSnap(I)V

    goto :goto_0

    .line 5432
    :cond_5
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-ne v0, v3, :cond_7

    .line 5434
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 5435
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5436
    :cond_6
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5437
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 5439
    :cond_7
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I

    iget v1, p0, Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I

    if-ge v0, v1, :cond_0

    .line 5445
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5447
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->stopPanoramaCapture()V

    goto :goto_0
.end method

.method public onScreenCaptureFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const-string v2, "MotoCamera"

    .line 5453
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-ne v0, v1, :cond_6

    .line 5455
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mPicturesRemaining:I

    if-ge v0, v1, :cond_1

    .line 5457
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->showStorageToast()V

    .line 5498
    :cond_0
    :goto_0
    return-void

    .line 5462
    :cond_1
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5464
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "onScreenCaptureFocus() - auto focus not supported in panoramic mode"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5468
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5470
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "onScreenCaptureFocus() - auto Focus not supported on this device"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5476
    :cond_3
    iput-boolean v1, p0, Lcom/motorola/CameraF/Camera;->mIsFocusButtonPressed:Z

    .line 5478
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 5480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z

    .line 5483
    :cond_4
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 5485
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    .line 5486
    const-string v0, "MotoCamera"

    const-string v0, "onScreenCaptureFocus() - start autoFocus()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5487
    :cond_5
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->autoFocus()V

    goto :goto_0

    .line 5490
    :cond_6
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-ne v0, v4, :cond_0

    .line 5492
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 5493
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5494
    :cond_7
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5495
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onScreenCaptureUp()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5392
    iget v0, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFaceDetect:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnShortPress:Z

    if-nez v0, :cond_2

    .line 5393
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "----Camera:onKeyUp: clearFocus----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5394
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->clearFocus()V

    .line 5395
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->updateFocusIndicator()V

    .line 5396
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5397
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRemainText()V

    .line 5399
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 5401
    :cond_2
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    const-string v1, "MotoCamera"

    .line 1090
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1092
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "onStart() - Enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v0, "onStart() - Exit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const-string v2, "MotoCamera"

    .line 1591
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "onStop() - Enter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mIsStitching:Z

    if-eqz v0, :cond_2

    .line 1594
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v0, "onStop() - Panorama Still stitching; Cancel"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1596
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->cancelPanoramaCapture()V

    .line 1597
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->closeCamera()V

    .line 1600
    :cond_2
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamera"

    const-string v0, "onStop() - Exit"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1603
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 5506
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_0

    .line 5507
    const-string v6, "MotoCamera"

    const-string v7, "Camera:onTouchEvent:touch event"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5509
    :cond_0
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v6}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 5510
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v6}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 5511
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 5513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5516
    .local v0, action:I
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v6, :cond_1

    .line 5517
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 5675
    :goto_0
    return v6

    .line 5520
    :cond_1
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 5522
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/FocusView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 5524
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 5525
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 5527
    .local v5, y:F
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/FocusView;->getFocusArea()Landroid/graphics/RectF;

    move-result-object v1

    .line 5529
    .local v1, focusRect:Landroid/graphics/RectF;
    invoke-virtual {v1, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/motorola/CameraF/Camera;->mIsFocusButtonPressed:Z

    if-nez v6, :cond_7

    .line 5531
    if-nez v0, :cond_2

    .line 5533
    iget-wide v6, p0, Lcom/motorola/CameraF/Camera;->firstDownTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 5535
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/motorola/CameraF/Camera;->firstDownTime:J

    .line 5546
    :goto_1
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_2

    const-string v6, "MotoCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---checking double tapping 1 ----, firstDownTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/motorola/CameraF/Camera;->firstDownTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " secondDownTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/motorola/CameraF/Camera;->secondDownTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " 2 down duration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/motorola/CameraF/Camera;->secondDownTime:J

    iget-wide v10, p0, Lcom/motorola/CameraF/Camera;->firstDownTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5548
    :cond_2
    const/4 v6, 0x1

    if-ne v0, v6, :cond_7

    .line 5550
    iget-wide v6, p0, Lcom/motorola/CameraF/Camera;->firstDownTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    iget-wide v6, p0, Lcom/motorola/CameraF/Camera;->secondDownTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    .line 5552
    iget-wide v6, p0, Lcom/motorola/CameraF/Camera;->secondDownTime:J

    iget-wide v8, p0, Lcom/motorola/CameraF/Camera;->firstDownTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x384

    cmp-long v6, v6, v8

    if-gez v6, :cond_7

    .line 5554
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 5555
    .local v2, secondUpTime:J
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_3

    const-string v6, "MotoCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---checking double tapping 2----, secondDownTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/motorola/CameraF/Camera;->secondDownTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " secondUpTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " 1 down 1 up duration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/motorola/CameraF/Camera;->secondDownTime:J

    sub-long v8, v2, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5556
    :cond_3
    iget-wide v6, p0, Lcom/motorola/CameraF/Camera;->secondDownTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x384

    cmp-long v6, v6, v8

    if-gez v6, :cond_7

    .line 5558
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/FocusView;->resetFocusArea()V

    .line 5559
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/motorola/CameraF/Camera;->focusViewSelected:Z

    .line 5560
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_4

    const-string v6, "MotoCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "in updateFocusIndicator, mIsFocused = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " focusViewSelected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/motorola/CameraF/Camera;->focusViewSelected:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5561
    :cond_4
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    iget-boolean v7, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    iget-boolean v8, p0, Lcom/motorola/CameraF/Camera;->focusViewSelected:Z

    iget-boolean v9, p0, Lcom/motorola/CameraF/Camera;->mIsFocusFail:Z

    invoke-virtual {v6, v7, v8, v9}, Lcom/motorola/CameraF/View/FocusView;->updateFocusArea(ZZZ)V

    .line 5562
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/motorola/CameraF/Camera;->useHpDefaultFocusConfiguration:Z

    .line 5563
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 5537
    .end local v2           #secondUpTime:J
    :cond_5
    iget-wide v6, p0, Lcom/motorola/CameraF/Camera;->secondDownTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 5539
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/motorola/CameraF/Camera;->secondDownTime:J

    goto/16 :goto_1

    .line 5543
    :cond_6
    iget-wide v6, p0, Lcom/motorola/CameraF/Camera;->secondDownTime:J

    iput-wide v6, p0, Lcom/motorola/CameraF/Camera;->firstDownTime:J

    .line 5544
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/motorola/CameraF/Camera;->secondDownTime:J

    goto/16 :goto_1

    .line 5572
    .end local v1           #focusRect:Landroid/graphics/RectF;
    .end local v4           #x:F
    .end local v5           #y:F
    :cond_7
    if-nez v0, :cond_11

    .line 5574
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mPostText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_a

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v6

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    if-nez v6, :cond_a

    .line 5576
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 5577
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    if-nez v6, :cond_9

    .line 5578
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->initPostPanel()V

    .line 5584
    :goto_2
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_8

    .line 5585
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5586
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mPostText:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5588
    :cond_8
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 5581
    :cond_9
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->setPostOptionsOnClickListener()V

    goto :goto_2

    .line 5590
    :cond_a
    iget v6, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_10

    iget-boolean v6, p0, Lcom/motorola/CameraF/Camera;->mIsFocusButtonPressed:Z

    if-nez v6, :cond_10

    iget-boolean v6, p0, Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v6, :cond_10

    .line 5592
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    if-eqz v6, :cond_f

    .line 5594
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/FocusView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_e

    .line 5596
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 5597
    .restart local v4       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 5598
    .restart local v5       #y:F
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/FocusView;->getFocusArea()Landroid/graphics/RectF;

    move-result-object v1

    .line 5600
    .restart local v1       #focusRect:Landroid/graphics/RectF;
    invoke-virtual {v1, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 5602
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->getVisibility()I

    move-result v6

    if-nez v6, :cond_b

    .line 5604
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideControllerPanel(Z)V

    .line 5606
    :cond_b
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/motorola/CameraF/Camera;->focusViewSelected:Z

    .line 5607
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_c

    const-string v6, "MotoCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "in updateFocusIndicator, mIsFocused = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " focusViewSelected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/motorola/CameraF/Camera;->focusViewSelected:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5608
    :cond_c
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    iget-boolean v7, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    iget-boolean v8, p0, Lcom/motorola/CameraF/Camera;->focusViewSelected:Z

    iget-boolean v9, p0, Lcom/motorola/CameraF/Camera;->mIsFocusFail:Z

    invoke-virtual {v6, v7, v8, v9}, Lcom/motorola/CameraF/View/FocusView;->updateFocusArea(ZZZ)V

    .line 5624
    .end local v1           #focusRect:Landroid/graphics/RectF;
    .end local v4           #x:F
    .end local v5           #y:F
    :goto_3
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 5612
    .restart local v1       #focusRect:Landroid/graphics/RectF;
    .restart local v4       #x:F
    .restart local v5       #y:F
    :cond_d
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->toggleMediaControlsVisibility()V

    goto :goto_3

    .line 5617
    .end local v1           #focusRect:Landroid/graphics/RectF;
    .end local v4           #x:F
    .end local v5           #y:F
    :cond_e
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->toggleMediaControlsVisibility()V

    goto :goto_3

    .line 5622
    :cond_f
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->toggleMediaControlsVisibility()V

    goto :goto_3

    .line 5625
    :cond_10
    iget v6, p0, Lcom/motorola/CameraF/Camera;->mStatus:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11

    .line 5626
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 5630
    :cond_11
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    if-eqz v6, :cond_18

    .line 5632
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/FocusView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_18

    .line 5634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 5635
    .restart local v4       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 5637
    .restart local v5       #y:F
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/FocusView;->getFocusArea()Landroid/graphics/RectF;

    move-result-object v1

    .line 5639
    .restart local v1       #focusRect:Landroid/graphics/RectF;
    const/4 v6, 0x2

    if-ne v0, v6, :cond_16

    iget-boolean v6, p0, Lcom/motorola/CameraF/Camera;->focusViewSelected:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_16

    iget-boolean v6, p0, Lcom/motorola/CameraF/Camera;->mIsFocusButtonPressed:Z

    if-nez v6, :cond_16

    .line 5641
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->getVisibility()I

    move-result v6

    if-nez v6, :cond_12

    .line 5642
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideControllerPanel(Z)V

    .line 5644
    :cond_12
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_13

    const-string v6, "MotoCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-----0-----x = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FocusView.FOCUS_VIEW_WIDTH = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusViewWidth()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FocusView.FOCUS_VIEW_HEIGHT = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusViewHeight()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5646
    :cond_13
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusViewWidth()F

    move-result v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float v6, v4, v6

    iput v6, v1, Landroid/graphics/RectF;->left:F

    .line 5647
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusViewHeight()F

    move-result v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float v6, v5, v6

    iput v6, v1, Landroid/graphics/RectF;->top:F

    .line 5648
    iget v6, v1, Landroid/graphics/RectF;->left:F

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusViewWidth()F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v1, Landroid/graphics/RectF;->right:F

    .line 5649
    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFocusViewHeight()F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v1, Landroid/graphics/RectF;->bottom:F

    .line 5651
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_14

    const-string v6, "MotoCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-----1-----focusRect.left = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " focusRect.top = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " focusRect.right = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " focusRect.bottom = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5653
    :cond_14
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v6, v1}, Lcom/motorola/CameraF/View/FocusView;->setFocusArea(Landroid/graphics/RectF;)V

    .line 5655
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/FocusView;->getFocusArea()Landroid/graphics/RectF;

    move-result-object v1

    .line 5657
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_15

    const-string v6, "MotoCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------2------focusRect.left = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " focusRect.top = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " focusRect.right = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " focusRect.bottom = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5658
    :cond_15
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/motorola/CameraF/Camera;->focusViewSelected:Z

    .line 5659
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    iget-boolean v7, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    iget-boolean v8, p0, Lcom/motorola/CameraF/Camera;->focusViewSelected:Z

    iget-boolean v9, p0, Lcom/motorola/CameraF/Camera;->mIsFocusFail:Z

    invoke-virtual {v6, v7, v8, v9}, Lcom/motorola/CameraF/View/FocusView;->updateFocusArea(ZZZ)V

    .line 5660
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/motorola/CameraF/Camera;->useHpDefaultFocusConfiguration:Z

    .line 5661
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 5662
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 5663
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->rightSetFadeOut()V

    .line 5664
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 5667
    :cond_16
    const/4 v6, 0x1

    if-ne v0, v6, :cond_18

    .line 5668
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/motorola/CameraF/Camera;->focusViewSelected:Z

    .line 5669
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_17

    const-string v6, "MotoCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "in updateFocusIndicator, mIsFocused = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " focusViewSelected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/motorola/CameraF/Camera;->focusViewSelected:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5670
    :cond_17
    iget-object v6, p0, Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    iget-boolean v7, p0, Lcom/motorola/CameraF/Camera;->mIsFocused:Z

    iget-boolean v8, p0, Lcom/motorola/CameraF/Camera;->focusViewSelected:Z

    iget-boolean v9, p0, Lcom/motorola/CameraF/Camera;->mIsFocusFail:Z

    invoke-virtual {v6, v7, v8, v9}, Lcom/motorola/CameraF/View/FocusView;->updateFocusArea(ZZZ)V

    .line 5675
    .end local v1           #focusRect:Landroid/graphics/RectF;
    .end local v4           #x:F
    .end local v5           #y:F
    :cond_18
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 5681
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 5682
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 5683
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5684
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const-string v2, "MotoCamera"

    .line 1816
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged() - Enter - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1820
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v0, "surfaceChanged() - getSurface = null!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :cond_1
    :goto_0
    return-void

    .line 1824
    :cond_2
    iput-object p1, p0, Lcom/motorola/CameraF/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1825
    int-to-float v0, p3

    iput v0, p0, Lcom/motorola/CameraF/Camera;->mSurfaceWidth:F

    .line 1826
    int-to-float v0, p4

    iput v0, p0, Lcom/motorola/CameraF/Camera;->mSurfaceHeight:F

    .line 1828
    iget-object v0, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    .line 1830
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v0, "surfaceChanged() - mCameraDevice = null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1834
    :cond_3
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1836
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    const-string v0, "surfaceChanged() - isCreating, calling setpreviewdisplay()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_4
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1840
    :cond_5
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_6

    .line 1842
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->initializeFirstTime()V

    .line 1849
    :goto_1
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v0, "surfaceChanged() - Exit"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1846
    :cond_6
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->initializeSecondTime()V

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    const-string v1, "MotoCamera"

    .line 1854
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "surfaceCreated() - Enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v0, "surfaceCreated() - Exit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    const-string v1, "MotoCamera"

    .line 1863
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v0, "surfaceDestroyed() - Enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera;->stopPreview()V

    .line 1867
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1869
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v0, "surfaceDestroyed() - Exit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    :cond_1
    return-void
.end method

.method public updateEffects()V
    .locals 4

    .prologue
    .line 3259
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentEffect()I

    move-result v0

    .line 3260
    .local v0, colorEffect:I
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

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

    .line 3261
    :cond_0
    sget-object v1, Lcom/motorola/CameraF/CameraGlobalType;->effectSetting:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3263
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/CameraF/CameraGlobalType;->effectSetting:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3265
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lcom/motorola/CameraF/CameraGlobalType;->effectSetting:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 3266
    iget-object v1, p0, Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3269
    :cond_1
    return-void
.end method
