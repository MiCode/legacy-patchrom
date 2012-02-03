.class Lcom/android/internal/telephony/gsm/stk/CallSetupParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field address:Ljava/lang/String;

.field callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

.field confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;)V
    .locals 1
    .parameter "cmdDet"
    .parameter "confirmMsg"
    .parameter "callMsg"
    .parameter "address"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->address:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 172
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 173
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->address:Ljava/lang/String;

    .line 174
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "icon"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    if-nez p1, :cond_0

    move v0, v1

    .line 187
    :goto_0
    return v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    move v0, v2

    .line 182
    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    move v0, v2

    .line 185
    goto :goto_0

    :cond_2
    move v0, v1

    .line 187
    goto :goto_0
.end method
