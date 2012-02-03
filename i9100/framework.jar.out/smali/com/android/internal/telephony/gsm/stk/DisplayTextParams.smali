.class Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textMsg"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    .line 44
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 45
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 48
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
