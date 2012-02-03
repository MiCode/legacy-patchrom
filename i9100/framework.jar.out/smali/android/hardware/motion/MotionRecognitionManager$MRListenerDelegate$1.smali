.class Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate$1;
.super Landroid/os/Handler;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

.field final synthetic val$this$0:Landroid/hardware/motion/MotionRecognitionManager;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;Landroid/os/Looper;Landroid/hardware/motion/MotionRecognitionManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate$1;->this$1:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    iput-object p3, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate$1;->val$this$0:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 147
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate$1;->this$1:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    #getter for: Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->access$000(Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/motion/MREvent;

    .line 149
    .local v0, motionEvent:Landroid/hardware/motion/MREvent;
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate$1;->this$1:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    #getter for: Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->access$000(Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/hardware/motion/MRListener;->onMotionListener(Landroid/hardware/motion/MREvent;)V

    .line 151
    .end local v0           #motionEvent:Landroid/hardware/motion/MREvent;
    :cond_0
    return-void
.end method
