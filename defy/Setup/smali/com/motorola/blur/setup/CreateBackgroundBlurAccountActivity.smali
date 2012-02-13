.class public Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "CreateBackgroundBlurAccountActivity.java"


# static fields
.field private static final DBG:Z = false

.field private static final SIGNUP_SUCCESS:I = 0x3

.field private static final SIGNUP_TEMP_FAILED:I = 0x2

.field private static final SIGNUP_TIME_OUT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SetupCBBAA"

.field private static final UPDATE_REQUEST_ID:I = 0x1


# instance fields
.field private final TIMEOUT_SILENT_SIGNIN_INTERVAL:J

.field private final TIMEOUT_SILENT_SIGNIN_INTERVAL_SDFILE:J

.field private mDeepSilent:Ljava/lang/Boolean;

.field private final mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQASilentLoginReqd:Ljava/lang/Boolean;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 32
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->TIMEOUT_SILENT_SIGNIN_INTERVAL:J

    .line 33
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->TIMEOUT_SILENT_SIGNIN_INTERVAL_SDFILE:J

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 37
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiverRegistered:Ljava/lang/Boolean;

    .line 38
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mQASilentLoginReqd:Ljava/lang/Boolean;

    .line 39
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mDeepSilent:Ljava/lang/Boolean;

    .line 41
    new-instance v0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;-><init>(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$2;-><init>(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mQASilentLoginReqd:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiverRegistered:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiverRegistered:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->finishBackgroundBlurAccountActivity(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->startAutoSignUpService()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 306
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 309
    :cond_0
    return-void
.end method

.method private finishBackgroundBlurAccountActivity(I)V
    .locals 6
    .parameter "resultCode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 141
    sget-boolean v1, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mSilentRegistrationRequired:Z

    if-ne v1, v5, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 143
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-ne p1, v3, :cond_0

    .line 144
    const-string v1, "com.motorola.blur.setup"

    const-string v2, "com.motorola.blur.setup.CreateBackgroundBlurAccountReceiver"

    invoke-static {v0, v1, v2, v4}, Lcom/motorola/blur/setup/SilentBlurUtility;->disableComponent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 146
    :cond_0
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->reEnableSync(Landroid/content/Context;)V

    .line 148
    const-class v1, Lcom/motorola/blur/setup/HomeActivity;

    if-ne p1, v3, :cond_2

    move v2, v5

    :goto_0
    invoke-static {v0, p0, v1, v2}, Lcom/motorola/blur/setup/SilentBlurUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 151
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->setResult(I)V

    .line 152
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->finish()V

    .line 153
    return-void

    .restart local v0       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    move v2, v4

    .line 148
    goto :goto_0
.end method

.method private finishSetupUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 270
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.motorola.blur.setupprovider.action.POST_SETUP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "setup_state"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 273
    sget-boolean v4, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mSilentRegistrationRequired:Z

    if-nez v4, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "network"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 282
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v4, Lcom/motorola/blur/setup/HomeActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .local v2, name:Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 284
    .local v0, flag:I
    sget-boolean v4, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mSilentRegistrationRequired:Z

    if-eqz v4, :cond_1

    .line 285
    const/4 v0, 0x1

    .line 287
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 288
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->setResult(I)V

    .line 289
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->finish()V

    .line 290
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 293
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mDeepSilent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 295
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "SilentRegActionAccomplished"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v1, "SilentRegActionTemplyFailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v1, "com.motorola.blur.setup.starttimer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiverRegistered:Ljava/lang/Boolean;

    .line 301
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private startAutoSignUpService()V
    .locals 5

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->registerReceiver()V

    .line 243
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 247
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.START_BLUR_SERVICES"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "SilentRegRequestFrom"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 260
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mDeepSilent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->finishSetupUI()V

    .line 266
    :goto_0
    monitor-exit v1

    .line 267
    return-void

    .line 263
    :cond_0
    const-string v2, ""

    const v3, 0x7f0c014f

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 266
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 195
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 196
    const-string v3, "deep_silent"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mDeepSilent:Ljava/lang/Boolean;

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v3

    .line 199
    :try_start_0
    invoke-static {}, Lcom/motorola/blur/setup/SilentBlurUtility;->silentSetupSDFileExists()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mQASilentLoginReqd:Ljava/lang/Boolean;

    .line 201
    invoke-static {p0}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->hasBlurAccount(Landroid/content/Context;)Z

    move-result v2

    .line 203
    .local v2, provisioned:Z
    if-nez v2, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->startAutoSignUpService()V

    .line 217
    :goto_0
    monitor-exit v3

    .line 218
    return-void

    .line 206
    :cond_1
    iget-object v4, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mQASilentLoginReqd:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 207
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v1, intent:Landroid/content/Intent;
    const-class v4, Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 214
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->setResult(I)V

    .line 215
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->finish()V

    goto :goto_0

    .line 217
    .end local v2           #provisioned:Z
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 212
    .restart local v2       #provisioned:Z
    :cond_2
    const/4 v4, -0x1

    :try_start_1
    invoke-direct {p0, v4}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->finishBackgroundBlurAccountActivity(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiverRegistered:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 228
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiverRegistered:Ljava/lang/Boolean;

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->dismissDialog()V

    .line 233
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onDestroy()V

    .line 236
    return-void

    .line 233
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
