.class public Landroid/telephony/SmsMessage$CommandPdu;
.super Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandPdu"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;)V
    .locals 1
    .parameter "cpb"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;-><init>()V

    iget-object v0, p1, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;->encodedCommand:[B

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;->encodedCommand:[B

    iget-object v0, p1, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;->encodedScAddress:[B

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;->encodedScAddress:[B

    return-void
.end method
