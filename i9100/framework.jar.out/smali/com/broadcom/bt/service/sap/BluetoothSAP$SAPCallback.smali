.class Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPCallback;
.super Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub;
.source "BluetoothSAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/sap/BluetoothSAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SAPCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/sap/BluetoothSAP;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPCallback;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onConnected(Ljava/lang/String;)V
    .locals 3
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothSAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnected: address = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPCallback;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    #getter for: Lcom/broadcom/bt/service/sap/BluetoothSAP;->mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->access$100(Lcom/broadcom/bt/service/sap/BluetoothSAP;)Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPCallback;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    #getter for: Lcom/broadcom/bt/service/sap/BluetoothSAP;->mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->access$100(Lcom/broadcom/bt/service/sap/BluetoothSAP;)Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;->onConnected(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_0
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDisconnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothSAP"

    const-string/jumbo v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPCallback;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    #getter for: Lcom/broadcom/bt/service/sap/BluetoothSAP;->mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->access$100(Lcom/broadcom/bt/service/sap/BluetoothSAP;)Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPCallback;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    #getter for: Lcom/broadcom/bt/service/sap/BluetoothSAP;->mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->access$100(Lcom/broadcom/bt/service/sap/BluetoothSAP;)Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;->onDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :cond_0
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
