.class public Lcom/android/settings/UsbSettings;
.super Landroid/app/Activity;
.source "UsbSettings.java"


# instance fields
.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mMountButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUnmountButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 79
    new-instance v0, Lcom/android/settings/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/UsbSettings$1;-><init>(Lcom/android/settings/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    new-instance v0, Lcom/android/settings/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/UsbSettings$2;-><init>(Lcom/android/settings/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/UsbSettings;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/UsbSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/UsbSettings;->switchDisplay(Z)V

    return-void
.end method

.method private switchDisplay(Z)V
    .locals 3
    .parameter "usbStorageInUse"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 175
    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public changeUMS()V
    .locals 6

    .prologue
    .line 270
    const/4 v4, 0x1

    new-array v0, v4, [B

    const/4 v4, 0x0

    const/16 v5, 0x32

    aput-byte v5, v0, v4

    .line 273
    .local v0, MTP:[B
    const/4 v2, 0x0

    .line 275
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/devices/platform/android_usb/UsbMenuSel"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 276
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 283
    if-eqz v3, :cond_0

    .line 284
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 289
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 285
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 286
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 288
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 277
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 278
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    if-eqz v2, :cond_1

    .line 284
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 285
    :catch_2
    move-exception v1

    .line 286
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 279
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    move-object v1, v4

    .line 280
    .restart local v1       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 283
    if-eqz v2, :cond_1

    .line 284
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 285
    :catch_4
    move-exception v1

    .line 286
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 282
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 283
    :goto_3
    if-eqz v2, :cond_2

    .line 284
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 287
    :cond_2
    :goto_4
    throw v4

    .line 285
    :catch_5
    move-exception v1

    .line 286
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 282
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 279
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 277
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 133
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 134
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 135
    const-string v0, "UsbSettings"

    const-string v1, "Failed to get StorageManager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    const v0, 0x7f030061

    invoke-virtual {p0, v0}, Lcom/android/settings/UsbSettings;->setContentView(I)V

    .line 141
    const v0, 0x7f0b0131

    invoke-virtual {p0, v0}, Lcom/android/settings/UsbSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->mMountButton:Landroid/widget/Button;

    .line 142
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mMountButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/UsbSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/UsbSettings$3;-><init>(Lcom/android/settings/UsbSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v0, 0x7f0b0132

    invoke-virtual {p0, v0}, Lcom/android/settings/UsbSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/UsbSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/UsbSettings$4;-><init>(Lcom/android/settings/UsbSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v0, 0x7f0b0133

    invoke-virtual {p0, v0}, Lcom/android/settings/UsbSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 172
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "id"
    .parameter "args"

    .prologue
    const/high16 v5, 0x104

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 212
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v0, v4

    .line 266
    :goto_0
    return-object v0

    .line 214
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0805d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805d9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/UsbSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/UsbSettings$5;-><init>(Lcom/android/settings/UsbSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 241
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0805ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/UsbSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/UsbSettings$7;-><init>(Lcom/android/settings/UsbSettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/UsbSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/UsbSettings$6;-><init>(Lcom/android/settings/UsbSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 259
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802cc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08038b

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805da

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 205
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 208
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 191
    iget-object v1, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/UsbSettings;->switchDisplay(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 196
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "UsbSettings"

    const-string v2, "Failed to read UMS enable state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
