.class Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNCallback;
.super Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback$Stub;
.source "BluetoothDUN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/dun/BluetoothDUN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DUNCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/dun/BluetoothDUN;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/dun/BluetoothDUN;)V
    .locals 0
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNCallback;->this$0:Lcom/broadcom/bt/service/dun/BluetoothDUN;

    invoke-direct {p0}, Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPortStateChangeEvent(BBLjava/lang/String;)V
    .locals 2
    .parameter "appId"
    .parameter "portState"
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 567
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNCallback;->this$0:Lcom/broadcom/bt/service/dun/BluetoothDUN;

    #getter for: Lcom/broadcom/bt/service/dun/BluetoothDUN;->mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->access$100(Lcom/broadcom/bt/service/dun/BluetoothDUN;)Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

    move-result-object v0

    .line 568
    .local v0, handler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;
    if-eqz v0, :cond_0

    .line 569
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;->onPortStateChangeEvent(BBLjava/lang/String;)V

    .line 571
    :cond_0
    return-void
.end method
