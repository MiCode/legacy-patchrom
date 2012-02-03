.class Lcom/android/internal/telephony/gsm/stk/GetInputParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field input:Lcom/android/internal/telephony/gsm/stk/Input;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Input;)V
    .locals 1
    .parameter "cmdDet"
    .parameter "input"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInputParams;->input:Lcom/android/internal/telephony/gsm/stk/Input;

    .line 225
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/GetInputParams;->input:Lcom/android/internal/telephony/gsm/stk/Input;

    .line 226
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 229
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInputParams;->input:Lcom/android/internal/telephony/gsm/stk/Input;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInputParams;->input:Lcom/android/internal/telephony/gsm/stk/Input;

    iput-object p1, v0, Lcom/android/internal/telephony/gsm/stk/Input;->icon:Landroid/graphics/Bitmap;

    .line 232
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
