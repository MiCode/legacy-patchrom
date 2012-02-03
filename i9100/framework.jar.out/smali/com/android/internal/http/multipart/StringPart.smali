.class public Lcom/android/internal/http/multipart/StringPart;
.super Lcom/android/internal/http/multipart/PartBase;
.source "StringPart.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "US-ASCII"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "text/plain"

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String; = "8bit"

.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private content:[B

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/internal/http/multipart/StringPart;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/StringPart;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"
    .parameter "charset"

    .prologue
    .line 80
    const-string/jumbo v0, "text/plain"

    if-nez p3, :cond_0

    const-string v1, "US-ASCII"

    :goto_0
    const-string v2, "8bit"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/http/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-nez p2, :cond_1

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v1, p3

    .line 80
    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULs may not be present in string parts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    iput-object p2, p0, Lcom/android/internal/http/multipart/StringPart;->value:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private getContent()[B
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/http/multipart/StringPart;->content:[B

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/internal/http/multipart/StringPart;->value:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/http/multipart/StringPart;->getCharSet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/http/multipart/StringPart;->content:[B

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/internal/http/multipart/StringPart;->content:[B

    return-object v0
.end method


# virtual methods
.method protected lengthOfData()J
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/android/internal/http/multipart/StringPart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter lengthOfData()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 138
    invoke-direct {p0}, Lcom/android/internal/http/multipart/StringPart;->getContent()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lcom/android/internal/http/multipart/StringPart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendData(OutputStream)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 127
    invoke-direct {p0}, Lcom/android/internal/http/multipart/StringPart;->getContent()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 128
    return-void
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 1
    .parameter "charSet"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/internal/http/multipart/PartBase;->setCharSet(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/http/multipart/StringPart;->content:[B

    .line 148
    return-void
.end method
