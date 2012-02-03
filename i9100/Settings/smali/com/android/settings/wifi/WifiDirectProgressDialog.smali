.class public Lcom/android/settings/wifi/WifiDirectProgressDialog;
.super Landroid/app/Activity;
.source "WifiDirectProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mAddr:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mLapseTime:I

.field private mPin:Ljava/lang/String;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimer:Landroid/os/CountDownTimer;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    new-instance v0, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiDirectProgressDialog$1;-><init>(Lcom/android/settings/wifi/WifiDirectProgressDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiDirectProgressDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->showWpsToast(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiDirectProgressDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiDirectProgressDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->cancelConnecting()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiDirectProgressDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mLapseTime:I

    return v0
.end method

.method static synthetic access$320(Lcom/android/settings/wifi/WifiDirectProgressDialog;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mLapseTime:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mLapseTime:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiDirectProgressDialog;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiDirectProgressDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/WifiDirectProgressDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object p1
.end method

.method private cancelConnecting()V
    .locals 2

    .prologue
    const-string v1, "WifiDirectProgressDialog"

    .line 288
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isGOCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    const-string v0, "WifiDirectProgressDialog"

    const-string v0, "GO isn\'t created, so it will be disconnected!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disconnectWifiDirectPeer(Ljava/lang/String;)Z

    .line 296
    :goto_0
    return-void

    .line 292
    :cond_0
    const-string v0, "WifiDirectProgressDialog"

    const-string v0, "GO is created, so cannot disconnect!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->stopWifiDirectWps()Z

    .line 294
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disconnectWifiDirectPeer(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private dismissProgressDialog()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setSupplicantAutoScan(Z)Z

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->dismiss()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    .line 232
    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mLapseTime:I

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWpsInProgress:Z

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->finish()V

    .line 236
    return-void
.end method

.method public static getTimeString(I)Ljava/lang/String;
    .locals 6
    .parameter "milliSecond"

    .prologue
    .line 239
    div-int/lit16 v2, p0, 0x3e8

    div-int/lit8 v0, v2, 0x3c

    .line 240
    .local v0, min:I
    div-int/lit16 v2, p0, 0x3e8

    rem-int/lit8 v1, v2, 0x3c

    .line 242
    .local v1, second:I
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private onCancel()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->cancelConnecting()V

    .line 284
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->dismissProgressDialog()V

    .line 285
    return-void
.end method

.method private showProgressDialog()V
    .locals 7

    .prologue
    const v4, 0x1d4c0

    const/4 v3, 0x0

    .line 157
    const-string v0, "WifiDirectProgressDialog"

    const-string v1, "showProgressDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 162
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    .line 163
    iput v4, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mLapseTime:I

    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setIcon(I)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressStyle(I)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f08038c

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiDirectProgressDialog$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiDirectProgressDialog$2;-><init>(Lcom/android/settings/wifi/WifiDirectProgressDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f080187

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setTitle(I)V

    .line 182
    const v0, 0x7f080188

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, str:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mPin:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080178

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgress(I)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMax(I)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressPercentVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressNumberVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const-string v1, "%2d:%2d"

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->show()V

    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 204
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/WifiDirectProgressDialog$3;

    const-wide/32 v2, 0x1d8a8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDirectProgressDialog$3;-><init>(Lcom/android/settings/wifi/WifiDirectProgressDialog;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectProgressDialog$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mTimer:Landroid/os/CountDownTimer;

    .line 218
    return-void
.end method

.method private showWpsToast(I)V
    .locals 3
    .parameter "messageResId"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x2000001a

    const-string v2, "WifiDirectProgressDialog"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    .line 248
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 249
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 254
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 257
    const-string v0, "WifiDirectProgressDialog"

    const-string v1, "onClick, Disconnect Peer."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    packed-switch p2, :pswitch_data_0

    .line 264
    :goto_0
    return-void

    .line 261
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->onCancel()V

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const-string v5, "WifiDirectProgressDialog"

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->requestWindowFeature(I)Z

    .line 119
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWpsInProgress:Z

    .line 121
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mPowerManager:Landroid/os/PowerManager;

    .line 122
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0x1a

    const-string v4, "WifiDirectProgressDialog"

    invoke-virtual {v2, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 123
    const-string v2, "WifiDirectProgressDialog"

    const-string v2, "onCreate"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 128
    .local v1, mStatusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapse()V

    .line 130
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 131
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setSupplicantAutoScan(Z)Z

    .line 133
    const-string v2, "dev_address"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mAddr:Ljava/lang/String;

    .line 134
    const-string v2, "PIN_number"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mPin:Ljava/lang/String;

    .line 137
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mFilter:Landroid/content/IntentFilter;

    .line 138
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifidirect.DIRECT_PEER_CONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifidirect.CREATE_LINK_FAIL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifidirect.DIRECT_GO_READY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->showProgressDialog()V

    .line 144
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    const-string v0, "WifiDirectProgressDialog"

    const-string v1, "onDestroy() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 154
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 276
    const-string v0, "WifiDirectProgressDialog"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->onCancel()V

    .line 280
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 267
    const-string v0, "WifiDirectProgressDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->onCancel()V

    .line 272
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
