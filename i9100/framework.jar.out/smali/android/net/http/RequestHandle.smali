.class public Landroid/net/http/RequestHandle;
.super Ljava/lang/Object;
.source "RequestHandle.java"


# static fields
.field private static final AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field public static final MAX_REDIRECT_COUNT:I = 0x10

.field private static final PROXY_AUTHORIZATION_HEADER:Ljava/lang/String; = "Proxy-Authorization"


# instance fields
.field private mBodyLength:I

.field private mBodyProvider:Ljava/io/InputStream;

.field private mConnection:Landroid/net/http/Connection;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;

.field private mRedirectCount:I

.field private mRequest:Landroid/net/http/Request;

.field private mRequestQueue:Landroid/net/http/RequestQueue;

.field private mUri:Landroid/net/WebAddress;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V
    .locals 1
    .parameter "requestQueue"
    .parameter "url"
    .parameter "uri"
    .parameter "method"
    .parameter
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/RequestQueue;",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p5, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    .line 65
    if-nez p5, :cond_0

    .line 66
    new-instance p5, Ljava/util/HashMap;

    .end local p5           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 68
    .restart local p5       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iput-object p5, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    .line 69
    iput-object p6, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    .line 70
    iput p7, p0, Landroid/net/http/RequestHandle;->mBodyLength:I

    .line 71
    if-nez p4, :cond_1

    const-string v0, "GET"

    :goto_0
    iput-object v0, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/WebAddress;

    .line 76
    iput-object p1, p0, Landroid/net/http/RequestHandle;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 78
    iput-object p8, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    .line 79
    return-void

    :cond_1
    move-object v0, p4

    .line 71
    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;Landroid/net/http/Connection;)V
    .locals 0
    .parameter "requestQueue"
    .parameter "url"
    .parameter "uri"
    .parameter "method"
    .parameter
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .parameter "request"
    .parameter "conn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/RequestQueue;",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/Request;",
            "Landroid/net/http/Connection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p5, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p8}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V

    .line 91
    iput-object p9, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    .line 92
    return-void
.end method

.method private H(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "param"

    .prologue
    .line 379
    if-eqz p1, :cond_0

    .line 380
    new-instance v1, Landroid/security/Md5MessageDigest;

    invoke-direct {v1}, Landroid/security/Md5MessageDigest;-><init>()V

    .line 382
    .local v1, md5:Landroid/security/Md5MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/Md5MessageDigest;->digest([B)[B

    move-result-object v0

    .line 383
    .local v0, d:[B
    if-eqz v0, :cond_0

    .line 384
    invoke-direct {p0, v0}, Landroid/net/http/RequestHandle;->bufferToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 388
    .end local v0           #d:[B
    .end local v1           #md5:Landroid/security/Md5MessageDigest;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "secret"
    .parameter "data"

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static authorizationHeader(Z)Ljava/lang/String;
    .locals 1
    .parameter "isProxy"

    .prologue
    .line 341
    if-nez p0, :cond_0

    .line 342
    const-string v0, "Authorization"

    .line 344
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Proxy-Authorization"

    goto :goto_0
.end method

.method private bufferToHex([B)Ljava/lang/String;
    .locals 7
    .parameter "buffer"

    .prologue
    .line 395
    const/16 v6, 0x10

    new-array v2, v6, [C

    fill-array-data v2, :array_0

    .line 398
    .local v2, hexChars:[C
    if-eqz p1, :cond_2

    .line 399
    array-length v5, p1

    .line 400
    .local v5, length:I
    if-lez v5, :cond_1

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v5, 0x2

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 403
    .local v1, hex:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 404
    aget-byte v6, p1, v3

    and-int/lit8 v6, v6, 0xf

    int-to-byte v4, v6

    .line 405
    .local v4, l:B
    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    int-to-byte v0, v6

    .line 407
    .local v0, h:B
    aget-char v6, v2, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    aget-char v6, v2, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 403
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 411
    .end local v0           #h:B
    .end local v4           #l:B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 417
    .end local v1           #hex:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    .end local v5           #length:I
    :goto_1
    return-object v6

    .line 413
    .restart local v5       #length:I
    :cond_1
    const-string v6, ""

    goto :goto_1

    .line 417
    .end local v5           #length:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 395
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public static computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "username"
    .parameter "password"

    .prologue
    .line 275
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 276
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 279
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private computeCnonce()Ljava/lang/String;
    .locals 3

    .prologue
    .line 424
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 425
    .local v1, rand:Ljava/util/Random;
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 426
    .local v0, nextInt:I
    const/high16 v2, -0x8000

    if-ne v0, v2, :cond_0

    const v2, 0x7fffffff

    move v0, v2

    .line 428
    :goto_0
    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 426
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method private computeDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "A1"
    .parameter "A2"
    .parameter "nonce"
    .parameter "QOP"
    .parameter "nc"
    .parameter "cnonce"

    .prologue
    const-string v3, ":"

    .line 357
    if-nez p4, :cond_0

    .line 358
    invoke-direct {p0, p1}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/http/RequestHandle;->KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    :goto_0
    return-object v0

    .line 360
    :cond_0
    const-string v0, "auth"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-direct {p0, p1}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/http/RequestHandle;->KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private computeDigestAuthResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "username"
    .parameter "password"
    .parameter "realm"
    .parameter "nonce"
    .parameter "QOP"
    .parameter "algorithm"
    .parameter "opaque"

    .prologue
    .line 303
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 304
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 305
    invoke-static {p3}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, A1:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, A2:Ljava/lang/String;
    const-string v7, "000001"

    .line 312
    .local v7, nc:Ljava/lang/String;
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->computeCnonce()Ljava/lang/String;

    move-result-object v8

    .local v8, cnonce:Ljava/lang/String;
    move-object v2, p0

    move-object v5, p4

    move-object/from16 v6, p5

    .line 313
    invoke-direct/range {v2 .. v8}, Landroid/net/http/RequestHandle;->computeDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 315
    .local v9, digest:Ljava/lang/String;
    const-string v10, ""

    .line 316
    .local v10, response:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "username="

    .end local v3           #A1:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "realm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "nonce="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v9}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 322
    if-eqz p7, :cond_0

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", opaque="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 326
    :cond_0
    if-eqz p6, :cond_1

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", algorithm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 330
    :cond_1
    if-eqz p5, :cond_2

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", qop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cnonce="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v8}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 334
    :cond_2
    return-object v10
.end method

.method private createAndQueueNewRequest()V
    .locals 9

    .prologue
    .line 447
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequestQueue:Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/WebAddress;

    iget-object v3, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    iget-object v5, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iget-object v5, v5, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v6, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    iget v7, p0, Landroid/net/http/RequestHandle;->mBodyLength:I

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueSynchronousRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v8

    .line 451
    .local v8, newHandle:Landroid/net/http/RequestHandle;
    iget-object v0, v8, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iput-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    .line 452
    iget-object v0, v8, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    iput-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    .line 453
    invoke-virtual {v8}, Landroid/net/http/RequestHandle;->processRequest()V

    .line 460
    .end local v8           #newHandle:Landroid/net/http/RequestHandle;
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequestQueue:Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/WebAddress;

    iget-object v3, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    iget-object v5, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iget-object v5, v5, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v6, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    iget v7, p0, Landroid/net/http/RequestHandle;->mBodyLength:I

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    iget-object v0, v0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iput-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    goto :goto_0
.end method

.method private doubleQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "param"

    .prologue
    const-string v2, "\""

    .line 435
    if-eqz p1, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupAuthResponse()V
    .locals 1

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->createAndQueueNewRequest()V

    .line 262
    return-void

    .line 256
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    invoke-virtual {v0}, Landroid/net/http/Request;->cancel()V

    .line 101
    :cond_0
    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectCount()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    return v0
.end method

.method public handleSslErrorResponse(Z)V
    .locals 1
    .parameter "proceed"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    invoke-virtual {v0, p1}, Landroid/net/http/Request;->handleSslErrorResponse(Z)V

    .line 121
    :cond_0
    return-void
.end method

.method public isRedirectMax()Z
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseRequest(Z)V
    .locals 1
    .parameter "pause"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    invoke-virtual {v0, p1}, Landroid/net/http/Request;->setLoadingPaused(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public processRequest()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    iget-object v1, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    invoke-virtual {v0, v1}, Landroid/net/http/Connection;->processRequests(Landroid/net/http/Request;)V

    .line 290
    :cond_0
    return-void
.end method

.method public setRedirectCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 135
    iput p1, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    .line 136
    return-void
.end method

.method public setupBasicAuthResponse(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "isProxy"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 224
    invoke-static {p2, p3}, Landroid/net/http/RequestHandle;->computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, response:Ljava/lang/String;
    iget-object v1, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    invoke-static {p1}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->setupAuthResponse()V

    .line 230
    return-void
.end method

.method public setupDigestAuthResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "isProxy"
    .parameter "username"
    .parameter "password"
    .parameter "realm"
    .parameter "nonce"
    .parameter "QOP"
    .parameter "algorithm"
    .parameter "opaque"

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/net/http/RequestHandle;->computeDigestAuthResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 249
    .local v8, response:Ljava/lang/String;
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    invoke-static {p1}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Digest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->setupAuthResponse()V

    .line 251
    return-void
.end method

.method public setupRedirect(Ljava/lang/String;ILjava/util/Map;)Z
    .locals 7
    .parameter "redirectTo"
    .parameter "statusCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, cacheHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    const-string v5, "Cookie"

    .line 155
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v4, "Authorization"

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v4, "Proxy-Authorization"

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget v3, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    .line 163
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    const/16 v4, -0x9

    const v5, 0x1040138

    invoke-virtual {v3, v4, v5}, Landroid/net/http/Request;->error(II)V

    move v3, v6

    .line 217
    :goto_0
    return v3

    .line 168
    :cond_0
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    const-string v4, "https:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "http:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v4, "Referer"

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_1
    iput-object p1, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    .line 178
    :try_start_0
    new-instance v3, Landroid/net/WebAddress;

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/WebAddress;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_1
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v4, "Cookie"

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/WebAddress;

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->getCookie(Landroid/net/WebAddress;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, cookie:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 187
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v4, "Cookie"

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    const/16 v3, 0x12e

    if-eq p2, v3, :cond_3

    const/16 v3, 0x12f

    if-ne p2, v3, :cond_4

    :cond_3
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    const-string v3, "GET"

    iput-object v3, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    .line 198
    :cond_4
    const/16 v3, 0x133

    if-ne p2, v3, :cond_6

    .line 200
    :try_start_1
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    :cond_5
    :goto_2
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 216
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->createAndQueueNewRequest()V

    .line 217
    const/4 v3, 0x1

    goto :goto_0

    .line 179
    .end local v0           #cookie:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 180
    .local v1, e:Landroid/net/ParseException;
    invoke-virtual {v1}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_1

    .line 201
    .end local v1           #e:Landroid/net/ParseException;
    .restart local v0       #cookie:Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v2, v3

    .local v2, ex:Ljava/io/IOException;
    move v3, v6

    .line 205
    goto :goto_0

    .line 209
    .end local v2           #ex:Ljava/io/IOException;
    :cond_6
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v4, "Content-Type"

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    goto :goto_2
.end method

.method public waitUntilComplete()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    invoke-virtual {v0}, Landroid/net/http/Request;->waitUntilComplete()V

    .line 284
    return-void
.end method
