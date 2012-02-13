.class Landroid/webkit/ContentLoader;
.super Landroid/webkit/StreamLoader;
.source "ContentLoader.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V
    .locals 2
    .parameter "rawUrl"
    .parameter "loadListener"

    .prologue
    invoke-direct {p0, p2}, Landroid/webkit/StreamLoader;-><init>(Landroid/webkit/LoadListener;)V

    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, mimeIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/ContentLoader;->mUrl:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/ContentLoader;->mContentType:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/webkit/ContentLoader;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private errString(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 4
    .parameter "ex"

    .prologue
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .local v1, exMessage:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    const v3, 0x104011f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, errString:Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected buildHeaders(Landroid/net/http/Headers;)V
    .locals 1
    .parameter "headers"

    .prologue
    iget-object v0, p0, Landroid/webkit/ContentLoader;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "text/html"

    invoke-virtual {p1, v0}, Landroid/net/http/Headers;->setContentType(Ljava/lang/String;)V

    :cond_0
    const-string v0, "no-store, no-cache"

    invoke-virtual {p1, v0}, Landroid/net/http/Headers;->setCacheControl(Ljava/lang/String;)V

    return-void
.end method

.method protected setupStreamAndSendStatus()Z
    .locals 10

    .prologue
    const/16 v9, -0xe

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v2, p0, Landroid/webkit/ContentLoader;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    const v5, 0x1040007

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/ContentLoader;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v2, v7

    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    iget-object v2, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0xc8

    const-string v6, "OK"

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/webkit/LoadListener;->status(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v8

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/io/FileNotFoundException;
    iget-object v2, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-direct {p0, v0}, Landroid/webkit/ContentLoader;->errString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v2, v7

    goto :goto_0

    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    const/16 v3, -0xd

    invoke-direct {p0, v0}, Landroid/webkit/ContentLoader;->errString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v2, v7

    goto :goto_0
.end method
