.class Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$AVRCPBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAVRCP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AVRCPBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$AVRCPBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$AVRCPBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 314
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$AVRCPBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;

    #getter for: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->mEventHandler:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->access$100(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;)Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;

    move-result-object v1

    .line 315
    .local v1, handler:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;
    if-nez v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$AVRCPBroadcastReceiver;->abortBroadcast()V

    .line 321
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.broadcom.bt.app.avrcp.action.ON_AVRCP_CONNECTED"

    sget v3, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->access$200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    const-string v2, "address"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;->onConnected(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_2
    const-string v2, "com.broadcom.bt.app.avrcp.action.ON_AVRCP_DISCONNECTED"

    sget v3, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;->onDisconnected()V

    goto :goto_0
.end method
