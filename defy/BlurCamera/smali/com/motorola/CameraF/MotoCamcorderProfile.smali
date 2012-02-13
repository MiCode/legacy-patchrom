.class Lcom/motorola/CameraF/MotoCamcorderProfile;
.super Ljava/lang/Object;
.source "Camcorder.java"


# static fields
.field private static AUDIO_BITRATE_TABLE:Lcom/motorola/CameraF/DefaultHashMap; = null
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

.field private static AUDIO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/CameraF/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static AUDIO_NUM_CHANNELS_TABLE:Lcom/motorola/CameraF/DefaultHashMap; = null
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

.field private static AUDIO_SAMPLINGRATE_TABLE:Lcom/motorola/CameraF/DefaultHashMap; = null
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

.field private static OUTPUT_FORMAT_TABLE:Lcom/motorola/CameraF/DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/CameraF/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MotoCamcorderProfile"

.field private static VIDEO_BITRATE_TABLE:Lcom/motorola/CameraF/DefaultHashMap;
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

.field private static VIDEO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/CameraF/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static VIDEO_FPS_TABLE:Lcom/motorola/CameraF/DefaultHashMap;
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
.field public mQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4104
    new-instance v0, Lcom/motorola/CameraF/DefaultHashMap;

    invoke-direct {v0}, Lcom/motorola/CameraF/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->OUTPUT_FORMAT_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    .line 4106
    new-instance v0, Lcom/motorola/CameraF/DefaultHashMap;

    invoke-direct {v0}, Lcom/motorola/CameraF/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->VIDEO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    .line 4108
    new-instance v0, Lcom/motorola/CameraF/DefaultHashMap;

    invoke-direct {v0}, Lcom/motorola/CameraF/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    .line 4110
    new-instance v0, Lcom/motorola/CameraF/DefaultHashMap;

    invoke-direct {v0}, Lcom/motorola/CameraF/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->VIDEO_FPS_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    .line 4112
    new-instance v0, Lcom/motorola/CameraF/DefaultHashMap;

    invoke-direct {v0}, Lcom/motorola/CameraF/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_BITRATE_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    .line 4114
    new-instance v0, Lcom/motorola/CameraF/DefaultHashMap;

    invoke-direct {v0}, Lcom/motorola/CameraF/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->VIDEO_BITRATE_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    .line 4116
    new-instance v0, Lcom/motorola/CameraF/DefaultHashMap;

    invoke-direct {v0}, Lcom/motorola/CameraF/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_NUM_CHANNELS_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    .line 4118
    new-instance v0, Lcom/motorola/CameraF/DefaultHashMap;

    invoke-direct {v0}, Lcom/motorola/CameraF/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_SAMPLINGRATE_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 4122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4125
    const-string v1, "ro.media.camcorder.qvga"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4126
    .local v0, s:Ljava/lang/String;
    const-string v1, "QVGA"

    invoke-direct {p0, v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->setupTables(Ljava/lang/String;Ljava/lang/String;)V

    .line 4127
    const-string v1, "ro.media.camcorder.vga"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4128
    const-string v1, "VGA"

    invoke-direct {p0, v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->setupTables(Ljava/lang/String;Ljava/lang/String;)V

    .line 4129
    const-string v1, "ro.media.camcorder.cif"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4130
    const-string v1, "CIF"

    invoke-direct {p0, v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->setupTables(Ljava/lang/String;Ljava/lang/String;)V

    .line 4131
    const-string v1, "ro.media.camcorder.d1NTSC"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4132
    const-string v1, "NTSC_D1"

    invoke-direct {p0, v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->setupTables(Ljava/lang/String;Ljava/lang/String;)V

    .line 4133
    const-string v1, "ro.media.camcorder.720p"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4134
    const-string v1, "720p"

    invoke-direct {p0, v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->setupTables(Ljava/lang/String;Ljava/lang/String;)V

    .line 4135
    const-string v1, "ro.media.camcorder.mms"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4136
    const-string v1, "MMS"

    invoke-direct {p0, v0, v1}, Lcom/motorola/CameraF/MotoCamcorderProfile;->setupTables(Ljava/lang/String;Ljava/lang/String;)V

    .line 4138
    return-void
.end method

.method private setupTables(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "data"
    .parameter "res"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4141
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4143
    .local v0, params:[Ljava/lang/String;
    array-length v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 4181
    :cond_0
    :goto_0
    return-void

    .line 4146
    :cond_1
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->OUTPUT_FORMAT_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    aget-object v2, v0, v3

    invoke-virtual {v1, p2, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4148
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->VIDEO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    aget-object v2, v0, v4

    invoke-virtual {v1, p2, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4150
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->VIDEO_FPS_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4152
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->VIDEO_BITRATE_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4154
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    aget-object v2, v0, v7

    invoke-virtual {v1, p2, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4156
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_BITRATE_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4158
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_NUM_CHANNELS_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const/4 v2, 0x7

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4160
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_SAMPLINGRATE_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/motorola/CameraF/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4162
    const-string v1, "QVGA"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4163
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->OUTPUT_FORMAT_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 4165
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->VIDEO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 4167
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->VIDEO_FPS_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 4169
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->VIDEO_BITRATE_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 4171
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    aget-object v2, v0, v7

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 4173
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_BITRATE_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 4175
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_NUM_CHANNELS_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const/4 v2, 0x7

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 4177
    sget-object v1, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_SAMPLINGRATE_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getAudioBitrate(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 4203
    sget-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_BITRATE_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getAudioChannels(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 4206
    sget-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_NUM_CHANNELS_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getAudioEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 4194
    sget-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAudioSamplingRate(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 4209
    sget-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->AUDIO_SAMPLINGRATE_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getOutputFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 4188
    sget-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->OUTPUT_FORMAT_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getVideoBitrate(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 4200
    sget-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->VIDEO_BITRATE_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getVideoEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 4191
    sget-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->VIDEO_ENCODER_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getVideoFps(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 4197
    sget-object v0, Lcom/motorola/CameraF/MotoCamcorderProfile;->VIDEO_FPS_TABLE:Lcom/motorola/CameraF/DefaultHashMap;

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public setupDefaultTable(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 4184
    const-string v0, "QVGA"

    invoke-direct {p0, p1, v0}, Lcom/motorola/CameraF/MotoCamcorderProfile;->setupTables(Ljava/lang/String;Ljava/lang/String;)V

    .line 4185
    return-void
.end method
