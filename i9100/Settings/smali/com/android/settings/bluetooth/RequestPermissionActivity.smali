.class public Lcom/android/settings/bluetooth/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mEnableOnly:Z

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mNeededToEnableBluetooth:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeout:I

.field private mUserConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 68
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 74
    new-instance v0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    return-void
.end method

.method private createDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 146
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 148
    const v1, 0x7f080067

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 150
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v1, :cond_0

    .line 153
    const v1, 0x7f08006d

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 169
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 170
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 171
    return-void

    .line 158
    :cond_0
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-nez v1, :cond_1

    .line 159
    const v1, 0x7f08006a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    :goto_1
    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    const v1, 0x7f080003

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 162
    :cond_1
    const v1, 0x7f080069

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private parseIntent()Z
    .locals 7

    .prologue
    const/16 v6, 0x78

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "RequestPermissionActivity"

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 244
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    .line 264
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 265
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_4

    .line 266
    const-string v1, "RequestPermissionActivity"

    const-string v1, "Error: there\'s a problem starting bluetooth"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    move v1, v4

    .line 271
    :goto_1
    return v1

    .line 246
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 251
    const-string v1, "RequestPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Bluetooth Discoverable Timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    const/16 v2, 0xe10

    if-le v1, v2, :cond_0

    .line 254
    :cond_2
    iput v6, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    goto :goto_0

    .line 257
    :cond_3
    const-string v1, "RequestPermissionActivity"

    const-string v1, "Error: this activity may be started only with intent android.bluetooth.adapter.action.REQUEST_ENABLE or android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    move v1, v4

    .line 261
    goto :goto_1

    :cond_4
    move v1, v3

    .line 271
    goto :goto_1
.end method

.method private persistDiscoverableEndTimestamp(J)V
    .locals 2
    .parameter "endTimestamp"

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 283
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "discoverable_end_timestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    return-void
.end method

.method private proceedAndFinish()V
    .locals 5

    .prologue
    .line 215
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v1, :cond_2

    .line 217
    const/4 v0, -0x1

    .line 234
    .local v0, returnCode:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 238
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 240
    return-void

    .line 218
    .end local v0           #returnCode:I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x17

    iget v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 221
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->persistDiscoverableEndTimestamp(J)V

    .line 225
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 227
    .restart local v0       #returnCode:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 228
    const/4 v0, 0x1

    goto :goto_0

    .line 231
    .end local v0           #returnCode:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #returnCode:I
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 175
    if-eq p1, v1, :cond_0

    .line 176
    const-string v0, "RequestPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 197
    :goto_0
    return-void

    .line 181
    :cond_0
    const/16 v0, -0x3e8

    if-eq p2, v0, :cond_1

    .line 182
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 189
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    .line 191
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 192
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 195
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 293
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 200
    packed-switch p2, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 202
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 206
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->parseIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 143
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    .line 103
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    const-class v1, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v1, :cond_1

    .line 123
    const-string v1, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    goto :goto_0

    .line 125
    :cond_1
    const-string v1, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 133
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v0, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 139
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 277
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 279
    :cond_0
    return-void
.end method
