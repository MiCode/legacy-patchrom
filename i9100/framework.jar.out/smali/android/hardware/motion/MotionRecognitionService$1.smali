.class Landroid/hardware/motion/MotionRecognitionService$1;
.super Landroid/content/BroadcastReceiver;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "MotionRecognitionService"

    .line 83
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$000(Landroid/hardware/motion/MotionRecognitionService;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->finalizeIfPossible()V
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$100(Landroid/hardware/motion/MotionRecognitionService;)V

    goto :goto_0

    .line 87
    :cond_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    const-string v1, "MotionRecognitionService"

    const-string v1, "  mReceiver.onReceive : ACTION_BOOT_COMPLETED"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/hardware/motion/MotionRecognitionService;->mBootCompeleted:Z

    .line 90
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$000(Landroid/hardware/motion/MotionRecognitionService;)V

    goto :goto_0

    .line 91
    :cond_3
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 94
    :cond_4
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/motion/MotionRecognitionService;->mPowerTime:J

    goto :goto_0

    .line 95
    :cond_5
    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "isEnable"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 97
    .local v0, isEnable:Z
    const-string v1, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mReceiver.onReceive : ACTION_MIOTINOS_SETTINGS_CHANGED - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz v0, :cond_6

    .line 99
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$000(Landroid/hardware/motion/MotionRecognitionService;)V

    goto/16 :goto_0

    .line 101
    :cond_6
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$200(Landroid/hardware/motion/MotionRecognitionService;)V

    goto/16 :goto_0
.end method
