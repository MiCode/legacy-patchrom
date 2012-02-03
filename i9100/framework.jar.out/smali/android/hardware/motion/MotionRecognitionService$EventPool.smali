.class final Landroid/hardware/motion/MotionRecognitionService$EventPool;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EventPool"
.end annotation


# static fields
.field static final POOL_SIZE:I = 0xa


# instance fields
.field events:[Landroid/hardware/motion/MREvent;

.field mLockEventPool:Ljava/lang/Object;

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method public constructor <init>(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xa

    .line 796
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->mLockEventPool:Ljava/lang/Object;

    .line 798
    new-array v1, v3, [Landroid/hardware/motion/MREvent;

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->events:[Landroid/hardware/motion/MREvent;

    .line 800
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 801
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->events:[Landroid/hardware/motion/MREvent;

    new-instance v2, Landroid/hardware/motion/MREvent;

    invoke-direct {v2}, Landroid/hardware/motion/MREvent;-><init>()V

    aput-object v2, v1, v0

    .line 800
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    :cond_0
    return-void
.end method


# virtual methods
.method public obtain()Landroid/hardware/motion/MREvent;
    .locals 5

    .prologue
    .line 806
    const/4 v1, 0x0

    .line 807
    .local v1, motionEvent:Landroid/hardware/motion/MREvent;
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->mLockEventPool:Ljava/lang/Object;

    monitor-enter v2

    .line 808
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 809
    :try_start_0
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->events:[Landroid/hardware/motion/MREvent;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 810
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->events:[Landroid/hardware/motion/MREvent;

    aget-object v1, v3, v0

    .line 811
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->events:[Landroid/hardware/motion/MREvent;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 815
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    if-nez v1, :cond_1

    .line 817
    new-instance v1, Landroid/hardware/motion/MREvent;

    .end local v1           #motionEvent:Landroid/hardware/motion/MREvent;
    invoke-direct {v1}, Landroid/hardware/motion/MREvent;-><init>()V

    .line 819
    .restart local v1       #motionEvent:Landroid/hardware/motion/MREvent;
    :cond_1
    return-object v1

    .line 808
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public recycle(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .parameter "motionEvent"

    .prologue
    .line 823
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->mLockEventPool:Ljava/lang/Object;

    monitor-enter v1

    .line 824
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 825
    :try_start_0
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->events:[Landroid/hardware/motion/MREvent;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 826
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->events:[Landroid/hardware/motion/MREvent;

    aput-object p1, v2, v0

    .line 830
    :cond_0
    monitor-exit v1

    .line 831
    return-void

    .line 824
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 830
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
