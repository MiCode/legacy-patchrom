.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GA:I = 0xf

.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AK3G:I = 0x137

.field public static final FILE_TYPE_AK3GV:I = 0x15e

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_APK:I = 0x5b

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_ASF_AUDIO:I = 0x10

.field public static final FILE_TYPE_AVI:I = 0xc8

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_DCF:I = 0x12c

.field public static final FILE_TYPE_DIVX:I = 0xc9

.field public static final FILE_TYPE_EVC:I = 0x14a

.field public static final FILE_TYPE_FLAC:I = 0xdc

.field public static final FILE_TYPE_FLV:I = 0xca

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_IMY:I = 0x13

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_K3G:I = 0x154

.field public static final FILE_TYPE_K3GA:I = 0x142

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0x11

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0xcb

.field public static final FILE_TYPE_MP2TS:I = 0x1e

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_ODF:I = 0x141

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_PYA:I = 0xe

.field public static final FILE_TYPE_PYV:I = 0x1d

.field public static final FILE_TYPE_QCP:I = 0xa

.field public static final FILE_TYPE_RA:I = 0xd

.field public static final FILE_TYPE_REAL:I = 0x1c

.field public static final FILE_TYPE_SKA:I = 0x12d

.field public static final FILE_TYPE_SKM:I = 0x155

.field public static final FILE_TYPE_SKV:I = 0x156

.field public static final FILE_TYPE_SMF:I = 0x12

.field public static final FILE_TYPE_VCI:I = 0x64

.field public static final FILE_TYPE_VCY:I = 0x65

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field private static final FIRST_APPPACKAGE_FILE_TYPE:I = 0x5b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_DMCMM_AUDIO_FILE_TYPE:I = 0xdc

.field private static final FIRST_DMCMM_VIDEO_FILE_TYPE:I = 0xc8

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_KOR_AUDIO_FILE_TYPE:I = 0x12c

.field private static final FIRST_KOR_VIDEO_FILE_TYPE:I = 0x154

.field private static final FIRST_MIDI_FILE_TYPE:I = 0x11

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_VIDEOCALLIMAGES_FILE_TYPE:I = 0x64

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final LAST_APPPACKAGE_FILE_TYPE:I = 0x5b

.field private static final LAST_AUDIO_FILE_TYPE:I = 0x10

.field private static final LAST_DMCMM_AUDIO_FILE_TYPE:I = 0xdc

.field private static final LAST_DMCMM_VIDEO_FILE_TYPE:I = 0xcb

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x23

.field private static final LAST_KOR_AUDIO_FILE_TYPE:I = 0x14a

.field private static final LAST_KOR_VIDEO_FILE_TYPE:I = 0x15e

.field private static final LAST_MIDI_FILE_TYPE:I = 0x13

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2b

.field private static final LAST_VIDEOCALLIMAGES_FILE_TYPE:I = 0x65

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1e

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field public static final sFileExtensions:Ljava/lang/String;

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xcb

    const/16 v5, 0x11

    const-string/jumbo v8, "video/skm"

    const-string v7, "K3G"

    const-string v6, "audio/midi"

    .line 178
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 180
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 208
    const-string v2, "MP3"

    const/4 v3, 0x1

    const-string v4, "audio/mpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    const-string v2, "MPGA"

    const/4 v3, 0x1

    const-string v4, "audio/mpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    const-string v2, "M4A"

    const/4 v3, 0x2

    const-string v4, "audio/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 214
    const-string v2, "MP4"

    const/4 v3, 0x2

    const-string v4, "audio/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 215
    const-string v2, "3GP"

    const/16 v3, 0xf

    const-string v4, "audio/3gpp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 216
    const-string v2, "3GA"

    const/16 v3, 0xf

    const-string v4, "audio/3gpp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 217
    const-string v2, "ASF"

    const/16 v3, 0x10

    const-string v4, "audio/x-ms-asf"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    const-string v2, "WAV"

    const/4 v3, 0x3

    const-string v4, "audio/x-wav"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    const-string v2, "AMR"

    const/4 v3, 0x4

    const-string v4, "audio/amr"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    const-string v2, "AWB"

    const/4 v3, 0x5

    const-string v4, "audio/amr-wb"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    const-string v2, "WMA"

    const/4 v3, 0x6

    const-string v4, "audio/x-ms-wma"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    const-string v2, "PYA"

    const/16 v3, 0xe

    const-string v4, "audio/vnd.ms-playready.media.pya"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    const-string v2, "OGG"

    const/4 v3, 0x7

    const-string v4, "application/ogg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    const-string v2, "OGA"

    const/4 v3, 0x7

    const-string v4, "application/ogg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    const-string v2, "AAC"

    const/16 v3, 0x8

    const-string v4, "audio/aac"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    const-string v2, "MKA"

    const/16 v3, 0x9

    const-string v4, "audio/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    const-string v2, "MID"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    const-string v2, "MIDI"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    const-string v2, "XMF"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    const-string v2, "RTTTL"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    const-string v2, "SMF"

    const/16 v3, 0x12

    const-string v4, "audio/sp-midi"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 252
    const-string v2, "IMY"

    const/16 v3, 0x13

    const-string v4, "audio/imelody"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 253
    const-string v2, "RTX"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 254
    const-string v2, "OTA"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    const-string v2, "MPEG"

    const/16 v3, 0x15

    const-string/jumbo v4, "video/mpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    const-string v2, "MP4"

    const/16 v3, 0x15

    const-string/jumbo v4, "video/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 258
    const-string v2, "M4V"

    const/16 v3, 0x16

    const-string/jumbo v4, "video/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 259
    const-string v2, "3GP"

    const/16 v3, 0x17

    const-string/jumbo v4, "video/3gpp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 260
    const-string v2, "3GPP"

    const/16 v3, 0x17

    const-string/jumbo v4, "video/3gpp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    const-string v2, "3G2"

    const/16 v3, 0x18

    const-string/jumbo v4, "video/3gpp2"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    const-string v2, "3GPP2"

    const/16 v3, 0x18

    const-string/jumbo v4, "video/3gpp2"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    const-string v2, "MKV"

    const-string/jumbo v3, "video/x-matroska"

    invoke-static {v2, v9, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    const-string v2, "WEBM"

    const-string/jumbo v3, "video/x-matroska"

    invoke-static {v2, v9, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 265
    const-string v2, "TS"

    const/16 v3, 0x1e

    const-string/jumbo v4, "video/mp2ts"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    const-string v2, "RM"

    const/16 v3, 0x1c

    const-string/jumbo v4, "video/x-ms-real"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    const-string v2, "RMVB"

    const/16 v3, 0x1c

    const-string/jumbo v4, "video/x-ms-real"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    const-string v2, "WMV"

    const/16 v3, 0x19

    const-string/jumbo v4, "video/x-ms-wmv"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    const-string v2, "ASF"

    const/16 v3, 0x1a

    const-string/jumbo v4, "video/x-ms-asf"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    const-string v2, "PYV"

    const/16 v3, 0x1d

    const-string/jumbo v4, "video/vnd.ms-playready.media.pyv"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 285
    const-string v2, "JPG"

    const/16 v3, 0x1f

    const-string v4, "image/jpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    const-string v2, "JPEG"

    const/16 v3, 0x1f

    const-string v4, "image/jpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    const-string v2, "GIF"

    const/16 v3, 0x20

    const-string v4, "image/gif"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    const-string v2, "PNG"

    const/16 v3, 0x21

    const-string v4, "image/png"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 289
    const-string v2, "BMP"

    const/16 v3, 0x22

    const-string v4, "image/x-ms-bmp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    const-string v2, "BMP"

    const/16 v3, 0x22

    const-string v4, "image/bmp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    const-string v2, "WBMP"

    const/16 v3, 0x23

    const-string v4, "image/vnd.wap.wbmp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    const-string v2, "M3U"

    const/16 v3, 0x29

    const-string v4, "audio/x-mpegurl"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    const-string v2, "PLS"

    const/16 v3, 0x2a

    const-string v4, "audio/x-scpls"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    const-string v2, "WPL"

    const/16 v3, 0x2b

    const-string v4, "application/vnd.ms-wpl"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 298
    const-string v2, "AVI"

    const/16 v3, 0xc8

    const-string/jumbo v4, "video/avi"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    const-string v2, "DIVX"

    const/16 v3, 0xc9

    const-string/jumbo v4, "video/divx"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    const-string v2, "FLV"

    const/16 v3, 0xca

    const-string/jumbo v4, "video/flv"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    const-string v2, "MKV"

    const-string/jumbo v3, "video/mkv"

    invoke-static {v2, v9, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 302
    const-string v2, "FLAC"

    const/16 v3, 0xdc

    const-string v4, "audio/flac"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    const-string v2, "VCI"

    const/16 v3, 0x64

    const-string/jumbo v4, "videocallimages/jpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    const-string v2, "VCY"

    const/16 v3, 0x65

    const-string/jumbo v4, "videocallimages/jpeg-scramble"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    const-string v2, "APK"

    const/16 v3, 0x5b

    const-string v4, "appcation/apk"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    const-string v2, "EVC"

    const/16 v3, 0x14a

    const-string v4, "audio/evc"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    const-string v2, "SKM"

    const/16 v3, 0x155

    const-string/jumbo v4, "video/skm"

    invoke-static {v2, v3, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    const-string v2, "SKV"

    const/16 v3, 0x156

    const-string/jumbo v4, "video/skm"

    invoke-static {v2, v3, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    const-string v2, "DCF"

    const/16 v3, 0x12c

    const-string v4, "audio/x-mp3"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 323
    const-string v2, "SKA"

    const/16 v3, 0x12d

    const-string v4, "audio/skm"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 326
    const-string v2, "K3G"

    const/16 v2, 0x154

    const-string/jumbo v3, "video/k3g"

    invoke-static {v7, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    const-string v2, "K3G"

    const/16 v2, 0x154

    const-string/jumbo v3, "video/kr3g"

    invoke-static {v7, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    const-string v2, "K3G"

    const/16 v2, 0x142

    const-string v3, "audio/kr3g"

    invoke-static {v7, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    const-string v2, "K3G"

    const/16 v2, 0x142

    const-string v3, "audio/k3g"

    invoke-static {v7, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 330
    const-string v2, "SKM"

    const/16 v3, 0x155

    const-string/jumbo v4, "video/skm"

    invoke-static {v2, v3, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 331
    const-string v2, "SKV"

    const/16 v3, 0x156

    const-string/jumbo v4, "video/skm"

    invoke-static {v2, v3, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 337
    const-string v2, "AK3G"

    const/16 v3, 0x137

    const-string v4, "audio/ak3g"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    const-string v2, "AK3G"

    const/16 v3, 0x15e

    const-string/jumbo v4, "video/ak3g"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 345
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 347
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 183
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 3
    .parameter "path"

    .prologue
    .line 434
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 435
    .local v0, lastDot:I
    if-gez v0, :cond_0

    .line 436
    const/4 v1, 0x0

    .line 437
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/MediaFile$MediaFileType;

    move-object v1, p0

    goto :goto_0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 441
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 442
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static isAppPackageFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    const/16 v0, 0x5b

    .line 447
    if-lt p0, v0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAudioFileType(I)Z
    .locals 7
    .parameter "fileType"

    .prologue
    const/16 v6, 0xdc

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 373
    if-lt p0, v4, :cond_0

    const/16 v3, 0x10

    if-le p0, v3, :cond_1

    :cond_0
    const/16 v3, 0x11

    if-lt p0, v3, :cond_3

    const/16 v3, 0x13

    if-gt p0, v3, :cond_3

    :cond_1
    move v2, v4

    .line 377
    .local v2, bOrg:Z
    :goto_0
    if-lt p0, v6, :cond_4

    if-gt p0, v6, :cond_4

    move v0, v4

    .line 380
    .local v0, bDMCMM:Z
    :goto_1
    const/16 v3, 0x12c

    if-lt p0, v3, :cond_5

    const/16 v3, 0x14a

    if-gt p0, v3, :cond_5

    move v1, v4

    .line 383
    .local v1, bKORMM:Z
    :goto_2
    if-nez v2, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_6

    :cond_2
    move v3, v4

    :goto_3
    return v3

    .end local v0           #bDMCMM:Z
    .end local v1           #bKORMM:Z
    .end local v2           #bOrg:Z
    :cond_3
    move v2, v5

    .line 373
    goto :goto_0

    .restart local v2       #bOrg:Z
    :cond_4
    move v0, v5

    .line 377
    goto :goto_1

    .restart local v0       #bDMCMM:Z
    :cond_5
    move v1, v5

    .line 380
    goto :goto_2

    .restart local v1       #bKORMM:Z
    :cond_6
    move v3, v5

    .line 383
    goto :goto_3
.end method

.method public static isImageFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 407
    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x23

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKORMediaFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 417
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x15e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 412
    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2b

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoCallImagesFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 427
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0x65

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 6
    .parameter "fileType"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 393
    const/16 v3, 0x15

    if-lt p0, v3, :cond_1

    const/16 v3, 0x1e

    if-gt p0, v3, :cond_1

    move v2, v5

    .line 395
    .local v2, bOrg:Z
    :goto_0
    const/16 v3, 0xc8

    if-lt p0, v3, :cond_2

    const/16 v3, 0xcb

    if-gt p0, v3, :cond_2

    move v0, v5

    .line 398
    .local v0, bDMCMM:Z
    :goto_1
    const/16 v3, 0x154

    if-lt p0, v3, :cond_3

    const/16 v3, 0x15e

    if-gt p0, v3, :cond_3

    move v1, v5

    .line 401
    .local v1, bKORMM:Z
    :goto_2
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    move v3, v5

    :goto_3
    return v3

    .end local v0           #bDMCMM:Z
    .end local v1           #bKORMM:Z
    .end local v2           #bOrg:Z
    :cond_1
    move v2, v4

    .line 393
    goto :goto_0

    .restart local v2       #bOrg:Z
    :cond_2
    move v0, v4

    .line 395
    goto :goto_1

    .restart local v0       #bDMCMM:Z
    :cond_3
    move v1, v4

    .line 398
    goto :goto_2

    .restart local v1       #bKORMM:Z
    :cond_4
    move v3, v4

    .line 401
    goto :goto_3
.end method

.method private static isWMAEnabled()Z
    .locals 4

    .prologue
    .line 188
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v1

    .line 189
    .local v1, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 190
    .local v0, decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v3, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v0, v3, :cond_0

    .line 191
    const/4 v3, 0x1

    .line 194
    .end local v0           #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isWMVEnabled()Z
    .locals 4

    .prologue
    .line 198
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v1

    .line 199
    .local v1, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 200
    .local v0, decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v3, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v0, v3, :cond_0

    .line 201
    const/4 v3, 0x1

    .line 204
    .end local v0           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
