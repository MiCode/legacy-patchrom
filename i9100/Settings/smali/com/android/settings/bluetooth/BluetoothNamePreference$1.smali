.class Lcom/android/settings/bluetooth/BluetoothNamePreference$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothNamePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothNamePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothNamePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    #calls: Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummaryToName()V
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->access$000(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    #calls: Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummaryToName()V
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->access$000(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V

    goto :goto_0
.end method
