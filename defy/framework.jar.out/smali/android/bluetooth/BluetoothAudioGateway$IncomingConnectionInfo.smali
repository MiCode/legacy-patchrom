.class public Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
.super Ljava/lang/Object;
.source "BluetoothAudioGateway.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAudioGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IncomingConnectionInfo"
.end annotation


# instance fields
.field public mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field public mRfcommChan:I

.field public mSocketFd:I

.field final synthetic this$0:Landroid/bluetooth/BluetoothAudioGateway;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAudioGateway;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter
    .parameter "adapter"
    .parameter "remoteDevice"
    .parameter "socketFd"
    .parameter "rfcommChan"

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p3, p0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput p4, p0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iput p5, p0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    return-void
.end method
