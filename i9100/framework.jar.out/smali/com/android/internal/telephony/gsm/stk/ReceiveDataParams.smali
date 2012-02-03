.class Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field mChannelDataLength:B

.field mChannelId:I

.field mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;IBLcom/android/internal/telephony/gsm/stk/TextMessage;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "channelId"
    .parameter "channelDataLength"
    .parameter "textMessage"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    .line 302
    iput p2, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;->mChannelId:I

    .line 303
    iput-byte p3, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;->mChannelDataLength:B

    .line 304
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;->mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 305
    return-void
.end method
