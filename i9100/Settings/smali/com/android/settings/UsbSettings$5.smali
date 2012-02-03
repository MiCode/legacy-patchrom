.class Lcom/android/settings/UsbSettings$5;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UsbSettings;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/settings/UsbSettings$5;->this$0:Lcom/android/settings/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x2

    .line 220
    iget-object v2, p0, Lcom/android/settings/UsbSettings$5;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v2}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    const-string v2, "persist.service.adb.enable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/android/settings/UsbSettings$5;->this$0:Lcom/android/settings/UsbSettings;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/android/settings/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 224
    .local v1, mPowerManager:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->getPlugType()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/settings/UsbSettings$5;->this$0:Lcom/android/settings/UsbSettings;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/settings/UsbSettings;->showDialog(I)V

    .line 237
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/android/settings/UsbSettings$5;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v2, v5}, Lcom/android/settings/UsbSettings;->showDialog(I)V

    .line 228
    iget-object v2, p0, Lcom/android/settings/UsbSettings$5;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v2}, Lcom/android/settings/UsbSettings;->changeUMS()V

    .line 231
    iget-object v2, p0, Lcom/android/settings/UsbSettings$5;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v2}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_setting_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/android/settings/UsbSettings$5;->this$0:Lcom/android/settings/UsbSettings;

    iget-object v3, p0, Lcom/android/settings/UsbSettings$5;->this$0:Lcom/android/settings/UsbSettings;

    #getter for: Lcom/android/settings/UsbSettings;->mBatteryReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/settings/UsbSettings;->access$000(Lcom/android/settings/UsbSettings;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/UsbSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
