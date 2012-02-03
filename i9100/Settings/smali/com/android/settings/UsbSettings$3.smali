.class Lcom/android/settings/UsbSettings$3;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UsbSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 142
    iput-object p1, p0, Lcom/android/settings/UsbSettings$3;->this$0:Lcom/android/settings/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x2

    .line 145
    iget-object v2, p0, Lcom/android/settings/UsbSettings$3;->this$0:Lcom/android/settings/UsbSettings;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/android/settings/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 146
    .local v1, mPowerManager:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->getPlugType()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/settings/UsbSettings$3;->this$0:Lcom/android/settings/UsbSettings;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/settings/UsbSettings;->showDialog(I)V

    .line 163
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/android/settings/UsbSettings$3;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v2}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/android/settings/UsbSettings$3;->this$0:Lcom/android/settings/UsbSettings;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/UsbSettings;->showDialog(I)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/android/settings/UsbSettings$3;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v2, v5}, Lcom/android/settings/UsbSettings;->showDialog(I)V

    .line 154
    iget-object v2, p0, Lcom/android/settings/UsbSettings$3;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v2}, Lcom/android/settings/UsbSettings;->changeUMS()V

    .line 157
    iget-object v2, p0, Lcom/android/settings/UsbSettings$3;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v2}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_setting_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/android/settings/UsbSettings$3;->this$0:Lcom/android/settings/UsbSettings;

    iget-object v3, p0, Lcom/android/settings/UsbSettings$3;->this$0:Lcom/android/settings/UsbSettings;

    #getter for: Lcom/android/settings/UsbSettings;->mBatteryReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/settings/UsbSettings;->access$000(Lcom/android/settings/UsbSettings;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/UsbSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
