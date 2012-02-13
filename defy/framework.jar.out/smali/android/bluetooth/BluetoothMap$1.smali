.class Landroid/bluetooth/BluetoothMap$1;
.super Ljava/lang/Object;
.source "BluetoothMap.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothMap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothMap;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothMap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMap;

    move-result-object v1

    #setter for: Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothMap;->access$002(Landroid/bluetooth/BluetoothMap;Landroid/bluetooth/IBluetoothMap;)Landroid/bluetooth/IBluetoothMap;

    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    #getter for: Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothMap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$100(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    #getter for: Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothMap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$100(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/BluetoothMap$ServiceListener;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    const/4 v1, 0x0

    #setter for: Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothMap;->access$002(Landroid/bluetooth/BluetoothMap;Landroid/bluetooth/IBluetoothMap;)Landroid/bluetooth/IBluetoothMap;

    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    #getter for: Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothMap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$100(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    #getter for: Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothMap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$100(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/BluetoothMap$ServiceListener;->onServiceDisconnected()V

    :cond_0
    return-void
.end method
