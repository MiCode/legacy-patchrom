.class final Lcom/android/server/Watchdog$RebootRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RebootRequestReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "c"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    const-string v1, "nowait"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, v0, Lcom/android/server/Watchdog;->mReqRebootNoWait:Z

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    const-string v1, "interval"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    const-string v1, "startTime"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    const-string v1, "window"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    const-string v1, "minScreenOff"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    const-string v1, "minNextAlarm"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    const-string v1, "recheckInterval"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    const/16 v0, 0xafb

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    iget-boolean v2, v2, Lcom/android/server/Watchdog;->mReqRebootNoWait:Z

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    iget v2, v2, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    iget v3, v3, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    iget v3, v3, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    iget v3, v3, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    iget v3, v3, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    iget v3, v3, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    invoke-virtual {v0, v4}, Lcom/android/server/Watchdog;->checkReboot(Z)V

    return-void

    :cond_0
    move v1, v3

    goto/16 :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method
