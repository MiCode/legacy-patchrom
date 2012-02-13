.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mAirplaneModeOverwridden:Z
    invoke-static {v5, v8}, Landroid/server/BluetoothService;->access$2502(Landroid/server/BluetoothService;Z)Z

    iget-object v5, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isAirplaneModeOn()Z
    invoke-static {v5}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v9

    .local v2, enabled:Z
    :goto_1
    const-string v5, "bluetooth_on"

    invoke-static {v3, v5, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    if-eqz v2, :cond_3

    iget-object v5, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v5, v8}, Landroid/server/BluetoothService;->enable(Z)Z

    goto :goto_0

    .end local v2           #enabled:Z
    :cond_2
    move v2, v8

    goto :goto_1

    .restart local v2       #enabled:Z
    :cond_3
    iget-object v5, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v5, v8}, Landroid/server/BluetoothService;->disable(Z)Z

    goto :goto_0

    .end local v2           #enabled:Z
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_4
    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, state:I
    const-string v5, "BluetoothService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_5

    invoke-static {v10}, Landroid/server/BluetoothService;->access$2602(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v5, v10}, Landroid/server/BluetoothService;->access$2702(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v5, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/server/BluetoothService;->access$2200(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "bluetooth_service_settings"

    iget-object v7, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$2200(Landroid/server/BluetoothService;)Landroid/content/Context;

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dock_bluetooth_address"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/server/BluetoothService;->access$2600()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #state:I
    :cond_6
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Received Intent.ACTION_BOOT_COMPLETED"

    #calls: Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Landroid/server/BluetoothService;->access$500(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mBootCompleted:Z
    invoke-static {v5, v9}, Landroid/server/BluetoothService;->access$2802(Landroid/server/BluetoothService;Z)Z

    iget-object v5, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBtOnPendingRequest:Z
    invoke-static {v5}, Landroid/server/BluetoothService;->access$2900(Landroid/server/BluetoothService;)Z

    move-result v5

    if-ne v5, v9, :cond_0

    const-string v5, "pendignrequest is true, making BT on"

    #calls: Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Landroid/server/BluetoothService;->access$500(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mBtOnPendingRequest:Z
    invoke-static {v5, v8}, Landroid/server/BluetoothService;->access$2902(Landroid/server/BluetoothService;Z)Z

    iget-object v5, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v5, v8}, Landroid/server/BluetoothService;->enable(Z)Z

    goto/16 :goto_0
.end method
