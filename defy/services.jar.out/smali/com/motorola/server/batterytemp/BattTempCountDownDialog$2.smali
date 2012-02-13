.class Lcom/motorola/server/batterytemp/BattTempCountDownDialog$2;
.super Landroid/os/CountDownTimer;
.source "BattTempCountDownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;


# direct methods
.method constructor <init>(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$2;->this$0:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$2;->this$0:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    const v2, 0x1020268

    invoke-virtual {v1, v2}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, countDownText:Landroid/widget/TextView;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$2;->this$0:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    #getter for: Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->mTempService:Lcom/motorola/server/batterytemp/BatteryTempService;
    invoke-static {v1}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->access$400(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)Lcom/motorola/server/batterytemp/BatteryTempService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/server/batterytemp/BatteryTempService;->setCooldownModeEnabled(Z)V

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$2;->this$0:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    #calls: Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->showCooldownMode()V
    invoke-static {v1}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->access$500(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)V

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$2;->this$0:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    #calls: Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->destroyDialog()V
    invoke-static {v1}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->access$300(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)V

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$2;->this$0:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->countDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v1, v2}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->access$202(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    monitor-exit p0

    return-void

    .end local v0           #countDownText:Landroid/widget/TextView;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTick(J)V
    .locals 3
    .parameter "millisUntilFinished"

    .prologue
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$2;->this$0:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    const v2, 0x1020268

    invoke-virtual {v1, v2}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, countDownText:Landroid/widget/TextView;
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
