.class Landroid/server/BluetoothPanService$2;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Landroid/server/BluetoothPanService$2;->this$0:Landroid/server/BluetoothPanService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/server/BluetoothPanService$2;->this$0:Landroid/server/BluetoothPanService;

    #calls: Landroid/server/BluetoothPanService;->startPanService()V
    invoke-static {v0}, Landroid/server/BluetoothPanService;->access$700(Landroid/server/BluetoothPanService;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/server/BluetoothPanService$2;->this$0:Landroid/server/BluetoothPanService;

    iget-object v1, p0, Landroid/server/BluetoothPanService$2;->this$0:Landroid/server/BluetoothPanService;

    #getter for: Landroid/server/BluetoothPanService;->mPanInterface:Ljava/lang/String;
    invoke-static {v1}, Landroid/server/BluetoothPanService;->access$800(Landroid/server/BluetoothPanService;)Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/server/BluetoothPanService;->configureNapIpAddr(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/server/BluetoothPanService;->access$900(Landroid/server/BluetoothPanService;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/server/BluetoothPanService$2;->this$0:Landroid/server/BluetoothPanService;

    #calls: Landroid/server/BluetoothPanService;->configureIpTables()V
    invoke-static {v0}, Landroid/server/BluetoothPanService;->access$300(Landroid/server/BluetoothPanService;)V

    iget-object v0, p0, Landroid/server/BluetoothPanService$2;->this$0:Landroid/server/BluetoothPanService;

    #calls: Landroid/server/BluetoothPanService;->configureDhcp()V
    invoke-static {v0}, Landroid/server/BluetoothPanService;->access$500(Landroid/server/BluetoothPanService;)V

    iget-object v0, p0, Landroid/server/BluetoothPanService$2;->this$0:Landroid/server/BluetoothPanService;

    #calls: Landroid/server/BluetoothPanService;->startDhcpServer()V
    invoke-static {v0}, Landroid/server/BluetoothPanService;->access$600(Landroid/server/BluetoothPanService;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/server/BluetoothPanService$2;->this$0:Landroid/server/BluetoothPanService;

    invoke-virtual {v0}, Landroid/server/BluetoothPanService;->disconnectPan()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
