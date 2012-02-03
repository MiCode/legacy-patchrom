.class Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPCallback;
.super Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback$Stub;
.source "BluetoothPBAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PBAPCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/pbap/BluetoothPBAP;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPCallback;->this$0:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;

    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPbapAccessRequested(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "opCode"
    .parameter "fileName"
    .parameter "remoteAddress"
    .parameter "remoteName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 722
    return-void
.end method

.method public onPbapAuth()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 725
    return-void
.end method

.method public onPbapClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 728
    iget-object v1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPCallback;->this$0:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;

    #getter for: Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->mEventHandler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->access$100(Lcom/broadcom/bt/service/pbap/BluetoothPBAP;)Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;

    move-result-object v0

    .line 729
    .local v0, handler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;
    if-eqz v0, :cond_0

    .line 730
    invoke-interface {v0}, Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;->onPbapClosed()V

    .line 732
    :cond_0
    return-void
.end method

.method public onPbapConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 735
    iget-object v1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPCallback;->this$0:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;

    #getter for: Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->mEventHandler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->access$100(Lcom/broadcom/bt/service/pbap/BluetoothPBAP;)Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;

    move-result-object v0

    .line 736
    .local v0, handler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;
    if-eqz v0, :cond_0

    .line 737
    invoke-interface {v0}, Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;->onPbapConnected()V

    .line 739
    :cond_0
    return-void
.end method

.method public onPbapOperCompleted(Ljava/lang/String;BB)V
    .locals 2
    .parameter "fileName"
    .parameter "opCode"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 743
    iget-object v1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPCallback;->this$0:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;

    #getter for: Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->mEventHandler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->access$100(Lcom/broadcom/bt/service/pbap/BluetoothPBAP;)Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;

    move-result-object v0

    .line 744
    .local v0, handler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;
    if-eqz v0, :cond_0

    .line 745
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;->onPbapOperCompleted(Ljava/lang/String;BB)V

    .line 747
    :cond_0
    return-void
.end method
