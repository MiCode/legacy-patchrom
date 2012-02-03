.class public Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothAuthorizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;,
        Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;,
        Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$LoadListener;
    }
.end annotation


# static fields
.field private static isScreenOn:Z

.field private static mContext:Landroid/content/Context;

.field private static pm:Landroid/os/PowerManager;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final PAIR_SOUND_PATH:Ljava/lang/String;

.field private mAlwaysAccept:Z

.field private mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIntFltr:Landroid/content/IntentFilter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mPopupSoundId:I

.field private mService:Ljava/lang/String;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTemporaryKey:Z

.field private name:Ljava/lang/String;

.field private svc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isScreenOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAlwaysAccept:Z

    .line 94
    const-string v0, "/media/audio/ui/TW_Error.ogg"

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->PAIR_SOUND_PATH:Ljava/lang/String;

    .line 340
    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mPopupSoundId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V

    return-void
.end method

.method private createView(Ljava/lang/String;)Landroid/view/View;
    .locals 14
    .parameter "svc"

    .prologue
    const v13, 0x7f0b0018

    const/4 v12, 0x1

    const v10, 0x7f0b0017

    const/16 v9, 0x8

    const-string v11, "BluetoothAuthorizeDialog"

    .line 193
    const-string v6, "BluetoothAuthorizeDialog"

    const-string v6, "createView"

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030006

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 196
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0b0016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 197
    .local v2, messageView1:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v6, 0xc

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 201
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 202
    .local v0, cb1:Landroid/widget/CheckBox;
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 203
    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 204
    .local v3, messageView2:Landroid/widget/TextView;
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    .end local v0           #cb1:Landroid/widget/CheckBox;
    .end local v3           #messageView2:Landroid/widget/TextView;
    :cond_0
    iget-boolean v6, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAlwaysAccept:Z

    if-ne v6, v12, :cond_1

    .line 208
    const-string v6, "BluetoothAuthorizeDialog"

    const-string v6, "default in MAP case."

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 210
    .restart local v0       #cb1:Landroid/widget/CheckBox;
    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 216
    .end local v0           #cb1:Landroid/widget/CheckBox;
    :cond_1
    iget-boolean v6, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    if-eqz v6, :cond_2

    .line 218
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 219
    .local v1, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 221
    .local v4, textview:Landroid/widget/TextView;
    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 222
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    .end local v1           #checkbox:Landroid/widget/CheckBox;
    .end local v4           #textview:Landroid/widget/TextView;
    :cond_2
    const-string v6, "BluetoothAuthorizeDialog"

    const-string v6, "createView 2"

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-object v5
.end method

.method private isAutoReply()Z
    .locals 5

    .prologue
    .line 251
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    if-eqz v2, :cond_0

    .line 252
    const/4 v2, 0x0

    .line 257
    :goto_0
    return v2

    .line 254
    :cond_0
    const v2, 0x7f0b0017

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 255
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 256
    .local v1, isChecked:Z
    const-string v2, "BluetoothAuthorizeDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChecked ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 257
    goto :goto_0
.end method

.method private onAuthorize()V
    .locals 4

    .prologue
    .line 261
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onAuthorize"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 264
    return-void
.end method

.method private onDecline()V
    .locals 4

    .prologue
    .line 284
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onDecline"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 287
    return-void
.end method

.method private quitActivity()V
    .locals 3

    .prologue
    .line 316
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 324
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mPopupSoundId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 334
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->finish()V

    .line 338
    return-void

    .line 325
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 326
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "BluetoothAuthorizeDialog"

    const-string v2, "quitActivity() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 290
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    packed-switch p2, :pswitch_data_0

    .line 312
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V

    .line 313
    return-void

    .line 293
    :pswitch_0
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onAuthorize()V

    goto :goto_0

    .line 303
    :pswitch_1
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 309
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "BluetoothAuthorizeDialog"

    .line 99
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const-string v3, "BluetoothAuthorizeDialog"

    const-string v3, "onCreate"

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 104
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    const-string v3, "BluetoothAuthorizeDialog"

    const-string v3, "Error: this activity may be started only with intent broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->finish()V

    .line 190
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    invoke-direct {v3, p0, v9}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;-><init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    .line 112
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    .line 113
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    const-string v4, "broadcom.android.bluetooth.intent.action.AUTHORIZE_CANCEL"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    const-string v4, "broadcom.android.bluetooth.intent.action.AGENT_CANCEL_USER"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 124
    const-string v3, "broadcom.android.bluetooth.intent.DEVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 125
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    .line 126
    const-string v3, "broadcom.android.bluetooth.intent.SERVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    .line 128
    const-string v3, "broadcom.android.bluetooth.intent.TEMPORARY_KEY"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    .line 129
    const-string v3, "BluetoothAuthorizeDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTemporaryKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    .line 132
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    sput-object v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->pm:Landroid/os/PowerManager;

    .line 133
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->pm:Landroid/os/PowerManager;

    const v4, 0x3000000a

    const-string v5, "BluetoothAuthorizeDialog"

    invoke-virtual {v3, v4, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    .line 137
    new-instance v3, Landroid/media/SoundPool;

    invoke-direct {v3, v6, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mSoundPool:Landroid/media/SoundPool;

    .line 138
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mSoundPool:Landroid/media/SoundPool;

    new-instance v4, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$LoadListener;

    invoke-direct {v4, p0, v9}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$LoadListener;-><init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;)V

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/media/audio/ui/TW_Error.ogg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, filePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3, v0, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mPopupSoundId:I

    .line 143
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_pbap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    const v3, 0x7f0806c0

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    .line 168
    :goto_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 169
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x10801eb

    iput v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 172
    const v3, 0x7f0806be

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 174
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->createView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 176
    const v3, 0x7f0806d3

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 177
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 178
    const v3, 0x7f0806d4

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 179
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->setupAlert()V

    .line 182
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->pm:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isScreenOn:Z

    .line 183
    sget-boolean v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isScreenOn:Z

    if-nez v3, :cond_1

    .line 184
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 189
    :cond_1
    const-string v3, "BluetoothAuthorizeDialog"

    const-string v3, "onCreate 2"

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    .end local v2           #p:Lcom/android/internal/app/AlertController$AlertParams;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_opp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    const v3, 0x7f0806c1

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto :goto_1

    .line 147
    :cond_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_ftp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 148
    const v3, 0x7f0806c2

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_1

    .line 149
    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_dun"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 150
    const v3, 0x7f0806c5

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_1

    .line 151
    :cond_5
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_spp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 152
    const v3, 0x7f0806c3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_1

    .line 153
    :cond_6
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_sap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 154
    const v3, 0x7f0806c4

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_1

    .line 155
    :cond_7
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_map"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_mse"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_mns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 158
    :cond_8
    const v3, 0x7f08067d

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    .line 160
    iput-boolean v6, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAlwaysAccept:Z

    goto/16 :goto_1

    .line 164
    :cond_9
    const v3, 0x7f0806c6

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 270
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    .line 273
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V

    .line 278
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
