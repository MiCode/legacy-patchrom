.class final Landroid/hardware/motion/MotionRecognitionService$Listener;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field final mMotionSensors:I

.field final mToken:Landroid/os/IBinder;

.field mUseAlways:Z

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/IBinder;I)V
    .locals 1
    .parameter
    .parameter "token"
    .parameter "motion_sensors"

    .prologue
    .line 728
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-object p2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    .line 730
    iput p3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    .line 731
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mUseAlways:Z

    .line 732
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 734
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 735
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 736
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .binderDied : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v3, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 738
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 740
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->disableUnusedSensors()V
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;)V

    .line 741
    monitor-exit v0

    .line 742
    return-void

    .line 741
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public callback(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .parameter "motionEvent"

    .prologue
    .line 745
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    .line 747
    .local v1, motion:I
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 763
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 764
    .local v0, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v0, p1}, Landroid/hardware/motion/IMotionRecognitionCallback;->motionCallback(Landroid/hardware/motion/MREvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_0
    return-void

    .line 752
    :sswitch_0
    iget v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    .line 757
    :sswitch_1
    iget v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v2

    goto :goto_0

    .line 747
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x3d -> :sswitch_1
        0x43 -> :sswitch_1
    .end sparse-switch
.end method
