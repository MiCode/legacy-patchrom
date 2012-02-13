.class public Lcom/android/phone/InternationalRoamingCallback;
.super Landroid/app/Activity;
.source "InternationalRoamingCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final NO_PREFIX_SET_DIALOG:I = 0xc8

.field public static final PAUSE:C = ','

.field private static final TAG:Ljava/lang/String; = "InternationalRoamingCallBack"

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'


# instance fields
.field private cleanPhoneNumber:Ljava/lang/String;

.field private intRoamCallbackPrefix:Ljava/lang/String;

.field private isIntRoamCallBackCall:Z

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InternationalRoamingCallback;->isIntRoamCallBackCall:Z

    return-void
.end method

.method private call()V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/phone/InternationalRoamingCallback;->phoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InternationalRoamingCallback;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingCallback;->finish()V

    .line 224
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/InternationalRoamingCallback;->isIntRoamCallBackCall:Z

    if-eqz v1, :cond_2

    .line 209
    invoke-static {p0}, Lcom/android/phone/Utils;->checkIntRoamCallBackPrefix(Landroid/content/Context;)V

    .line 212
    const-string v1, "INTROAMCB_PREFIX"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/InternationalRoamingCallback;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    .local v0, shareddata:Landroid/content/SharedPreferences;
    const-string v1, "introamcb_prefix"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InternationalRoamingCallback;->intRoamCallbackPrefix:Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/android/phone/InternationalRoamingCallback;->intRoamCallbackPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 218
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/InternationalRoamingCallback;->showDialog(I)V

    goto :goto_0

    .line 223
    .end local v0           #shareddata:Landroid/content/SharedPreferences;
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingCallback;->placeCall()V

    goto :goto_0
.end method

.method private callForEmergency()V
    .locals 5

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/phone/InternationalRoamingCallback;->phoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InternationalRoamingCallback;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingCallback;->finish()V

    .line 257
    :goto_0
    return-void

    .line 252
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->phoneNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 255
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/InternationalRoamingCallback;->startActivity(Landroid/content/Intent;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingCallback;->finish()V

    goto :goto_0
.end method

.method public static final isNonSeparator(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 45
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchIntlPrefix(Ljava/lang/String;I)I
    .locals 7
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v4, 0x0

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_6

    .line 59
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 61
    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    .line 86
    :pswitch_0
    invoke-static {v0}, Lcom/android/phone/InternationalRoamingCallback;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 94
    .end local v0           #c:C
    :goto_1
    return v3

    .line 63
    .restart local v0       #c:C
    :pswitch_1
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_1

    const/4 v2, 0x1

    .line 58
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_1
    if-ne v0, v5, :cond_2

    const/4 v2, 0x2

    goto :goto_2

    .line 65
    :cond_2
    invoke-static {v0}, Lcom/android/phone/InternationalRoamingCallback;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 71
    :pswitch_2
    if-ne v0, v5, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    .line 72
    :cond_3
    if-ne v0, v6, :cond_4

    const/4 v2, 0x4

    goto :goto_2

    .line 73
    :cond_4
    invoke-static {v0}, Lcom/android/phone/InternationalRoamingCallback;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 79
    :pswitch_3
    if-ne v0, v6, :cond_5

    const/4 v2, 0x5

    goto :goto_2

    .line 80
    :cond_5
    invoke-static {v0}, Lcom/android/phone/InternationalRoamingCallback;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .end local v0           #c:C
    :cond_6
    move v3, v2

    .line 94
    goto :goto_1

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private placeCall()V
    .locals 4

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/phone/InternationalRoamingCallback;->isIntRoamCallBackCall:Z

    if-eqz v1, :cond_0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/InternationalRoamingCallback;->intRoamCallbackPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    .line 233
    const-string v1, "introamcb_prefix"

    iget-object v2, p0, Lcom/android/phone/InternationalRoamingCallback;->intRoamCallbackPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v1, "orig_number"

    iget-object v2, p0, Lcom/android/phone/InternationalRoamingCallback;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/InternationalRoamingCallback;->isIntRoamCallBackCall:Z

    .line 240
    :cond_0
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/phone/InternationalRoamingCallback;->startActivity(Landroid/content/Intent;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingCallback;->finish()V

    .line 244
    return-void
.end method


# virtual methods
.method protected handleIntRoamCBDialogCancelPressed()V
    .locals 2

    .prologue
    .line 303
    const-string v0, "InternationalRoamingCallBack"

    const-string v1, "handleIntRoamCBDialogCancelPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingCallback;->finish()V

    .line 306
    return-void
.end method

.method protected handleIntRoamCBDialogOKPressed()V
    .locals 2

    .prologue
    .line 293
    const-string v0, "InternationalRoamingCallBack"

    const-string v1, "handleIntRoamCBDialogOKPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InternationalRoamingCallback;->isIntRoamCallBackCall:Z

    .line 297
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingCallback;->placeCall()V

    .line 298
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingCallback;->finish()V

    .line 299
    return-void
.end method

.method isLandLineNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "phoneNumber"

    .prologue
    const/16 v3, 0x30

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_0

    move v0, v2

    .line 104
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x1

    const-string v8, "Receive phone number equal "

    const-string v6, "InternationalRoamingCallBack"

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingCallback;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 114
    .local v1, in:Landroid/content/Intent;
    const-string v3, "phoneNumber"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->phoneNumber:Ljava/lang/String;

    .line 115
    const-string v3, "isIntRoamCallBackCall"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/InternationalRoamingCallback;->isIntRoamCallBackCall:Z

    .line 118
    const-string v3, "InternationalRoamingCallBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive phone number equal "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InternationalRoamingCallback;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->phoneNumber:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    .line 125
    iget-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    .line 129
    iget-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, isIntlPrefix:I
    iget-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 135
    iget-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/phone/InternationalRoamingCallback;->matchIntlPrefix(Ljava/lang/String;I)I

    move-result v2

    .line 140
    :goto_0
    if-ne v7, v2, :cond_2

    .line 144
    iget-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    .line 146
    const-string v3, "InternationalRoamingCallBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove +86 cleanPhoneNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_1
    iget-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/phone/InternationalRoamingCallback;->isLandLineNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    .line 172
    const-string v3, "InternationalRoamingCallBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove 0 cleanPhoneNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v2           #isIntlPrefix:I
    :cond_0
    const-string v3, "InternationalRoamingCallBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive phone number equal "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v7

    .line 187
    .local v0, emergencyNumber:Z
    :goto_2
    if-eqz v0, :cond_5

    .line 188
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingCallback;->callForEmergency()V

    .line 192
    :goto_3
    return-void

    .line 137
    .end local v0           #emergencyNumber:Z
    .restart local v2       #isIntlPrefix:I
    :cond_1
    const-string v3, "InternationalRoamingCallback"

    const-string v4, "cleanPhoneNumber is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 150
    :cond_2
    if-ne v5, v2, :cond_3

    .line 154
    iget-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    .line 156
    const-string v3, "InternationalRoamingCallBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove 0086 cleanPhoneNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 160
    :cond_3
    const-string v3, "InternationalRoamingCallBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not intl prefix"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InternationalRoamingCallback;->cleanPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 183
    .end local v2           #isIntlPrefix:I
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_2

    .line 190
    .restart local v0       #emergencyNumber:Z
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingCallback;->call()V

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, dialog:Landroid/app/Dialog;
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_0

    .line 264
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    .local v1, dlg_bld:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0470

    invoke-virtual {p0, v2}, Lcom/android/phone/InternationalRoamingCallback;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 267
    const v2, 0x7f0b0471

    invoke-virtual {p0, v2}, Lcom/android/phone/InternationalRoamingCallback;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 269
    const v2, 0x7f0b0461

    new-instance v3, Lcom/android/phone/InternationalRoamingCallback$1;

    invoke-direct {v3, p0}, Lcom/android/phone/InternationalRoamingCallback$1;-><init>(Lcom/android/phone/InternationalRoamingCallback;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    const v2, 0x7f0b0462

    new-instance v3, Lcom/android/phone/InternationalRoamingCallback$2;

    invoke-direct {v3, p0}, Lcom/android/phone/InternationalRoamingCallback$2;-><init>(Lcom/android/phone/InternationalRoamingCallback;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    new-instance v2, Lcom/android/phone/InternationalRoamingCallback$3;

    invoke-direct {v2, p0}, Lcom/android/phone/InternationalRoamingCallback$3;-><init>(Lcom/android/phone/InternationalRoamingCallback;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 286
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 288
    .end local v1           #dlg_bld:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-object v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 196
    const-string v0, "InternationalRoamingCallBack"

    const-string v1, "onResume()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 198
    return-void
.end method
