.class Landroid/server/BluetoothPanService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothPanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothPanService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothPanService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothPanService$1;->this$0:Landroid/server/BluetoothPanService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
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
    iget-object v3, p0, Landroid/server/BluetoothPanService$1;->this$0:Landroid/server/BluetoothPanService;

    #calls: Landroid/server/BluetoothPanService;->onBluetoothEnable()V
    invoke-static {v3}, Landroid/server/BluetoothPanService;->access$000(Landroid/server/BluetoothPanService;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Landroid/server/BluetoothPanService$1;->this$0:Landroid/server/BluetoothPanService;

    #calls: Landroid/server/BluetoothPanService;->onBluetoothDisable()V
    invoke-static {v3}, Landroid/server/BluetoothPanService;->access$100(Landroid/server/BluetoothPanService;)V

    goto :goto_0

    .end local v2           #state:I
    :cond_1
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothPanService$1;->this$0:Landroid/server/BluetoothPanService;

    #getter for: Landroid/server/BluetoothPanService;->mConnection:I
    invoke-static {v3}, Landroid/server/BluetoothPanService;->access$200(Landroid/server/BluetoothPanService;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothPanService$1;->this$0:Landroid/server/BluetoothPanService;

    #calls: Landroid/server/BluetoothPanService;->configureIpTables()V
    invoke-static {v3}, Landroid/server/BluetoothPanService;->access$300(Landroid/server/BluetoothPanService;)V

    iget-object v3, p0, Landroid/server/BluetoothPanService$1;->this$0:Landroid/server/BluetoothPanService;

    #calls: Landroid/server/BluetoothPanService;->stopDhcpServer()V
    invoke-static {v3}, Landroid/server/BluetoothPanService;->access$400(Landroid/server/BluetoothPanService;)V

    iget-object v3, p0, Landroid/server/BluetoothPanService$1;->this$0:Landroid/server/BluetoothPanService;

    #calls: Landroid/server/BluetoothPanService;->configureDhcp()V
    invoke-static {v3}, Landroid/server/BluetoothPanService;->access$500(Landroid/server/BluetoothPanService;)V

    iget-object v3, p0, Landroid/server/BluetoothPanService$1;->this$0:Landroid/server/BluetoothPanService;

    #calls: Landroid/server/BluetoothPanService;->startDhcpServer()V
    invoke-static {v3}, Landroid/server/BluetoothPanService;->access$600(Landroid/server/BluetoothPanService;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
