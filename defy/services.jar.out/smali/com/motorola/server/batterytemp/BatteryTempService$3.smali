.class Lcom/motorola/server/batterytemp/BatteryTempService$3;
.super Ljava/lang/Object;
.source "BatteryTempService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/server/batterytemp/BatteryTempService;->showTempOKDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/batterytemp/BatteryTempService;


# direct methods
.method constructor <init>(Lcom/motorola/server/batterytemp/BatteryTempService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/server/batterytemp/BatteryTempService$3;->this$0:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService$3;->this$0:Lcom/motorola/server/batterytemp/BatteryTempService;

    #getter for: Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;
    invoke-static {v0}, Lcom/motorola/server/batterytemp/BatteryTempService;->access$000(Lcom/motorola/server/batterytemp/BatteryTempService;)Lcom/motorola/server/BeepSoundService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService$3;->this$0:Lcom/motorola/server/batterytemp/BatteryTempService;

    #getter for: Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;
    invoke-static {v0}, Lcom/motorola/server/batterytemp/BatteryTempService;->access$000(Lcom/motorola/server/batterytemp/BatteryTempService;)Lcom/motorola/server/BeepSoundService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/server/BeepSoundService;->isThreadNotRun()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService$3;->this$0:Lcom/motorola/server/batterytemp/BatteryTempService;

    #getter for: Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;
    invoke-static {v0}, Lcom/motorola/server/batterytemp/BatteryTempService;->access$000(Lcom/motorola/server/batterytemp/BatteryTempService;)Lcom/motorola/server/BeepSoundService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/server/BeepSoundService;->stopThread()V

    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService$3;->this$0:Lcom/motorola/server/batterytemp/BatteryTempService;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;
    invoke-static {v0, v1}, Lcom/motorola/server/batterytemp/BatteryTempService;->access$002(Lcom/motorola/server/batterytemp/BatteryTempService;Lcom/motorola/server/BeepSoundService;)Lcom/motorola/server/BeepSoundService;

    :cond_0
    return-void
.end method
