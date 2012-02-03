.class Landroid/webkit/LoadListener;
.super Landroid/os/Handler;
.source "LoadListener.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# static fields
.field private static final CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HASH_MIME_APPLICATION_VND_OMA_DD_XML:I = 0x12fac3b8

.field private static final HASH_MIME_APPLICATION_VND_OMA_DRM_DCF:I = 0x67c1d54c

.field private static final HASH_MIME_APPLICATION_VND_OMA_DRM_RO_XML:I = 0x6e088824

.field private static final HASH_MIME_APPLICATION_VND_OMA_ROAPPDU_XML:I = -0x64a50f9

.field private static final HASH_MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:I = 0x3e4a533e

.field private static final HTTP_AUTH:I = 0x191

.field private static final HTTP_FOUND:I = 0x12e

.field private static final HTTP_MOVED_PERMANENTLY:I = 0x12d

.field private static final HTTP_NOT_FOUND:I = 0x194

.field private static final HTTP_NOT_MODIFIED:I = 0x130

.field private static final HTTP_OK:I = 0xc8

.field private static final HTTP_PARTIAL_CONTENT:I = 0xce

.field private static final HTTP_PROXY_AUTH:I = 0x197

.field private static final HTTP_SEE_OTHER:I = 0x12f

.field private static final HTTP_TEMPORARY_REDIRECT:I = 0x133

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MSG_CONTENT_DATA:I = 0x6e

.field private static final MSG_CONTENT_ERROR:I = 0x82

.field private static final MSG_CONTENT_FINISHED:I = 0x78

.field private static final MSG_CONTENT_HEADERS:I = 0x64

.field private static final MSG_LOCATION_CHANGED:I = 0x8c

.field private static final MSG_LOCATION_CHANGED_REQUEST:I = 0x96

.field private static final MSG_SSL_CERTIFICATE:I = 0xaa

.field private static final MSG_SSL_ERROR:I = 0xb4

.field private static final MSG_STATUS:I = 0xa0

.field private static final XML_MIME_TYPE:Ljava/lang/String; = "^[\\w_\\-+~!$\\^{}|.%\'`#&*]+/[\\w_\\-+~!$\\^{}|.%\'`#&*]+\\+xml$"

.field public static errorCode:I

.field public static errorCode404:Z

.field public static mdataSize:I

.field private static sCertificateTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNativeLoaderCount:I


# instance fields
.field bLoggingEnableCIQ:Z

.field private clientErrorMsg:[Ljava/lang/String;

.field private downloadStream:Ljava/io/FileOutputStream;

.field private isDownloadabelfile:Z

.field private mAuthFailed:Z

.field private mAuthHeader:Landroid/net/http/HttpAuthHeader;

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mCacheLoader:Landroid/webkit/CacheLoader;

.field private mCacheRedirectCount:I

.field private mCancelled:Z

.field public mContentLength:J

.field private mContext:Landroid/content/Context;

.field private final mDataBuilder:Landroid/webkit/ByteArrayBuilder;

.field private mEncoding:Ljava/lang/String;

.field private mErrorDescription:Ljava/lang/String;

.field private mErrorID:I

.field private mFromCache:Z

.field private mHeaders:Landroid/net/http/Headers;

.field private mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

.field private mIsMainPageLoader:Z

.field private final mIsMainResourceLoader:Z

.field private mMessageQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mNativeLoader:I

.field private mOriginalUrl:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field private mPermanent:Z

.field private mPostData:[B

.field private mPostIdentifier:J

.field private mRedirectConfirmation:Z

.field private mRequestHandle:Landroid/net/http/RequestHandle;

.field private mRequestHeaders:Ljava/util/Map;
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

.field private mShouldDoFeedSniff:Z

.field private mSslError:Landroid/net/http/SslError;

.field private mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

.field private mStatusCode:I

.field private mStatusText:Ljava/lang/String;

.field private mSynchronous:Z

.field private mTransferEncoding:Ljava/lang/String;

.field private mUri:Landroid/net/WebAddress;

.field private mUrl:Ljava/lang/String;

.field private final mUserGesture:Z

.field private final mUsername:Ljava/lang/String;

.field private m_feedTypeSniffed:Z

.field private serverErrorMsg:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v3, "CERT"

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    .line 100
    sget-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-x509-ca-cert"

    const-string v2, "CERT"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-x509-user-cert"

    const-string v2, "CERT"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-pkcs12"

    const-string v2, "PKCS12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/4 v0, 0x0

    sput v0, Landroid/webkit/LoadListener;->mdataSize:I

    .line 1830
    const-string v0, "^((?:[xX]-)?[a-zA-Z\\*]+/[\\w\\+\\*-]+[\\.[\\w\\+-]+]*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/LoadListener;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "frame"
    .parameter "url"
    .parameter "nativeLoader"
    .parameter "synchronous"
    .parameter "isMainPageLoader"
    .parameter "isMainResource"
    .parameter "userGesture"
    .parameter "postIdentifier"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 196
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 107
    new-instance v0, Landroid/webkit/ByteArrayBuilder;

    invoke-direct {v0}, Landroid/webkit/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/LoadListener;->mErrorID:I

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->m_feedTypeSniffed:Z

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->isDownloadabelfile:Z

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mRedirectConfirmation:Z

    .line 241
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Bad Request"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Unauthorized"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Rayment Required"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Forbidden"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Not Found"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Method Not Allowed"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Not Acceptable"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Proxy Authentication Required"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Request Timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Conflict"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Gone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Length Required"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Precondition Failed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Request entity too large"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Request-URI too long"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Unsupported media type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Request Range Not Satisfied"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Expectation Failed"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/webkit/LoadListener;->clientErrorMsg:[Ljava/lang/String;

    .line 261
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Internal Server Error"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Not Implemented"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Bad Gateway"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Service Unavailable"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Gateway Timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HTTP Version Not Supported"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/webkit/LoadListener;->serverErrorMsg:[Ljava/lang/String;

    .line 197
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_0

    .line 198
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener constructor url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iput-object p1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    .line 201
    iput-object p2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 202
    invoke-virtual {p0, p3}, Landroid/webkit/LoadListener;->setUrl(Ljava/lang/String;)V

    .line 203
    iput p4, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    .line 204
    iput-boolean p5, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    .line 205
    if-eqz p5, :cond_1

    .line 206
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    .line 208
    :cond_1
    iput-boolean p6, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    .line 209
    iput-boolean p7, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    .line 210
    iput-boolean p8, p0, Landroid/webkit/LoadListener;->mUserGesture:Z

    .line 211
    iput-wide p9, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    .line 212
    iput-object p11, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    .line 213
    iput-object p12, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    .line 229
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/LoadListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/LoadListener;->nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearNativeLoader()V
    .locals 2

    .prologue
    .line 236
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    .line 238
    return-void
.end method

.method private commitHeaders()V
    .locals 3

    .prologue
    .line 1399
    iget-boolean v1, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1409
    :cond_1
    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v1, :cond_0

    .line 1413
    invoke-direct {p0}, Landroid/webkit/LoadListener;->createNativeResponse()I

    move-result v0

    .line 1415
    .local v0, nativeResponse:I
    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->nativeReceivedResponse(I)V

    goto :goto_0
.end method

.method private commitHeadersCheckRedirect()V
    .locals 2

    .prologue
    .line 1381
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1389
    :cond_1
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12d

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12f

    if-le v0, v1, :cond_0

    :cond_2
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-nez v0, :cond_0

    .line 1394
    :cond_3
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeaders()V

    goto :goto_0
.end method

.method private commitLoad()V
    .locals 12

    .prologue
    const-string/jumbo v11, "webkit"

    .line 1449
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v7, :cond_1

    .line 1523
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->isDownloadabelfile:Z

    if-eqz v7, :cond_3

    .line 1454
    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v7}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v3

    .line 1456
    .local v3, data:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v3, :cond_0

    iget v7, v3, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v7, :cond_0

    .line 1457
    iget-object v7, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    if-eqz v7, :cond_2

    .line 1459
    :try_start_0
    iget-object v7, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    iget-object v8, v3, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v9, 0x0

    iget v10, v3, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1460
    const-string/jumbo v7, "webkit"

    const-string v8, "***xml downloadable File Writing Sucess *****"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    :cond_2
    :goto_1
    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v7, v3}, Landroid/webkit/ByteArrayBuilder;->releaseChunk(Landroid/webkit/ByteArrayBuilder$Chunk;)V

    goto :goto_0

    .line 1461
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 1462
    .local v4, e:Ljava/io/IOException;
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    .line 1463
    const-string/jumbo v7, "webkit"

    const-string v7, "**** xml download File Writing Failure *****"

    invoke-static {v11, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1474
    .end local v3           #data:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v4           #e:Ljava/io/IOException;
    :cond_3
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v7, :cond_6

    .line 1475
    sget-object v7, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1476
    .local v6, type:Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 1479
    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v7

    .line 1483
    :try_start_1
    iget-object v8, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v8}, Landroid/webkit/ByteArrayBuilder;->getByteSize()I

    move-result v8

    new-array v1, v8, [B

    .line 1484
    .local v1, cert:[B
    const/4 v5, 0x0

    .line 1486
    .local v5, offset:I
    :goto_2
    iget-object v8, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v8}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 1487
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-nez v0, :cond_4

    .line 1495
    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v1}, Landroid/webkit/CertTool;->addCertificate(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 1496
    iget-object v8, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v8}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 1497
    monitor-exit v7

    goto :goto_0

    .line 1498
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v1           #cert:[B
    .end local v5           #offset:I
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1489
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .restart local v1       #cert:[B
    .restart local v5       #offset:I
    :cond_4
    :try_start_2
    iget v8, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v8, :cond_5

    .line 1490
    iget-object v8, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v9, 0x0

    iget v10, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {v8, v9, v1, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1491
    iget v8, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v5, v8

    .line 1493
    :cond_5
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1505
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v1           #cert:[B
    .end local v5           #offset:I
    .end local v6           #type:Ljava/lang/String;
    :cond_6
    new-instance v2, Landroid/webkit/PerfChecker;

    invoke-direct {v2}, Landroid/webkit/PerfChecker;-><init>()V

    .line 1508
    .local v2, checker:Landroid/webkit/PerfChecker;
    :goto_3
    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v7}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 1509
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_0

    .line 1511
    iget v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v7, :cond_7

    .line 1512
    iget-object v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v8, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    .line 1513
    new-instance v3, Landroid/webkit/WebViewWorker$CacheData;

    invoke-direct {v3}, Landroid/webkit/WebViewWorker$CacheData;-><init>()V

    .line 1514
    .local v3, data:Landroid/webkit/WebViewWorker$CacheData;
    iput-object p0, v3, Landroid/webkit/WebViewWorker$CacheData;->mListener:Landroid/webkit/LoadListener;

    .line 1515
    iput-object v0, v3, Landroid/webkit/WebViewWorker$CacheData;->mChunk:Landroid/webkit/ByteArrayBuilder$Chunk;

    .line 1516
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x69

    invoke-virtual {v7, v8, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1521
    .end local v3           #data:Landroid/webkit/WebViewWorker$CacheData;
    :goto_4
    const-string/jumbo v7, "res nativeAddData"

    invoke-virtual {v2, v7}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    goto :goto_3

    .line 1519
    :cond_7
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    goto :goto_4
.end method

.method private createNativeResponse()I
    .locals 9

    .prologue
    .line 1428
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    move v2, v0

    .line 1431
    .local v2, statusCode:I
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->originalUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    iget-object v7, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/webkit/LoadListener;->nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I

    move-result v8

    .line 1434
    .local v8, nativeResponse:I
    iget-object v0, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    if-eqz v0, :cond_0

    .line 1435
    iget-object v0, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    new-instance v1, Landroid/webkit/LoadListener$1;

    invoke-direct {v1, p0, v8}, Landroid/webkit/LoadListener$1;-><init>(Landroid/webkit/LoadListener;I)V

    invoke-virtual {v0, v1}, Landroid/net/http/Headers;->getHeaders(Landroid/net/http/Headers$HeaderCallback;)V

    .line 1441
    :cond_0
    return v8

    .line 1428
    .end local v2           #statusCode:I
    .end local v8           #nativeResponse:I
    :cond_1
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    move v2, v0

    goto :goto_0
.end method

.method private doRedirect()V
    .locals 14

    .prologue
    const v13, 0x1040007

    const/16 v12, -0xc

    const-string/jumbo v11, "webkit"

    .line 1706
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v7, :cond_1

    .line 1824
    :cond_0
    :goto_0
    return-void

    .line 1712
    :cond_1
    iget v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_2

    .line 1713
    const/16 v7, -0x9

    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v9, 0x1040138

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto :goto_0

    .line 1718
    :cond_2
    iget-object v7, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v7}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 1719
    .local v5, redirectTo:Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 1720
    invoke-direct {p0}, Landroid/webkit/LoadListener;->createNativeResponse()I

    move-result v3

    .line 1721
    .local v3, nativeResponse:I
    iget-object v7, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v7, v5, v3}, Landroid/webkit/LoadListener;->nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1725
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v7, :cond_0

    .line 1728
    if-nez v5, :cond_3

    .line 1729
    const-string/jumbo v7, "webkit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Redirection failed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v8}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    goto :goto_0

    .line 1733
    :cond_3
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1734
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v9, 0x1040362

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1737
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    .line 1738
    invoke-direct {p0}, Landroid/webkit/LoadListener;->nativeFinished()V

    .line 1739
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    goto/16 :goto_0

    .line 1745
    .end local v6           #text:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v7

    if-nez v7, :cond_9

    .line 1746
    new-instance v0, Landroid/webkit/WebViewWorker$CacheSaveData;

    invoke-direct {v0}, Landroid/webkit/WebViewWorker$CacheSaveData;-><init>()V

    .line 1747
    .local v0, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    iput-object p0, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    .line 1748
    iget-object v7, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v7, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    .line 1749
    iget-wide v7, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v7, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    .line 1750
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x6a

    invoke-virtual {v7, v8, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1758
    .end local v0           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :goto_1
    iput-object v5, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    .line 1760
    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->setUrl(Ljava/lang/String;)V

    .line 1763
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    if-nez v7, :cond_5

    .line 1764
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    .line 1766
    :cond_5
    const/4 v2, 0x0

    .line 1767
    .local v2, fromCache:Z
    iget-object v7, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v7, :cond_6

    .line 1770
    iget v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    .line 1771
    const/4 v2, 0x1

    .line 1773
    :cond_6
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {p0, v7}, Landroid/webkit/LoadListener;->checkCache(Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1776
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v7, :cond_a

    .line 1778
    :try_start_0
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iget v9, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    iget-object v10, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/http/RequestHandle;->setupRedirect(Ljava/lang/String;ILjava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1802
    :cond_7
    if-eqz v2, :cond_8

    .line 1806
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iget v8, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    invoke-virtual {v7, v8}, Landroid/net/http/RequestHandle;->setRedirectCount(I)V

    .line 1820
    .end local v2           #fromCache:Z
    .end local v3           #nativeResponse:I
    :cond_8
    :goto_2
    sget-boolean v7, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v7, :cond_0

    .line 1821
    const-string/jumbo v7, "webkit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LoadListener.onRedirect(): redirect to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1753
    .restart local v3       #nativeResponse:I
    :cond_9
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x6b

    invoke-virtual {v7, v8, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1780
    .restart local v2       #fromCache:Z
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1781
    .local v1, e:Ljava/lang/RuntimeException;
    const-string/jumbo v7, "webkit"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v12, v7}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1792
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v4

    .line 1793
    .local v4, network:Landroid/webkit/Network;
    iget-object v7, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    iget-object v9, p0, Landroid/webkit/LoadListener;->mPostData:[B

    invoke-virtual {v4, v7, v8, v9, p0}, Landroid/webkit/Network;->requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1797
    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v12, v7}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1808
    .end local v4           #network:Landroid/webkit/Network;
    :cond_b
    if-nez v2, :cond_8

    .line 1812
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v7}, Landroid/net/http/RequestHandle;->getRedirectCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    goto :goto_2

    .line 1815
    .end local v2           #fromCache:Z
    .end local v3           #nativeResponse:I
    :cond_c
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeaders()V

    .line 1816
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    .line 1817
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_2
.end method

.method private getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1598
    iget-object v0, p0, Landroid/webkit/LoadListener;->mErrorDescription:Ljava/lang/String;

    return-object v0
.end method

.method private getErrorID()I
    .locals 1

    .prologue
    .line 1590
    iget v0, p0, Landroid/webkit/LoadListener;->mErrorID:I

    return v0
.end method

.method public static getLoadListener(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)Landroid/webkit/LoadListener;
    .locals 13
    .parameter "context"
    .parameter "frame"
    .parameter "url"
    .parameter "nativeLoader"
    .parameter "synchronous"
    .parameter "isMainPageLoader"
    .parameter "isMainResource"
    .parameter "userGesture"
    .parameter "postIdentifier"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 183
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    .line 184
    new-instance v0, Landroid/webkit/LoadListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroid/webkit/LoadListener;-><init>(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNativeLoaderCount()I
    .locals 1

    .prologue
    .line 190
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    return v0
.end method

.method private guessMimeType()V
    .locals 4

    .prologue
    .line 2004
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2005
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    .line 2006
    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v3, 0x1040007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2007
    .local v1, text:Ljava/lang/String;
    const/16 v2, -0xc

    invoke-direct {p0, v2, v1}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    .line 2018
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2012
    :cond_1
    const-string/jumbo v2, "text/html"

    iput-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 2013
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2014
    .local v0, newMimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2015
    iput-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method private guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 2025
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_0

    .line 2026
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "guessMimeTypeFromExtension: url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .parameter "certificate"

    .prologue
    .line 802
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1}, Landroid/webkit/BrowserFrame;->certificate(Landroid/net/http/SslCertificate;)V

    .line 806
    :cond_0
    return-void
.end method

.method private handleEndData()V
    .locals 8

    .prologue
    const/16 v6, 0x96

    const/16 v4, 0x8c

    const/4 v5, 0x1

    const-string v7, "POST"

    .line 895
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v2, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    iget v2, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    sparse-switch v2, :sswitch_data_0

    .line 1040
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->detachRequestHandle()V

    .line 1041
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_0

    .line 900
    :sswitch_0
    iput-boolean v5, p0, Landroid/webkit/LoadListener;->mPermanent:Z

    .line 912
    :sswitch_1
    iget v2, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v3, 0x133

    if-ne v2, v3, :cond_9

    .line 913
    iget-object v2, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v2}, Landroid/net/http/RequestHandle;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 916
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mRedirectConfirmation:Z

    if-ne v5, v2, :cond_4

    .line 919
    :goto_1
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v2}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 920
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_2

    .line 922
    iget v2, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v2, :cond_3

    .line 923
    iget-object v2, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v3, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-direct {p0, v2, v3}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    goto :goto_1

    .line 925
    :cond_3
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    goto :goto_1

    .line 931
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_4
    invoke-virtual {p0, v6}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_0

    .line 933
    :cond_5
    iget-object v2, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 935
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mRedirectConfirmation:Z

    if-ne v5, v2, :cond_7

    .line 938
    :goto_2
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v2}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 939
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_2

    .line 941
    iget v2, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v2, :cond_6

    .line 942
    iget-object v2, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v3, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-direct {p0, v2, v3}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    goto :goto_2

    .line 944
    :cond_6
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    goto :goto_2

    .line 950
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_7
    invoke-virtual {p0, v6}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_0

    .line 953
    :cond_8
    invoke-virtual {p0, v4}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 956
    :cond_9
    invoke-virtual {p0, v4}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 972
    :sswitch_2
    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v2}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v2

    if-nez v2, :cond_2

    .line 977
    :cond_a
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-nez v2, :cond_c

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 978
    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v2}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/Network;->getProxyHostname()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 981
    .local v1, host:Ljava/lang/String;
    :goto_3
    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v2}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3, v4}, Landroid/webkit/HttpAuthHandler;->onReceivedCredentials(Landroid/webkit/LoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/webkit/LoadListener;->makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 978
    .end local v1           #host:Ljava/lang/String;
    :cond_b
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    iget-object v2, v2, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    move-object v1, v2

    goto :goto_3

    .line 985
    :cond_c
    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/webkit/Network;->handleAuthRequest(Landroid/webkit/LoadListener;)V

    goto/16 :goto_0

    .line 1002
    :sswitch_3
    iget-object v2, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v2, :cond_2

    .line 1003
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1004
    iget-object v2, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v2}, Landroid/webkit/CacheLoader;->load()V

    .line 1011
    :goto_4
    iput-boolean v5, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 1012
    sget-boolean v2, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v2, :cond_0

    .line 1013
    const-string/jumbo v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadListener cache load url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1007
    :cond_d
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v3, 0x65

    iget-object v4, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    .line 897
    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
        0x130 -> :sswitch_3
        0x133 -> :sswitch_1
        0x191 -> :sswitch_2
        0x197 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleError(ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "description"

    .prologue
    .line 826
    iput p1, p0, Landroid/webkit/LoadListener;->mErrorID:I

    .line 827
    iput-object p2, p0, Landroid/webkit/LoadListener;->mErrorDescription:Ljava/lang/String;

    .line 828
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->detachRequestHandle()V

    .line 829
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->notifyError()V

    .line 830
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    .line 831
    return-void
.end method

.method private handleHeaders(Landroid/net/http/Headers;)V
    .locals 21
    .parameter "headers"

    .prologue
    .line 517
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mCancelled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 731
    :goto_0
    return-void

    .line 522
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0xce

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 524
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v17

    const/16 v18, 0x6b

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 530
    :cond_1
    const/4 v7, 0x0

    .line 531
    .local v7, contentType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->m_feedTypeSniffed:Z

    move/from16 v17, v0

    if-nez v17, :cond_12

    .line 533
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v5

    .line 536
    .local v5, contentLength:J
    const-wide/16 v17, -0x1

    cmp-long v17, v5, v17

    if-eqz v17, :cond_b

    .line 537
    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/LoadListener;->mContentLength:J

    .line 543
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 545
    if-eqz v7, :cond_11

    .line 546
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/webkit/LoadListener;->parseContentTypeHeader(Ljava/lang/String;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "text/plain"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/octet-stream"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 555
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, contentDisposition:Ljava/lang/String;
    const/16 v16, 0x0

    .line 557
    .local v16, url:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 558
    invoke-static {v4}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 560
    :cond_3
    if-nez v16, :cond_4

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 563
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/webkit/LoadListener;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 564
    .local v15, newMimeType:Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 565
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 605
    .end local v4           #contentDisposition:Ljava/lang/String;
    .end local v5           #contentLength:J
    .end local v15           #newMimeType:Ljava/lang/String;
    .end local v16           #url:Ljava/lang/String;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mUserGesture:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const-string v17, "^[\\w_\\-+~!$\\^{}|.%\'`#&*]+/[\\w_\\-+~!$\\^{}|.%\'`#&*]+\\+xml$"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/xhtml+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 608
    new-instance v10, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v10, i:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/high16 v18, 0x1

    move-object/from16 v0, v17

    move-object v1, v10

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 612
    .local v11, info:Landroid/content/pm/ResolveInfo;
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 617
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/BrowserFrame;->stopLoading()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 620
    :catch_0
    move-exception v17

    .line 627
    .end local v10           #i:Landroid/content/Intent;
    .end local v11           #info:Landroid/content/pm/ResolveInfo;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x191

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x197

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    :cond_7
    const/16 v17, 0x1

    move/from16 v13, v17

    .line 630
    .local v13, mustAuthenticate:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x197

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    const/16 v17, 0x1

    move/from16 v12, v17

    .line 633
    .local v12, isProxyAuthRequest:Z
    :goto_4
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/LoadListener;->mAuthFailed:Z

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 639
    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v17

    move v0, v12

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    const/16 v17, 0x1

    :goto_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/LoadListener;->mAuthFailed:Z

    .line 644
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v14

    .line 647
    .local v14, network:Landroid/webkit/Network;
    invoke-virtual {v14}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 650
    monitor-enter v14

    .line 653
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/HttpAuthHeader;->getUsername()Ljava/lang/String;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/Network;->setProxyUsername(Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/HttpAuthHeader;->getPassword()Ljava/lang/String;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/Network;->setProxyPassword(Ljava/lang/String;)V

    .line 655
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    .end local v14           #network:Landroid/webkit/Network;
    :cond_8
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 663
    if-eqz v13, :cond_9

    .line 664
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x191

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 665
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getWwwAuthenticate()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/LoadListener;->parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 679
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/vnd.oma.dd+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/vnd.oma.drm.roap-trigger+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "multipart/related"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/webkit/LoadListener;->isDownLoadableMultipartContent(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 683
    :cond_a
    const-string/jumbo v17, "webkit"

    const-string v18, "****DD or Roap or  OMA multipart related  Mime Type *****"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string/jumbo v17, "webkit"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mime Type :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    move-object/from16 v17, v0

    if-nez v17, :cond_17

    .line 689
    :try_start_2
    new-instance v17, Ljava/io/FileOutputStream;

    const-string v18, "/sdcard/tempfile1.xml"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    .line 690
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/LoadListener;->isDownloadabelfile:Z

    .line 691
    const-string/jumbo v17, "webkit"

    const-string v18, "****DD xml File Creation Sucess *****"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 692
    :catch_1
    move-exception v17

    move-object/from16 v9, v17

    .line 693
    .local v9, e:Ljava/io/FileNotFoundException;
    const-string/jumbo v17, "webkit"

    const-string v18, "FILE OUTPUT STREAM FAIL FOR CREATE TEMP FILE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 539
    .end local v9           #e:Ljava/io/FileNotFoundException;
    .end local v12           #isProxyAuthRequest:Z
    .end local v13           #mustAuthenticate:Z
    .restart local v5       #contentLength:J
    :cond_b
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/LoadListener;->mContentLength:J

    goto/16 :goto_1

    .line 573
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/vnd.wap.xhtml+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 574
    const-string v17, "application/xhtml+xml"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 577
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/atom+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/rdf+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/rss+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 580
    :cond_e
    const-string v17, "application/vnd.webkit.maybe.feed"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 582
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mSynchronous:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "text/xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 586
    :cond_10
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    goto/16 :goto_0

    .line 597
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/webkit/LoadListener;->guessMimeType()V

    goto/16 :goto_2

    .line 601
    .end local v5           #contentLength:J
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/Headers;->getContentType()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 627
    :cond_13
    const/16 v17, 0x0

    move/from16 v13, v17

    goto/16 :goto_3

    .line 630
    .restart local v13       #mustAuthenticate:Z
    :cond_14
    const/16 v17, 0x0

    move/from16 v12, v17

    goto/16 :goto_4

    .line 639
    .restart local v12       #isProxyAuthRequest:Z
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 655
    .restart local v14       #network:Landroid/webkit/Network;
    :catchall_0
    move-exception v17

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v17

    .line 668
    .end local v14           #network:Landroid/webkit/Network;
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getProxyAuthenticate()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/LoadListener;->parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/HttpAuthHeader;->setProxy()V

    goto/16 :goto_6

    .line 703
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x12e

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x12d

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x133

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mNativeLoader:I

    move/from16 v17, v0

    if-eqz v17, :cond_1b

    .line 711
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mFromCache:Z

    move/from16 v17, v0

    if-nez v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/RequestHandle;->getMethod()Ljava/lang/String;

    move-result-object v17

    const-string v18, "POST"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_1a

    .line 714
    :cond_19
    new-instance v8, Landroid/webkit/WebViewWorker$CacheCreateData;

    invoke-direct {v8}, Landroid/webkit/WebViewWorker$CacheCreateData;-><init>()V

    .line 715
    .local v8, data:Landroid/webkit/WebViewWorker$CacheCreateData;
    move-object/from16 v0, p0

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mListener:Landroid/webkit/LoadListener;

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mUrl:Ljava/lang/String;

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mMimeType:Ljava/lang/String;

    .line 718
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v8

    iput v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mStatusCode:I

    .line 719
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object v2, v8

    iput-wide v0, v2, Landroid/webkit/WebViewWorker$CacheCreateData;->mPostId:J

    .line 720
    move-object/from16 v0, p1

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mHeaders:Landroid/net/http/Headers;

    .line 721
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v17

    const/16 v18, 0x67

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .line 724
    .end local v8           #data:Landroid/webkit/WebViewWorker$CacheCreateData;
    :cond_1a
    new-instance v3, Landroid/webkit/WebViewWorker$CacheEncoding;

    invoke-direct {v3}, Landroid/webkit/WebViewWorker$CacheEncoding;-><init>()V

    .line 725
    .local v3, ce:Landroid/webkit/WebViewWorker$CacheEncoding;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v3

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheEncoding;->mEncoding:Ljava/lang/String;

    .line 726
    move-object/from16 v0, p0

    move-object v1, v3

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheEncoding;->mListener:Landroid/webkit/LoadListener;

    .line 727
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v17

    const/16 v18, 0x68

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .line 730
    .end local v3           #ce:Landroid/webkit/WebViewWorker$CacheEncoding;
    :cond_1b
    invoke-direct/range {p0 .. p0}, Landroid/webkit/LoadListener;->commitHeadersCheckRedirect()V

    goto/16 :goto_0
.end method

.method private handleSslError(Landroid/net/http/SslError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 1138
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_1

    .line 1139
    iput-object p1, p0, Landroid/webkit/LoadListener;->mSslError:Landroid/net/http/SslError;

    .line 1140
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/Network;->handleSslErrorRequest(Landroid/webkit/LoadListener;)V

    .line 1144
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    .line 1145
    return-void

    .line 1141
    :cond_1
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    goto :goto_0
.end method

.method private handleStatus(IIILjava/lang/String;)V
    .locals 1
    .parameter "major"
    .parameter "minor"
    .parameter "code"
    .parameter "reason"

    .prologue
    .line 774
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 779
    :goto_0
    return-void

    .line 776
    :cond_0
    iput p3, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    .line 777
    iput-object p4, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    .line 778
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mPermanent:Z

    goto :goto_0
.end method

.method private ignoreCallbacks()Z
    .locals 2

    .prologue
    .line 1972
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x131

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeAddData([BI)V
.end method

.method private native nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
.end method

.method private native nativeError(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeFinished()V
.end method

.method private native nativeReceivedResponse(I)V
.end method

.method private native nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;
    .locals 20
    .parameter "header"

    .prologue
    .line 1894
    if-eqz p1, :cond_a

    .line 1895
    const/16 v16, 0x100

    .line 1896
    .local v16, posMax:I
    const/4 v14, 0x0

    .line 1897
    .local v14, posLen:I
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v13, v0

    .line 1899
    .local v13, pos:[I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 1900
    .local v12, headerLen:I
    if-lez v12, :cond_4

    .line 1902
    const/16 v17, 0x0

    .line 1903
    .local v17, quoted:Z
    const/4 v5, 0x0

    .local v5, i:I
    move v15, v14

    .end local v14           #posLen:I
    .local v15, posLen:I
    :goto_0
    if-ge v5, v12, :cond_3

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 1904
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    .line 1905
    if-nez v17, :cond_0

    const/4 v3, 0x1

    move/from16 v17, v3

    :goto_1
    move v14, v15

    .line 1903
    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v15, v14

    .end local v14           #posLen:I
    .restart local v15       #posLen:I
    goto :goto_0

    .line 1905
    :cond_0
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_1

    .line 1907
    :cond_1
    if-nez v17, :cond_b

    .line 1908
    const/4 v4, 0x1

    const-string v6, "Basic"

    const/4 v7, 0x0

    const-string v3, "Basic"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1911
    add-int/lit8 v14, v15, 0x1

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    aput v5, v13, v15

    goto :goto_2

    .line 1915
    .end local v14           #posLen:I
    .restart local v15       #posLen:I
    :cond_2
    const/4 v4, 0x1

    const-string v6, "Digest"

    const/4 v7, 0x0

    const-string v3, "Digest"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1918
    add-int/lit8 v14, v15, 0x1

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    aput v5, v13, v15

    goto :goto_2

    .end local v14           #posLen:I
    .restart local v15       #posLen:I
    :cond_3
    move v14, v15

    .line 1926
    .end local v5           #i:I
    .end local v15           #posLen:I
    .end local v17           #quoted:Z
    .restart local v14       #posLen:I
    :cond_4
    if-lez v14, :cond_a

    .line 1928
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, v14, :cond_7

    .line 1929
    const/4 v7, 0x1

    aget v8, v13, v5

    const-string v9, "Digest"

    const/4 v10, 0x0

    const-string v3, "Digest"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1932
    aget v3, v13, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v14, :cond_5

    add-int/lit8 v4, v5, 0x1

    aget v4, v13, v4

    :goto_4
    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1935
    .local v19, sub:Ljava/lang/String;
    new-instance v18, Landroid/net/http/HttpAuthHeader;

    invoke-direct/range {v18 .. v19}, Landroid/net/http/HttpAuthHeader;-><init>(Ljava/lang/String;)V

    .line 1936
    .local v18, rval:Landroid/net/http/HttpAuthHeader;
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/HttpAuthHeader;->isSupportedScheme()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v3, v18

    .line 1961
    .end local v5           #i:I
    .end local v12           #headerLen:I
    .end local v13           #pos:[I
    .end local v14           #posLen:I
    .end local v16           #posMax:I
    .end local v18           #rval:Landroid/net/http/HttpAuthHeader;
    .end local v19           #sub:Ljava/lang/String;
    :goto_5
    return-object v3

    .restart local v5       #i:I
    .restart local v12       #headerLen:I
    .restart local v13       #pos:[I
    .restart local v14       #posLen:I
    .restart local v16       #posMax:I
    :cond_5
    move v4, v12

    .line 1932
    goto :goto_4

    .line 1928
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1944
    :cond_7
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v14, :cond_a

    .line 1945
    const/4 v7, 0x1

    aget v8, v13, v5

    const-string v9, "Basic"

    const/4 v10, 0x0

    const-string v3, "Basic"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1948
    aget v3, v13, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v14, :cond_8

    add-int/lit8 v4, v5, 0x1

    aget v4, v13, v4

    :goto_7
    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1951
    .restart local v19       #sub:Ljava/lang/String;
    new-instance v18, Landroid/net/http/HttpAuthHeader;

    invoke-direct/range {v18 .. v19}, Landroid/net/http/HttpAuthHeader;-><init>(Ljava/lang/String;)V

    .line 1952
    .restart local v18       #rval:Landroid/net/http/HttpAuthHeader;
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/HttpAuthHeader;->isSupportedScheme()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v3, v18

    .line 1954
    goto :goto_5

    .end local v18           #rval:Landroid/net/http/HttpAuthHeader;
    .end local v19           #sub:Ljava/lang/String;
    :cond_8
    move v4, v12

    .line 1948
    goto :goto_7

    .line 1944
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1961
    .end local v5           #i:I
    .end local v12           #headerLen:I
    .end local v13           #pos:[I
    .end local v14           #posLen:I
    .end local v16           #posMax:I
    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    .restart local v5       #i:I
    .restart local v12       #headerLen:I
    .restart local v13       #pos:[I
    .restart local v15       #posLen:I
    .restart local v16       #posMax:I
    .restart local v17       #quoted:Z
    :cond_b
    move v14, v15

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    goto/16 :goto_2
.end method

.method private sendMessageInternal(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2092
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    if-eqz v0, :cond_0

    .line 2093
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2097
    :goto_0
    return-void

    .line 2095
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/LoadListener;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static willLoadFromCache(Ljava/lang/String;J)Z
    .locals 4
    .parameter "url"
    .parameter "identifier"

    .prologue
    .line 1341
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 1343
    .local v0, inCache:Z
    :goto_0
    sget-boolean v1, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v1, :cond_0

    .line 1344
    const-string/jumbo v1, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "willLoadFromCache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_0
    return v0

    .line 1341
    .end local v0           #inCache:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method attachRequestHandle(Landroid/net/http/RequestHandle;)V
    .locals 3
    .parameter "requestHandle"

    .prologue
    .line 1295
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_0

    .line 1296
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener.attachRequestHandle(): requestHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_0
    iput-object p1, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1300
    return-void
.end method

.method authCredentialsInvalid()Z
    .locals 1

    .prologue
    .line 1165
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isDigest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getStale()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    const-string/jumbo v1, "webkit"

    .line 1642
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-nez v0, :cond_2

    .line 1644
    const-string/jumbo v0, "webkit"

    const-string v0, "LoadListener.cancel(): no requestHandle"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_1

    .line 1650
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0}, Landroid/net/http/RequestHandle;->cancel()V

    .line 1651
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1654
    :cond_1
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1656
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    .line 1690
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1691
    return-void

    .line 1646
    :cond_2
    const-string/jumbo v0, "webkit"

    const-string v0, "LoadListener.cancel()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cancelled()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    return v0
.end method

.method public certificate(Landroid/net/http/SslCertificate;)V
    .locals 3
    .parameter "certificate"

    .prologue
    .line 793
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_0

    .line 794
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener.certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_0
    const/16 v0, 0xaa

    invoke-virtual {p0, v0, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 797
    return-void
.end method

.method checkCache(Ljava/util/Map;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1059
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    invoke-static {v1, v2, v3, p1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    .line 1064
    .local v0, result:Landroid/webkit/CacheManager$CacheResult;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 1066
    iput-boolean v4, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 1068
    if-eqz v0, :cond_2

    .line 1073
    new-instance v1, Landroid/webkit/CacheLoader;

    invoke-direct {v1, p0, v0}, Landroid/webkit/CacheLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V

    iput-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 1077
    const-string v1, "if-none-match"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "if-modified-since"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1081
    sget-boolean v1, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v1, :cond_0

    .line 1082
    const-string/jumbo v1, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FrameLoader: HTTP URL in cache and usable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1086
    iget-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1}, Landroid/webkit/CacheLoader;->load()V

    .line 1093
    :goto_0
    iput-boolean v5, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    move v1, v5

    .line 1097
    :goto_1
    return v1

    .line 1089
    :cond_1
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x65

    iget-object v3, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    move v1, v4

    .line 1097
    goto :goto_1
.end method

.method contentLength()J
    .locals 2

    .prologue
    .line 1376
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mContentLength:J

    return-wide v0
.end method

.method public data([BI)V
    .locals 4
    .parameter "data"
    .parameter "length"

    .prologue
    .line 844
    sget-boolean v1, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v1, :cond_0

    .line 845
    const-string/jumbo v1, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadListener.data(): url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    const/4 v0, 0x0

    .line 870
    .local v0, sendMessage:Z
    iget-object v1, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v1

    .line 871
    :try_start_0
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v2}, Landroid/webkit/ByteArrayBuilder;->isEmpty()Z

    move-result v0

    .line 872
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Landroid/webkit/ByteArrayBuilder;->append([BII)V

    .line 873
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    if-eqz v0, :cond_1

    .line 876
    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 878
    :cond_1
    return-void

    .line 873
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method detachRequestHandle()V
    .locals 3

    .prologue
    .line 1303
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_0

    .line 1304
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener.detachRequestHandle(): requestHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1308
    return-void
.end method

.method downloadFile()V
    .locals 7

    .prologue
    .line 1318
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1322
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v3}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 1331
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    .line 1332
    return-void
.end method

.method public endData()V
    .locals 3

    .prologue
    .line 887
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_0

    .line 888
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener.endData(): url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_0
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 891
    return-void
.end method

.method public error(ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "description"

    .prologue
    .line 817
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_0

    .line 818
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener.error url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_0
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/webkit/LoadListener;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 822
    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFrame()Landroid/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method getWebAddress()Landroid/net/WebAddress;
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    return-object v0
.end method

.method handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1196
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_0

    .line 1197
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener.handleAuthResponse: url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1202
    invoke-virtual {p0, p1, p2}, Landroid/webkit/LoadListener;->makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :goto_0
    return-void

    .line 1205
    :cond_1
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    .line 1206
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0x78

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 275
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 308
    :sswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/http/Headers;

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    goto :goto_0

    .line 318
    :sswitch_1
    iget-boolean v5, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    if-eqz v5, :cond_2

    .line 319
    iput-boolean v7, p0, Landroid/webkit/LoadListener;->m_feedTypeSniffed:Z

    .line 320
    iput-boolean v6, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    .line 322
    iget-object v5, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v5}, Landroid/webkit/ByteArrayBuilder;->getFirstChunkEx()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 324
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_1

    iget v5, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v5, :cond_1

    .line 325
    iget-object v5, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v6, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {v5, v6}, Landroid/webkit/WebFeedSniffer;->mimeType([BI)Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, type:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 327
    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 331
    .end local v4           #type:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    .line 334
    const/16 v5, 0x6e

    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 338
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_2
    iget v5, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v5, :cond_0

    invoke-direct {p0}, Landroid/webkit/LoadListener;->ignoreCallbacks()Z

    move-result v5

    if-nez v5, :cond_0

    .line 339
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    goto :goto_0

    .line 352
    :sswitch_2
    iget-boolean v5, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    if-eqz v5, :cond_3

    .line 353
    iput-boolean v7, p0, Landroid/webkit/LoadListener;->m_feedTypeSniffed:Z

    .line 354
    iput-boolean v6, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    .line 356
    iget-object v5, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    .line 358
    invoke-virtual {p0, v8}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_0

    .line 362
    :cond_3
    invoke-direct {p0}, Landroid/webkit/LoadListener;->handleEndData()V

    goto :goto_0

    .line 384
    :sswitch_3
    iget-boolean v5, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    if-eqz v5, :cond_4

    .line 385
    iput-boolean v7, p0, Landroid/webkit/LoadListener;->m_feedTypeSniffed:Z

    .line 386
    iput-boolean v6, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    .line 388
    iget-object v5, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    .line 390
    const/16 v5, 0x82

    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_0

    .line 394
    :cond_4
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto :goto_0

    .line 413
    :sswitch_4
    iput-boolean v6, p0, Landroid/webkit/LoadListener;->mRedirectConfirmation:Z

    .line 414
    invoke-direct {p0}, Landroid/webkit/LoadListener;->doRedirect()V

    goto/16 :goto_0

    .line 425
    :sswitch_5
    iput-boolean v7, p0, Landroid/webkit/LoadListener;->mRedirectConfirmation:Z

    .line 426
    const/16 v5, 0x8c

    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 427
    .local v1, contMsg:Landroid/os/Message;
    invoke-virtual {p0, v8}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 428
    .local v3, stopMsg:Landroid/os/Message;
    iget-object v5, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Landroid/webkit/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 437
    .end local v1           #contMsg:Landroid/os/Message;
    .end local v3           #stopMsg:Landroid/os/Message;
    :sswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    .line 438
    .local v2, status:Ljava/util/HashMap;
    const-string/jumbo v5, "major"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v5, "minor"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v5, "code"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string/jumbo v5, "reason"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8, v5}, Landroid/webkit/LoadListener;->handleStatus(IIILjava/lang/String;)V

    goto/16 :goto_0

    .line 449
    .end local v2           #status:Ljava/util/HashMap;
    :sswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/http/SslCertificate;

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->handleCertificate(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_0

    .line 464
    :sswitch_8
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/http/SslError;

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->handleSslError(Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6e -> :sswitch_1
        0x78 -> :sswitch_2
        0x82 -> :sswitch_3
        0x8c -> :sswitch_4
        0x96 -> :sswitch_5
        0xa0 -> :sswitch_6
        0xaa -> :sswitch_7
        0xb4 -> :sswitch_8
    .end sparse-switch
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .locals 5
    .parameter "error"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1107
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_0

    .line 1108
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener.handleSslErrorRequest(): url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " primary error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/webkit/Network;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 1133
    :goto_0
    return v0

    .line 1120
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1121
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, v4}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    move v0, v3

    .line 1122
    goto :goto_0

    .line 1124
    :cond_2
    const/16 v0, 0xb4

    invoke-virtual {p0, v0, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 1130
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_3

    .line 1131
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iput-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    .line 1133
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_0
.end method

.method handleSslErrorResponse(Z)V
    .locals 1
    .parameter "proceed"

    .prologue
    .line 1181
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    .line 1184
    :cond_0
    if-nez p1, :cond_1

    .line 1186
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    .line 1187
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    .line 1189
    :cond_1
    return-void
.end method

.method public headers(Landroid/net/http/Headers;)V
    .locals 5
    .parameter "headers"

    .prologue
    .line 498
    sget-boolean v2, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "webkit"

    const-string v3, "LoadListener.headers"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v2, :cond_1

    .line 506
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-virtual {p1}, Landroid/net/http/Headers;->getSetCookie()Ljava/util/ArrayList;

    move-result-object v0

    .line 502
    .local v0, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 503
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/webkit/CookieManager;->setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 505
    :cond_2
    const/16 v2, 0x64

    invoke-virtual {p0, v2, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_0
.end method

.method host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    .line 1276
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDownLoadableMultipartContent(Ljava/lang/String;)Z
    .locals 12
    .parameter "contentType"

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v7, 0x20

    const-string/jumbo v8, "webkit"

    .line 2034
    const-string/jumbo v5, "type="

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2035
    .local v0, bPos:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_9

    .line 2036
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2037
    .local v4, subType:Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2038
    .local v2, bValpos:I
    add-int/lit8 v2, v2, 0x1

    .line 2040
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1

    .line 2041
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2042
    :cond_1
    move v1, v2

    .line 2046
    .local v1, bValEndPos:I
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v11, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_4

    .line 2047
    sget-boolean v5, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v5, :cond_3

    .line 2048
    const-string/jumbo v5, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subType String Char At Start Position  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 2052
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v10

    if-ne v1, v5, :cond_2

    .line 2055
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_5

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_5

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v11, :cond_5

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_6

    .line 2059
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 2060
    :cond_6
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_7

    .line 2061
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2062
    :cond_7
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2063
    .local v3, bValue:Ljava/lang/String;
    sget-boolean v5, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v5, :cond_8

    .line 2064
    const-string/jumbo v5, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final subType String = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    move v5, v9

    .line 2083
    .end local v1           #bValEndPos:I
    .end local v2           #bValpos:I
    .end local v3           #bValue:Ljava/lang/String;
    .end local v4           #subType:Ljava/lang/String;
    :goto_2
    return v5

    .restart local v1       #bValEndPos:I
    .restart local v2       #bValpos:I
    .restart local v3       #bValue:Ljava/lang/String;
    .restart local v4       #subType:Ljava/lang/String;
    :sswitch_0
    move v5, v10

    .line 2073
    goto :goto_2

    .line 2079
    .end local v1           #bValEndPos:I
    .end local v2           #bValpos:I
    .end local v3           #bValue:Ljava/lang/String;
    .end local v4           #subType:Ljava/lang/String;
    :cond_9
    sget-boolean v5, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v5, :cond_a

    .line 2080
    const-string/jumbo v5, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No subType String in Content-Type Header"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v5, v9

    .line 2083
    goto :goto_2

    .line 2066
    :sswitch_data_0
    .sparse-switch
        -0x64a50f9 -> :sswitch_0
        0x12fac3b8 -> :sswitch_0
        0x3e4a533e -> :sswitch_0
        0x67c1d54c -> :sswitch_0
        0x6e088824 -> :sswitch_0
    .end sparse-switch
.end method

.method isSynchronous()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    return v0
.end method

.method loadSynchronousMessages()V
    .locals 2

    .prologue
    .line 2103
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    if-nez v0, :cond_0

    .line 2104
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2112
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2113
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p0, v0}, Landroid/webkit/LoadListener;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2115
    :cond_1
    return-void
.end method

.method makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1211
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-nez v0, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1215
    :cond_1
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0, p1}, Landroid/net/http/HttpAuthHeader;->setUsername(Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0, p2}, Landroid/net/http/HttpAuthHeader;->setPassword(Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getScheme()I

    move-result v9

    .line 1219
    .local v9, scheme:I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_2

    .line 1221
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    .line 1223
    .local v1, isProxy:Z
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/http/RequestHandle;->setupBasicAuthResponse(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1224
    .end local v1           #isProxy:Z
    :cond_2
    const/4 v0, 0x2

    if-ne v9, v0, :cond_0

    .line 1226
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    .line 1228
    .restart local v1       #isProxy:Z
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v4

    .line 1229
    .local v4, realm:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getNonce()Ljava/lang/String;

    move-result-object v5

    .line 1230
    .local v5, nonce:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getQop()Ljava/lang/String;

    move-result-object v6

    .line 1231
    .local v6, qop:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 1232
    .local v7, algorithm:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getOpaque()Ljava/lang/String;

    move-result-object v8

    .line 1234
    .local v8, opaque:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v8}, Landroid/net/http/RequestHandle;->setupDigestAuthResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method notifyError()V
    .locals 3

    .prologue
    .line 1605
    iget v1, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v1, :cond_1

    .line 1606
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorDescription()Ljava/lang/String;

    move-result-object v0

    .line 1607
    .local v0, description:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 1619
    :cond_0
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Landroid/webkit/LoadListener;->nativeError(ILjava/lang/String;Ljava/lang/String;)V

    .line 1620
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1622
    .end local v0           #description:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method originalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    .line 1286
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method parseContentTypeHeader(Ljava/lang/String;)V
    .locals 9
    .parameter "contentType"

    .prologue
    const/16 v8, 0x3b

    const/4 v7, 0x1

    .line 1834
    sget-boolean v4, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v4, :cond_0

    .line 1835
    const-string/jumbo v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LoadListener.parseContentTypeHeader: contentType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :cond_0
    if-eqz p1, :cond_3

    .line 1840
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1841
    .local v1, i:I
    if-ltz v1, :cond_5

    .line 1842
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1844
    const/16 v4, 0x3d

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1845
    .local v2, j:I
    if-lez v2, :cond_4

    .line 1846
    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1847
    if-ge v1, v2, :cond_1

    .line 1848
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1850
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 1855
    :goto_0
    iget-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 1857
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    if-ge v1, v4, :cond_2

    .line 1861
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    .line 1869
    .end local v2           #j:I
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1872
    :try_start_0
    sget-object v4, Landroid/webkit/LoadListener;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    iget-object v5, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1873
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1874
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1883
    .end local v1           #i:I
    .end local v3           #m:Ljava/util/regex/Matcher;
    :cond_3
    :goto_2
    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1884
    return-void

    .line 1852
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_4
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    goto :goto_0

    .line 1865
    .end local v2           #j:I
    :cond_5
    iput-object p1, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto :goto_1

    .line 1876
    .restart local v3       #m:Ljava/util/regex/Matcher;
    :cond_6
    :try_start_1
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1878
    .end local v3           #m:Ljava/util/regex/Matcher;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1879
    .local v0, ex:Ljava/lang/IllegalStateException;
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V

    goto :goto_2
.end method

.method pauseLoad(Z)V
    .locals 1
    .parameter "pause"

    .prologue
    .line 1629
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestHandle;->pauseRequest(Z)V

    .line 1632
    :cond_0
    return-void
.end method

.method postIdentifier()J
    .locals 2

    .prologue
    .line 1291
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    return-wide v0
.end method

.method proxyAuthenticate()Z
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v0

    .line 741
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method realm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_0

    .line 1152
    const/4 v0, 0x0

    .line 1154
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method resetCancel()V
    .locals 1

    .prologue
    .line 1357
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    .line 1358
    return-void
.end method

.method setCacheLoader(Landroid/webkit/CacheLoader;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 1047
    iput-object p1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 1048
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 1049
    return-void
.end method

.method setRequestData(Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 0
    .parameter "method"
    .parameter
    .parameter "postData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 1249
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    .line 1250
    iput-object p2, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    .line 1251
    iput-object p3, p0, Landroid/webkit/LoadListener;->mPostData:[B

    .line 1252
    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 1981
    if-eqz p1, :cond_0

    .line 1982
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    .line 1983
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1984
    invoke-static {p1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    .line 1986
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1994
    :cond_0
    :goto_0
    return-void

    .line 1987
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1988
    .local v0, e:Landroid/net/ParseException;
    invoke-virtual {v0}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_0

    .line 1991
    .end local v0           #e:Landroid/net/ParseException;
    :cond_1
    iput-object p1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method sslError()Landroid/net/http/SslError;
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslError:Landroid/net/http/SslError;

    return-object v0
.end method

.method public status(IIILjava/lang/String;)V
    .locals 5
    .parameter "majorVersion"
    .parameter "minorVersion"
    .parameter "code"
    .parameter "reasonPhrase"

    .prologue
    const-string v4, ""

    .line 752
    sget-boolean v1, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v1, :cond_0

    .line 753
    const-string/jumbo v1, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadListener: from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " major: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 760
    .local v0, status:Ljava/util/HashMap;
    const-string/jumbo v1, "major"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const-string/jumbo v1, "minor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const-string v1, "code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object v1, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v1}, Landroid/webkit/ByteArrayBuilder;->clear()V

    .line 766
    const-string v1, ""

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 767
    const-string v1, ""

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 768
    const-string v1, ""

    iput-object v4, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    .line 769
    const/16 v1, 0xa0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 770
    return-void
.end method

.method tearDown()V
    .locals 10

    .prologue
    .line 1540
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v0

    if-nez v0, :cond_2

    .line 1541
    new-instance v8, Landroid/webkit/WebViewWorker$CacheSaveData;

    invoke-direct {v8}, Landroid/webkit/WebViewWorker$CacheSaveData;-><init>()V

    .line 1542
    .local v8, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    iput-object p0, v8, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    .line 1543
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v0, v8, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    .line 1544
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v0, v8, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    .line 1545
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, v8}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1552
    .end local v8           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :goto_0
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->isDownloadabelfile:Z

    if-eqz v0, :cond_3

    .line 1555
    :try_start_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1557
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1567
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v3}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 1573
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 1583
    :cond_1
    :goto_2
    return-void

    .line 1548
    :cond_2
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1559
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 1560
    .local v9, ex:Ljava/io/IOException;
    const-string v0, "dd or drm file"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " exception when closing the file during download : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1577
    .end local v9           #ex:Ljava/io/IOException;
    :cond_3
    iget v0, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v0, :cond_1

    .line 1578
    new-instance v7, Landroid/webkit/PerfChecker;

    invoke-direct {v7}, Landroid/webkit/PerfChecker;-><init>()V

    .line 1579
    .local v7, checker:Landroid/webkit/PerfChecker;
    invoke-direct {p0}, Landroid/webkit/LoadListener;->nativeFinished()V

    .line 1580
    const-string/jumbo v0, "res nativeFinished"

    invoke-virtual {v7, v0}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    .line 1581
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    goto :goto_2
.end method

.method transferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    return-object v0
.end method
