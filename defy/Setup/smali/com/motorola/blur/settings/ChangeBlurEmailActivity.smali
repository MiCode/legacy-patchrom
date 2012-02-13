.class public Lcom/motorola/blur/settings/ChangeBlurEmailActivity;
.super Landroid/app/Activity;
.source "ChangeBlurEmailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CHANGE_EMAIL_RESPONSE:I = 0x1

.field private static final PROGRESS_POINTS:[I = null

.field private static final SERVICES_RESTARTED:I = 0x2


# instance fields
.field private mBlurEmail:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mNewEmail:Ljava/lang/String;

.field private mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredReceiver:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->PROGRESS_POINTS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mRegisteredReceiver:Z

    .line 55
    iput-object v1, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mBlurEmail:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mNewEmail:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$1;-><init>(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;-><init>(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mNewEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->unregisterReceiver()V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->requestChangeEmail()V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->registerReceiver()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->hide()V

    .line 247
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->dismiss()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 250
    :cond_0
    return-void
.end method

.method private needsServiceRequest()Z
    .locals 8

    .prologue
    const v4, 0x7f0b003a

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, error:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mNewEmail:Ljava/lang/String;

    .line 203
    iget-object v2, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mBlurEmail:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mNewEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->dismissProgressDialog()V

    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->finish()V

    move v2, v6

    .line 216
    :goto_0
    return v2

    .line 208
    :cond_0
    new-instance v1, Lcom/motorola/blur/setup/ValidatedParamValue;

    new-array v3, v7, [Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    aput-object v2, v3, v6

    sget-object v2, Lcom/motorola/blur/setup/ValidationParams;->EMAIL_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    iget-object v4, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mNewEmail:Ljava/lang/String;

    const v5, 0x7f0c007b

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/motorola/blur/setup/ValidatedParamValue;-><init>([Landroid/widget/EditText;Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;I)V

    .line 211
    .local v1, validatedBlurEmail:Lcom/motorola/blur/setup/ValidatedParamValue;
    invoke-virtual {v1}, Lcom/motorola/blur/setup/ValidatedParamValue;->getValidValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/setup/ValidatedParamValue;->getError(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->showError(Ljava/lang/String;)V

    move v2, v6

    .line 214
    goto :goto_0

    :cond_1
    move v2, v7

    .line 216
    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 220
    iget-boolean v1, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mRegisteredReceiver:Z

    if-nez v1, :cond_0

    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "com.motorola.blur.service.blur.devicesetup.newemail.resp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mRegisteredReceiver:Z

    .line 227
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private requestChangeEmail()V
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/motorola/blur/util/concurrent/UIThreads;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$3;

    invoke-direct {v1, p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$3;-><init>(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method private setupProgressDialog()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 183
    :cond_0
    new-instance v0, Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/SetupProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 184
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    sget-object v1, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->PROGRESS_POINTS:[I

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressPoints([I)V

    .line 185
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressText(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->show()V

    .line 188
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 230
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c008f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

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

    .line 233
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->dismissProgressDialog()V

    .line 234
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 235
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mRegisteredReceiver:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mRegisteredReceiver:Z

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->onBackPressed()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 148
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->setupProgressDialog()V

    .line 149
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->needsServiceRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->requestChangeEmail()V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0003
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v5, 0x7f030011

    invoke-virtual {p0, v5}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->setContentView(I)V

    .line 122
    const v5, 0x7f0b0011

    invoke-virtual {p0, v5}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 123
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v5, 0x7f0c007f

    const v6, 0x7f0b0003

    invoke-static {p0, v5, v6}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v4

    .line 124
    .local v4, okButton:Landroid/widget/Button;
    const v5, 0x7f0c0057

    const v6, 0x7f0b0004

    invoke-static {p0, v5, v6}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 125
    .local v1, cancelButton:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 126
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 128
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 132
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 133
    const-string v5, "motoblurId"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mBlurEmail:Ljava/lang/String;

    .line 136
    :cond_0
    iget-object v5, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mBlurEmail:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    invoke-static {p0}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->getMotoBlurId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mBlurEmail:Ljava/lang/String;

    .line 139
    :cond_1
    const v5, 0x7f0b003a

    invoke-virtual {p0, v5}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 140
    .local v2, edit:Landroid/widget/EditText;
    iget-object v5, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mBlurEmail:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mBlurEmail:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/EditText;->setSelection(II)V

    .line 142
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->dismissProgressDialog()V

    .line 163
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->unregisterReceiver()V

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 165
    return-void
.end method
