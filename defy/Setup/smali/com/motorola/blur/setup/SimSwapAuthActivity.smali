.class public Lcom/motorola/blur/setup/SimSwapAuthActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "SimSwapAuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/SimSwapAuthActivity$1;,
        Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;
    }
.end annotation


# static fields
.field private static final CLS_FACTORY_DATA_RESET:Ljava/lang/String; = "com.android.settings.MasterClear"

.field private static final DBG:Z = false

.field private static final PKG_ANDROID_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final SIM_SWAP_FACTORY_RESET:Ljava/lang/String; = "SimSwapFactoryDataReset"

.field private static final TAG:Ljava/lang/String; = "SimSwapUnlockActivity"

.field private static final mStrSimIccId:Ljava/lang/String; = "SimIccId"


# instance fields
.field private mBlurMotherReceiver:Landroid/content/BroadcastReceiver;

.field private mBtFactoryDataReset:Landroid/widget/Button;

.field private mBtForgotPassword:Landroid/widget/Button;

.field private mBtOk:Landroid/widget/Button;

.field private mBtResetPassword:Landroid/widget/Button;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mEmail:Ljava/lang/String;

.field private mErrorMsg:Ljava/lang/String;

.field private mEtEmail:Landroid/widget/EditText;

.field private mEtPassword:Landroid/widget/EditText;

.field private mPassword:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 93
    new-instance v0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;-><init>(Lcom/motorola/blur/setup/SimSwapAuthActivity;Lcom/motorola/blur/setup/SimSwapAuthActivity$1;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBlurMotherReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/SimSwapAuthActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->validatedBlurAcct()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/setup/SimSwapAuthActivity;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/blur/setup/SimSwapAuthActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->showErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/blur/setup/SimSwapAuthActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->showSuccessMsg(Ljava/lang/String;)V

    return-void
.end method

.method private checkPasswordToMother()V
    .locals 3

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 336
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.MOTHER_IS_PASSWORD_CORRECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v0, inValidatePasswordToMother:Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_PASSWORD"

    iget-object v2, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 408
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0c012c

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 410
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private hideProgressDialog()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 419
    :cond_0
    return-void
.end method

.method private resetPasswordToBlurMother()V
    .locals 7

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 344
    invoke-static {p0}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v2

    .line 346
    .local v2, deviceSetupWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 347
    .local v4, tm:Landroid/telephony/TelephonyManager;
    sget-object v5, Lcom/motorola/blur/setup/ValidationParams;->PHONE_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->validateOrMakeValid(Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, line1Number:Ljava/lang/String;
    sget-object v5, Lcom/motorola/blur/setup/ValidationParams;->IMSI_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->validateOrMakeValid(Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, IMSI:Ljava/lang/String;
    sget-object v5, Lcom/motorola/blur/setup/ValidationParams;->IMEI_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->validateOrMakeValid(Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, deviceId:Ljava/lang/String;
    iget-object v5, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mEmail:Ljava/lang/String;

    invoke-interface {v2, v5, v3, v0, v1}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 351
    return-void
.end method

.method private showErrorMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    const-string v3, ""

    .line 308
    invoke-direct {p0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->hideProgressDialog()V

    .line 309
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 317
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mEtEmail:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mEtPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mEtEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 320
    return-void
.end method

.method private showSuccessMsg(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->hideProgressDialog()V

    .line 328
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 330
    return-void
.end method

.method private validateEntries(Z)Z
    .locals 2
    .parameter "isResetPassword"

    .prologue
    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mErrorMsg:Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mEtEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mEmail:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mPassword:Ljava/lang/String;

    .line 293
    if-eqz p1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mErrorMsg:Ljava/lang/String;

    .line 301
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mErrorMsg:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mErrorMsg:Ljava/lang/String;

    goto :goto_0

    .line 301
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static validateOrMakeValid(Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "val"
    .parameter "input"

    .prologue
    .line 397
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 398
    :cond_0
    iget-object p1, p0, Lcom/motorola/blur/setup/ValidationParams;->blankValue:Ljava/lang/String;

    .line 402
    :cond_1
    :goto_0
    return-object p1

    .line 399
    :cond_2
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/ValidationParams;->validate(Ljava/lang/String;)Lcom/motorola/blur/setup/ValidationError;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/setup/ValidationError;->VALID_VALUE:Lcom/motorola/blur/setup/ValidationError;

    if-eq v0, v1, :cond_1

    .line 400
    iget-object p1, p0, Lcom/motorola/blur/setup/ValidationParams;->invalidValue:Ljava/lang/String;

    goto :goto_0
.end method

.method private validatedBlurAcct()V
    .locals 5

    .prologue
    const-string v4, "SimIccId"

    .line 383
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SimIccId"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 384
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 385
    .local v1, tm:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 386
    .local v0, newSimIccId:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SimIccId"

    if-nez v0, :cond_0

    const-string v3, ""

    :goto_0
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 390
    iget-object v2, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->showSuccessMsg(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->finish()V

    .line 394
    return-void

    :cond_0
    move-object v3, v0

    .line 388
    goto :goto_0
.end method


# virtual methods
.method checkBlurAcct(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "email"
    .parameter "password"

    .prologue
    const v7, 0x7f0c00e4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 359
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 360
    .local v1, accountMgr:Landroid/accounts/AccountManager;
    const-string v2, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 361
    .local v0, account:[Landroid/accounts/Account;
    array-length v2, v0

    if-eq v5, v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mErrorMsg:Ljava/lang/String;

    move v2, v6

    .line 377
    :goto_0
    return v2

    .line 365
    :cond_0
    aget-object v2, v0, v4

    const-string v3, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_EMAIL"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mErrorMsg:Ljava/lang/String;

    move v2, v6

    .line 370
    goto :goto_0

    .line 371
    :cond_1
    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 374
    goto :goto_0

    :cond_2
    move v2, v5

    .line 377
    goto :goto_0
.end method

.method protected enableDeviceLock(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.internal.intent.action.ACTIVITY_LOCK_DEVICE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, homeLaunchingMode:Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 279
    .local v1, sbManager:Landroid/app/StatusBarManager;
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 281
    return-void

    .line 279
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 237
    iget-object v2, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtOk:Landroid/widget/Button;

    if-ne p1, v2, :cond_3

    .line 238
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->validateEntries(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    iget-object v2, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mEmail:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->checkBlurAcct(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, checkedRet:I
    if-nez v0, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->validatedBlurAcct()V

    .line 266
    .end local v0           #checkedRet:I
    :cond_0
    :goto_0
    return-void

    .line 245
    .restart local v0       #checkedRet:I
    :cond_1
    if-ne v0, v4, :cond_2

    .line 248
    invoke-direct {p0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->checkPasswordToMother()V

    goto :goto_0

    .line 253
    .end local v0           #checkedRet:I
    :cond_2
    iget-object v2, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->showErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_3
    iget-object v2, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtResetPassword:Landroid/widget/Button;

    if-eq p1, v2, :cond_4

    iget-object v2, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtForgotPassword:Landroid/widget/Button;

    if-ne p1, v2, :cond_6

    .line 256
    :cond_4
    invoke-direct {p0, v4}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->validateEntries(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 257
    invoke-direct {p0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->resetPasswordToBlurMother()V

    goto :goto_0

    .line 259
    :cond_5
    iget-object v2, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c012d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->showErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_6
    iget-object v2, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtFactoryDataReset:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 262
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v1, i:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.MasterClear"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const v10, 0x7f0c0076

    const v9, 0x7f0b0003

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "WifiPreference"

    .line 143
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isSilentRegistrationRequired(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->finish()V

    .line 153
    :cond_0
    invoke-virtual {p0, v8}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->enableDeviceLock(Z)V

    .line 156
    const v4, 0x7f030044

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->setContentView(I)V

    .line 158
    const v4, 0x7f0b0108

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mEtEmail:Landroid/widget/EditText;

    .line 159
    iget-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mEtEmail:Landroid/widget/EditText;

    new-array v5, v8, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/LoginFilter$UsernameFilterGeneric;

    invoke-direct {v6}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>()V

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 161
    const v4, 0x7f0b007b

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mEtPassword:Landroid/widget/EditText;

    .line 162
    iget-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mEtPassword:Landroid/widget/EditText;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 166
    const v4, 0x7f0b0011

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 168
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 170
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v4, "SimSwapFactoryDataReset"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 171
    const v4, 0x7f0c012d

    const v5, 0x7f0b0007

    invoke-static {p0, v4, v5}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtResetPassword:Landroid/widget/Button;

    .line 172
    invoke-static {p0, v10, v9}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtOk:Landroid/widget/Button;

    .line 173
    iget-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtResetPassword:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 174
    iget-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtOk:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 176
    iget-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtOk:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtResetPassword:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;

    .line 199
    new-instance v4, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;-><init>(Lcom/motorola/blur/setup/SimSwapAuthActivity;Lcom/motorola/blur/setup/SimSwapAuthActivity$1;)V

    iput-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBlurMotherReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "com.motorola.blur.service.blur.Actions.MOTHER_PASSWORD_ANSWER"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 201
    .local v1, inFilter:Landroid/content/IntentFilter;
    const-string v4, "com.motorola.blur.service.blur.devicesetup.resetpassword.resp"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBlurMotherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    const-string v4, "WifiPreference"

    invoke-interface {v2, v11, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 206
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "WifiPreference"

    invoke-interface {v4, v11, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    :cond_1
    sput-boolean v7, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mShowSkipSetupMenu:Z

    .line 209
    return-void

    .line 182
    .end local v1           #inFilter:Landroid/content/IntentFilter;
    :cond_2
    const v4, 0x7f0b010a

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 183
    .local v3, v:Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    const v4, 0x7f0b007f

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtForgotPassword:Landroid/widget/Button;

    .line 185
    iget-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtForgotPassword:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 186
    iget-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtForgotPassword:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v4, 0x7f0b010b

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtFactoryDataReset:Landroid/widget/Button;

    .line 188
    iget-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtFactoryDataReset:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    iget-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtFactoryDataReset:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-static {p0, v10, v9}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtOk:Landroid/widget/Button;

    .line 191
    iget-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtOk:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 192
    iget-object v4, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBtOk:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onDestroy()V

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->enableDeviceLock(Z)V

    .line 220
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mBlurMotherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 224
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 229
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 230
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/motorola/blur/setup/SetupActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onStart()V

    .line 214
    return-void
.end method
