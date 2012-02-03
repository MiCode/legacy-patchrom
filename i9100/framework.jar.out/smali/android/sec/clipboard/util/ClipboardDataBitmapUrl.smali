.class public Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;
.super Ljava/lang/Object;
.source "ClipboardDataBitmapUrl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadSimpleBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "urlname"

    .prologue
    const-string v6, "ClipboardServiceEx"

    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, url:Ljava/net/URL;
    const/4 v0, 0x0

    .line 55
    .local v0, Result:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    .end local v2           #url:Ljava/net/URL;
    .local v3, url:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    move-object v2, v3

    .line 65
    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 59
    .local v1, e:Ljava/net/MalformedURLException;
    :goto_1
    const-string v4, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadSimpleBitmap1 Url-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " /  Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    .line 64
    goto :goto_0

    .line 61
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 62
    .local v1, e:Ljava/io/IOException;
    :goto_2
    const-string v4, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadSimpleBitmap2 Url-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :catch_2
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto :goto_2

    .line 58
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :catch_3
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto :goto_1
.end method
