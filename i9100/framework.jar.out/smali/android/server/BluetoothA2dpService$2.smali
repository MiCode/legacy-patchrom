.class Landroid/server/BluetoothA2dpService$2;
.super Landroid/os/Handler;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 142
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received MESSAGE_DISABLE_BT, count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->access$800(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    move v2, v5

    :goto_1
    #calls: Landroid/server/BluetoothA2dpService;->completeBluetoothDisable(Z)Z
    invoke-static {v1, v2}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v5, v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, msg1:Landroid/os/Message;
    iget-object v1, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v0           #msg1:Landroid/os/Message;
    :cond_1
    move v2, v4

    .line 146
    goto :goto_1

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
