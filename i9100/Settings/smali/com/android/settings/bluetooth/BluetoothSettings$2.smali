.class Lcom/android/settings/bluetooth/BluetoothSettings$2;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;->onMotionScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .parameter "motionEvent"

    .prologue
    .line 589
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 603
    :goto_0
    return-void

    .line 591
    :pswitch_0
    const-string v0, "BluetoothSettings"

    const-string v1, "Shake Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$100(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    goto :goto_0

    .line 589
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method
