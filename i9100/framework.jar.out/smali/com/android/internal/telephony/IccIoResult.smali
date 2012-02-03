.class public Lcom/android/internal/telephony/IccIoResult;
.super Ljava/lang/Object;
.source "IccIoResult.java"


# instance fields
.field public payload:[B

.field public sw1:I

.field public sw2:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "sw1"
    .parameter "sw2"
    .parameter "hexString"

    .prologue
    .line 36
    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    .line 37
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0
    .parameter "sw1"
    .parameter "sw2"
    .parameter "payload"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    .line 31
    iput p2, p0, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    .line 32
    iput-object p3, p0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    .line 33
    return-void
.end method


# virtual methods
.method public getException()Lcom/android/internal/telephony/IccException;
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccIoResult;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    packed-switch v0, :pswitch_data_0

    .line 67
    new-instance v0, Lcom/android/internal/telephony/IccException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sw1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sw2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 62
    new-instance v0, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IccFileNotFound;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccFileNotFound;-><init>()V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x94
        :pswitch_0
    .end packed-switch
.end method

.method public success()Z
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    const/16 v1, 0x91

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    const/16 v1, 0x9e

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    const/16 v1, 0x9f

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IccIoResponse sw1:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sw2:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
