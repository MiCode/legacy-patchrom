.class Lcom/android/internal/telephony/gsm/stk/RilMessage;
.super Ljava/lang/Object;
.source "StkService.java"


# instance fields
.field mData:Ljava/lang/Object;

.field mId:I

.field mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "msgId"
    .parameter "rawData"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    .locals 1
    .parameter "other"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    return-void
.end method
