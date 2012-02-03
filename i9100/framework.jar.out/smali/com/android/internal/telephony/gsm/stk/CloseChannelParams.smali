.class Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field mChannelId:I

.field mCloseChannelMode:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

.field mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;ILcom/android/internal/telephony/gsm/stk/CloseChannelMode;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "channelId"
    .parameter "closeChannelMode"
    .parameter "textMessage"

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    .line 289
    iput p2, p0, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;->mChannelId:I

    .line 290
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;->mCloseChannelMode:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    .line 291
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;->mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 292
    return-void
.end method
