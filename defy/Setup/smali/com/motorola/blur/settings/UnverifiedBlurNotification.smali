.class public Lcom/motorola/blur/settings/UnverifiedBlurNotification;
.super Landroid/app/Activity;
.source "UnverifiedBlurNotification.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PROGRESS_POINTS:[I = null

.field private static final RESEND_EMAIL_RESPONSE:I = 0x1

.field private static final SERVICES_RESTARTED:I = 0x2


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mMotoblurId:Ljava/lang/String;

.field private mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredReceiver:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->PROGRESS_POINTS:[I

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

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mMotoblurId:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mRegisteredReceiver:Z

    .line 53
    iput-object v1, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 55
    new-instance v0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification$1;-><init>(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification$2;-><init>(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)Lcom/motorola/blur/setup/SetupProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->showEmailSentConfirmation()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->unregisterReceiver()V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/blur/settings/UnverifiedBlurNotification;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->resendEmail()V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->registerReceiver()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->hide()V

    .line 207
    iget-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->dismiss()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 210
    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v1, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mRegisteredReceiver:Z

    if-nez v1, :cond_0

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "com.motorola.blur.service.blur.devicesetup.confirmationEmail.resp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mRegisteredReceiver:Z

    .line 188
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private resendEmail()V
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/motorola/blur/util/concurrent/UIThreads;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/blur/settings/UnverifiedBlurNotification$4;

    invoke-direct {v1, p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification$4;-><init>(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method private setupProgressDialog()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 173
    :cond_0
    new-instance v0, Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/SetupProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 174
    iget-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    sget-object v1, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->PROGRESS_POINTS:[I

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressPoints([I)V

    .line 175
    iget-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressText(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->show()V

    .line 178
    return-void
.end method

.method private showEmailSentConfirmation()V
    .locals 4

    .prologue
    .line 148
    const v1, 0x7f0c004b

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{0}"

    iget-object v3, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mMotoblurId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c004a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c007f

    new-instance v3, Lcom/motorola/blur/settings/UnverifiedBlurNotification$3;

    invoke-direct {v3, p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification$3;-><init>(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 157
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 191
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

    .line 194
    invoke-direct {p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->dismissProgressDialog()V

    .line 195
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mRegisteredReceiver:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mRegisteredReceiver:Z

    .line 202
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    invoke-virtual {p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->onBackPressed()V

    .line 128
    :goto_0
    return-void

    .line 114
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/settings/VerifyBlurPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "motoblurId"

    iget-object v2, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mMotoblurId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->setupProgressDialog()V

    .line 121
    invoke-direct {p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->resendEmail()V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0116
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->setContentView(I)V

    .line 105
    invoke-static {p0}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->getMotoBlurId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mMotoblurId:Ljava/lang/String;

    .line 106
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mMotoblurId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const v0, 0x7f0b0116

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f0b0117

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->dismissProgressDialog()V

    .line 143
    invoke-direct {p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->unregisterReceiver()V

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 145
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 132
    invoke-static {p0}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->getMotoBlurId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, blurId:Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mMotoblurId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->finish()V

    .line 136
    :cond_0
    const v1, 0x7f0b003b

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mMotoblurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    return-void
.end method
