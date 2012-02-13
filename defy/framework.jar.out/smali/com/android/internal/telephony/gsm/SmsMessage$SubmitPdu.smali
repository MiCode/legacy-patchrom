.class public Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
.super Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitPdu"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;-><init>()V

    return-void
.end method


# virtual methods
.method toByteArray()[B
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->concatByteArray([B[B)[B

    move-result-object v0

    return-object v0
.end method
