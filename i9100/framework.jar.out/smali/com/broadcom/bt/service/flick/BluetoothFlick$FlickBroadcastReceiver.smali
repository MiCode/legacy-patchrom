.class Lcom/broadcom/bt/service/flick/BluetoothFlick$FlickBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothFlick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/flick/BluetoothFlick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlickBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/flick/BluetoothFlick;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/flick/BluetoothFlick;)V
    .locals 0
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick$FlickBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/flick/BluetoothFlick;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/flick/BluetoothFlick;Lcom/broadcom/bt/service/flick/BluetoothFlick$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/flick/BluetoothFlick$FlickBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/flick/BluetoothFlick;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 595
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick$FlickBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/flick/BluetoothFlick;

    #getter for: Lcom/broadcom/bt/service/flick/BluetoothFlick;->mEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->access$100(Lcom/broadcom/bt/service/flick/BluetoothFlick;)Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

    move-result-object v0

    .line 596
    .local v0, handler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;
    if-nez v0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlick$FlickBroadcastReceiver;->abortBroadcast()V

    .line 602
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 603
    .local v6, action:Ljava/lang/String;
    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_CONNECTED:Ljava/lang/String;

    sget v2, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->access$200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 605
    const-string v1, "RMT_DEV_ADDR"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RMT_DEV_NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;->onFlickConnectedEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_2
    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SEARCH_STARTED:Ljava/lang/String;

    sget v2, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 610
    invoke-interface {v0}, Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;->onFlickSearchStartedEvent()V

    goto :goto_0

    .line 613
    :cond_3
    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_FINISHED:Ljava/lang/String;

    sget v2, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->access$400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 615
    invoke-interface {v0}, Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;->onFlickFinishedEvent()V

    goto :goto_0

    .line 618
    :cond_4
    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_TXRX_STATUS:Ljava/lang/String;

    sget v2, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->access$500(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    const-string v1, "EVT_CODE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    const-string v2, "OP_STATUS"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    const-string v3, "BYTES_TRANSFERRED"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "TOTAL_BYTES"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "FILEPATH"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;->onFlickTxRxStatusEvent(BBIILjava/lang/String;)V

    goto :goto_0
.end method
