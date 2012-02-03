.class Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPBAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PBAPBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/pbap/BluetoothPBAP;)V
    .locals 0
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/pbap/BluetoothPBAP;Lcom/broadcom/bt/service/pbap/BluetoothPBAP$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 751
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/pbap/BluetoothPBAP;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    const-string v6, "OPERATION"

    const-string v4, "FILEPATH"

    .line 756
    iget-object v2, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;

    #getter for: Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->mEventHandler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->access$100(Lcom/broadcom/bt/service/pbap/BluetoothPBAP;)Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;

    move-result-object v1

    .line 757
    .local v1, handler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;
    if-nez v1, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPBroadcastReceiver;->abortBroadcast()V

    .line 763
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.broadcom.bt.app.pbap.action.ON_PBAP_OPENED"

    sget v3, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->access$200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 767
    invoke-interface {v1}, Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;->onPbapConnected()V

    goto :goto_0

    .line 768
    :cond_2
    const-string v2, "com.broadcom.bt.app.pbap.action.ON_PBAP_CLOSED"

    sget v3, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 770
    invoke-interface {v1}, Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;->onPbapClosed()V

    goto :goto_0

    .line 771
    :cond_3
    const-string v2, "com.broadcom.bt.app.pbap.action.ON_PBAP_OP_COMPLETED"

    sget v3, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->access$400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 773
    const-string v2, "FILEPATH"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPERATION"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    const-string v4, "STATUS"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;->onPbapOperCompleted(Ljava/lang/String;BB)V

    goto :goto_0

    .line 777
    :cond_4
    const-string v2, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    sget v3, Lcom/broadcom/bt/service/framework/BluetoothIntent;->BT_ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->access$500(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 781
    const-string v2, "OPERATION"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    const-string v3, "FILEPATH"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "RMT_DEV_ADDR"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "RMT_DEV_NAME"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;->onPbapAccessRequested(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
