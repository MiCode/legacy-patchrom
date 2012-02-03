.class public Landroid/media/CamcorderProfile;
.super Ljava/lang/Object;
.source "CamcorderProfile.java"


# static fields
.field public static final QUALITY_HIGH:I = 0x1

.field public static final QUALITY_LOW:I


# instance fields
.field public audioBitRate:I

.field public audioChannels:I

.field public audioCodec:I

.field public audioSampleRate:I

.field public duration:I

.field public fileFormat:I

.field public quality:I

.field public videoBitRate:I

.field public videoCodec:I

.field public videoFrameHeight:I

.field public videoFrameRate:I

.field public videoFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Landroid/media/CamcorderProfile;->native_init()V

    .line 159
    return-void
.end method

.method private constructor <init>(IIIIIIIIIIII)V
    .locals 0
    .parameter "duration"
    .parameter "quality"
    .parameter "fileFormat"
    .parameter "videoCodec"
    .parameter "videoBitRate"
    .parameter "videoFrameRate"
    .parameter "videoWidth"
    .parameter "videoHeight"
    .parameter "audioCodec"
    .parameter "audioBitRate"
    .parameter "audioSampleRate"
    .parameter "audioChannels"

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput p1, p0, Landroid/media/CamcorderProfile;->duration:I

    .line 176
    iput p2, p0, Landroid/media/CamcorderProfile;->quality:I

    .line 177
    iput p3, p0, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 178
    iput p4, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 179
    iput p5, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 180
    iput p6, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 181
    iput p7, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 182
    iput p8, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 183
    iput p9, p0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 184
    iput p10, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 185
    iput p11, p0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 186
    iput p12, p0, Landroid/media/CamcorderProfile;->audioChannels:I

    .line 187
    return-void
.end method

.method public static get(I)Landroid/media/CamcorderProfile;
    .locals 4
    .parameter "quality"

    .prologue
    .line 131
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 132
    .local v2, numberOfCameras:I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 133
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 134
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 135
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 136
    invoke-static {v1, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 139
    :goto_1
    return-object v3

    .line 133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static get(II)Landroid/media/CamcorderProfile;
    .locals 3
    .parameter "cameraId"
    .parameter "quality"

    .prologue
    .line 149
    if-ltz p1, :cond_0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported quality level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, errMessage:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    .end local v0           #errMessage:Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    return-object v1
.end method

.method private static final native native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;
.end method

.method private static final native native_init()V
.end method
