.class public final Lcom/motorola/android/xmp/XMPMetaFactory;
.super Ljava/lang/Object;
.source "XMPMetaFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XMPMetaFactory"

.field private static schema:Lcom/motorola/android/xmp/XMPSchemaRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/motorola/android/xmp/impl/XMPSchemaRegistryJniImpl;

    invoke-direct {v0}, Lcom/motorola/android/xmp/impl/XMPSchemaRegistryJniImpl;-><init>()V

    sput-object v0, Lcom/motorola/android/xmp/XMPMetaFactory;->schema:Lcom/motorola/android/xmp/XMPSchemaRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/motorola/android/xmp/XMPMeta;
    .locals 1

    .prologue
    new-instance v0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    invoke-direct {v0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;-><init>()V

    return-object v0
.end method

.method public static getSchemaRegistry()Lcom/motorola/android/xmp/XMPSchemaRegistry;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/xmp/XMPMetaFactory;->schema:Lcom/motorola/android/xmp/XMPSchemaRegistry;

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/motorola/android/xmp/XMPMeta;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/android/xmp/XMPMetaFactory;->parse(Ljava/io/InputStream;Lcom/motorola/android/xmp/options/ParseOptions;)Lcom/motorola/android/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Lcom/motorola/android/xmp/options/ParseOptions;)Lcom/motorola/android/xmp/XMPMeta;
    .locals 7
    .parameter "in"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v4, "XMPMetaFactory"

    const-string v5, "Enter parse from InputStream"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    new-instance v4, Lcom/motorola/android/xmp/XMPException;

    const-string v5, "parameter is not correct"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_0
    new-instance v3, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    invoke-direct {v3}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;-><init>()V

    .local v3, xmpMeta:Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    .local v2, length:I
    new-array v0, v2, [B

    .local v0, buffer:[B
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3, v0, p1}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->parseFromBuffer([BLcom/motorola/android/xmp/options/ParseOptions;)V

    return-object v3

    .end local v0           #buffer:[B
    .end local v2           #length:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, exp:Ljava/io/IOException;
    new-instance v4, Lcom/motorola/android/xmp/XMPException;

    const-string v5, "input stream is not correct"

    const/16 v6, 0xcc

    invoke-direct {v4, v5, v6}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method

.method public static parseFromBuffer([B)Lcom/motorola/android/xmp/XMPMeta;
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/android/xmp/XMPMetaFactory;->parseFromBuffer([BLcom/motorola/android/xmp/options/ParseOptions;)Lcom/motorola/android/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static parseFromBuffer([BLcom/motorola/android/xmp/options/ParseOptions;)Lcom/motorola/android/xmp/XMPMeta;
    .locals 3
    .parameter "buffer"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v1, "XMPMetaFactory"

    const-string v2, "Enter parseFromBuffer"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    invoke-direct {v0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;-><init>()V

    .local v0, xmpMeta:Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;
    invoke-virtual {v0, p0, p1}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->parseFromBuffer([BLcom/motorola/android/xmp/options/ParseOptions;)V

    return-object v0
.end method

.method public static parseFromString(Ljava/lang/String;)Lcom/motorola/android/xmp/XMPMeta;
    .locals 1
    .parameter "packet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/android/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;Lcom/motorola/android/xmp/options/ParseOptions;)Lcom/motorola/android/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static parseFromString(Ljava/lang/String;Lcom/motorola/android/xmp/options/ParseOptions;)Lcom/motorola/android/xmp/XMPMeta;
    .locals 5
    .parameter "packet"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v2, "XMPMetaFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter parseFromString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    invoke-direct {v1}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;-><init>()V

    .local v1, xmpMeta:Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, buffer:[B
    invoke-virtual {v1, v0, p1}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->parseFromBuffer([BLcom/motorola/android/xmp/options/ParseOptions;)V

    return-object v1
.end method

.method public static serialize(Lcom/motorola/android/xmp/XMPMeta;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "xmp"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/motorola/android/xmp/XMPMetaFactory;->serialize(Lcom/motorola/android/xmp/XMPMeta;Ljava/io/OutputStream;Lcom/motorola/android/xmp/options/SerializeOptions;)V

    return-void
.end method

.method public static serialize(Lcom/motorola/android/xmp/XMPMeta;Ljava/io/OutputStream;Lcom/motorola/android/xmp/options/SerializeOptions;)V
    .locals 5
    .parameter "xmp"
    .parameter "out"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v3, "XMPMetaFactory"

    const-string v2, "XMPMetaFactory"

    const-string v2, "serialize to OutputStream!"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v2, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    if-eqz v2, :cond_0

    check-cast p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    .end local p0
    invoke-virtual {p0, p2}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->serializeToBuffer(Lcom/motorola/android/xmp/options/SerializeOptions;)[B

    move-result-object v0

    .local v0, buffer:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, exp:Ljava/io/IOException;
    new-instance v2, Lcom/motorola/android/xmp/XMPException;

    const-string v3, "input stream is not correct"

    const/16 v4, 0xcc

    invoke-direct {v2, v3, v4}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    .end local v0           #buffer:[B
    .end local v1           #exp:Ljava/io/IOException;
    .restart local p0
    :cond_0
    const-string v2, "XMPMetaFactory"

    const-string v2, "xmp object is not instance of XMPMetaJniImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/motorola/android/xmp/XMPException;

    const-string v3, "parameter is not correct"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public static serializeToBuffer(Lcom/motorola/android/xmp/XMPMeta;Lcom/motorola/android/xmp/options/SerializeOptions;)[B
    .locals 3
    .parameter "xmp"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    instance-of v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->serializeToBuffer(Lcom/motorola/android/xmp/options/SerializeOptions;)[B

    move-result-object v0

    return-object v0

    .restart local p0
    :cond_0
    const-string v0, "XMPMetaFactory"

    const-string v1, "xmp object is not instance of XMPMetaJniImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "parameter is not correct"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static serializeToString(Lcom/motorola/android/xmp/XMPMeta;Lcom/motorola/android/xmp/options/SerializeOptions;)Ljava/lang/String;
    .locals 7
    .parameter "xmp"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const-string v6, "encoding is not correct"

    const-string v4, "XMPMetaFactory"

    if-eqz p1, :cond_0

    :goto_0
    instance-of v3, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    if-eqz v3, :cond_2

    check-cast p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->serializeToBuffer(Lcom/motorola/android/xmp/options/SerializeOptions;)[B

    move-result-object v0

    .local v0, buffer:[B
    if-nez v0, :cond_1

    const/4 v3, 0x0

    :goto_1
    return-object v3

    .end local v0           #buffer:[B
    .restart local p0
    :cond_0
    new-instance v3, Lcom/motorola/android/xmp/options/SerializeOptions;

    invoke-direct {v3}, Lcom/motorola/android/xmp/options/SerializeOptions;-><init>()V

    move-object p1, v3

    goto :goto_0

    .end local p0
    .restart local v0       #buffer:[B
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/motorola/android/xmp/options/SerializeOptions;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, returnStr:Ljava/lang/String;
    move-object v3, v2

    goto :goto_1

    .end local v2           #returnStr:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, exp:Ljava/io/UnsupportedEncodingException;
    const-string v3, "XMPMetaFactory"

    const-string v3, "encoding is not correct"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/motorola/android/xmp/XMPException;

    const-string v4, "encoding is not correct"

    invoke-direct {v3, v6, v5}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .end local v0           #buffer:[B
    .end local v1           #exp:Ljava/io/UnsupportedEncodingException;
    .restart local p0
    :cond_2
    const-string v3, "XMPMetaFactory"

    const-string v3, "xmp object is not instance of XMPMetaJniImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/motorola/android/xmp/XMPException;

    const-string v4, "parameter is not correct"

    invoke-direct {v3, v4, v5}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method
