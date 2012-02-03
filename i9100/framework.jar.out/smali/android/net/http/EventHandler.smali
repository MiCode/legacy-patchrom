.class public interface abstract Landroid/net/http/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_AUTH:I = -0x4

.field public static final ERROR_BAD_URL:I = -0xc

.field public static final ERROR_CONNECT:I = -0x6

.field public static final ERROR_FAILED_SSL_HANDSHAKE:I = -0xb

.field public static final ERROR_IO:I = -0x7

.field public static final ERROR_LOOKUP:I = -0x2

.field public static final ERROR_PROXYAUTH:I = -0x5

.field public static final ERROR_REDIRECT_LOOP:I = -0x9

.field public static final ERROR_TIMEOUT:I = -0x8

.field public static final ERROR_UNSUPPORTED_AUTH_SCHEME:I = -0x3

.field public static final ERROR_UNSUPPORTED_SCHEME:I = -0xa

.field public static final FILE_ERROR:I = -0xd

.field public static final FILE_NOT_FOUND_ERROR:I = -0xe

.field public static final OK:I = 0x0

.field public static final TOO_MANY_REQUESTS_ERROR:I = -0xf

.field public static final errorStringResources:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/http/EventHandler;->errorStringResources:[I

    return-void

    :array_0
    .array-data 0x4
        0x2ft 0x1t 0x4t 0x1t
        0x30t 0x1t 0x4t 0x1t
        0x31t 0x1t 0x4t 0x1t
        0x32t 0x1t 0x4t 0x1t
        0x33t 0x1t 0x4t 0x1t
        0x34t 0x1t 0x4t 0x1t
        0x35t 0x1t 0x4t 0x1t
        0x36t 0x1t 0x4t 0x1t
        0x37t 0x1t 0x4t 0x1t
        0x38t 0x1t 0x4t 0x1t
        0x8t 0x0t 0x4t 0x1t
        0x39t 0x1t 0x4t 0x1t
        0x7t 0x0t 0x4t 0x1t
        0x3at 0x1t 0x4t 0x1t
        0x3bt 0x1t 0x4t 0x1t
        0x3ct 0x1t 0x4t 0x1t
    .end array-data
.end method


# virtual methods
.method public abstract certificate(Landroid/net/http/SslCertificate;)V
.end method

.method public abstract data([BI)V
.end method

.method public abstract endData()V
.end method

.method public abstract error(ILjava/lang/String;)V
.end method

.method public abstract handleSslErrorRequest(Landroid/net/http/SslError;)Z
.end method

.method public abstract headers(Landroid/net/http/Headers;)V
.end method

.method public abstract status(IIILjava/lang/String;)V
.end method
