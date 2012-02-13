.class Lcom/android/internal/telephony/gsm/CbMessage$PduParser;
.super Ljava/lang/Object;
.source "CbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/CbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PduParser"
.end annotation


# instance fields
.field mCur:I

.field mHeaderPdu:[B

.field mMessagePdu:[B

.field mPdu:[B


# direct methods
.method constructor <init>([B)V
    .locals 6
    .parameter "byteMsg"

    .prologue
    const/16 v5, 0x52

    const/4 v4, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v2, v4, [B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->mHeaderPdu:[B

    new-array v2, v5, [B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->mMessagePdu:[B

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->mHeaderPdu:[B

    aget-byte v3, p1, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v4

    if-ge v2, v5, :cond_1

    array-length v2, p1

    sub-int/2addr v2, v4

    move v1, v2

    .local v1, maxMsgSize:I
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->mMessagePdu:[B

    add-int/lit8 v3, v0, 0x6

    aget-byte v3, p1, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #maxMsgSize:I
    :cond_1
    move v1, v5

    goto :goto_1

    .restart local v1       #maxMsgSize:I
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->mCur:I

    return-void
.end method


# virtual methods
.method getData()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->mMessagePdu:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method getPdu()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->mMessagePdu:[B

    return-object v0
.end method

.method getbyte()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->mHeaderPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/CbMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
