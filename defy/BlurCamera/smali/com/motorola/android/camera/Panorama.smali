.class public Lcom/motorola/android/camera/Panorama;
.super Ljava/lang/Object;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/camera/Panorama$1;,
        Lcom/motorola/android/camera/Panorama$Parameters;,
        Lcom/motorola/android/camera/Panorama$Size;,
        Lcom/motorola/android/camera/Panorama$EventHandler;,
        Lcom/motorola/android/camera/Panorama$ShutterCallback;,
        Lcom/motorola/android/camera/Panorama$ErrorCallback;,
        Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;,
        Lcom/motorola/android/camera/Panorama$PictureCallback;,
        Lcom/motorola/android/camera/Panorama$PostviewCallback;
    }
.end annotation


# static fields
.field private static final ERROR_CALLBACK:I = 0x4

.field public static final PANORAMA_ERROR_CAMERA_FAIL:I = 0x3

.field public static final PANORAMA_ERROR_CAPTURE_FINISH:I = 0x64

.field public static final PANORAMA_ERROR_OUT_OF_MEMORY:I = 0x2

.field public static final PANORAMA_ERROR_STITCH_ENGINE_FAIL:I = 0x4

.field public static final PANORAMA_ERROR_UNKNOWN:I = 0x1

.field public static final PANORAMA_IMAGE_FORMAT_JPEG:I = 0x2

.field public static final PANORAMA_IMAGE_FORMAT_YUYV422I:I = 0x1

.field private static final PICTURE_CALLBACK:I = 0x2

.field private static final POSTVIEW_CALLBACK:I = 0x0

.field private static final SHUTTER_CALLBACK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Panorama"

.field private static final VF_INFO_CALLBACK:I = 0x3

.field private static mCam:Landroid/hardware/Camera;


# instance fields
.field private mErrorCallback:Lcom/motorola/android/camera/Panorama$ErrorCallback;

.field private mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

.field private mListenerContext:I

.field private mNativeContext:I

.field private mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;

.field private mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;

.field private mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;

.field private mVFInfoCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v1, 0x0

    sput-object v1, Lcom/motorola/android/camera/Panorama;->mCam:Landroid/hardware/Camera;

    .line 397
    :try_start_0
    const-string v1, "panorama_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 400
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "Panorama"

    const-string v2, "WARNING: Could not load libpanorama_jni.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;

    .line 70
    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;

    .line 71
    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mVFInfoCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;

    .line 72
    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;

    .line 73
    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mErrorCallback:Lcom/motorola/android/camera/Panorama$ErrorCallback;

    .line 76
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 77
    new-instance v1, Lcom/motorola/android/camera/Panorama$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/motorola/android/camera/Panorama$EventHandler;-><init>(Lcom/motorola/android/camera/Panorama;Lcom/motorola/android/camera/Panorama;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

    .line 87
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/motorola/android/camera/Panorama;->native_setup(Ljava/lang/Object;)V

    .line 88
    sget-object v1, Lcom/motorola/android/camera/Panorama;->mCam:Landroid/hardware/Camera;

    invoke-direct {p0, v1}, Lcom/motorola/android/camera/Panorama;->native_setCamera(Landroid/hardware/Camera;)V

    .line 89
    return-void

    .line 78
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    new-instance v1, Lcom/motorola/android/camera/Panorama$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/motorola/android/camera/Panorama$EventHandler;-><init>(Lcom/motorola/android/camera/Panorama;Lcom/motorola/android/camera/Panorama;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

    goto :goto_0

    .line 81
    :cond_1
    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$PostviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama;->mVFInfoCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama;->mErrorCallback:Lcom/motorola/android/camera/Panorama$ErrorCallback;

    return-object v0
.end method

.method public static init(Landroid/hardware/Camera;)Lcom/motorola/android/camera/Panorama;
    .locals 1
    .parameter "c"

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 62
    :cond_0
    sput-object p0, Lcom/motorola/android/camera/Panorama;->mCam:Landroid/hardware/Camera;

    .line 63
    new-instance v0, Lcom/motorola/android/camera/Panorama;

    invoke-direct {v0}, Lcom/motorola/android/camera/Panorama;-><init>()V

    goto :goto_0
.end method

.method private final native native_cancelCapture()V
.end method

.method private final native native_enablePausePreview(I)V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_resumePreview()V
.end method

.method private final native native_setCamera(Landroid/hardware/Camera;)V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private final native native_stopCapture()V
.end method

.method private final native native_takePicture()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "pan_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 385
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/camera/Panorama;

    .line 386
    .local v0, c:Lcom/motorola/android/camera/Panorama;
    if-nez v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v2, v0, Lcom/motorola/android/camera/Panorama;->mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

    if-eqz v2, :cond_0

    .line 390
    iget-object v2, v0, Lcom/motorola/android/camera/Panorama;->mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/motorola/android/camera/Panorama$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 391
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Lcom/motorola/android/camera/Panorama;->mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

    invoke-virtual {v2, v1}, Lcom/motorola/android/camera/Panorama$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public final cancelCapture()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_cancelCapture()V

    .line 183
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_release()V

    .line 209
    return-void
.end method

.method public getParameters()Lcom/motorola/android/camera/Panorama$Parameters;
    .locals 5

    .prologue
    .line 106
    new-instance v0, Lcom/motorola/android/camera/Panorama$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/motorola/android/camera/Panorama$Parameters;-><init>(Lcom/motorola/android/camera/Panorama;Lcom/motorola/android/camera/Panorama$1;)V

    .line 107
    .local v0, p:Lcom/motorola/android/camera/Panorama$Parameters;
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, s:Ljava/lang/String;
    const-string v2, "Panorama"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_getParameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v0, v1}, Lcom/motorola/android/camera/Panorama$Parameters;->unflatten(Ljava/lang/String;)V

    .line 110
    return-object v0
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_release()V

    .line 227
    return-void
.end method

.method public final resumePreview()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_resumePreview()V

    .line 170
    return-void
.end method

.method public final setErrorCallback(Lcom/motorola/android/camera/Panorama$ErrorCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/motorola/android/camera/Panorama;->mErrorCallback:Lcom/motorola/android/camera/Panorama$ErrorCallback;

    .line 324
    return-void
.end method

.method public setParameters(Lcom/motorola/android/camera/Panorama$Parameters;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/motorola/android/camera/Panorama$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/android/camera/Panorama;->native_setParameters(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public final stopCapture()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_stopCapture()V

    .line 204
    return-void
.end method

.method public final takePicture(Lcom/motorola/android/camera/Panorama$ShutterCallback;Lcom/motorola/android/camera/Panorama$PictureCallback;Lcom/motorola/android/camera/Panorama$PostviewCallback;Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "jpeg"
    .parameter "postview"
    .parameter "vfinfo"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;

    .line 137
    iput-object p3, p0, Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;

    .line 138
    iput-object p2, p0, Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;

    .line 139
    iput-object p4, p0, Lcom/motorola/android/camera/Panorama;->mVFInfoCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/android/camera/Panorama;->native_enablePausePreview(I)V

    .line 141
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_takePicture()V

    .line 142
    return-void
.end method

.method public final takePicture(Lcom/motorola/android/camera/Panorama$ShutterCallback;Lcom/motorola/android/camera/Panorama$PictureCallback;Lcom/motorola/android/camera/Panorama$PostviewCallback;Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;Z)V
    .locals 1
    .parameter "shutter"
    .parameter "jpeg"
    .parameter "postview"
    .parameter "vfinfo"
    .parameter "isPausePreview"

    .prologue
    const/4 v0, 0x1

    .line 149
    iput-object p1, p0, Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;

    .line 150
    iput-object p3, p0, Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;

    .line 151
    iput-object p2, p0, Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;

    .line 152
    iput-object p4, p0, Lcom/motorola/android/camera/Panorama;->mVFInfoCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;

    .line 153
    if-ne p5, v0, :cond_0

    .line 154
    invoke-direct {p0, v0}, Lcom/motorola/android/camera/Panorama;->native_enablePausePreview(I)V

    .line 157
    :goto_0
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_takePicture()V

    .line 158
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/android/camera/Panorama;->native_enablePausePreview(I)V

    goto :goto_0
.end method
