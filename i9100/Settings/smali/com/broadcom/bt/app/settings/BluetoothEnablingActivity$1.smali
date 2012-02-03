.class Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity$1;
.super Landroid/os/Handler;
.source "BluetoothEnablingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 115
    :pswitch_0
    const-string v0, "BluetoothEnablingActivity"

    const-string v1, "********************Timed out when attempting to turn on Bluetooth\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->finish()V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
