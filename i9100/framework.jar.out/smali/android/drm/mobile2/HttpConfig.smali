.class public Landroid/drm/mobile2/HttpConfig;
.super Ljava/lang/Object;
.source "HttpConfig.java"

# interfaces
.implements Landroid/drm/mobile2/HttpConstants;


# static fields
.field public static final DEFAULT_USER_AGENT:Ljava/lang/String; = "SAMSUNG-GT-I8320-Vodafone/I8320BUIC1 Linux/X2/R1 Opera/9.6 SMM-MMS/1.2.0 profile/MIDP-2.1 configuration/CLDC-1.1"

.field public static MAX_DATA_LEN:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field EntityID:I

.field bUsed:Z

.field iInternalRetry:I

.field method:I

.field pRcvdBody:Ljava/lang/String;

.field pRcvdHeader:Ljava/lang/String;

.field pSendHeader:Ljava/lang/String;

.field pUrl:Ljava/lang/String;

.field postData:[C

.field postLen:I

.field postedLen:I

.field rcvdBodyLen:I

.field resultStatus:I

.field trId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "SISODRM"

    sput-object v0, Landroid/drm/mobile2/HttpConfig;->TAG:Ljava/lang/String;

    .line 12
    const/16 v0, 0x1000

    sput v0, Landroid/drm/mobile2/HttpConfig;->MAX_DATA_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static getHttpParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getHttpSocketTimeout()I
    .locals 2

    .prologue
    .line 51
    sget-object v0, Landroid/drm/mobile2/HttpConfig;->TAG:Ljava/lang/String;

    const-string v1, "getHttpSocketTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public static getUaProfTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "SAMSUNG-GT-I8320-Vodafone/I8320BUIC1 Linux/X2/R1 Opera/9.6 SMM-MMS/1.2.0 profile/MIDP-2.1 configuration/CLDC-1.1"

    .line 78
    .local v0, userAgent:Ljava/lang/String;
    return-object v0
.end method
