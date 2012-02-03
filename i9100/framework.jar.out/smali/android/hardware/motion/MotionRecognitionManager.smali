.class public Landroid/hardware/motion/MotionRecognitionManager;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_MOTION_RECOGNITION_EVENT:Ljava/lang/String; = "android.hardware.motion.MOTION_RECOGNITION_EVENT"

.field public static final MOTION_SENSOR_NUM:I = 0x2

.field public static final MOTION_USE_ACC:I = 0x1

.field public static final MOTION_USE_ALL:I = 0x3

.field public static final MOTION_USE_GYRO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionManager"

.field private static final localLOGV:Z


# instance fields
.field mMainLooper:Landroid/os/Looper;

.field private motionService:Landroid/hardware/motion/IMotionRecognitionService;

.field private final sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "mainLooper"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    .line 36
    const-string/jumbo v0, "motion_recognition"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    .line 38
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    .line 39
    return-void
.end method

.method public static isValidMotionSensor(I)Z
    .locals 2
    .parameter "motion_sensor"

    .prologue
    const/4 v1, 0x1

    .line 122
    if-eq p0, v1, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public registerListener(Landroid/hardware/motion/MRListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 44
    return-void
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;I)V
    .locals 1
    .parameter "listener"
    .parameter "motion_sensors"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 52
    return-void
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
    .locals 8
    .parameter "listener"
    .parameter "motion_sensors"
    .parameter "handler"

    .prologue
    const-string v4, "MotionRecognitionManager"

    .line 55
    and-int/lit8 p2, p2, 0x3

    .line 56
    and-int/lit8 v4, p2, 0x3

    if-nez v4, :cond_0

    .line 57
    const/4 p2, 0x1

    .line 59
    :cond_0
    if-eqz p1, :cond_1

    .line 60
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 61
    .local v3, size:I
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v4

    .line 62
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 63
    :try_start_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 64
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v5

    if-ne v5, p1, :cond_2

    .line 65
    const-string v5, "MotionRecognitionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  .registerListener : fail. already registered / listener count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    monitor-exit v4

    .line 81
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    :cond_1
    :goto_1
    return-void

    .line 62
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_3
    new-instance v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 71
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v5, v2, p2}, Landroid/hardware/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    :goto_2
    :try_start_2
    monitor-exit v4

    goto :goto_1

    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 74
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 75
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "MotionRecognitionManager"

    const-string v6, "RemoteException in registerListener: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;Landroid/os/Handler;)V
    .locals 1
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 48
    return-void
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v1, p1}, Landroid/hardware/motion/IMotionRecognitionService;->setLogPath(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in setLogPath: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/motion/MRListener;)V
    .locals 7
    .parameter "listener"

    .prologue
    .line 84
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v4

    .line 85
    :try_start_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 86
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 87
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 88
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 89
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v5, v2}, Landroid/hardware/motion/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v4

    .line 101
    return-void

    .line 92
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "MotionRecognitionManager"

    const-string v6, "RemoteException in unregisterListener: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 100
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 86
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public useMotionAlways(Landroid/hardware/motion/MRListener;Z)V
    .locals 7
    .parameter "listener"
    .parameter "bUseAlways"

    .prologue
    const-string v4, "MotionRecognitionManager"

    .line 104
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v4

    .line 105
    :try_start_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 106
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 107
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 108
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 110
    :try_start_1
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v5, v2, p2}, Landroid/hardware/motion/IMotionRecognitionService;->useMotionAlways(Landroid/os/IBinder;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :goto_1
    :try_start_2
    monitor-exit v4

    .line 119
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :goto_2
    return-void

    .line 111
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "MotionRecognitionManager"

    const-string v6, "RemoteException in useMotionAlways: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 118
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 106
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_1
    :try_start_3
    const-string v5, "MotionRecognitionManager"

    const-string v6, "  .useMotionAlways : listener has to be registered first"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
