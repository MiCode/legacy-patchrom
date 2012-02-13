.class public Lcom/android/internal/http/multipart/ByteArrayPartSource;
.super Ljava/lang/Object;
.source "ByteArrayPartSource.java"

# interfaces
.implements Lcom/android/internal/http/multipart/PartSource;


# instance fields
.field private bytes:[B

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .parameter "fileName"
    .parameter "bytes"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/http/multipart/ByteArrayPartSource;->fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/http/multipart/ByteArrayPartSource;->bytes:[B

    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/internal/http/multipart/ByteArrayPartSource;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/http/multipart/ByteArrayPartSource;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/http/multipart/ByteArrayPartSource;->bytes:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
