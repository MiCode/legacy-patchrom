.class public abstract Lcom/android/internal/http/multipart/PartBase;
.super Lcom/android/internal/http/multipart/Part;
.source "PartBase.java"


# instance fields
.field private charSet:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "contentType"
    .parameter "charSet"
    .parameter "transferEncoding"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/http/multipart/Part;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/internal/http/multipart/PartBase;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/http/multipart/PartBase;->contentType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/http/multipart/PartBase;->charSet:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/http/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/http/multipart/PartBase;->charSet:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/http/multipart/PartBase;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/http/multipart/PartBase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/http/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 0
    .parameter "charSet"

    .prologue
    iput-object p1, p0, Lcom/android/internal/http/multipart/PartBase;->charSet:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    iput-object p1, p0, Lcom/android/internal/http/multipart/PartBase;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/internal/http/multipart/PartBase;->name:Ljava/lang/String;

    return-void
.end method

.method public setTransferEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "transferEncoding"

    .prologue
    iput-object p1, p0, Lcom/android/internal/http/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    return-void
.end method
