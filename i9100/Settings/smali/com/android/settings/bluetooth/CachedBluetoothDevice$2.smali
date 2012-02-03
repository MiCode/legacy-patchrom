.class Lcom/android/settings/bluetooth/CachedBluetoothDevice$2;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/CachedBluetoothDevice;->askDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$2;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$2;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$2;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 423
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$2;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto :goto_0
.end method
