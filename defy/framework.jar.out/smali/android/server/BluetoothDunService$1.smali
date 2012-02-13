.class Landroid/server/BluetoothDunService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDunService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothDunService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothDunService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothDunService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothDunService$1;->this$0:Landroid/server/BluetoothDunService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v7, "com.motorola.intent.action.ATCMD_DUN_UP"

    const-string v6, "com.motorola.intent.action.ATCMD_DUN_DOWN"

    const-string v5, "BTDUN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x8000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, state:I
    packed-switch v2, :pswitch_data_0

    .end local v2           #state:I
    :cond_0
    :goto_0
    return-void

    .restart local v2       #state:I
    :pswitch_0
    iget-object v3, p0, Landroid/server/BluetoothDunService$1;->this$0:Landroid/server/BluetoothDunService;

    #calls: Landroid/server/BluetoothDunService;->onBluetoothEnable()V
    invoke-static {v3}, Landroid/server/BluetoothDunService;->access$000(Landroid/server/BluetoothDunService;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Landroid/server/BluetoothDunService$1;->this$0:Landroid/server/BluetoothDunService;

    #calls: Landroid/server/BluetoothDunService;->onBluetoothDisable()V
    invoke-static {v3}, Landroid/server/BluetoothDunService;->access$100(Landroid/server/BluetoothDunService;)V

    goto :goto_0

    .end local v2           #state:I
    :cond_1
    const-string v3, "com.motorola.intent.action.ATCMD_DUN_UP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.motorola.intent.action.ATCMD_DUN_DOWN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const-string v3, "DevType"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, modemType:Ljava/lang/String;
    const-string v3, "BTDUN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/server/BluetoothDunService$1;->this$0:Landroid/server/BluetoothDunService;

    const-string v4, "com.motorola.intent.action.ATCMD_DUN_UP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    #setter for: Landroid/server/BluetoothDunService;->mUsbDunConnected:Z
    invoke-static {v3, v4}, Landroid/server/BluetoothDunService;->access$202(Landroid/server/BluetoothDunService;Z)Z

    :cond_3
    const-string v3, "BTDUN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.motorola.intent.action.ATCMD_DUN_DOWN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothDunService$1;->this$0:Landroid/server/BluetoothDunService;

    const-string v4, "Received ATCMD_DUN_DOWN Action for BT"

    #calls: Landroid/server/BluetoothDunService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothDunService;->access$300(Landroid/server/BluetoothDunService;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/server/BluetoothDunService$1;->this$0:Landroid/server/BluetoothDunService;

    const-string v4, "Stopping AtCmd Service"

    #calls: Landroid/server/BluetoothDunService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothDunService;->access$300(Landroid/server/BluetoothDunService;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/server/BluetoothDunService$1;->this$0:Landroid/server/BluetoothDunService;

    #calls: Landroid/server/BluetoothDunService;->stopAtCmdService()V
    invoke-static {v3}, Landroid/server/BluetoothDunService;->access$400(Landroid/server/BluetoothDunService;)V

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
