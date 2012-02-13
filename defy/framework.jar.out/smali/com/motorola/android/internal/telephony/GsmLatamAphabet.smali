.class public Lcom/motorola/android/internal/telephony/GsmLatamAphabet;
.super Ljava/lang/Object;
.source "GsmLatamAphabet.java"


# static fields
.field private static final LATAM_CONVERT_CHAR:Ljava/lang/String; = "sms.convert.char.for.latam"

.field private static final LOCAL_DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static enableLatamCharConvert:Z

.field private static final specialCharMapTable:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x6f

    const/16 v6, 0x45

    const/16 v5, 0x4f

    const/16 v4, 0x41

    const/16 v3, 0x3f

    const-string v0, "sms.convert.char.for.latam"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->enableLatamCharConvert:Z

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xc0

    const/16 v2, 0xe0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xc1

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xc2

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xc3

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xc8

    const/16 v2, 0xe8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xca

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xcc

    const/16 v2, 0xec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xcd

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xce

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xcf

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xd2

    const/16 v2, 0xf2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xd7

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xd9

    const/16 v2, 0xf9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xda

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xdb

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xe1

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xe2

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xe3

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xe7

    const/16 v2, 0xc7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xea

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xeb

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xed

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xee

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xef

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xf3

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xf4

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xf5

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xfa

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xfb

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x104

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x105

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x106

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x107

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x118

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x119

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x11e

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x11f

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x131

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x141

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x142

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x143

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x144

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x150

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x151

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x15a

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x15b

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x15e

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x15f

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x170

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x171

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x179

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x17a

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x17b

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x17c

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x391

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x392

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x395

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x396

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x397

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x399

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x39a

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x39c

    const/16 v2, 0x4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x39d

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x39f

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a1

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a4

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a5

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a7

    const/16 v2, 0x58

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b2

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b3

    const/16 v2, 0x393

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b4

    const/16 v2, 0x394

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b5

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b6

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b7

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b8

    const/16 v2, 0x398

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b9

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3ba

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3bb

    const/16 v2, 0x39b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3bc

    const/16 v2, 0x4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3bd

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3be

    const/16 v2, 0x39e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3bf

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c0

    const/16 v2, 0x3a0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c1

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c2

    const/16 v2, 0x3a3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c4

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c5

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c6

    const/16 v2, 0x3a6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c7

    const/16 v2, 0x58

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c8

    const/16 v2, 0x3a8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c9

    const/16 v2, 0x3a9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x2010

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xd0

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xdd

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xfd

    const/16 v2, 0x79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xff

    const/16 v2, 0x79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x100

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x101

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x10c

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x10d

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x10e

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x10f

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x111

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x112

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x113

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x11a

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x11b

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x12a

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x12b

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x132

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x133

    const/16 v2, 0x6a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x13d

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x13e

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x147

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x148

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x14c

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x14d

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x152

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x153

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x154

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x155

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x158

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x159

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x160

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x161

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x164

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x165

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x16a

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x16b

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x16e

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x16f

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x178

    const/16 v2, 0x79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x17d

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x17e

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x60

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xa2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xa6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xa9

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xab

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xae

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xaf

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xb0

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xb1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xb6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xbb

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0xf7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x192

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x2dd

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x2013

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x2014

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x201a

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x201c

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x201d

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x201e

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x2020

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x2021

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x2022

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x2026

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x2030

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x2039

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x203a

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x20a3

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x20a4

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x20b1

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x2122

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x221a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x221e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x2248

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x2260

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x2264

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x2265

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x102

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x103

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x162

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x163

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertSpecialChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "strOrig"

    .prologue
    if-nez p0, :cond_0

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v5, strbOutput:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    sget-object v6, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->specialCharMapTable:Landroid/util/SparseIntArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    int-to-char v2, v6

    .local v2, convertC:C
    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(C)I

    move-result v1

    .local v1, charToGsmRet:I
    const/16 v6, 0x20

    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(C)I

    move-result v6

    if-ne v1, v6, :cond_2

    const/16 v2, 0x20

    .end local v1           #charToGsmRet:I
    :cond_1
    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .restart local v1       #charToGsmRet:I
    :cond_2
    move v2, v0

    goto :goto_2

    .end local v0           #c:C
    .end local v1           #charToGsmRet:I
    .end local v2           #convertC:C
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static isCharConvertEnabled()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/motorola/android/internal/telephony/GsmLatamAphabet;->enableLatamCharConvert:Z

    return v0
.end method
