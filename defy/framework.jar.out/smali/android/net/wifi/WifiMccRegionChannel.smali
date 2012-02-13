.class public Landroid/net/wifi/WifiMccRegionChannel;
.super Ljava/lang/Object;
.source "WifiMccRegionChannel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiMccRegionChannel"

.field public static final WIFI_CHANNEL_IEEE_REGION_ETSI:I = 0xd

.field public static final WIFI_CHANNEL_IEEE_REGION_FCC:I = 0xb

.field public static final WIFI_CHANNEL_IEEE_REGION_MKK1:I = 0xe

.field private static final mMcc2ChannelTable:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/16 v0, 0x36

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [I

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiMccRegionChannel;->mMcc2ChannelTable:[[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x36t 0x1t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2et 0x1t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x4et 0x1t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xd4t 0x2t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0xd2t 0x2t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0xb8t 0x1t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0xeat 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0xd0t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0xd6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0xdet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x6t 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0xe8t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0xcet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0xdat 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x1ct 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0xdbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x18t 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0xe6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0xeet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0xf8t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0xf4t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0xcat 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0xd8t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x12t 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0x10t 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0xf7t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0x27t 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0xf6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0xcct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0x16t 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_1e
    .array-data 0x4
        0xf2t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0xet 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_20
    .array-data 0x4
        0x4t 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_21
    .array-data 0x4
        0xct 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_22
    .array-data 0x4
        0xe2t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_23
    .array-data 0x4
        0xfat 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_24
    .array-data 0x4
        0xe7t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_25
    .array-data 0x4
        0x25t 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_26
    .array-data 0x4
        0xf0t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_27
    .array-data 0x4
        0xe4t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_28
    .array-data 0x4
        0x1et 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_29
    .array-data 0x4
        0x1et 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_2a
    .array-data 0x4
        0xcct 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_2b
    .array-data 0x4
        0xc6t 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_2c
    .array-data 0x4
        0x94t 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_2d
    .array-data 0x4
        0xfet 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_2e
    .array-data 0x4
        0xc2t 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_2f
    .array-data 0x4
        0xf6t 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_30
    .array-data 0x4
        0x3t 0x2t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_31
    .array-data 0x4
        0xdt 0x2t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_32
    .array-data 0x4
        0xd2t 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_33
    .array-data 0x4
        0x8t 0x2t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_34
    .array-data 0x4
        0xf9t 0x1t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_35
    .array-data 0x4
        0x12t 0x2t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMccChannelNum()I
    .locals 9

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    .local v5, operator:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x3

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, mcc:Ljava/lang/String;
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, mnc:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, mccTmp:I
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, mncTmp:I
    invoke-static {v2}, Landroid/net/wifi/WifiMccRegionChannel;->transMcc2Channel(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .end local v1           #mcc:Ljava/lang/String;
    .end local v2           #mccTmp:I
    .end local v3           #mnc:Ljava/lang/String;
    .end local v4           #mncTmp:I
    :goto_0
    return v6

    :catch_0
    move-exception v6

    move-object v0, v6

    .local v0, e:Ljava/lang/Exception;
    const-string v6, "WifiMccRegionChannel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing MCC/MNC from operator \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/16 v6, 0xb

    goto :goto_0
.end method

.method private static transMcc2Channel(I)I
    .locals 4
    .parameter "CountryCode"

    .prologue
    const-string v1, "WifiMccRegionChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input country code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Landroid/net/wifi/WifiMccRegionChannel;->mMcc2ChannelTable:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Landroid/net/wifi/WifiMccRegionChannel;->mMcc2ChannelTable:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne p0, v1, :cond_0

    sget-object v1, Landroid/net/wifi/WifiMccRegionChannel;->mMcc2ChannelTable:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    goto :goto_1
.end method
