.class public Lcom/android/internal/telephony/RawResult;
.super Ljava/lang/Object;
.source "RawResult.java"


# instance fields
.field public response:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "hexString"

    .prologue
    .line 32
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RawResult;-><init>([B)V

    .line 33
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "response"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/telephony/RawResult;->response:[B

    .line 29
    return-void
.end method


# virtual methods
.method public getException()Lcom/android/internal/telephony/IccException;
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/internal/telephony/RawResult;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/IccException;

    iget-object v1, p0, Lcom/android/internal/telephony/RawResult;->response:[B

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public success()Z
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/RawResult;->response:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RawResponse data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/RawResult;->response:[B

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
