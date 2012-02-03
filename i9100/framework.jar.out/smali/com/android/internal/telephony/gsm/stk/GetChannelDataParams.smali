.class Lcom/android/internal/telephony/gsm/stk/GetChannelDataParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field mChannelId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;I)V
    .locals 0
    .parameter "cmdDet"
    .parameter "channelId"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    .line 328
    iput p2, p0, Lcom/android/internal/telephony/gsm/stk/GetChannelDataParams;->mChannelId:I

    .line 329
    return-void
.end method
