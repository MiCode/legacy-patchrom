.class Lcom/android/internal/telephony/gsm/stk/SmsSendParams;
.super Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field address:Ljava/lang/String;

.field isCdmaTpdu:Z

.field smsTpdu:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/lang/String;[B[BLcom/android/internal/telephony/gsm/stk/TextMessage;)V
    .locals 2
    .parameter "cmdDest"
    .parameter "address"
    .parameter "gsmSmsTpdu"
    .parameter "cdmaSmsTpdu"
    .parameter "textMsg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p5}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;->address:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;->smsTpdu:[B

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;->isCdmaTpdu:Z

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;->address:Ljava/lang/String;

    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;->smsTpdu:[B

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;->isCdmaTpdu:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_0

    if-nez p3, :cond_0

    iput-object p4, p0, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;->smsTpdu:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;->isCdmaTpdu:Z

    goto :goto_0
.end method
