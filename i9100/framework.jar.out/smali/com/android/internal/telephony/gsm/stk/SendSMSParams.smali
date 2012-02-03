.class Lcom/android/internal/telephony/gsm/stk/SendSMSParams;
.super Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field Pdu:Ljava/lang/String;

.field SmscAddress:Ljava/lang/String;

.field textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "Smscaddress"
    .parameter "Pdu"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    .line 109
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->SmscAddress:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->Pdu:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 116
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
