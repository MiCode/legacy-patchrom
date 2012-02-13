.class public Lcom/motorola/blur/setup/BOTAInfoActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "BOTAInfoActivity.java"


# static fields
.field private static final BOTA_FAILURE_DIALOG_CLEARED_ACTION:Ljava/lang/String; = "com.motorola.blur.updater.FAILURE_DIALOG_CLEARED"

.field private static final TAG:Ljava/lang/String; = "BOTAActivity"

.field private static final UPDATE_PROGRESS:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/BOTAInfoActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/BOTAInfoActivity;->mRegistered:Z

    .line 28
    new-instance v0, Lcom/motorola/blur/setup/BOTAInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BOTAInfoActivity$1;-><init>(Lcom/motorola/blur/setup/BOTAInfoActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BOTAInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    new-instance v0, Lcom/motorola/blur/setup/BOTAInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BOTAInfoActivity$2;-><init>(Lcom/motorola/blur/setup/BOTAInfoActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BOTAInfoActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/BOTAInfoActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/motorola/blur/setup/BOTAInfoActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/BOTAInfoActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/motorola/blur/setup/BOTAInfoActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_DOWNLOAD_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "com.motorola.blur.updater.FAILURE_DIALOG_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/motorola/blur/setup/BOTAInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/blur/setup/BOTAInfoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/blur/setup/BOTAInfoActivity;->mRegistered:Z

    .line 79
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 67
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/BOTAInfoActivity;->setContentView(I)V

    .line 68
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/BOTAInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/motorola/blur/setup/BOTAInfoActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 69
    invoke-direct {p0}, Lcom/motorola/blur/setup/BOTAInfoActivity;->registerReceiver()V

    .line 70
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/motorola/blur/setup/BOTAInfoActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/motorola/blur/setup/BOTAInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/BOTAInfoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/BOTAInfoActivity;->mRegistered:Z

    .line 87
    :cond_0
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onDestroy()V

    .line 88
    return-void
.end method
