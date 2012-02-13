.class Lcom/motorola/CameraF/MediaRecorderProfile;
.super Ljava/lang/Object;
.source "Camcorder.java"


# static fields
.field private static final AUDIO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/CameraF/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OUTPUT_FORMAT_TABLE:Lcom/motorola/CameraF/DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/CameraF/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MediaRecorderProfile"

.field private static final VIDEO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/CameraF/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAudioBitrate:I

.field public final mAudioChannels:I

.field public final mAudioEncoder:I

.field public final mAudioSamplingRate:I

.field public final mHiQuality:Z

.field public final mOutputFormat:I

.field public final mVideoBitrate:I

.field public final mVideoEncoder:I

.field public final mVideoFps:I

.field public final mVideoHeight:I

.field public final mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4317
    new-instance v0, Lcom/motorola/CameraF/DefaultHashMap;

    invoke-direct {v0}, Lcom/motorola/CameraF/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->OUTPUT_FORMAT_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    .line 4319
    new-instance v0, Lcom/motorola/CameraF/DefaultHashMap;

    invoke-direct {v0}, Lcom/motorola/CameraF/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->VIDEO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    .line 4321
    new-instance v0, Lcom/motorola/CameraF/DefaultHashMap;

    invoke-direct {v0}, Lcom/motorola/CameraF/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->AUDIO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    .line 4325
    sget-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->OUTPUT_FORMAT_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const-string v1, "3gp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4326
    sget-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->OUTPUT_FORMAT_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const-string v1, "mp4"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4327
    sget-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->OUTPUT_FORMAT_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 4329
    sget-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->VIDEO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const-string v1, "h263"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4330
    sget-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->VIDEO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const-string v1, "h264"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4331
    sget-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->VIDEO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const-string v1, "m4v"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4332
    sget-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->VIDEO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 4334
    sget-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->AUDIO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const-string v1, "amrnb"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4335
    sget-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->AUDIO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const-string v1, "amrwb"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4336
    sget-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->AUDIO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const-string v1, "aac"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4337
    sget-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->AUDIO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const-string v1, "aacplus"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4338
    sget-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->AUDIO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const-string v1, "eaacplus"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4340
    sget-object v0, Lcom/motorola/CameraF/MediaRecorderProfile;->AUDIO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 4341
    return-void
.end method

.method constructor <init>(Z)V
    .locals 8
    .parameter "hiQuality"

    .prologue
    const/16 v7, 0x5b9a

    const/16 v6, 0x1f40

    const/16 v5, 0x14

    const/4 v4, 0x1

    .line 4256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4257
    iput-boolean p1, p0, Lcom/motorola/CameraF/MediaRecorderProfile;->mHiQuality:Z

    .line 4259
    const-string v0, "ro.media.enc.hprof.file.format"

    const-string v1, "ro.media.enc.lprof.file.format"

    sget-object v2, Lcom/motorola/CameraF/MediaRecorderProfile;->OUTPUT_FORMAT_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/CameraF/MediaRecorderProfile;->getFromTable(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/CameraF/DefaultHashMap;)I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/MediaRecorderProfile;->mOutputFormat:I

    .line 4263
    const-string v0, "ro.media.enc.hprof.codec.vid"

    const-string v1, "ro.media.enc.lprof.codec.vid"

    sget-object v2, Lcom/motorola/CameraF/MediaRecorderProfile;->VIDEO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/CameraF/MediaRecorderProfile;->getFromTable(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/CameraF/DefaultHashMap;)I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/MediaRecorderProfile;->mVideoEncoder:I

    .line 4267
    const-string v0, "ro.media.enc.hprof.codec.aud"

    const-string v1, "ro.media.enc.lprof.codec.aud"

    sget-object v2, Lcom/motorola/CameraF/MediaRecorderProfile;->AUDIO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/CameraF/MediaRecorderProfile;->getFromTable(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/CameraF/DefaultHashMap;)I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/MediaRecorderProfile;->mAudioEncoder:I

    .line 4271
    const-string v0, "ro.media.enc.hprof.vid.width"

    const-string v1, "ro.media.enc.lprof.vid.width"

    const/16 v2, 0x160

    const/16 v3, 0xb0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/motorola/CameraF/MediaRecorderProfile;->getInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/MediaRecorderProfile;->mVideoWidth:I

    .line 4275
    const-string v0, "ro.media.enc.hprof.vid.height"

    const-string v1, "ro.media.enc.lprof.vid.height"

    const/16 v2, 0x120

    const/16 v3, 0x90

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/motorola/CameraF/MediaRecorderProfile;->getInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/MediaRecorderProfile;->mVideoHeight:I

    .line 4279
    const-string v0, "ro.media.enc.hprof.vid.fps"

    const-string v1, "ro.media.enc.lprof.vid.fps"

    invoke-direct {p0, v0, v1, v5, v5}, Lcom/motorola/CameraF/MediaRecorderProfile;->getInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/MediaRecorderProfile;->mVideoFps:I

    .line 4283
    const-string v0, "ro.media.enc.hprof.vid.bps"

    const-string v1, "ro.media.enc.lprof.vid.bps"

    const v2, 0x57e40

    const v3, 0x2ee00

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/motorola/CameraF/MediaRecorderProfile;->getInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/MediaRecorderProfile;->mVideoBitrate:I

    .line 4287
    const-string v0, "ro.media.enc.hprof.aud.bps"

    const-string v1, "ro.media.enc.lprof.aud.bps"

    invoke-direct {p0, v0, v1, v7, v7}, Lcom/motorola/CameraF/MediaRecorderProfile;->getInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/MediaRecorderProfile;->mAudioBitrate:I

    .line 4291
    const-string v0, "ro.media.enc.hprof.aud.ch"

    const-string v1, "ro.media.enc.lprof.aud.ch"

    invoke-direct {p0, v0, v1, v4, v4}, Lcom/motorola/CameraF/MediaRecorderProfile;->getInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/MediaRecorderProfile;->mAudioChannels:I

    .line 4295
    const-string v0, "ro.media.enc.hprof.aud.hz"

    const-string v1, "ro.media.enc.lprof.aud.hz"

    invoke-direct {p0, v0, v1, v6, v6}, Lcom/motorola/CameraF/MediaRecorderProfile;->getInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/motorola/CameraF/MediaRecorderProfile;->mAudioSamplingRate:I

    .line 4298
    return-void
.end method

.method private getFromTable(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/CameraF/DefaultHashMap;)I
    .locals 2
    .parameter "highKey"
    .parameter "lowKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/motorola/CameraF/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4304
    .local p3, table:Lcom/motorola/CameraF/DefaultHashMap;,"Lcom/motorola/CameraF/DefaultHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-boolean v1, p0, Lcom/motorola/CameraF/MediaRecorderProfile;->mHiQuality:Z

    if-eqz v1, :cond_0

    move-object v1, p1

    :goto_0
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4305
    .local v0, s:Ljava/lang/String;
    invoke-virtual {p3, v0}, Lcom/motorola/CameraF/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .end local v0           #s:Ljava/lang/String;
    .restart local p0
    :cond_0
    move-object v1, p2

    .line 4304
    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 3
    .parameter "highKey"
    .parameter "lowKey"
    .parameter "highDefault"
    .parameter "lowDefault"

    .prologue
    .line 4311
    iget-boolean v2, p0, Lcom/motorola/CameraF/MediaRecorderProfile;->mHiQuality:Z

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 4312
    .local v1, key:Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcom/motorola/CameraF/MediaRecorderProfile;->mHiQuality:Z

    if-eqz v2, :cond_1

    move v0, p3

    .line 4313
    .local v0, defaultValue:I
    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .end local v0           #defaultValue:I
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    move-object v1, p2

    .line 4311
    goto :goto_0

    .restart local v1       #key:Ljava/lang/String;
    :cond_1
    move v0, p4

    .line 4312
    goto :goto_1
.end method
