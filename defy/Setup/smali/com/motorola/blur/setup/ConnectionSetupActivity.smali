.class public Lcom/motorola/blur/setup/ConnectionSetupActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "ConnectionSetupActivity.java"


# static fields
.field protected static final PROGRESS_DIALOG_CONNECTION_WAITING:I = 0x1

.field protected static final mTimerDelaySec:I = 0x3e8


# instance fields
.field private volatile mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field protected mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 102
    iput-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;-><init>(Lcom/motorola/blur/setup/ConnectionSetupActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/ConnectionSetupActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/blur/setup/ConnectionSetupActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/ConnectionSetupActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private final registerConnectionChangeReceiver(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "context"
    .parameter "callBack"

    .prologue
    .line 136
    new-instance v0, Lcom/motorola/blur/setup/ConnectionSetupActivity$2;

    invoke-direct {v0, p0, p2}, Lcom/motorola/blur/setup/ConnectionSetupActivity$2;-><init>(Lcom/motorola/blur/setup/ConnectionSetupActivity;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    return-void
.end method

.method private final registerTimer(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "context"
    .parameter "callBack"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 154
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void
.end method


# virtual methods
.method protected final checkConnection(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "onConnection"
    .parameter "onTimer"

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->checkConnectionOrWait(Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 82
    :cond_0
    return-void
.end method

.method protected final checkConnectionOrWait(Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    .locals 4
    .parameter "onConnection"
    .parameter "onTimer"

    .prologue
    const/4 v3, 0x1

    .line 90
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 91
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 92
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 99
    :goto_0
    return v2

    .line 95
    :cond_0
    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->showDialog(I)V

    .line 96
    invoke-direct {p0, p0, p1}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->registerConnectionChangeReceiver(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 97
    invoke-direct {p0, p0, p2}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->registerTimer(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 99
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 41
    packed-switch p1, :pswitch_data_0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/motorola/blur/setup/SetupActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    new-instance v0, Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/SetupProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 44
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    const v1, 0x7f0c0115

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressText(I)V

    .line 45
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0, v2}, Lcom/motorola/blur/setup/SetupProgressDialog;->setCancelable(Z)V

    .line 46
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setMax(I)V

    .line 47
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0, v2}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgress(I)V

    .line 48
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 57
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->dismissDialog(I)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->removeDialog(I)V

    .line 61
    :cond_0
    iput-object v2, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 63
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    :cond_1
    iput-object v2, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onStop()V

    .line 69
    return-void
.end method
