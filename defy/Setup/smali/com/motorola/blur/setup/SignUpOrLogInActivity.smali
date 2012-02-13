.class public Lcom/motorola/blur/setup/SignUpOrLogInActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "SignUpOrLogInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/SignUpOrLogInActivity$8;
    }
.end annotation


# static fields
.field public static final ACTION_MANUAL_CHECK_UPDATE:Ljava/lang/String; = "com.motorola.blur.service.blur.Actions.MANUAL_CHECK_UPDATE"

.field public static final EXTRA_CANCEL_BUTTON:Ljava/lang/String; = "show_cancel_button"

.field private static final FINISH_PROGRESS:I = 0x4

.field private static final SERVICE_RESTARTED:I = 0x2

.field private static final SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SUOLIA"

.field public static final TIMEOUT_BOTA_INTERVAL:J = 0x7530L

.field private static final UPDATE_REQUEST_ID:I = 0x1


# instance fields
.field private mBackButton:Landroid/widget/Button;

.field private final mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Ljava/lang/Boolean;

.field private mRecievedBOTAResponse:Z

.field private mSelectedRadioId:I

.field private mTimer:Ljava/util/Timer;

.field private mWaiting:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 51
    iput-boolean v1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mRecievedBOTAResponse:Z

    .line 52
    iput-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 53
    iput-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mTimer:Ljava/util/Timer;

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mWaiting:Ljava/lang/Boolean;

    .line 55
    const v0, 0x7f0b0056

    iput v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mSelectedRadioId:I

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mReceiverRegistered:Ljava/lang/Boolean;

    .line 59
    new-instance v0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity$1;-><init>(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    new-instance v0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;-><init>(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/motorola/blur/setup/SignUpOrLogInActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mRecievedBOTAResponse:Z

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/blur/setup/SignUpOrLogInActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->sendBOTABroadcast()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mWaiting:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->dismissDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->continueToNext()V

    return-void
.end method

.method static synthetic access$702(Lcom/motorola/blur/setup/SignUpOrLogInActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mSelectedRadioId:I

    return p1
.end method

.method static synthetic access$800(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/motorola/blur/setup/SignUpOrLogInActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private continueToNext()V
    .locals 3

    .prologue
    .line 282
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 283
    .local v0, intent:Landroid/content/Intent;
    const v2, 0x7f0b0105

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 284
    .local v1, radios:Landroid/widget/RadioGroup;
    iget v2, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mSelectedRadioId:I

    packed-switch v2, :pswitch_data_0

    .line 298
    const-class v2, Lcom/motorola/blur/setup/NewBlurNameActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 301
    :cond_0
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->startActivity(Landroid/content/Intent;)V

    .line 302
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->setResult(I)V

    .line 303
    invoke-direct {p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->unregisterReceiver()V

    .line 304
    :goto_0
    return-void

    .line 286
    :pswitch_0
    const-class v2, Lcom/motorola/blur/setup/AccountAuthActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 287
    const/4 v2, 0x0

    sput v2, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->sHomeScreenPolicy:I

    .line 288
    invoke-static {p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->haveEmailAccounts(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-static {p0, v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->showDeleteMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0106
        :pswitch_0
    .end packed-switch
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$5;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity$5;-><init>(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method private drawScreen()V
    .locals 9

    .prologue
    .line 159
    const v7, 0x7f030043

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->setContentView(I)V

    .line 162
    const v7, 0x7f0b0011

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 164
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v7, 0x7f0c0004

    const/high16 v8, 0x7f0b

    invoke-static {p0, v7, v8}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 165
    .local v1, backButton:Landroid/widget/Button;
    const v7, 0x7f0c0003

    const v8, 0x7f0b0001

    invoke-static {p0, v7, v8}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v3

    .line 166
    .local v3, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 167
    invoke-virtual {v0, v3}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 168
    iput-object v1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mBackButton:Landroid/widget/Button;

    .line 170
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 174
    .local v2, in:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 175
    const-string v7, "show_cancel_button"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 177
    iget-object v7, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mBackButton:Landroid/widget/Button;

    const v8, 0x7f0c0057

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 181
    :cond_0
    const v7, 0x7f0b0104

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 182
    .local v5, text:Landroid/widget/TextView;
    const v7, 0x7f0c0007

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, welcomeText:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const v7, 0x7f0b0105

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 186
    .local v4, radios:Landroid/widget/RadioGroup;
    new-instance v7, Lcom/motorola/blur/setup/SignUpOrLogInActivity$3;

    invoke-direct {v7, p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity$3;-><init>(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 191
    iget v7, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mSelectedRadioId:I

    invoke-virtual {v4, v7}, Landroid/widget/RadioGroup;->check(I)V

    .line 193
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 268
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mReceiverRegistered:Ljava/lang/Boolean;

    .line 272
    return-void
.end method

.method private sendBOTABroadcast()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 245
    iget-object v2, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mTimer:Ljava/util/Timer;

    if-nez v2, :cond_0

    .line 246
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mTimer:Ljava/util/Timer;

    .line 248
    :cond_0
    new-instance v0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$4;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity$4;-><init>(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V

    .line 259
    .local v0, botaTask:Ljava/util/TimerTask;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v1, clearOTAData:Landroid/content/Intent;
    const-string v2, "com.motorola.blur.service.blur.Actions.MANUAL_CHECK_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 262
    const/4 v2, 0x0

    invoke-static {p0, v3, v3, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilMethods;->sendCheckForUpdate(Landroid/content/Context;ZIZ)V

    .line 263
    iget-object v2, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v0, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 264
    return-void
.end method

.method private static showDeleteMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "ctx"
    .parameter "continueIntent"

    .prologue
    .line 319
    new-instance v2, Lcom/motorola/blur/setup/SignUpOrLogInActivity$6;

    invoke-direct {v2}, Lcom/motorola/blur/setup/SignUpOrLogInActivity$6;-><init>()V

    .line 324
    .local v2, cancelButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/motorola/blur/setup/SignUpOrLogInActivity$7;

    invoke-direct {v3, p0, p1}, Lcom/motorola/blur/setup/SignUpOrLogInActivity$7;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 333
    .local v3, positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 334
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c0142

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 335
    const v4, 0x7f0c0143

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    const v4, 0x7f0c0057

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 337
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 338
    .local v1, alertDialog:Landroid/app/AlertDialog;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 339
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 340
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mReceiverRegistered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mReceiverRegistered:Ljava/lang/Boolean;

    .line 279
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 233
    :goto_0
    return-void

    .line 210
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->goBack()V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mRecievedBOTAResponse:Z

    if-nez v1, :cond_0

    .line 221
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.blur.service.blur.Actions.START_BLUR_SERVICES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 223
    const-string v1, ""

    const v2, 0x7f0c005e

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 225
    iget-object v1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 226
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mWaiting:Ljava/lang/Boolean;

    .line 230
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 228
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->continueToNext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 208
    :pswitch_data_0
    .packed-switch 0x7f0b0000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 238
    invoke-direct {p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->drawScreen()V

    .line 239
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-direct {p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->drawScreen()V

    .line 152
    invoke-direct {p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->registerReceiver()V

    .line 153
    invoke-direct {p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->sendBOTABroadcast()V

    .line 155
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->unregisterReceiver()V

    .line 198
    invoke-direct {p0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->dismissDialog()V

    .line 199
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onDestroy()V

    .line 200
    return-void
.end method
