.class public Lcom/motorola/blur/setup/AccountAuthActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "AccountAuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/motorola/blur/setup/BlurAccountCreationListener;


# static fields
.field protected static final CAPTCHA_RECIEVED:Ljava/lang/String; = "Captcha Received"

.field protected static final CAPTCHA_REQUIRED:Ljava/lang/String; = "CaptchaRequired"

.field protected static final CAPTCHA_TOKEN:Ljava/lang/String; = "CaptchaToken"

.field public static final EXISTING_ACCOUNT_KEY:Ljava/lang/String; = "existing"

.field public static final EXISTING_EMAIL_ACCOUNTS_KEY:Ljava/lang/String; = "existing_email_accounts"

.field private static final TAG:Ljava/lang/String; = "AccountAuthActivity"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mCaptchaImage:Lcom/google/protobuf/ByteString;

.field protected mCaptchaRequired:Ljava/lang/Boolean;

.field private mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

.field private mCaptchaToken:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mEmailFilled:Z

.field private mErrorString:Ljava/lang/String;

.field private mForgotPassword:Z

.field private mNextButton:Landroid/widget/Button;

.field private mPwd:Ljava/lang/String;

.field private mPwdFilled:Z

.field private mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

.field private mUiLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 43
    iput-boolean v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mForgotPassword:Z

    .line 44
    iput-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mErrorString:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mEmail:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mPwd:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 48
    iput-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mCaptchaImage:Lcom/google/protobuf/ByteString;

    .line 49
    iput-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mCaptchaToken:Ljava/lang/String;

    .line 50
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mCaptchaRequired:Ljava/lang/Boolean;

    .line 51
    iput-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    .line 52
    iput-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mBundle:Landroid/os/Bundle;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mUiLock:Ljava/lang/Object;

    .line 54
    iput-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mNextButton:Landroid/widget/Button;

    .line 55
    iput-boolean v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mEmailFilled:Z

    .line 56
    iput-boolean v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mPwdFilled:Z

    return-void
.end method

.method static synthetic access$002(Lcom/motorola/blur/setup/AccountAuthActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mPwdFilled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/motorola/blur/setup/AccountAuthActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mEmailFilled:Z

    return p1
.end method

.method private static addCrIfNecessary(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 284
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    :cond_0
    return-void
.end method

.method private getCaptchaImage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mCaptchaImage:Lcom/google/protobuf/ByteString;

    .line 61
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mCaptchaToken:Ljava/lang/String;

    .line 62
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mCaptchaRequired:Ljava/lang/Boolean;

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_0
    iput-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mCaptchaImage:Lcom/google/protobuf/ByteString;

    .line 65
    iput-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mCaptchaToken:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mCaptchaRequired:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private final getEditValue(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/AccountAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 292
    .local v0, edit:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    :cond_0
    return-object v1
.end method

.method private handleRotation()V
    .locals 4

    .prologue
    .line 183
    const v3, 0x7f0b00d0

    invoke-direct {p0, v3}, Lcom/motorola/blur/setup/AccountAuthActivity;->getEditValue(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, email:Ljava/lang/String;
    const v3, 0x7f0b00d2

    invoke-direct {p0, v3}, Lcom/motorola/blur/setup/AccountAuthActivity;->getEditValue(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, pwd:Ljava/lang/String;
    const/4 v1, 0x0

    .line 186
    .local v1, focusFieldId:I
    invoke-virtual {p0}, Lcom/motorola/blur/setup/AccountAuthActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/motorola/blur/setup/AccountAuthActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v1

    .line 189
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/motorola/blur/setup/AccountAuthActivity;->initVisuals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    return-void
.end method

.method private initVisuals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 8
    .parameter "email"
    .parameter "pwd"
    .parameter "focusFieldId"

    .prologue
    .line 109
    iget-object v5, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mUiLock:Ljava/lang/Object;

    monitor-enter v5

    .line 110
    const v6, 0x7f03002c

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/AccountAuthActivity;->setContentView(I)V

    .line 113
    const v6, 0x7f0b0011

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/AccountAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 115
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v6, 0x7f0c0004

    const/high16 v7, 0x7f0b

    invoke-static {p0, v6, v7}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 116
    .local v1, backButton:Landroid/widget/Button;
    const v6, 0x7f0c0003

    const v7, 0x7f0b0001

    invoke-static {p0, v6, v7}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v3

    .line 117
    .local v3, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 118
    invoke-virtual {v0, v3}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 120
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iput-object v3, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mNextButton:Landroid/widget/Button;

    .line 125
    iput-object p2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mPwd:Ljava/lang/String;

    .line 126
    const v6, 0x7f0b00d2

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/AccountAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 127
    .local v4, textView:Landroid/widget/TextView;
    new-instance v6, Lcom/motorola/blur/setup/AccountAuthActivity$1;

    invoke-direct {v6, p0, v4}, Lcom/motorola/blur/setup/AccountAuthActivity$1;-><init>(Lcom/motorola/blur/setup/AccountAuthActivity;Landroid/widget/TextView;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    iget-object v6, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mPwd:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mEmail:Ljava/lang/String;

    .line 145
    const v6, 0x7f0b00d0

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/AccountAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #textView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 146
    .restart local v4       #textView:Landroid/widget/TextView;
    new-instance v6, Lcom/motorola/blur/setup/AccountAuthActivity$2;

    invoke-direct {v6, p0}, Lcom/motorola/blur/setup/AccountAuthActivity$2;-><init>(Lcom/motorola/blur/setup/AccountAuthActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    iget-object v6, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const v6, 0x7f0b00d3

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/AccountAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 165
    .local v2, forgotPassword:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/AccountAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 169
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/AccountAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 170
    invoke-virtual {p0}, Lcom/motorola/blur/setup/AccountAuthActivity;->setEnabled()V

    .line 173
    :cond_0
    monitor-exit v5

    .line 174
    return-void

    .line 173
    .end local v0           #ab:Lcom/motorola/android/widget/ActionBar;
    .end local v1           #backButton:Landroid/widget/Button;
    .end local v2           #forgotPassword:Landroid/widget/Button;
    .end local v3           #nextButton:Landroid/widget/Button;
    .end local v4           #textView:Landroid/widget/TextView;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private showValidationError(Ljava/lang/String;)V
    .locals 5
    .parameter "error"

    .prologue
    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    iget-boolean v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mForgotPassword:Z

    if-eqz v2, :cond_1

    .line 78
    const v1, 0x7f0c008f

    .line 83
    .local v1, title:I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c007f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 87
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 89
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #title:I
    :cond_0
    return-void

    .line 80
    :cond_1
    const v1, 0x7f0c0091

    .restart local v1       #title:I
    goto :goto_0
.end method

.method private validateEntries()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f0b00d2

    const v6, 0x7f0b00d0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .local v0, errors:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/AccountAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 312
    .local v1, resources:Landroid/content/res/Resources;
    iput-object v11, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mErrorString:Ljava/lang/String;

    .line 313
    invoke-direct {p0, v6}, Lcom/motorola/blur/setup/AccountAuthActivity;->getEditValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mEmail:Ljava/lang/String;

    .line 314
    invoke-direct {p0, v10}, Lcom/motorola/blur/setup/AccountAuthActivity;->getEditValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mPwd:Ljava/lang/String;

    .line 316
    iget-object v4, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mForgotPassword:Z

    if-eqz v4, :cond_3

    .line 317
    const v4, 0x7f0c0113

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :goto_0
    iget-boolean v4, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mForgotPassword:Z

    if-nez v4, :cond_1

    .line 331
    const/4 v3, 0x0

    .line 332
    .local v3, validatedPwd:Lcom/motorola/blur/setup/ValidatedParamValue;
    new-instance v3, Lcom/motorola/blur/setup/ValidatedParamValue;

    .end local v3           #validatedPwd:Lcom/motorola/blur/setup/ValidatedParamValue;
    new-array v5, v9, [Landroid/widget/EditText;

    invoke-virtual {p0, v10}, Lcom/motorola/blur/setup/AccountAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    aput-object v4, v5, v8

    sget-object v4, Lcom/motorola/blur/setup/ValidationParams;->ENTER_PASSWORD_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    iget-object v6, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mPwd:Ljava/lang/String;

    const v7, 0x7f0c007c

    invoke-direct {v3, v5, v4, v6, v7}, Lcom/motorola/blur/setup/ValidatedParamValue;-><init>([Landroid/widget/EditText;Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;I)V

    .line 336
    .restart local v3       #validatedPwd:Lcom/motorola/blur/setup/ValidatedParamValue;
    invoke-virtual {v3}, Lcom/motorola/blur/setup/ValidatedParamValue;->getValidValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 337
    invoke-static {v0}, Lcom/motorola/blur/setup/AccountAuthActivity;->addCrIfNecessary(Ljava/lang/StringBuilder;)V

    .line 338
    invoke-virtual {v3, v1}, Lcom/motorola/blur/setup/ValidatedParamValue;->getError(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_0
    invoke-virtual {v3}, Lcom/motorola/blur/setup/ValidatedParamValue;->clearValue()V

    .line 343
    .end local v3           #validatedPwd:Lcom/motorola/blur/setup/ValidatedParamValue;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mErrorString:Ljava/lang/String;

    .line 347
    :cond_2
    iget-object v4, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mErrorString:Ljava/lang/String;

    if-nez v4, :cond_6

    move v4, v9

    :goto_2
    return v4

    .line 319
    :cond_3
    new-instance v2, Lcom/motorola/blur/setup/ValidatedParamValue;

    new-array v5, v9, [Landroid/widget/EditText;

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/AccountAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    aput-object v4, v5, v8

    sget-object v4, Lcom/motorola/blur/setup/ValidationParams;->EMAIL_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    iget-object v6, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mEmail:Ljava/lang/String;

    const v7, 0x7f0c007b

    invoke-direct {v2, v5, v4, v6, v7}, Lcom/motorola/blur/setup/ValidatedParamValue;-><init>([Landroid/widget/EditText;Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;I)V

    .line 322
    .local v2, validatedEmail:Lcom/motorola/blur/setup/ValidatedParamValue;
    invoke-virtual {v2}, Lcom/motorola/blur/setup/ValidatedParamValue;->getValidValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 323
    invoke-virtual {v2, v1}, Lcom/motorola/blur/setup/ValidatedParamValue;->getError(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_4
    invoke-virtual {v2}, Lcom/motorola/blur/setup/ValidatedParamValue;->clearValue()V

    goto :goto_0

    .end local v2           #validatedEmail:Lcom/motorola/blur/setup/ValidatedParamValue;
    :cond_5
    move-object v4, v11

    .line 344
    goto :goto_1

    :cond_6
    move v4, v8

    .line 347
    goto :goto_2
.end method


# virtual methods
.method public doesGoogleExist()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 407
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 408
    .local v0, am:Landroid/accounts/AccountManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 410
    .local v1, descList:[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v1

    sub-int v2, v3, v5

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 411
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    .line 421
    :goto_1
    return v3

    .line 410
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 421
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public finish(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const-string v3, "call_from_main"

    .line 392
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0}, Lcom/motorola/blur/setup/AccountAuthActivity;->doesGoogleExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    const-string v1, "call_from_main"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/AccountAuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 402
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/AccountAuthActivity;->setResult(I)V

    .line 403
    invoke-virtual {p0}, Lcom/motorola/blur/setup/AccountAuthActivity;->finish()V

    .line 404
    return-void

    .line 397
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/setup/GoogleLoginOptionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "Intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 399
    const-string v1, "call_from_main"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/AccountAuthActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v3, "android.intent.extra.TEXT"

    .line 203
    packed-switch p1, :pswitch_data_0

    .line 225
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/blur/setup/SetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 226
    return-void

    .line 206
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.TEXT"

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "CaptchaToken"

    iget-object v3, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mCaptchaToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "CaptchaRequired"

    iget-object v3, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mCaptchaRequired:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    new-instance v0, Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-direct {v0, p0, p0}, Lcom/motorola/blur/setup/BlurAccountCreator;-><init>(Landroid/content/Context;Lcom/motorola/blur/setup/BlurAccountCreationListener;)V

    .line 215
    .local v0, accountCreator:Lcom/motorola/blur/setup/BlurAccountCreator;
    iget-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/BlurAccountCreator;->createOrLogin(Landroid/os/Bundle;)V

    .line 216
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mCaptchaRequired:Ljava/lang/Boolean;

    goto :goto_0

    .line 220
    .end local v0           #accountCreator:Lcom/motorola/blur/setup/BlurAccountCreator;
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/motorola/blur/setup/AccountAuthActivity;->showValidationError(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public onCaptchaRecieved(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;I)V
    .locals 0
    .parameter "serverCaptchaInfo"
    .parameter "errorCode"

    .prologue
    .line 352
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 281
    :goto_0
    return-void

    .line 241
    :sswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/AccountAuthActivity;->goBack()V

    goto :goto_0

    .line 245
    :sswitch_1
    iput-boolean v6, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mForgotPassword:Z

    .line 249
    :sswitch_2
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 251
    new-instance v0, Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-direct {v0, p0, p0}, Lcom/motorola/blur/setup/BlurAccountCreator;-><init>(Landroid/content/Context;Lcom/motorola/blur/setup/BlurAccountCreationListener;)V

    .line 252
    .local v0, accountCreator:Lcom/motorola/blur/setup/BlurAccountCreator;
    invoke-direct {p0}, Lcom/motorola/blur/setup/AccountAuthActivity;->validateEntries()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mBundle:Landroid/os/Bundle;

    .line 254
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mBundle:Landroid/os/Bundle;

    .line 255
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mBundle:Landroid/os/Bundle;

    const-string v3, "username"

    iget-object v4, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-boolean v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mForgotPassword:Z

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/motorola/blur/setup/BlurAccountCreator;->forgotPasswordRequest(Landroid/os/Bundle;)V

    .line 258
    iput-boolean v5, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mForgotPassword:Z

    goto :goto_0

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mBundle:Landroid/os/Bundle;

    const-string v3, "existing"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mBundle:Landroid/os/Bundle;

    const-string v3, "existing_email_accounts"

    invoke-static {p0}, Lcom/motorola/blur/setup/AccountAuthActivity;->haveEmailAccounts(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mBundle:Landroid/os/Bundle;

    const-string v3, "password"

    iget-object v4, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mPwd:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mCaptchaRequired:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v1, captchaIntent:Landroid/content/Intent;
    const-class v2, Lcom/motorola/blur/setup/CaptchaActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 266
    const-string v2, "android.intent.extra.shortcut.ICON"

    iget-object v3, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mCaptchaImage:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 267
    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Lcom/motorola/blur/setup/AccountAuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 269
    .end local v1           #captchaIntent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/motorola/blur/setup/BlurAccountCreator;->createOrLogin(Landroid/os/Bundle;)V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 275
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 276
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mErrorString:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/motorola/blur/setup/AccountAuthActivity;->showValidationError(Ljava/lang/String;)V

    .line 277
    iput-boolean v5, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mForgotPassword:Z

    goto/16 :goto_0

    .line 239
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0000 -> :sswitch_0
        0x7f0b0001 -> :sswitch_2
        0x7f0b00d3 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 179
    invoke-direct {p0}, Lcom/motorola/blur/setup/AccountAuthActivity;->handleRotation()V

    .line 180
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, email:Ljava/lang/String;
    const/4 v2, 0x0

    .line 98
    .local v2, pwd:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 99
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mBundle:Landroid/os/Bundle;

    .line 100
    const-string v3, "username"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v3, "password"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    :cond_0
    const v1, 0x7f0b00d0

    .line 104
    .local v1, focusFieldId:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/motorola/blur/setup/AccountAuthActivity;->initVisuals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    return-void
.end method

.method public onCreationFinished(ZLcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 0
    .parameter "success"
    .parameter "captchaInfo"

    .prologue
    .line 425
    return-void
.end method

.method public onLoginFinished(ZLjava/lang/String;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 6
    .parameter "success"
    .parameter "googleUser"
    .parameter "captchaInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 357
    iget-object v3, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 358
    iget-object v3, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 360
    if-eqz p1, :cond_3

    .line 361
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 362
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "DeviceSetup"

    invoke-virtual {p0, v3, v5}, Lcom/motorola/blur/setup/AccountAuthActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 363
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 364
    .local v1, locationServiceOff:Z
    if-eqz v2, :cond_0

    .line 365
    const-string v3, "BlurSetupDisableLocationService"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 367
    :cond_0
    const-string v3, "existing"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    const-string v3, "hide_back"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    if-eqz v1, :cond_2

    .line 371
    sget-boolean v3, Lcom/motorola/blur/setup/AccountAuthActivity;->mShowDataSaver:Z

    if-eqz v3, :cond_1

    .line 372
    const-class v3, Lcom/motorola/blur/setup/DataSaverActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/AccountAuthActivity;->finish(Landroid/content/Intent;)V

    .line 385
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #locationServiceOff:Z
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 374
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #locationServiceOff:Z
    .restart local v2       #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_1
    const-class v3, Lcom/motorola/blur/setup/CongratsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 377
    :cond_2
    const-class v3, Lcom/motorola/blur/setup/LocationConsentActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 382
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #locationServiceOff:Z
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_3
    iput-object p3, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 383
    invoke-direct {p0}, Lcom/motorola/blur/setup/AccountAuthActivity;->getCaptchaImage()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 194
    const-string v0, "username"

    iget-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "password"

    iget-object v1, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mPwd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 199
    return-void
.end method

.method public setEnabled()V
    .locals 2

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mEmailFilled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mPwdFilled:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mNextButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity;->mNextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
