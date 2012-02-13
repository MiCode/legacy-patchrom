.class public final Lcom/android/internal/telephony/MccTable;
.super Ljava/lang/Object;
.source "MccTable.java"


# static fields
.field private static final IND_CODES:[I = null

.field private static final LANG_STRINGS:[Ljava/lang/String; = null

.field static final LOG_TAG:Ljava/lang/String; = "MccTable"

.field private static final MCC_CODES:[S

.field private static final TZ_STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "Africa/Johannesburg"

    aput-object v1, v0, v4

    const-string v1, "Asia/Chongqing"

    aput-object v1, v0, v5

    const-string v1, "Asia/Shanghai"

    aput-object v1, v0, v6

    const-string v1, "Asia/Singapore"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Asia/Taipei"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Asia/Tokyo"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Australia/Sydney"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Europe/Amsterdam"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Europe/Athens"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Europe/Berlin"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Europe/Dublin"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Europe/Istanbul"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Europe/Lisbon"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Europe/London"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Europe/Madrid"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Europe/Moscow"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Europe/Paris"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Europe/Prague"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Europe/Rome"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Europe/Vienna"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Europe/Warsaw"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Europe/Zurich"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pacific/Auckland"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/MccTable;->TZ_STRINGS:[Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "cs"

    aput-object v1, v0, v4

    const-string v1, "de"

    aput-object v1, v0, v5

    const-string v1, "el"

    aput-object v1, v0, v6

    const-string v1, "en"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "zh"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/MccTable;->LANG_STRINGS:[Ljava/lang/String;

    const/16 v0, 0xea

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    const/16 v0, 0xea

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    return-void

    nop

    :array_0
    .array-data 0x2
        0xcat 0x0t
        0xcct 0x0t
        0xcet 0x0t
        0xd0t 0x0t
        0xd4t 0x0t
        0xd5t 0x0t
        0xd6t 0x0t
        0xd8t 0x0t
        0xdat 0x0t
        0xdbt 0x0t
        0xdct 0x0t
        0xdet 0x0t
        0xe1t 0x0t
        0xe2t 0x0t
        0xe4t 0x0t
        0xe6t 0x0t
        0xe7t 0x0t
        0xe8t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0xeet 0x0t
        0xf0t 0x0t
        0xf2t 0x0t
        0xf4t 0x0t
        0xf6t 0x0t
        0xf7t 0x0t
        0xf8t 0x0t
        0xfat 0x0t
        0xfft 0x0t
        0x1t 0x1t
        0x3t 0x1t
        0x4t 0x1t
        0x6t 0x1t
        0xat 0x1t
        0xct 0x1t
        0xet 0x1t
        0x10t 0x1t
        0x12t 0x1t
        0x14t 0x1t
        0x16t 0x1t
        0x18t 0x1t
        0x1at 0x1t
        0x1bt 0x1t
        0x1ct 0x1t
        0x1et 0x1t
        0x20t 0x1t
        0x21t 0x1t
        0x22t 0x1t
        0x24t 0x1t
        0x25t 0x1t
        0x26t 0x1t
        0x27t 0x1t
        0x29t 0x1t
        0x2et 0x1t
        0x34t 0x1t
        0x36t 0x1t
        0x37t 0x1t
        0x38t 0x1t
        0x39t 0x1t
        0x3at 0x1t
        0x3bt 0x1t
        0x3ct 0x1t
        0x4at 0x1t
        0x4ct 0x1t
        0x4et 0x1t
        0x52t 0x1t
        0x54t 0x1t
        0x56t 0x1t
        0x58t 0x1t
        0x5at 0x1t
        0x5ct 0x1t
        0x5et 0x1t
        0x60t 0x1t
        0x62t 0x1t
        0x64t 0x1t
        0x66t 0x1t
        0x68t 0x1t
        0x6at 0x1t
        0x6bt 0x1t
        0x6ct 0x1t
        0x6dt 0x1t
        0x6et 0x1t
        0x70t 0x1t
        0x72t 0x1t
        0x74t 0x1t
        0x76t 0x1t
        0x78t 0x1t
        0x90t 0x1t
        0x91t 0x1t
        0x92t 0x1t
        0x94t 0x1t
        0x95t 0x1t
        0x9at 0x1t
        0x9ct 0x1t
        0x9dt 0x1t
        0x9et 0x1t
        0x9ft 0x1t
        0xa0t 0x1t
        0xa1t 0x1t
        0xa2t 0x1t
        0xa3t 0x1t
        0xa4t 0x1t
        0xa5t 0x1t
        0xa6t 0x1t
        0xa7t 0x1t
        0xa8t 0x1t
        0xa9t 0x1t
        0xaat 0x1t
        0xabt 0x1t
        0xact 0x1t
        0xadt 0x1t
        0xaet 0x1t
        0xaft 0x1t
        0xb0t 0x1t
        0xb2t 0x1t
        0xb4t 0x1t
        0xb5t 0x1t
        0xb6t 0x1t
        0xb8t 0x1t
        0xb9t 0x1t
        0xc2t 0x1t
        0xc4t 0x1t
        0xc6t 0x1t
        0xc7t 0x1t
        0xc8t 0x1t
        0xc9t 0x1t
        0xcct 0x1t
        0xcdt 0x1t
        0xd2t 0x1t
        0xd3t 0x1t
        0xd6t 0x1t
        0xd8t 0x1t
        0xf6t 0x1t
        0xf9t 0x1t
        0xfet 0x1t
        0x2t 0x2t
        0x3t 0x2t
        0x8t 0x2t
        0xdt 0x2t
        0x10t 0x2t
        0x12t 0x2t
        0x16t 0x2t
        0x17t 0x2t
        0x18t 0x2t
        0x19t 0x2t
        0x1bt 0x2t
        0x1ct 0x2t
        0x1dt 0x2t
        0x1et 0x2t
        0x1ft 0x2t
        0x20t 0x2t
        0x21t 0x2t
        0x22t 0x2t
        0x23t 0x2t
        0x24t 0x2t
        0x25t 0x2t
        0x26t 0x2t
        0x27t 0x2t
        0x28t 0x2t
        0x5at 0x2t
        0x5bt 0x2t
        0x5ct 0x2t
        0x5dt 0x2t
        0x5et 0x2t
        0x5ft 0x2t
        0x60t 0x2t
        0x61t 0x2t
        0x62t 0x2t
        0x63t 0x2t
        0x64t 0x2t
        0x65t 0x2t
        0x66t 0x2t
        0x67t 0x2t
        0x68t 0x2t
        0x69t 0x2t
        0x6at 0x2t
        0x6bt 0x2t
        0x6ct 0x2t
        0x6dt 0x2t
        0x6et 0x2t
        0x6ft 0x2t
        0x70t 0x2t
        0x71t 0x2t
        0x72t 0x2t
        0x73t 0x2t
        0x74t 0x2t
        0x75t 0x2t
        0x76t 0x2t
        0x77t 0x2t
        0x78t 0x2t
        0x79t 0x2t
        0x7at 0x2t
        0x7bt 0x2t
        0x7ct 0x2t
        0x7dt 0x2t
        0x7et 0x2t
        0x7ft 0x2t
        0x80t 0x2t
        0x81t 0x2t
        0x82t 0x2t
        0x83t 0x2t
        0x85t 0x2t
        0x86t 0x2t
        0x87t 0x2t
        0x88t 0x2t
        0x89t 0x2t
        0x8at 0x2t
        0x8bt 0x2t
        0x8ct 0x2t
        0x8dt 0x2t
        0x8et 0x2t
        0x8ft 0x2t
        0x91t 0x2t
        0xbet 0x2t
        0xc0t 0x2t
        0xc2t 0x2t
        0xc4t 0x2t
        0xc6t 0x2t
        0xc8t 0x2t
        0xcat 0x2t
        0xcct 0x2t
        0xd2t 0x2t
        0xd4t 0x2t
        0xdat 0x2t
        0xdct 0x2t
        0xdet 0x2t
        0xe0t 0x2t
        0xe2t 0x2t
        0xe4t 0x2t
        0xe6t 0x2t
        0xe8t 0x2t
        0xeat 0x2t
        0xect 0x2t
        0xeet 0x2t
    .end array-data

    :array_1
    .array-data 0x4
        0x93t 0x4t 0x72t 0x67t
        0x89t 0x6ct 0x6ct 0x6et
        0x0t 0x4t 0x65t 0x62t
        0x16t 0x5t 0x72t 0x66t
        0x0t 0x4t 0x63t 0x6dt
        0x0t 0x4t 0x64t 0x61t
        0xf5t 0x4t 0x73t 0x65t
        0x0t 0x4t 0x75t 0x68t
        0x0t 0x4t 0x61t 0x62t
        0x0t 0x4t 0x72t 0x68t
        0x0t 0x4t 0x73t 0x72t
        0x37t 0x5t 0x74t 0x69t
        0x37t 0x5t 0x61t 0x76t
        0x0t 0x4t 0x6ft 0x72t
        0x62t 0x5t 0x68t 0x63t
        0x21t 0x6dt 0x7at 0x63t
        0x0t 0x4t 0x6bt 0x73t
        0x42t 0x6dt 0x74t 0x61t
        0xe4t 0x6ct 0x62t 0x67t
        0xe4t 0x6ct 0x62t 0x67t
        0x0t 0x4t 0x6bt 0x64t
        0x0t 0x4t 0x65t 0x73t
        0x0t 0x4t 0x6ft 0x6et
        0x0t 0x4t 0x69t 0x66t
        0x0t 0x4t 0x74t 0x6ct
        0x0t 0x4t 0x76t 0x6ct
        0x0t 0x4t 0x65t 0x65t
        0xct 0x5t 0x75t 0x72t
        0x0t 0x4t 0x61t 0x75t
        0x0t 0x4t 0x79t 0x62t
        0x0t 0x4t 0x64t 0x6dt
        0x5at 0x5t 0x6ct 0x70t
        0xa2t 0x6ct 0x65t 0x64t
        0x0t 0x4t 0x69t 0x67t
        0xdbt 0x4t 0x74t 0x70t
        0x0t 0x4t 0x75t 0x6ct
        0xb4t 0x4t 0x65t 0x69t
        0x0t 0x4t 0x73t 0x69t
        0x0t 0x4t 0x6ct 0x61t
        0x0t 0x4t 0x74t 0x6dt
        0x0t 0x4t 0x79t 0x63t
        0x0t 0x4t 0x65t 0x67t
        0x0t 0x4t 0x6dt 0x61t
        0x0t 0x4t 0x67t 0x62t
        0xcdt 0x4t 0x72t 0x74t
        0x0t 0x4t 0x6ft 0x66t
        0x0t 0x4t 0x65t 0x67t
        0x0t 0x4t 0x6ct 0x67t
        0x0t 0x4t 0x6dt 0x73t
        0x0t 0x4t 0x69t 0x73t
        0x0t 0x4t 0x6bt 0x6dt
        0x0t 0x4t 0x69t 0x6ct
        0x0t 0x4t 0x65t 0x6dt
        0x0t 0x5et 0x61t 0x63t
        0x0t 0x4t 0x6dt 0x70t
        0x4t 0x5et 0x73t 0x75t
        0x4t 0x5et 0x73t 0x75t
        0x4t 0x5et 0x73t 0x75t
        0x4t 0x5et 0x73t 0x75t
        0x4t 0x5et 0x73t 0x75t
        0x4t 0x5et 0x73t 0x75t
        0x4t 0x5et 0x73t 0x75t
        0x0t 0x4t 0x72t 0x70t
        0x0t 0x4t 0x69t 0x76t
        0x0t 0x6t 0x78t 0x6dt
        0x0t 0x6t 0x6dt 0x6at
        0x0t 0x4t 0x70t 0x67t
        0x0t 0x6t 0x62t 0x62t
        0x0t 0x6t 0x67t 0x61t
        0x0t 0x6t 0x79t 0x6bt
        0x0t 0x6t 0x67t 0x76t
        0x0t 0x4t 0x6dt 0x62t
        0x0t 0x4t 0x64t 0x67t
        0x0t 0x4t 0x73t 0x6dt
        0x0t 0x4t 0x6et 0x6bt
        0x0t 0x4t 0x63t 0x6ct
        0x0t 0x4t 0x63t 0x76t
        0x0t 0x4t 0x6ct 0x6et
        0x0t 0x4t 0x77t 0x61t
        0x0t 0x4t 0x73t 0x62t
        0x0t 0x6t 0x69t 0x61t
        0x0t 0x4t 0x6dt 0x64t
        0x0t 0x4t 0x75t 0x63t
        0x0t 0x4t 0x6ft 0x64t
        0x0t 0x4t 0x74t 0x68t
        0x0t 0x4t 0x74t 0x74t
        0x0t 0x4t 0x63t 0x74t
        0x0t 0x4t 0x7at 0x61t
        0x0t 0x4t 0x7at 0x6bt
        0x0t 0x4t 0x74t 0x62t
        0x0t 0x4t 0x6et 0x69t
        0x0t 0x4t 0x6et 0x69t
        0x0t 0x4t 0x6bt 0x70t
        0x0t 0x4t 0x66t 0x61t
        0x0t 0x4t 0x6bt 0x6ct
        0x0t 0x4t 0x6dt 0x6dt
        0x0t 0x4t 0x62t 0x6ct
        0x0t 0x4t 0x6ft 0x6at
        0x0t 0x4t 0x79t 0x73t
        0x0t 0x4t 0x71t 0x69t
        0x0t 0x4t 0x77t 0x6bt
        0x0t 0x4t 0x61t 0x73t
        0x0t 0x4t 0x65t 0x79t
        0x0t 0x4t 0x6dt 0x6ft
        0x0t 0x4t 0x73t 0x70t
        0x0t 0x4t 0x65t 0x61t
        0x0t 0x4t 0x6ct 0x69t
        0x0t 0x4t 0x68t 0x62t
        0x0t 0x4t 0x61t 0x71t
        0x0t 0x4t 0x6et 0x6dt
        0x0t 0x4t 0x70t 0x6et
        0x0t 0x4t 0x65t 0x61t
        0x0t 0x4t 0x65t 0x61t
        0x0t 0x4t 0x72t 0x69t
        0x0t 0x4t 0x7at 0x75t
        0x0t 0x4t 0x6at 0x74t
        0x0t 0x4t 0x67t 0x6bt
        0x0t 0x4t 0x6dt 0x74t
        0x68t 0x74t 0x70t 0x6at
        0x68t 0x74t 0x70t 0x6at
        0x0t 0x4t 0x72t 0x6bt
        0x0t 0x4t 0x6et 0x76t
        0x0t 0x4t 0x6bt 0x68t
        0x0t 0x4t 0x6ft 0x6dt
        0x0t 0x4t 0x68t 0x6bt
        0x0t 0x4t 0x61t 0x6ct
        0x3et 0x6ct 0x6et 0x63t
        0x2et 0x6ct 0x6et 0x63t
        0x5et 0x4t 0x77t 0x74t
        0x0t 0x4t 0x70t 0x6bt
        0x0t 0x4t 0x64t 0x62t
        0x0t 0x4t 0x76t 0x6dt
        0x0t 0x4t 0x79t 0x6dt
        0x74t 0x5ct 0x75t 0x61t
        0x0t 0x4t 0x64t 0x69t
        0x0t 0x4t 0x6ct 0x74t
        0x0t 0x4t 0x68t 0x70t
        0x0t 0x4t 0x68t 0x74t
        0x44t 0x5ct 0x67t 0x73t
        0x0t 0x4t 0x6et 0x62t
        0x74t 0x5t 0x7at 0x6et
        0x0t 0x4t 0x70t 0x6dt
        0x0t 0x4t 0x75t 0x67t
        0x0t 0x4t 0x72t 0x6et
        0x0t 0x4t 0x67t 0x70t
        0x0t 0x4t 0x6ft 0x74t
        0x0t 0x4t 0x62t 0x73t
        0x0t 0x4t 0x75t 0x76t
        0x0t 0x4t 0x6at 0x66t
        0x0t 0x4t 0x66t 0x77t
        0x0t 0x4t 0x73t 0x61t
        0x0t 0x4t 0x69t 0x6bt
        0x0t 0x4t 0x63t 0x6et
        0x0t 0x4t 0x66t 0x70t
        0x0t 0x4t 0x6bt 0x63t
        0x0t 0x4t 0x73t 0x77t
        0x0t 0x4t 0x6dt 0x66t
        0x0t 0x4t 0x68t 0x6dt
        0x0t 0x4t 0x77t 0x70t
        0x0t 0x4t 0x67t 0x65t
        0x0t 0x4t 0x7at 0x64t
        0x0t 0x4t 0x61t 0x6dt
        0x0t 0x4t 0x6et 0x74t
        0x0t 0x4t 0x79t 0x6ct
        0x0t 0x4t 0x6dt 0x67t
        0x0t 0x4t 0x6et 0x73t
        0x0t 0x4t 0x72t 0x6dt
        0x0t 0x4t 0x6ct 0x6dt
        0x0t 0x4t 0x6et 0x67t
        0x0t 0x4t 0x69t 0x63t
        0x0t 0x4t 0x66t 0x62t
        0x0t 0x4t 0x65t 0x6et
        0x0t 0x4t 0x67t 0x74t
        0x0t 0x4t 0x6at 0x62t
        0x0t 0x4t 0x75t 0x6dt
        0x0t 0x4t 0x72t 0x6ct
        0x0t 0x4t 0x6ct 0x73t
        0x0t 0x4t 0x68t 0x67t
        0x0t 0x4t 0x67t 0x6et
        0x0t 0x4t 0x64t 0x74t
        0x0t 0x4t 0x66t 0x63t
        0x0t 0x4t 0x6dt 0x63t
        0x0t 0x4t 0x76t 0x63t
        0x0t 0x4t 0x74t 0x73t
        0x0t 0x4t 0x71t 0x67t
        0x0t 0x4t 0x61t 0x67t
        0x0t 0x4t 0x67t 0x63t
        0x0t 0x4t 0x67t 0x63t
        0x0t 0x4t 0x6ft 0x61t
        0x0t 0x4t 0x77t 0x67t
        0x0t 0x4t 0x63t 0x73t
        0x0t 0x4t 0x64t 0x73t
        0x0t 0x4t 0x77t 0x72t
        0x0t 0x4t 0x74t 0x65t
        0x0t 0x4t 0x6ft 0x73t
        0x0t 0x4t 0x6at 0x64t
        0x0t 0x4t 0x65t 0x6bt
        0x0t 0x4t 0x7at 0x74t
        0x0t 0x4t 0x67t 0x75t
        0x0t 0x4t 0x69t 0x62t
        0x0t 0x4t 0x7at 0x6dt
        0x0t 0x4t 0x6dt 0x7at
        0x0t 0x4t 0x67t 0x6dt
        0x0t 0x4t 0x65t 0x72t
        0x0t 0x4t 0x77t 0x7at
        0x0t 0x4t 0x61t 0x6et
        0x0t 0x4t 0x77t 0x6dt
        0x0t 0x4t 0x73t 0x6ct
        0x0t 0x4t 0x77t 0x62t
        0x0t 0x4t 0x7at 0x73t
        0x0t 0x4t 0x6dt 0x6bt
        0x14t 0x4t 0x61t 0x7at
        0x0t 0x4t 0x72t 0x65t
        0x0t 0x4t 0x7at 0x62t
        0x0t 0x4t 0x74t 0x67t
        0x0t 0x4t 0x76t 0x73t
        0x0t 0x6t 0x6et 0x68t
        0x0t 0x4t 0x69t 0x6et
        0x0t 0x4t 0x72t 0x63t
        0x0t 0x4t 0x61t 0x70t
        0x0t 0x4t 0x65t 0x70t
        0x0t 0x6t 0x72t 0x61t
        0x0t 0x4t 0x72t 0x62t
        0x0t 0x4t 0x6ct 0x63t
        0x0t 0x6t 0x6ft 0x63t
        0x0t 0x4t 0x65t 0x76t
        0x0t 0x4t 0x6ft 0x62t
        0x0t 0x4t 0x79t 0x67t
        0x0t 0x4t 0x63t 0x65t
        0x0t 0x4t 0x66t 0x67t
        0x0t 0x4t 0x79t 0x70t
        0x0t 0x4t 0x72t 0x73t
        0x0t 0x4t 0x79t 0x75t
        0x0t 0x4t 0x6bt 0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countryCodeForMcc(I)Ljava/lang/String;
    .locals 5
    .parameter "mcc"

    .prologue
    sget-object v3, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v4, p0

    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_0

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v3, v1

    .local v0, indCode:I
    const/4 v3, 0x2

    new-array v2, v3, [B

    const/4 v3, 0x0

    ushr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    ushr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .local v2, iso:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static defaultLanguageForMcc(I)Ljava/lang/String;
    .locals 7
    .parameter "mcc"

    .prologue
    const/4 v6, 0x0

    sget-object v4, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v5, p0

    invoke-static {v4, v5}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_0

    move-object v4, v6

    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v4, v1

    .local v0, indCode:I
    and-int/lit8 v3, v0, 0xf

    .local v3, langInd:I
    sget-object v4, Lcom/android/internal/telephony/MccTable;->LANG_STRINGS:[Ljava/lang/String;

    aget-object v2, v4, v3

    .local v2, lang:Ljava/lang/String;
    const-string v4, ""

    if-ne v2, v4, :cond_1

    move-object v4, v6

    goto :goto_0

    :cond_1
    move-object v4, v2

    goto :goto_0
.end method

.method public static defaultTimeZoneForMcc(I)Ljava/lang/String;
    .locals 7
    .parameter "mcc"

    .prologue
    const/4 v6, 0x0

    sget-object v4, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v5, p0

    invoke-static {v4, v5}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_0

    move-object v4, v6

    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v4, v1

    .local v0, indCode:I
    ushr-int/lit8 v4, v0, 0x4

    and-int/lit8 v3, v4, 0x1f

    .local v3, tzInd:I
    sget-object v4, Lcom/android/internal/telephony/MccTable;->TZ_STRINGS:[Ljava/lang/String;

    aget-object v2, v4, v3

    .local v2, tz:Ljava/lang/String;
    const-string v4, ""

    if-ne v2, v4, :cond_1

    move-object v4, v6

    goto :goto_0

    :cond_1
    move-object v4, v2

    goto :goto_0
.end method

.method private static setLocaleFromMccIfNeeded(Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 6
    .parameter "phone"
    .parameter "mcc"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCsimRecords:Lcom/android/internal/telephony/cdma/CsimRecords;

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v2

    .local v2, language:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v1

    .local v1, country:Ljava/lang/String;
    const-string v3, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locale set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemLocale(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setTimezoneFromMccIfNeeded(Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 7
    .parameter "phone"
    .parameter "mcc"

    .prologue
    const-string v4, "persist.sys.timezone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, timezone:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v3

    .local v3, zoneId:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, context:Landroid/content/Context;
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    const-string v4, "MccTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timezone set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #zoneId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static setWifiChannelsFromMcc(Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 6
    .parameter "phone"
    .parameter "mcc"

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->wifiChannelsForMcc(I)I

    move-result v2

    .local v2, wifiChannels:I
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    const-string v3, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WIFI_NUM_ALLOWED_CHANNELS set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .local v1, wM:Landroid/net/wifi/WifiManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setNumAllowedChannels(IZ)Z

    .end local v0           #context:Landroid/content/Context;
    .end local v1           #wM:Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method public static smallestDigitsMccForMnc(I)I
    .locals 5
    .parameter "mcc"

    .prologue
    sget-object v3, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v4, p0

    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_0

    const/4 v3, 0x2

    :goto_0
    return v3

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v3, v1

    .local v0, indCode:I
    ushr-int/lit8 v3, v0, 0x9

    and-int/lit8 v2, v3, 0x3

    .local v2, smDig:I
    move v3, v2

    goto :goto_0
.end method

.method public static updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    .locals 7
    .parameter "phone"
    .parameter "mccmnc"

    .prologue
    const-string v6, "MccTable"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, mcc:I
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .local v3, mnc:I
    const-string v4, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMccMncConfiguration: mcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->setTimezoneFromMccIfNeeded(Lcom/android/internal/telephony/PhoneBase;I)V

    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->setLocaleFromMccIfNeeded(Lcom/android/internal/telephony/PhoneBase;I)V

    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->setWifiChannelsFromMcc(Lcom/android/internal/telephony/PhoneBase;I)V

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v0, :cond_3

    if-eqz v2, :cond_1

    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    :cond_1
    if-eqz v3, :cond_2

    iput v3, v0, Landroid/content/res/Configuration;->mnc:I

    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "MccTable"

    const-string v4, "Error parsing IMSI"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #mcc:I
    .restart local v3       #mnc:I
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MccTable"

    const-string v4, "Can\'t update configuration"

    invoke-static {v6, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wifiChannelsForMcc(I)I
    .locals 5
    .parameter "mcc"

    .prologue
    sget-object v3, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v4, p0

    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v3, v1

    .local v0, indCode:I
    ushr-int/lit8 v3, v0, 0xb

    and-int/lit8 v2, v3, 0xf

    .local v2, wifi:I
    move v3, v2

    goto :goto_0
.end method
