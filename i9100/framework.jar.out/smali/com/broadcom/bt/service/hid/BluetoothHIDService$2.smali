.class Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;
.super Landroid/os/Handler;
.source "BluetoothHIDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/hid/BluetoothHIDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    :pswitch_0
    return-void

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    #calls: Lcom/broadcom/bt/service/hid/BluetoothHIDService;->handleBtDisableMsg(I)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$400(Lcom/broadcom/bt/service/hid/BluetoothHIDService;I)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
