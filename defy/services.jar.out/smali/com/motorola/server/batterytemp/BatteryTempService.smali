.class public Lcom/motorola/server/batterytemp/BatteryTempService;
.super Ljava/lang/Object;
.source "BatteryTempService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatteryTempService"


# instance fields
.field private disableBluetooth:Z

.field private disableGPS:Z

.field private disableWifi:Z

.field private mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field tempAlert:Landroid/app/AlertDialog;

.field tempOK:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableGPS:Z

    iput-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableBluetooth:Z

    iput-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableWifi:Z

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    iput-object p1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/server/batterytemp/BatteryTempService;)Lcom/motorola/server/BeepSoundService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/server/batterytemp/BatteryTempService;Lcom/motorola/server/BeepSoundService;)Lcom/motorola/server/BeepSoundService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    return-object p1
.end method

.method private getGpsState()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getPhoneInterface()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private gotoHome()V
    .locals 4

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, homeIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setBluetooth(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "BatteryTempService"

    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .local v0, bluetooth:Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableBluetooth:Z

    if-eqz v3, :cond_1

    const-string v3, "BatteryTempService"

    const-string v4, "Enable Bluetooth..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableBluetooth:Z

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->enable()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    move v1, v5

    .local v1, bluetoothOff:Z
    :goto_1
    if-nez v1, :cond_0

    const-string v3, "BatteryTempService"

    const-string v4, "Disabling Bluetooth..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/bluetooth/IBluetooth;->disable(Z)Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableBluetooth:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #bluetoothOff:Z
    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, ex:Landroid/os/RemoteException;
    const-string v3, "BatteryTempService"

    const-string v3, "RemoteException during bluetooth shutdown"

    invoke-static {v6, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_2
    move v1, v7

    goto :goto_1
.end method

.method private setGPSEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->getGpsState()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableGPS:Z

    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private showBatteryCountdownDialog()V
    .locals 5

    .prologue
    new-instance v0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;-><init>(Landroid/content/Context;Lcom/motorola/server/batterytemp/BatteryTempService;)V

    .local v0, countDownDialog:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;
    invoke-virtual {v0}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->show()V

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->isThreadNotRun()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    new-instance v1, Lcom/motorola/server/BeepSoundService;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/server/BeepSoundService;-><init>(IILandroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->start()V

    :cond_1
    return-void
.end method

.method private showBatteryTempAlertDialog(Z)V
    .locals 5
    .parameter "charging"

    .prologue
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x10803d4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x10403f7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_2

    const v1, 0x10403f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v1, 0x104000a

    new-instance v2, Lcom/motorola/server/batterytemp/BatteryTempService$1;

    invoke-direct {v2, p0}, Lcom/motorola/server/batterytemp/BatteryTempService$1;-><init>(Lcom/motorola/server/batterytemp/BatteryTempService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->isThreadNotRun()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    new-instance v1, Lcom/motorola/server/BeepSoundService;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/server/BeepSoundService;-><init>(IILandroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->start()V

    :cond_1
    return-void

    :cond_2
    const v1, 0x10403f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showCooldownMode()V
    .locals 4

    .prologue
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.batteryreport.TEMPERATURE_COOLDOWN_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1080

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private showTempOKDialog(Z)V
    .locals 5
    .parameter "chargingCont"

    .prologue
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x10803d5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x10403fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_2

    const v1, 0x10403fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v1, 0x104000a

    new-instance v2, Lcom/motorola/server/batterytemp/BatteryTempService$2;

    invoke-direct {v2, p0}, Lcom/motorola/server/batterytemp/BatteryTempService$2;-><init>(Lcom/motorola/server/batterytemp/BatteryTempService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/motorola/server/batterytemp/BatteryTempService$3;

    invoke-direct {v1, p0}, Lcom/motorola/server/batterytemp/BatteryTempService$3;-><init>(Lcom/motorola/server/batterytemp/BatteryTempService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->isThreadNotRun()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    new-instance v1, Lcom/motorola/server/BeepSoundService;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/server/BeepSoundService;-><init>(IILandroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->start()V

    :cond_1
    return-void

    :cond_2
    const v1, 0x10403fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public getBatteryTempState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    return v0
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onBatteryCooldownMode(I)V
    .locals 2
    .parameter "batteryTemp"

    .prologue
    const/4 v1, 0x0

    iget v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    :cond_1
    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->showBatteryCountdownDialog()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBatteryTempAlertCharging(I)V
    .locals 3
    .parameter "batteryTemp"

    .prologue
    iget v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    :pswitch_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_TEMP_ALERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/server/batterytemp/BatteryTempService;->showBatteryTempAlertDialog(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBatteryTempAlertNoCharging(I)V
    .locals 1
    .parameter "batteryTemp"

    .prologue
    iget v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    :pswitch_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/server/batterytemp/BatteryTempService;->showBatteryTempAlertDialog(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBatteryTempNormal(I)V
    .locals 5
    .parameter "batteryTemp"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iput v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    :cond_0
    invoke-direct {p0, v3}, Lcom/motorola/server/batterytemp/BatteryTempService;->showTempOKDialog(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    :cond_1
    invoke-direct {p0, v3}, Lcom/motorola/server/batterytemp/BatteryTempService;->showTempOKDialog(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_TEMP_NORMAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0, v4}, Lcom/motorola/server/batterytemp/BatteryTempService;->setCooldownModeEnabled(Z)V

    invoke-direct {p0, v4}, Lcom/motorola/server/batterytemp/BatteryTempService;->showTempOKDialog(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCooldownModeEnabled(Z)V
    .locals 9
    .parameter "enabled"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "wifi_on"

    const-string v7, "cooldown_mode_on"

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->gotoHome()V

    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->showCooldownMode()V

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cooldown_mode_on"

    invoke-static {v3, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->isAirplaneModeOn()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    invoke-direct {p0, v5}, Lcom/motorola/server/batterytemp/BatteryTempService;->setBluetooth(Z)V

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_on"

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iput-boolean v6, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableWifi:Z

    :cond_0
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_providers_allowed"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, allowedProviders:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v5}, Lcom/motorola/server/batterytemp/BatteryTempService;->setGPSEnabled(Z)V

    .end local v0           #allowedProviders:Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.BATTERY_TEMP_COOLDOWN_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_2
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cooldown_mode_on"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .restart local v2       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_3
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableBluetooth:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableWifi:Z

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    invoke-direct {p0, v6}, Lcom/motorola/server/batterytemp/BatteryTempService;->setBluetooth(Z)V

    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableWifi:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_on"

    invoke-static {v3, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iput-boolean v5, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableWifi:Z

    :cond_6
    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableGPS:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v6}, Lcom/motorola/server/batterytemp/BatteryTempService;->setGPSEnabled(Z)V

    goto :goto_1
.end method
