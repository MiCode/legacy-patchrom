.class Lcom/android/internal/telephony/gsm/stk/SendDataParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field mChannelData:[B

.field mChannelId:I

.field mSendImmediate:Z

.field mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;I[BZLcom/android/internal/telephony/gsm/stk/TextMessage;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "channelId"
    .parameter "channelData"
    .parameter "sendImmediate"
    .parameter "textMessage"

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    .line 316
    iput p2, p0, Lcom/android/internal/telephony/gsm/stk/SendDataParams;->mChannelId:I

    .line 317
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/SendDataParams;->mChannelData:[B

    .line 318
    iput-boolean p4, p0, Lcom/android/internal/telephony/gsm/stk/SendDataParams;->mSendImmediate:Z

    .line 319
    iput-object p5, p0, Lcom/android/internal/telephony/gsm/stk/SendDataParams;->mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 320
    return-void
.end method
