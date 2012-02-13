.class public Lcom/android/internal/telephony/gsm/CbMessage;
.super Ljava/lang/Object;
.source "CbMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/CbMessage$PduParser;
    }
.end annotation


# static fields
.field static final HEADER_SIZE:I = 0x6

.field static final MESSAGE_SIZE:I = 0x52

.field static final TAG:Ljava/lang/String; = "CbMessage"


# instance fields
.field private mDataCodingScheme:I

.field private mMessageBody:Ljava/lang/String;

.field private mMessageId1:I

.field private mMessageId2:I

.field private mNumberOfPages:I

.field private mPageNumber:I

.field private mPdu:[B

.field private mSerialNumber1:I

.field private mSerialNumber2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFromByte([B)Lcom/android/internal/telephony/gsm/CbMessage;
    .locals 5
    .parameter "line"

    .prologue
    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/CbMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/CbMessage;-><init>()V

    .local v1, msg:Lcom/android/internal/telephony/gsm/CbMessage;
    array-length v2, p0

    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/CbMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .end local v1           #msg:Lcom/android/internal/telephony/gsm/CbMessage;
    :goto_0
    return-object v2

    .restart local v1       #msg:Lcom/android/internal/telephony/gsm/CbMessage;
    :cond_0
    move-object v2, v4

    goto :goto_0

    .end local v1           #msg:Lcom/android/internal/telephony/gsm/CbMessage;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "CbMessage"

    const-string v3, "CB PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    goto :goto_0
.end method

.method private parsePdu([B)V
    .locals 6
    .parameter "byteMsg"

    .prologue
    const-string v5, "CbMessage"

    const-string v3, "CbMessage"

    const-string v3, "raw cb mesage:"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;-><init>([B)V

    .local v1, p:Lcom/android/internal/telephony/gsm/CbMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->getbyte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mSerialNumber1:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->getbyte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mSerialNumber2:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->getbyte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mMessageId1:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->getbyte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mMessageId2:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->getbyte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mDataCodingScheme:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->getbyte()I

    move-result v2

    .local v2, pageParameter:I
    shr-int/lit8 v3, v2, 0x4

    iput v3, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mPageNumber:I

    and-int/lit8 v3, v2, 0xf

    iput v3, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mNumberOfPages:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->getData()Ljava/lang/String;

    move-result-object v0

    .local v0, data:Ljava/lang/String;
    const-string v3, "CbMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SerialNumber1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mSerialNumber1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CbMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SerialNumber2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mSerialNumber2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CbMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageId1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mMessageId1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CbMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageId2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mMessageId2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CbMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataCodingScheme: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mDataCodingScheme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CbMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PageNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mPageNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CbMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberOfPages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mNumberOfPages:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CbMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->getPdu()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mPdu:[B

    return-void
.end method


# virtual methods
.method public getDataCodingScheme()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mDataCodingScheme:I

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mMessageId2:I

    return v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mNumberOfPages:I

    return v0
.end method

.method public getOldSerialNumber()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mSerialNumber1:I

    return v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mPageNumber:I

    return v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mPdu:[B

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/CbMessage;->mSerialNumber2:I

    return v0
.end method
