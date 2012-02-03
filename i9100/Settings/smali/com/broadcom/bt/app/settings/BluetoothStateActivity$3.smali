.class Lcom/broadcom/bt/app/settings/BluetoothStateActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothStateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/settings/BluetoothStateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/settings/BluetoothStateActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/settings/BluetoothStateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity$3;->this$0:Lcom/broadcom/bt/app/settings/BluetoothStateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity$3;->this$0:Lcom/broadcom/bt/app/settings/BluetoothStateActivity;

    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity$3;->this$0:Lcom/broadcom/bt/app/settings/BluetoothStateActivity;

    #getter for: Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v2}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->access$000(Lcom/broadcom/bt/app/settings/BluetoothStateActivity;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v2

    #calls: Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->onBluetoothStateChanged(I)V
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->access$100(Lcom/broadcom/bt/app/settings/BluetoothStateActivity;I)V

    .line 102
    :cond_0
    return-void
.end method
