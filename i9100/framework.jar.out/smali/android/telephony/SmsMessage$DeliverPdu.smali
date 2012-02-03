.class public Landroid/telephony/SmsMessage$DeliverPdu;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeliverPdu"
.end annotation


# instance fields
.field public encodedMessage:[B

.field public encodedScAddress:[B


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;)V
    .locals 1
    .parameter "spb"

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iget-object v0, p1, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    iput-object v0, p0, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    .line 159
    iget-object v0, p1, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    iput-object v0, p0, Landroid/telephony/SmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 160
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeliverPdu: encodedScAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsMessage$DeliverPdu;->encodedScAddress:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encodedMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
