.class public Landroid/webkit/CacheManager$CacheResult;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheResult"
.end annotation


# instance fields
.field contentLength:J

.field contentdisposition:Ljava/lang/String;

.field crossDomain:Ljava/lang/String;

.field encoding:Ljava/lang/String;

.field etag:Ljava/lang/String;

.field expires:J

.field expiresString:Ljava/lang/String;

.field httpStatusCode:I

.field inStream:Ljava/io/InputStream;

.field lastModified:Ljava/lang/String;

.field localPath:Ljava/lang/String;

.field location:Ljava/lang/String;

.field mimeType:Ljava/lang/String;

.field outFile:Ljava/io/File;

.field outStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    return-wide v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Landroid/webkit/CacheManager$CacheResult;->expires:J

    return-wide v0
.end method

.method public getExpiresString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 168
    iput-object p1, p0, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .parameter "stream"

    .prologue
    .line 164
    iput-object p1, p0, Landroid/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;

    .line 165
    return-void
.end method
