.class Lcom/motorola/server/batterytemp/BatteryTempPolicy$1;
.super Landroid/os/Handler;
.source "BatteryTempPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/batterytemp/BatteryTempPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/batterytemp/BatteryTempPolicy;


# direct methods
.method constructor <init>(Lcom/motorola/server/batterytemp/BatteryTempPolicy;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy$1;->this$0:Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy$1;->this$0:Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryTempNormal(I)V
    invoke-static {v0, v1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->access$000(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy$1;->this$0:Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryTempAlertCharging(I)V
    invoke-static {v0, v1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->access$100(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy$1;->this$0:Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryTempAlertNoCharging(I)V
    invoke-static {v0, v1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->access$200(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy$1;->this$0:Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryCooldownMode(I)V
    invoke-static {v0, v1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->access$300(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
