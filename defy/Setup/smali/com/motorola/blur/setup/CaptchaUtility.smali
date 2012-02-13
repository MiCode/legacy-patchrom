.class public Lcom/motorola/blur/setup/CaptchaUtility;
.super Ljava/lang/Object;
.source "CaptchaUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/CaptchaUtility$CaptchaProcessingResult;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "CaptchaUtility"

    sput-object v0, Lcom/motorola/blur/setup/CaptchaUtility;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static downloadProviderCaptcha(Landroid/os/Handler;ILjava/lang/String;)V
    .locals 10
    .parameter "handler"
    .parameter "what"
    .parameter "url"

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 33
    .local v5, msg:Landroid/os/Message;
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 34
    .local v2, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 35
    .local v3, httpReq:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 37
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 39
    .local v4, in:Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    .local v6, out:Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 44
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 46
    .local v8, size:I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 52
    iput p1, v5, Landroid/os/Message;->what:I

    .line 53
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v5, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0           #buf:[B
    .end local v2           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3           #httpReq:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #size:I
    :goto_1
    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    return-void

    .line 49
    .restart local v0       #buf:[B
    .restart local v2       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3       #httpReq:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #size:I
    :cond_0
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v6, v0, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 54
    .end local v0           #buf:[B
    .end local v2           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3           #httpReq:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #size:I
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 55
    .local v1, e:Ljava/io/IOException;
    iput p1, v5, Landroid/os/Message;->what:I

    .line 56
    const/4 v9, 0x0

    iput-object v9, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method

.method public static processSNResponseForCaptcha(Landroid/os/Handler;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;I)I
    .locals 8
    .parameter "handler"
    .parameter "snpResp"
    .parameter "what"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 71
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 72
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    .line 73
    .local v2, result:I
    invoke-virtual {p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaImageBuf()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    sget-object v3, Lcom/motorola/blur/setup/CaptchaUtility;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, " Using the image buffer"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getCaptchaImageBuf()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 77
    .local v0, decoded:[B
    iput p2, v1, Landroid/os/Message;->what:I

    .line 78
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    .end local v0           #decoded:[B
    :goto_0
    return v2

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaImageUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    sget-object v3, Lcom/motorola/blur/setup/CaptchaUtility;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "Using the image url "

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const/4 v2, 0x2

    .line 85
    invoke-virtual {p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getCaptchaImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p2, v3}, Lcom/motorola/blur/setup/CaptchaUtility;->downloadProviderCaptcha(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    sget-object v3, Lcom/motorola/blur/setup/CaptchaUtility;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Server BUG! Informed that has captcha but "

    aput-object v5, v4, v6

    const-string v5, "did not send the url neither the byte array"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    const/4 v2, 0x0

    goto :goto_0
.end method
