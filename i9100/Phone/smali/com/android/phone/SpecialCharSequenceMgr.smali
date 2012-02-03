.class public Lcom/android/phone/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 154
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    .line 173
    :goto_0
    return v3

    .line 158
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 159
    .local v2, len:I
    if-le v2, v6, :cond_1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    const/4 v3, 0x0

    sub-int v4, v2, v6

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, index:I
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.SimContacts"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    const-string v3, "index"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    .line 170
    goto :goto_0

    .line 171
    .end local v0           #index:I
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    :cond_1
    move v3, v5

    .line 173
    goto :goto_0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "input"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 2
    .parameter "context"
    .parameter "input"
    .parameter "pukInputActivity"

    .prologue
    .line 86
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, dialString:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0, p2}, Lcom/android/phone/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    const/4 v1, 0x1

    .line 95
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 2
    .parameter "context"
    .parameter "input"
    .parameter "pukInputActivity"

    .prologue
    .line 110
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, dialString:Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/android/phone/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x1

    .line 122
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v2, 0x1

    .line 201
    const-string v1, "*#06#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 203
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 204
    invoke-static {p0}, Lcom/android/phone/SpecialCharSequenceMgr;->showMEIDPanel(Landroid/content/Context;)V

    move v1, v2

    .line 212
    .end local v0           #phoneType:I
    :goto_0
    return v1

    .line 206
    .restart local v0       #phoneType:I
    :cond_0
    if-ne v0, v2, :cond_1

    .line 207
    invoke-static {p0}, Lcom/android/phone/SpecialCharSequenceMgr;->showIMEIPanel(Landroid/content/Context;)V

    move v1, v2

    .line 208
    goto :goto_0

    .line 212
    .end local v0           #phoneType:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 4
    .parameter "context"
    .parameter "input"
    .parameter "pukInputActivity"

    .prologue
    const-string v3, "**05"

    .line 181
    const-string v2, "**04"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "**05"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 184
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v1

    .line 191
    .local v1, isMMIHandled:Z
    if-eqz v1, :cond_1

    const-string v2, "**05"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    invoke-virtual {v0, p2}, Lcom/android/phone/PhoneApp;->setPukEntryActivity(Landroid/app/Activity;)V

    :cond_1
    move v2, v1

    .line 196
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #isMMIHandled:Z
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v5, 0x4

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 137
    .local v1, len:I
    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const-string v2, "*#*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "#*#*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_secret_code://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, v1, v5

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    const/4 v2, 0x1

    .line 144
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static showIMEIPanel(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 220
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, imeiStr:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d005e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d003e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 228
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d7

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 229
    return-void
.end method

.method private static showMEIDPanel(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 234
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, meidStr:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d005f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d003e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 242
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d7

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 243
    return-void
.end method
