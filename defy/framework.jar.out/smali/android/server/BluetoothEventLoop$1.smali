.class Landroid/server/BluetoothEventLoop$1;
.super Landroid/os/Handler;
.source "BluetoothEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothEventLoop;


# direct methods
.method constructor <init>(Landroid/server/BluetoothEventLoop;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .local v0, address:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothEventLoop;->access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/server/BluetoothService;->restart()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothEventLoop;->access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/server/BluetoothService;->setPairingConfirmation(Ljava/lang/String;Z)Z

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothEventLoop;->access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, devices:[Ljava/lang/String;
    array-length v2, v1

    if-eqz v2, :cond_0

    array-length v2, v1

    if-le v2, v4, :cond_1

    const-string v2, "BluetoothEventLoop"

    const-string v3, " There is more than one device in the Bonding State"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    aget-object v0, v1, v2

    iget-object v2, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothEventLoop;->access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v2

    const/16 v3, 0xa

    const/16 v4, 0x8

    invoke-virtual {v2, v0, v3, v4}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
