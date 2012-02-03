.class final Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;
.super Landroid/os/Handler;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method public constructor <init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 771
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    .line 772
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 773
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 777
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/motion/MREvent;

    .line 779
    .local v2, motionEvent:Landroid/hardware/motion/MREvent;
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v3, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 780
    :try_start_0
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v4, v4, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 781
    .local v1, l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    invoke-virtual {v1, v2}, Landroid/hardware/motion/MotionRecognitionService$Listener;->callback(Landroid/hardware/motion/MREvent;)V

    goto :goto_0

    .line 786
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 784
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v4, v4, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    invoke-virtual {v4, v2}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->recycle(Landroid/hardware/motion/MREvent;)V

    .line 785
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v4, v4, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 786
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    return-void
.end method
