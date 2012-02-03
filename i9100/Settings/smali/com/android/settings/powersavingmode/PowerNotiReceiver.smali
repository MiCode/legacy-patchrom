.class public Lcom/android/settings/powersavingmode/PowerNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotiReceiver.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mNotificationMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private adjustBrightness()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-wide v7, 0x406fe00000000000L

    const-wide/high16 v5, 0x4059

    .line 220
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_brightness"

    invoke-static {v2, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_brightness_level"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 224
    .local v0, brightness:I
    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    .line 225
    int-to-double v2, v0

    div-double/2addr v2, v5

    mul-double/2addr v2, v7

    double-to-int v1, v2

    .line 229
    .local v1, set_brightness:I
    :goto_0
    const-string v2, "PowerNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PSM_brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "set_brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0, v9, v1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doAdjustBrightness(II)V

    .line 232
    .end local v0           #brightness:I
    .end local v1           #set_brightness:I
    :cond_0
    return-void

    .line 227
    .restart local v0       #brightness:I
    :cond_1
    int-to-double v2, v0

    div-double/2addr v2, v5

    mul-double/2addr v2, v7

    const-wide/high16 v4, 0x4024

    add-double/2addr v2, v4

    double-to-int v1, v2

    .restart local v1       #set_brightness:I
    goto :goto_0
.end method

.method private adjustScreentimeout()V
    .locals 4

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_screen_timeout"

    const/16 v3, 0x3a98

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 256
    .local v0, timeout:I
    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doAdjustScreentimeout(I)V

    .line 257
    return-void
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 132
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 133
    return-void
.end method

.method private doAdjustBrightness(II)V
    .locals 5
    .parameter "brightnessAutoMode"
    .parameter "brightnessValue"

    .prologue
    .line 235
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 239
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_0

    .line 241
    :try_start_0
    invoke-interface {v2, p2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.BRIGHTNESS_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 252
    return-void

    .line 242
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/powersavingmode/PowerSavingModeLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doAdjustScreentimeout(I)V
    .locals 3
    .parameter "screentimeout"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    return-void
.end method

.method private doPowerSaveAction(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopWifi()V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopBluetooth()V

    .line 138
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopGps(Landroid/content/Context;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopSync(Landroid/content/Context;)V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->adjustBrightness()V

    .line 141
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->adjustScreentimeout()V

    .line 142
    return-void
.end method

.method private showNotification(I)V
    .locals 9
    .parameter

    .prologue
    const v4, 0x7f080672

    const/4 v7, 0x0

    const-string v3, ""

    .line 99
    iput p1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mNotificationMode:I

    .line 100
    const-string v0, "PowerNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNotificationMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mNotificationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 105
    const v1, 0x7f02002f

    .line 106
    const-string v2, ""

    .line 107
    const-string v2, ""

    .line 108
    const/16 v2, 0x96

    if-ne p1, v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 115
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 116
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6, v1, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 117
    iget v1, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v6, Landroid/app/Notification;->flags:I

    .line 119
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08065b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 124
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 127
    return-void

    .line 111
    :cond_0
    const/16 v2, 0x97

    if-ne p1, v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080673

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080674

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_0
.end method

.method private stopBluetooth()V
    .locals 5

    .prologue
    const-string v4, "PowerNotiReceiver"

    .line 164
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_bluetooth"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 165
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 167
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectedDeviceCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 168
    const-string v1, "PowerNotiReceiver"

    const-string v1, "doAction : disableBluetooth"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 176
    .end local v0           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    return-void

    .line 171
    .restart local v0       #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    const-string v1, "PowerNotiReceiver"

    const-string v1, "Not disable Bluetooth because it\'s being used"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v0           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    const-string v1, "PowerNotiReceiver"

    const-string v1, "PSM_BLUETOOTH = psm_bluetooth, do not disable Bluetooth because PSM_BLUETOOTH is unchecked"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopGps(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const-string v4, "PowerNotiReceiver"

    .line 179
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_gps"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isGpsRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    const-string v2, "PowerNotiReceiver"

    const-string v2, "doAction : disableGPS"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 183
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.GPS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string v2, "PowerNotiReceiver"

    const-string v2, "Not disable Gps because it\'s being used"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_1
    const-string v2, "PowerNotiReceiver"

    const-string v2, "PSM_GPS = psm_gps, do not disable Gps because PSM_GPS is unchecked"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopSync(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const-string v7, "PowerNotiReceiver"

    .line 196
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_sync"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 197
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 200
    .local v1, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    .line 201
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    .line 203
    .local v3, sync:Z
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v2

    .line 207
    .local v2, now_sync:Landroid/content/SyncInfo;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 208
    if-nez v2, :cond_1

    .line 209
    invoke-static {v6}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 217
    .end local v0           #backgroundData:Z
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #now_sync:Landroid/content/SyncInfo;
    .end local v3           #sync:Z
    :cond_0
    :goto_0
    return-void

    .line 211
    .restart local v0       #backgroundData:Z
    .restart local v1       #connManager:Landroid/net/ConnectivityManager;
    .restart local v2       #now_sync:Landroid/content/SyncInfo;
    .restart local v3       #sync:Z
    :cond_1
    const-string v4, "PowerNotiReceiver"

    const-string v4, "Not disable Auto Sync because it\'s being used"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    .end local v0           #backgroundData:Z
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #now_sync:Landroid/content/SyncInfo;
    .end local v3           #sync:Z
    :cond_2
    const-string v4, "PowerNotiReceiver"

    const-string v4, "PSM_SYNC = psm_sync, do not disable Auto Sync because PSM_SYNC is unchecked"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopWifi()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "PowerNotiReceiver"

    .line 145
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_wifi"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 146
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 148
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 149
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 150
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 152
    .local v3, wifistate:Landroid/net/NetworkInfo$DetailedState;
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    .line 153
    const-string v4, "PowerNotiReceiver"

    const-string v4, "doAction : disableWifi"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 161
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v3           #wifistate:Landroid/net/NetworkInfo$DetailedState;
    :goto_0
    return-void

    .line 156
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v2       #wifiManager:Landroid/net/wifi/WifiManager;
    .restart local v3       #wifistate:Landroid/net/NetworkInfo$DetailedState;
    :cond_0
    const-string v4, "PowerNotiReceiver"

    const-string v4, "Not disable Wifi because it\'s connected to AP"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v3           #wifistate:Landroid/net/NetworkInfo$DetailedState;
    :cond_1
    const-string v4, "PowerNotiReceiver"

    const-string v4, "PSM_WIFI = psm_wifi, do not disable Wifi because PSM_WIFI is unchecked"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isGpsRunning()Z
    .locals 3

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 270
    .local v0, lm:Landroid/location/LocationManager;
    invoke-virtual {v0}, Landroid/location/LocationManager;->isGpsRunning()Z

    move-result v1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0x96

    const/4 v5, 0x0

    const-string v8, "PowerNotiReceiver"

    const-string v6, "use_power_saving_mode"

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    .line 69
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 71
    const-string v3, "PowerNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowerNotiReceiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 75
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "use_power_saving_mode"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 76
    .local v1, enableMode:Z
    const-string v3, "PowerNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-eqz v1, :cond_2

    .line 78
    invoke-direct {p0, v7}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    .line 96
    .end local v1           #enableMode:Z
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 80
    .restart local v1       #enableMode:Z
    .restart local v2       #prefs:Landroid/content/SharedPreferences;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->clearNotification()V

    goto :goto_0

    .line 82
    .end local v1           #enableMode:Z
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_3
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 84
    .restart local v2       #prefs:Landroid/content/SharedPreferences;
    const-string v3, "use_power_saving_mode"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 85
    .restart local v1       #enableMode:Z
    if-eqz v1, :cond_1

    .line 86
    const/16 v3, 0x97

    invoke-direct {p0, v3}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    goto :goto_0

    .line 87
    .end local v1           #enableMode:Z
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_4
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 88
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 89
    .restart local v2       #prefs:Landroid/content/SharedPreferences;
    const-string v3, "use_power_saving_mode"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 90
    .restart local v1       #enableMode:Z
    if-eqz v1, :cond_1

    .line 91
    invoke-direct {p0, v7}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    goto :goto_0

    .line 92
    .end local v1           #enableMode:Z
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_5
    const-string v3, "android.settings.ACTION_POWERSAVING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction(Landroid/content/Context;)V

    goto :goto_0
.end method
