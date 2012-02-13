.class public Lcom/motorola/blur/setup/NewBlurPasswordActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "NewBlurPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/motorola/blur/setup/BlurAccountCreationListener;


# static fields
.field public static final CAPTCHA_REQUEST_STATE:Ljava/lang/String; = "captchaRequestState"

.field public static final CAPTCHA_RESPONSE_RECIEVED:I = 0x1

.field private static final REPEAT_PASSWORD:Ljava/lang/String; = "repeatPassword"

.field private static final TAG:Ljava/lang/String; = "NewBlurPswdActivity"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field protected mCaptchaRequired:Ljava/lang/Boolean;

.field private mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

.field private mCreatorForCaptcha:Lcom/motorola/blur/setup/BlurAccountCreator;

.field private mErrorString:Ljava/lang/String;

.field private mNextButton:Landroid/widget/Button;

.field private mPassword:Ljava/lang/String;

.field private mPwdFilled:Z

.field private mRepeatPwdFilled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    .line 27
    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mPassword:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mNextButton:Landroid/widget/Button;

    .line 29
    iput-boolean v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mPwdFilled:Z

    .line 30
    iput-boolean v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mRepeatPwdFilled:Z

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mCaptchaRequired:Ljava/lang/Boolean;

    .line 32
    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    .line 33
    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mCreatorForCaptcha:Lcom/motorola/blur/setup/BlurAccountCreator;

    .line 34
    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mErrorString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/motorola/blur/setup/NewBlurPasswordActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mPwdFilled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/NewBlurPasswordActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->setEnabled()V

    return-void
.end method

.method static synthetic access$202(Lcom/motorola/blur/setup/NewBlurPasswordActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mRepeatPwdFilled:Z

    return p1
.end method

.method private getCaptchaImage(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 3
    .parameter "serverCaptchaInfo"

    .prologue
    .line 259
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "CaptchaToken"

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 262
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mCaptchaRequired:Ljava/lang/Boolean;

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "CaptchaRequired"

    iget-object v2, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mCaptchaRequired:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mCaptchaRequired:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private final getEditValue(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 188
    .local v0, edit:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    :cond_0
    return-object v1
.end method

.method private goBack(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->putPassword()V

    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->setResult(ILandroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->finish()V

    .line 167
    return-void
.end method

.method private putPassword()V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "password"

    const v2, 0x7f0b0032

    invoke-direct {p0, v2}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->getEditValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "repeatPassword"

    const v2, 0x7f0b0033

    invoke-direct {p0, v2}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->getEditValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method private requestCaptcha()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, captchaRequestState:I
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "captchaRequestState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 144
    if-eq v0, v3, :cond_0

    .line 148
    new-instance v1, Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-direct {v1, p0, p0}, Lcom/motorola/blur/setup/BlurAccountCreator;-><init>(Landroid/content/Context;Lcom/motorola/blur/setup/BlurAccountCreationListener;)V

    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mCreatorForCaptcha:Lcom/motorola/blur/setup/BlurAccountCreator;

    .line 149
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mCreatorForCaptcha:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-virtual {v1}, Lcom/motorola/blur/setup/BlurAccountCreator;->getCaptcha()V

    .line 150
    invoke-static {}, Lcom/motorola/blur/setup/CaptchaSingleton;->getCaptchaSingletonObject()Lcom/motorola/blur/setup/CaptchaSingleton;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    .line 151
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/setup/CaptchaSingleton;->setResponse(Ljava/lang/Boolean;)V

    .line 152
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mCaptchaRequired:Ljava/lang/Boolean;

    .line 154
    :cond_0
    return-void
.end method

.method private setEnabled()V
    .locals 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mPwdFilled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mRepeatPwdFilled:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mNextButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mNextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showValidationError(Ljava/lang/String;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0091

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 204
    :cond_0
    return-void
.end method

.method private validatePasswords()Z
    .locals 7

    .prologue
    const v3, 0x7f0b0032

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mErrorString:Ljava/lang/String;

    .line 171
    invoke-direct {p0, v3}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->getEditValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mPassword:Ljava/lang/String;

    .line 173
    new-instance v0, Lcom/motorola/blur/setup/ValidatedParamValue;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    aput-object v1, v2, v5

    const v1, 0x7f0b0033

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    aput-object v1, v2, v6

    sget-object v1, Lcom/motorola/blur/setup/ValidationParams;->SET_PASSWORD_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    iget-object v3, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mPassword:Ljava/lang/String;

    const v4, 0x7f0c007c

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/motorola/blur/setup/ValidatedParamValue;-><init>([Landroid/widget/EditText;Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;I)V

    .line 178
    .local v0, validatedPwd:Lcom/motorola/blur/setup/ValidatedParamValue;
    invoke-virtual {v0}, Lcom/motorola/blur/setup/ValidatedParamValue;->getValidComparedValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ValidatedParamValue;->getError(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mErrorString:Ljava/lang/String;

    .line 181
    :cond_0
    invoke-virtual {v0}, Lcom/motorola/blur/setup/ValidatedParamValue;->clearValue()V

    .line 182
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mErrorString:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v6

    :goto_0
    return v1

    :cond_1
    move v1, v5

    goto :goto_0
.end method


# virtual methods
.method protected goBack()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->goBack(I)V

    .line 159
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 208
    packed-switch p1, :pswitch_data_0

    .line 229
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/blur/setup/SetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 230
    return-void

    .line 211
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    .line 212
    packed-switch p2, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 221
    :pswitch_2
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->goBack(I)V

    goto :goto_0

    .line 214
    :pswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->goBack(I)V

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch

    .line 212
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCaptchaRecieved(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;I)V
    .locals 3
    .parameter "serverCaptchaInfo"
    .parameter "errorCode"

    .prologue
    .line 234
    const-string v0, "NewBlurPswdActivity"

    const-string v1, "Recieved captcha response"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "captchaRequestState"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->getCaptchaImage(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V

    .line 237
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/setup/CaptchaSingleton;->setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V

    .line 238
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->goBack()V

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->validatePasswords()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "password"

    iget-object v3, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "repeatPassword"

    const v3, 0x7f0b0033

    invoke-direct {p0, v3}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->getEditValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v0, confirmationIntent:Landroid/content/Intent;
    const-class v1, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 125
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 127
    .end local v0           #confirmationIntent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mErrorString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->showValidationError(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x7f0b0000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v6, 0x7f03000b

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->setContentView(I)V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    iput-object p1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    .line 45
    :cond_0
    iget-object v6, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    if-nez v6, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 47
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    .line 54
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x0

    .line 55
    .local v4, repeatPassword:Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 56
    iget-object v6, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    const-string v7, "password"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mPassword:Ljava/lang/String;

    .line 57
    iget-object v6, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    const-string v7, "repeatPassword"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    :goto_0
    const v6, 0x7f0b0011

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 65
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v6, 0x7f0c0004

    const/high16 v7, 0x7f0b

    invoke-static {p0, v6, v7}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 66
    .local v1, backButton:Landroid/widget/Button;
    const v6, 0x7f0c0003

    const v7, 0x7f0b0001

    invoke-static {p0, v6, v7}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v3

    .line 67
    .local v3, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 68
    invoke-virtual {v0, v3}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 70
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v3, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mNextButton:Landroid/widget/Button;

    .line 76
    const v6, 0x7f0b0032

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 77
    .local v5, textView:Landroid/widget/TextView;
    new-instance v6, Lcom/motorola/blur/setup/NewBlurPasswordActivity$1;

    invoke-direct {v6, p0, v5}, Lcom/motorola/blur/setup/NewBlurPasswordActivity$1;-><init>(Lcom/motorola/blur/setup/NewBlurPasswordActivity;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    iget-object v6, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v6, 0x7f0b0033

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #textView:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 93
    .restart local v5       #textView:Landroid/widget/TextView;
    new-instance v6, Lcom/motorola/blur/setup/NewBlurPasswordActivity$2;

    invoke-direct {v6, p0, v5}, Lcom/motorola/blur/setup/NewBlurPasswordActivity$2;-><init>(Lcom/motorola/blur/setup/NewBlurPasswordActivity;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-direct {p0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->requestCaptcha()V

    .line 111
    return-void

    .line 59
    .end local v0           #ab:Lcom/motorola/android/widget/ActionBar;
    .end local v1           #backButton:Landroid/widget/Button;
    .end local v3           #nextButton:Landroid/widget/Button;
    .end local v5           #textView:Landroid/widget/TextView;
    :cond_2
    const-string v6, "NewBlurPswdActivity"

    const-string v7, "LOST THE BUNDLE!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreationFinished(ZLcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 0
    .parameter "success"
    .parameter "captchaInfo"

    .prologue
    .line 243
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mCreatorForCaptcha:Lcom/motorola/blur/setup/BlurAccountCreator;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mCreatorForCaptcha:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/BlurAccountCreator;->finishIfAvailable()V

    .line 255
    :cond_0
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onDestroy()V

    .line 256
    return-void
.end method

.method public onLoginFinished(ZLjava/lang/String;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 0
    .parameter "success"
    .parameter "googleUser"
    .parameter "captchaInfo"

    .prologue
    .line 248
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->putPassword()V

    .line 272
    iget-object p1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mBundle:Landroid/os/Bundle;

    .line 273
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    return-void
.end method
