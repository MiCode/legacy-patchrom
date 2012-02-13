.class public Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;
.super Landroid/app/Activity;
.source "ChangeBlurPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CHANGE_PASSWORD_RESPONSE:I = 0x1

.field private static final PROGRESS_POINTS:[I = null

.field private static final SERVICES_RESTARTED:I = 0x2


# instance fields
.field private mBlurAcntError:Z

.field private final mHandler:Landroid/os/Handler;

.field private mOriginal:Ljava/lang/String;

.field private mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

.field private mPwd:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredReceiver:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->PROGRESS_POINTS:[I

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

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mPwd:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mOriginal:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 50
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mRegisteredReceiver:Z

    .line 51
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mBlurAcntError:Z

    .line 53
    new-instance v0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$1;-><init>(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance v0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$2;-><init>(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->unregisterReceiver()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->requestChangePassword()V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->registerReceiver()V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mBlurAcntError:Z

    return v0
.end method

.method static synthetic access$800(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mOriginal:Ljava/lang/String;

    return-object v0
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->hide()V

    .line 242
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->dismiss()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 245
    :cond_0
    return-void
.end method

.method private declared-synchronized registerReceiver()V
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mRegisteredReceiver:Z

    if-nez v1, :cond_0

    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "com.motorola.blur.service.blur.devicesetup.newpassword.resp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mRegisteredReceiver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private requestChangePassword()V
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/motorola/blur/util/concurrent/UIThreads;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$3;

    invoke-direct {v1, p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$3;-><init>(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method private setupProgressDialog()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 212
    :cond_0
    new-instance v0, Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/SetupProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 213
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    sget-object v1, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->PROGRESS_POINTS:[I

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressPoints([I)V

    .line 214
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressText(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->show()V

    .line 217
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

    .line 235
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->dismissProgressDialog()V

    .line 236
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 237
    return-void
.end method

.method private declared-synchronized unregisterReceiver()V
    .locals 1

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mRegisteredReceiver:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mRegisteredReceiver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_0
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    invoke-virtual {p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->onBackPressed()V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 135
    :pswitch_0
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 136
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->setupProgressDialog()V

    .line 137
    invoke-virtual {p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->validateEntries()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->nextProgressPoint()V

    .line 139
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->requestChangePassword()V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x7f0b0003
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v5, 0x7f030013

    invoke-virtual {p0, v5}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->setContentView(I)V

    .line 108
    const v5, 0x7f0b0011

    invoke-virtual {p0, v5}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 109
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v5, 0x7f0c007f

    const v6, 0x7f0b0003

    invoke-static {p0, v5, v6}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v4

    .line 110
    .local v4, okButton:Landroid/widget/Button;
    const v5, 0x7f0c0057

    const v6, 0x7f0b0004

    invoke-static {p0, v5, v6}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 111
    .local v2, cancelButton:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 112
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 114
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 118
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 119
    const-string v5, "com.motorola.blur.service.bsutils.MOTHER_USER_ACCOUNT_STATE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, blurAccountError:Ljava/lang/String;
    sget-object v5, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->wrongPassword:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    invoke-virtual {v5}, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    const v5, 0x7f0b003e

    invoke-virtual {p0, v5}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 125
    const v5, 0x7f0b003d

    invoke-virtual {p0, v5}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0c0044

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 127
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mBlurAcntError:Z

    .line 130
    .end local v1           #blurAccountError:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->unregisterReceiver()V

    .line 152
    invoke-direct {p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->dismissProgressDialog()V

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 154
    return-void
.end method

.method public validateEntries()Ljava/lang/Boolean;
    .locals 11

    .prologue
    const/4 v5, 0x0

    const v7, 0x7f0b0040

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, error:Ljava/lang/String;
    iput-object v5, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mOriginal:Ljava/lang/String;

    .line 160
    iput-object v5, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mPwd:Ljava/lang/String;

    .line 161
    iget-boolean v5, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mBlurAcntError:Z

    if-nez v5, :cond_0

    .line 162
    const v5, 0x7f0b003e

    invoke-virtual {p0, v5}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 163
    .local v1, text:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mOriginal:Ljava/lang/String;

    .line 164
    iget-object v5, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mOriginal:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->verifyBlurPasswordFromGAM(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .end local v1           #text:Landroid/widget/EditText;
    :cond_0
    if-nez v0, :cond_2

    .line 168
    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 169
    .restart local v1       #text:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mPwd:Ljava/lang/String;

    .line 170
    new-instance v4, Lcom/motorola/blur/setup/ValidatedParamValue;

    const/4 v5, 0x2

    new-array v6, v5, [Landroid/widget/EditText;

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    aput-object v5, v6, v9

    const v5, 0x7f0b0042

    invoke-virtual {p0, v5}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    aput-object v5, v6, v10

    sget-object v5, Lcom/motorola/blur/setup/ValidationParams;->SET_PASSWORD_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    iget-object v7, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mPwd:Ljava/lang/String;

    const v8, 0x7f0c007c

    invoke-direct {v4, v6, v5, v7, v8}, Lcom/motorola/blur/setup/ValidatedParamValue;-><init>([Landroid/widget/EditText;Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;I)V

    .line 176
    .local v4, validatedPwd:Lcom/motorola/blur/setup/ValidatedParamValue;
    invoke-virtual {v4}, Lcom/motorola/blur/setup/ValidatedParamValue;->getValidComparedValue()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, validatedPassword:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 178
    invoke-virtual {p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/blur/setup/ValidatedParamValue;->getError(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_1
    invoke-virtual {v4}, Lcom/motorola/blur/setup/ValidatedParamValue;->clearValue()V

    .line 185
    .end local v1           #text:Landroid/widget/EditText;
    .end local v3           #validatedPassword:Ljava/lang/String;
    .end local v4           #validatedPwd:Lcom/motorola/blur/setup/ValidatedParamValue;
    :cond_2
    if-nez v0, :cond_5

    move v2, v10

    .line 186
    .local v2, validPswds:Z
    :goto_0
    if-nez v2, :cond_3

    .line 187
    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->showError(Ljava/lang/String;)V

    .line 189
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .end local v2           #validPswds:Z
    :goto_1
    return-object v5

    .line 179
    .restart local v1       #text:Landroid/widget/EditText;
    .restart local v3       #validatedPassword:Ljava/lang/String;
    .restart local v4       #validatedPwd:Lcom/motorola/blur/setup/ValidatedParamValue;
    :cond_4
    iget-object v5, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mOriginal:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->finish()V

    .line 181
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1

    .end local v1           #text:Landroid/widget/EditText;
    .end local v3           #validatedPassword:Ljava/lang/String;
    .end local v4           #validatedPwd:Lcom/motorola/blur/setup/ValidatedParamValue;
    :cond_5
    move v2, v9

    .line 185
    goto :goto_0
.end method
