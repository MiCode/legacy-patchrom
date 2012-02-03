.class public Lcom/android/settings/bluetooth/BluetoothEventRedirector;
.super Ljava/lang/Object;
.source "BluetoothEventRedirector.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 1
    .parameter "localBluetoothManager"

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->persistDiscoveringTimestamp()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothEventRedirector;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 208
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 209
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 210
    const-string v3, "android.intent.extra.DOCK_STATE"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 211
    .local v2, state:I
    if-eqz v2, :cond_0

    .line 212
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 213
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 218
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v5

    goto :goto_0
.end method

.method private persistDiscoveringTimestamp()V
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_discovering_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v1, "android.bluetooth.device.action.DISAPPEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v1, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v1, "android.bleutooth.device.action.UUID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    return-void
.end method
