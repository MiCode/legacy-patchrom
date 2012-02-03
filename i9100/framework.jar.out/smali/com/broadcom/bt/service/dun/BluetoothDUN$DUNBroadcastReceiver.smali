.class Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDUN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/dun/BluetoothDUN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DUNBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/dun/BluetoothDUN;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/dun/BluetoothDUN;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/dun/BluetoothDUN;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/dun/BluetoothDUN;Lcom/broadcom/bt/service/dun/BluetoothDUN$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 574
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/dun/BluetoothDUN;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 579
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/dun/BluetoothDUN;

    #getter for: Lcom/broadcom/bt/service/dun/BluetoothDUN;->mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->access$100(Lcom/broadcom/bt/service/dun/BluetoothDUN;)Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

    move-result-object v1

    .line 580
    .local v1, handler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;
    if-nez v1, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNBroadcastReceiver;->abortBroadcast()V

    .line 586
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.broadcom.bt.app.dun.action.ON_PORT_STATE_CHANGE"

    sget v3, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/dun/BluetoothDUN;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->access$200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    const-string v2, "APPID"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    const-string v3, "PORTSTATE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    const-string v4, "ADDR"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;->onPortStateChangeEvent(BBLjava/lang/String;)V

    goto :goto_0
.end method
