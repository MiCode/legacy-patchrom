.class Lcom/android/server/FMRadioService$11;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 450
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, action:Ljava/lang/String;
    const/4 v4, 0x1

    .line 456
    .local v4, mLowBatteryWarningLevel:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FMRadioService:mLowBatteryReceiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Low batteryWarning Level :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 470
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 471
    const-string v5, "status"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 472
    .local v3, battStatus:I
    const-string v5, "scale"

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 473
    .local v2, battScale:I
    const-string v5, "level"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 474
    .local v1, battLevel:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 475
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 477
    if-gt v1, v4, :cond_1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    .line 478
    iget-object v5, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    #setter for: Lcom/android/server/FMRadioService;->mIsBatteryLow:Z
    invoke-static {v5, v7}, Lcom/android/server/FMRadioService;->access$1902(Lcom/android/server/FMRadioService;Z)Z

    .line 479
    iget-object v5, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$400(Lcom/android/server/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 480
    iget-object v5, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    const/4 v6, 0x7

    #calls: Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z
    invoke-static {v5, v7, v6, v7}, Lcom/android/server/FMRadioService;->access$500(Lcom/android/server/FMRadioService;ZIZ)Z

    .line 485
    .end local v1           #battLevel:I
    .end local v2           #battScale:I
    .end local v3           #battStatus:I
    :cond_0
    :goto_0
    return-void

    .line 482
    .restart local v1       #battLevel:I
    .restart local v2       #battScale:I
    .restart local v3       #battStatus:I
    :cond_1
    iget-object v5, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/FMRadioService;->mIsBatteryLow:Z
    invoke-static {v5, v6}, Lcom/android/server/FMRadioService;->access$1902(Lcom/android/server/FMRadioService;Z)Z

    goto :goto_0
.end method
