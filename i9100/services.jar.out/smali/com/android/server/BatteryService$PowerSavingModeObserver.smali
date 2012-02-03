.class Lcom/android/server/BatteryService$PowerSavingModeObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerSavingModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 1
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/BatteryService$PowerSavingModeObserver;->this$0:Lcom/android/server/BatteryService;

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 163
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/server/BatteryService$PowerSavingModeObserver;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, p0, Lcom/android/server/BatteryService$PowerSavingModeObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_battery_level"

    const/16 v3, 0x32

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/server/BatteryService;->mPowerSavingModeLevel:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$302(Lcom/android/server/BatteryService;I)I

    .line 170
    iget-object v0, p0, Lcom/android/server/BatteryService$PowerSavingModeObserver;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, p0, Lcom/android/server/BatteryService$PowerSavingModeObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "new_power_saving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_0

    move v1, v5

    :goto_0
    #setter for: Lcom/android/server/BatteryService;->mIsPowerSavingModeEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$502(Lcom/android/server/BatteryService;Z)Z

    .line 171
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Power saving mode level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$PowerSavingModeObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mPowerSavingModeLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is Power saving mode enabled? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$PowerSavingModeObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mIsPowerSavingModeEnabled:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/server/BatteryService$PowerSavingModeObserver;->this$0:Lcom/android/server/BatteryService;

    #calls: Lcom/android/server/BatteryService;->notifyIfPowerSavingMode()V
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)V

    .line 175
    return-void

    :cond_0
    move v1, v4

    .line 170
    goto :goto_0
.end method
