.class public Lcom/android/phone/TransDialPad;
.super Landroid/app/Activity;
.source "TransDialPad.java"


# static fields
.field private static final DBG:Z = true

.field private static final NO_IP_SET_DIALOG:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "TransDialPad"


# instance fields
.field private ipPrefix:Ljava/lang/String;

.field private isIpCall:Z

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/TransDialPad;->isIpCall:Z

    return-void
.end method

.method private call()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/TransDialPad;->finish()V

    .line 78
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/TransDialPad;->isIpCall:Z

    if-eqz v1, :cond_2

    .line 68
    invoke-static {p0}, Lcom/android/phone/Utils;->checkIPPrefix(Landroid/content/Context;)V

    .line 70
    const-string v1, "IP_PREFIX"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/TransDialPad;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    .local v0, shareddata:Landroid/content/SharedPreferences;
    const-string v1, "ip_prefix"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/TransDialPad;->ipPrefix:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/android/phone/TransDialPad;->ipPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 73
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/TransDialPad;->showDialog(I)V

    goto :goto_0

    .line 77
    .end local v0           #shareddata:Landroid/content/SharedPreferences;
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/TransDialPad;->placeCall()V

    goto :goto_0
.end method

.method private callForEmergency()V
    .locals 5

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/TransDialPad;->finish()V

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/TransDialPad;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/phone/TransDialPad;->finish()V

    goto :goto_0
.end method

.method private placeCall()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/phone/TransDialPad;->isIpCall:Z

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/TransDialPad;->ipPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    .line 85
    const-string v1, "ip_prefix"

    iget-object v2, p0, Lcom/android/phone/TransDialPad;->ipPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/TransDialPad;->isIpCall:Z

    .line 88
    :cond_0
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/phone/TransDialPad;->startActivity(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/TransDialPad;->finish()V

    .line 91
    return-void
.end method


# virtual methods
.method protected handleIPDialogCancelPressed()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "TransDialPad"

    const-string v1, "handleIPDialogCancelPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/phone/TransDialPad;->finish()V

    .line 143
    return-void
.end method

.method protected handleIPDialogOKPressed()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "TransDialPad"

    const-string v1, "handleIPDialogOKPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/TransDialPad;->isIpCall:Z

    .line 136
    invoke-direct {p0}, Lcom/android/phone/TransDialPad;->placeCall()V

    .line 137
    invoke-virtual {p0}, Lcom/android/phone/TransDialPad;->finish()V

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const-string v6, "TransDialPad"

    const-string v5, "Receive phone number equal "

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/phone/TransDialPad;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 31
    .local v1, in:Landroid/content/Intent;
    const-string v2, "phoneNumber"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    .line 32
    const-string v2, "isIpCall"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/TransDialPad;->isIpCall:Z

    .line 34
    const-string v2, "TransDialPad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive phone number equal "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v2, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    .line 38
    iget-object v2, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    .line 41
    :cond_0
    const-string v2, "TransDialPad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive phone number equal "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v2, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/TransDialPad;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 47
    .local v0, emergencyNumber:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 48
    invoke-direct {p0}, Lcom/android/phone/TransDialPad;->callForEmergency()V

    .line 52
    :goto_1
    return-void

    .end local v0           #emergencyNumber:Z
    :cond_1
    move v0, v4

    .line 43
    goto :goto_0

    .line 50
    .restart local v0       #emergencyNumber:Z
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/TransDialPad;->call()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, dialog:Landroid/app/Dialog;
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_0

    .line 110
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v1, dlg_bld:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b045f

    invoke-virtual {p0, v2}, Lcom/android/phone/TransDialPad;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 112
    const v2, 0x7f0b0460

    invoke-virtual {p0, v2}, Lcom/android/phone/TransDialPad;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 113
    const v2, 0x7f0b0461

    new-instance v3, Lcom/android/phone/TransDialPad$1;

    invoke-direct {v3, p0}, Lcom/android/phone/TransDialPad$1;-><init>(Lcom/android/phone/TransDialPad;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    const v2, 0x7f0b0462

    new-instance v3, Lcom/android/phone/TransDialPad$2;

    invoke-direct {v3, p0}, Lcom/android/phone/TransDialPad$2;-><init>(Lcom/android/phone/TransDialPad;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    new-instance v2, Lcom/android/phone/TransDialPad$3;

    invoke-direct {v2, p0}, Lcom/android/phone/TransDialPad$3;-><init>(Lcom/android/phone/TransDialPad;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 130
    .end local v1           #dlg_bld:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-object v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "TransDialPad"

    const-string v1, "onResume()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 58
    return-void
.end method
