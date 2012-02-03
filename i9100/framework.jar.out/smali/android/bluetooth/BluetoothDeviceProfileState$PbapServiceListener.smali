.class Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;
.super Ljava/lang/Object;
.source "BluetoothDeviceProfileState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothPbap$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 2
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance v0, Landroid/bluetooth/BluetoothPbap;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/bluetooth/BluetoothPbap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothPbap$ServiceListener;)V

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapService:Landroid/bluetooth/BluetoothPbap;
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1302(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;

    .line 243
    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x1

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapServiceConnected:Z
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1402(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 247
    monitor-exit v0

    .line 248
    return-void

    .line 247
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
    .line 250
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapServiceConnected:Z
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1402(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 252
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
