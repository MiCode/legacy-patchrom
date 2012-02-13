.class public final Landroid/net/SSLSessionCache;
.super Ljava/lang/Object;
.source "SSLSessionCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SSLSessionCache"


# instance fields
.field final mSessionCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "sslcache"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .local v1, dir:Ljava/io/File;
    const/4 v0, 0x0

    .local v0, cache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;
    :try_start_0
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/net/SSLSessionCache;->mSessionCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    return-void

    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    const-string v3, "SSLSessionCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create SSL session cache in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLSessionCache;->mSessionCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    return-void
.end method
