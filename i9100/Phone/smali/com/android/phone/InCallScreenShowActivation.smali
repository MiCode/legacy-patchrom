.class public Lcom/android/phone/InCallScreenShowActivation;
.super Landroid/app/Activity;
.source "InCallScreenShowActivation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const-string v5, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 43
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 48
    .local v2, newIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 49
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    const-string v3, "ota_user_skip_pending_intent"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, v4, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->reportSkipPendingIntent:Landroid/app/PendingIntent;

    .line 52
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreenShowActivation;->startActivity(Landroid/content/Intent;)V

    .line 57
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #newIntent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->finish()V

    .line 58
    return-void

    .line 54
    :cond_0
    const-string v3, "InCallScreenShowActivation"

    const-string v4, "Inappropriate launch of InCallScreenShowActivation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
