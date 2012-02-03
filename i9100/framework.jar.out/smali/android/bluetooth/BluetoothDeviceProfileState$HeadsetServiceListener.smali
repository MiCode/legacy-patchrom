.class Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;
.super Ljava/lang/Object;
.source "BluetoothDeviceProfileState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothHeadset$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1002(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 227
    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x1

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetServiceConnected:Z
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1202(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 231
    monitor-exit v0

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetServiceConnected:Z
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1202(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
