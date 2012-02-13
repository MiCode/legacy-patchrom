.class public Landroid/server/BluetoothDunService;
.super Landroid/bluetooth/IBluetoothDun$Stub;
.source "BluetoothDunService.java"


# static fields
.field private static final ATCMD_DUN_DOWN:Ljava/lang/String; = "com.motorola.intent.action.ATCMD_DUN_DOWN"

.field private static final ATCMD_DUN_UP:Ljava/lang/String; = "com.motorola.intent.action.ATCMD_DUN_UP"

.field public static final BLUETOOTH_DUN_SERVICE:Ljava/lang/String; = "bluetooth_dun"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BT_ATCMD_SERVICE_START_INTENT:Ljava/lang/String; = "com.motorola.intent.action.BT_ATCMD_SERVICE_START"

.field private static final BT_ATCMD_STOP_OR_CLOSEDEV_INTENT:Ljava/lang/String; = "com.motorola.intent.action.BT_ATCMD_SERVICE_STOP_OR_CLOSEDEV"

.field private static final BT_INCOMING_DUN_CONNECTION_INTENT:Ljava/lang/String; = "com.motorola.intent.action.INCOMING_DUN_CONNECTION"

.field private static final BT_INCOMING_DUN_CONNECTION_RELEASED_INTENT:Ljava/lang/String; = "com.motorola.intent.action.INCOMING_DUN_CONNECTION_RELEASED"

.field private static final DBG:Z = true

.field private static final SETTINGS_CONTENT_URI:Ljava/lang/String; = "content://com.motorola.android.providers.settings/settings"

.field private static final SETTING_COL_NAME:Ljava/lang/String; = "name"

.field private static final SETTING_COL_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "BluetoothDunService"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDUNEnabled:Z

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRfcommDevicePath:Ljava/lang/String;

.field private mState:I

.field private mUsbDunConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v3, "BluetoothDunService"

    :try_start_0
    const-string v1, "/system/lib/libmot_bluetooth_jni.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const-string v1, "BluetoothDunService"

    const-string v2, "libmot_bluetooth_jni.so loaded success"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/server/BluetoothDunService;->classInitNative()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "BluetoothDunService"

    const-string v1, "libmot_bluetooth_jni.so loaded failed"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 11
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    const-string v10, "Platform does not support Bluetooth"

    const-string v2, "BluetoothDunService"

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothDun$Stub;-><init>()V

    iput v0, p0, Landroid/server/BluetoothDunService;->mState:I

    iput-boolean v0, p0, Landroid/server/BluetoothDunService;->mUsbDunConnected:Z

    iput-boolean v0, p0, Landroid/server/BluetoothDunService;->mBluetoothDUNEnabled:Z

    iput-object v9, p0, Landroid/server/BluetoothDunService;->mRfcommDevicePath:Ljava/lang/String;

    iput-object v9, p0, Landroid/server/BluetoothDunService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v0, Landroid/server/BluetoothDunService$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothDunService$1;-><init>(Landroid/server/BluetoothDunService;)V

    iput-object v0, p0, Landroid/server/BluetoothDunService;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    .local v6, cur:Landroid/database/Cursor;
    iput-object p1, p0, Landroid/server/BluetoothDunService;->mContext:Landroid/content/Context;

    :try_start_0
    const-string v0, "content://com.motorola.android.providers.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    const-string v3, "name=\'Bluetooth_Dun_Enabled\'"

    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Landroid/server/BluetoothDunService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, s:Ljava/lang/String;
    const-string v0, "BluetoothDunService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bluetooth_Dun_Enabled ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' from setting db."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "true"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/server/BluetoothDunService;->mBluetoothDUNEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #s:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/server/BluetoothDunService;->mBluetoothDUNEnabled:Z

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothDunService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Landroid/server/BluetoothDunService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Platform does not support Bluetooth"

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "BluetoothDunService"

    const-string v2, "failed to query the Bluetooth_Dun_Enabled from setting db"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    iput-object p2, p0, Landroid/server/BluetoothDunService;->mBluetoothService:Landroid/server/BluetoothService;

    iget-object v0, p0, Landroid/server/BluetoothDunService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Platform does not support Bluetooth"

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-direct {p0}, Landroid/server/BluetoothDunService;->initDunNative()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Could not init BluetoothDunService"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/server/BluetoothDunService;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Landroid/server/BluetoothDunService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.motorola.intent.action.ATCMD_DUN_UP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/server/BluetoothDunService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.motorola.intent.action.ATCMD_DUN_DOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/server/BluetoothDunService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothDunService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Landroid/server/BluetoothDunService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/server/BluetoothDunService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/server/BluetoothDunService;->onBluetoothEnable()V

    :cond_6
    :goto_1
    return-void

    :cond_7
    iput-object v9, p0, Landroid/server/BluetoothDunService;->mIntentFilter:Landroid/content/IntentFilter;

    iput-object v9, p0, Landroid/server/BluetoothDunService;->mBluetoothService:Landroid/server/BluetoothService;

    iput-object v9, p0, Landroid/server/BluetoothDunService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/server/BluetoothDunService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/server/BluetoothDunService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Landroid/server/BluetoothDunService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/server/BluetoothDunService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$202(Landroid/server/BluetoothDunService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/server/BluetoothDunService;->mUsbDunConnected:Z

    return p1
.end method

.method static synthetic access$300(Landroid/server/BluetoothDunService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/server/BluetoothDunService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/server/BluetoothDunService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/server/BluetoothDunService;->stopAtCmdService()V

    return-void
.end method

.method private cancelWaitingForUserAuth()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.INCOMING_DUN_CONNECTION_RELEASED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DevType"

    const-string v2, "BTDUN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send out the intent to end the user confirmation dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/server/BluetoothDunService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/server/BluetoothDunService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupDunNative()V
.end method

.method private native connectDunNative()Z
.end method

.method private native disconnectDunNative()Z
.end method

.method private native initDunNative()Z
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v2, "BluetoothDunService"

    const-string v0, "BluetoothDunService"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BluetoothDunService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/server/BluetoothDunService;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usb connected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/server/BluetoothDunService;->mUsbDunConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rfcomm path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothDunService;->mRfcommDevicePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remote device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothDunService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized onBluetoothDisable()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "Stop dun daemon..."

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunService;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/server/BluetoothDunService;->onDunDisconnected()V

    const-string v0, "ctl.stop"

    const-string v1, "dund_dialup"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onBluetoothEnable()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "Start dun daemon ..."

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunService;->log(Ljava/lang/String;)V

    const-string v0, "ctl.start"

    const-string v1, "dund_dialup"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onDunDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "Bluetooth DUN Disconnected"

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunService;->log(Ljava/lang/String;)V

    iget v0, p0, Landroid/server/BluetoothDunService;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/server/BluetoothDunService;->cancelWaitingForUserAuth()V

    :cond_0
    :goto_0
    iput-object v2, p0, Landroid/server/BluetoothDunService;->mRfcommDevicePath:Ljava/lang/String;

    iput-object v2, p0, Landroid/server/BluetoothDunService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunService;->updateState(I)V

    return-void

    :cond_1
    iget v0, p0, Landroid/server/BluetoothDunService;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/server/BluetoothDunService;->stopAtCmdService()V

    goto :goto_0
.end method

.method private startAtCmdService()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.BT_ATCMD_SERVICE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DEVPATH"

    iget-object v2, p0, Landroid/server/BluetoothDunService;->mRfcommDevicePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start at command service intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/server/BluetoothDunService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/server/BluetoothDunService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private stopAtCmdService()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.BT_ATCMD_SERVICE_STOP_OR_CLOSEDEV"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop at command service intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/server/BluetoothDunService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/server/BluetoothDunService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateState(I)V
    .locals 4
    .parameter "newState"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.android.bluetooth.dun.intent.action.DUN_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intentDun:Landroid/content/Intent;
    iget v1, p0, Landroid/server/BluetoothDunService;->mState:I

    .local v1, prevSate:I
    iput p1, p0, Landroid/server/BluetoothDunService;->mState:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateState, New state is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/server/BluetoothDunService;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothDunService;->log(Ljava/lang/String;)V

    const-string v2, "com.motorola.android.bluetooth.dun.intent.DUN_STATE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.motorola.android.bluetooth.dun.intent.DUN_PREVIOUS_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothDunService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/server/BluetoothDunService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private waitForUserAuth()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.INCOMING_DUN_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DevType"

    const-string v2, "BTDUN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send out intent to trigger the user confirmation dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/server/BluetoothDunService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/server/BluetoothDunService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized acceptDunConnection()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "connectDunClient"

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunService;->log(Ljava/lang/String;)V

    iget v0, p0, Landroid/server/BluetoothDunService;->mState:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Landroid/server/BluetoothDunService;->connectDunNative()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunService;->updateState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectActiveDunClient()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothDunService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Landroid/server/BluetoothDunService;->disconnectDunClient(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectDunClient(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "disconnectDunClient"

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunService;->log(Ljava/lang/String;)V

    iget v0, p0, Landroid/server/BluetoothDunService;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/server/BluetoothDunService;->mState:I

    if-ne v0, v3, :cond_2

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunService;->updateState(I)V

    invoke-direct {p0}, Landroid/server/BluetoothDunService;->disconnectDunNative()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunService;->updateState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-boolean v0, p0, Landroid/server/BluetoothDunService;->mBluetoothDUNEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/server/BluetoothDunService;->cleanupDunNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Landroid/bluetooth/IBluetoothDun$Stub;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetoothDun$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/server/BluetoothDunService;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDunService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDunState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, state:I
    :try_start_0
    iget v1, p0, Landroid/server/BluetoothDunService;->mState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothDunService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Landroid/server/BluetoothDunService;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onDunConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "rfcommDevicePath"
    .parameter "addr"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bluetooth DUN Connected, path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/server/BluetoothDunService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothDunService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Landroid/server/BluetoothDunService;->mRfcommDevicePath:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunService;->updateState(I)V

    invoke-direct {p0}, Landroid/server/BluetoothDunService;->startAtCmdService()V

    return-void
.end method

.method public onDunConnecting(Ljava/lang/String;)V
    .locals 2
    .parameter "addr"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming Bluetooth DUN Connection, address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/server/BluetoothDunService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothDunService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunService;->updateState(I)V

    iget-object v0, p0, Landroid/server/BluetoothDunService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService;->getTrustState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/server/BluetoothDunService;->waitForUserAuth()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/server/BluetoothDunService;->connectDunNative()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunService;->updateState(I)V

    goto :goto_0
.end method
