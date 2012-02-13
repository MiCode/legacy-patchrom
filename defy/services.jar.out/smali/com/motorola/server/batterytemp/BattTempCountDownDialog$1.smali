.class Lcom/motorola/server/batterytemp/BattTempCountDownDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "BattTempCountDownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/batterytemp/BattTempCountDownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;


# direct methods
.method constructor <init>(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$1;->this$0:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_TEMP_NORMAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$1;->this$0:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    #getter for: Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->access$100(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$1;->this$0:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    #getter for: Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->access$000(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$1;->this$0:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    #getter for: Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->countDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v1}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->access$200(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)Landroid/os/CountDownTimer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$1;->this$0:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    #getter for: Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->countDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v1}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->access$200(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)Landroid/os/CountDownTimer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$1;->this$0:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    #calls: Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->destroyDialog()V
    invoke-static {v1}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->access$300(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)V

    monitor-exit p0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
