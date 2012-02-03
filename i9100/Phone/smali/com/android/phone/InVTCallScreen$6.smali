.class Lcom/android/phone/InVTCallScreen$6;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/bluetooth/BluetoothHeadset$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;

.field final synthetic val$app:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1961
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-object p2, p0, Lcom/android/phone/InVTCallScreen$6;->val$app:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1965
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5300(Lcom/android/phone/InVTCallScreen;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1966
    .local v0, headset:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$6;->val$app:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1970
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5300(Lcom/android/phone/InVTCallScreen;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1971
    const-string v1, "InVTCallScreen"

    const-string v2, "Oncreate: Bluetooth is not connected and switching on the speaker. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v3, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1973
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1974
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1978
    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 1981
    const-string v0, "InVTCallScreen"

    const-string v1, "Oncreate: Bluetooth is disconnected . "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    return-void
.end method
