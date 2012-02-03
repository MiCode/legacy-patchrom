.class Lcom/android/internal/telephony/gsm/stk/PlayToneParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field settings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

.field textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/Tone;Lcom/android/internal/telephony/gsm/stk/Duration;Z)V
    .locals 1
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "tone"
    .parameter "duration"
    .parameter "vibrate"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    .line 150
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 151
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    invoke-direct {v0, p4, p3, p5}, Lcom/android/internal/telephony/gsm/stk/ToneSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/Duration;Lcom/android/internal/telephony/gsm/stk/Tone;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;->settings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    .line 152
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 155
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
