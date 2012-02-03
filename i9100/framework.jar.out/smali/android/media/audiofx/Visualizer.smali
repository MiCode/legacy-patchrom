.class public Landroid/media/audiofx/Visualizer;
.super Ljava/lang/Object;
.source "Visualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Visualizer$NativeEventHandler;,
        Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    }
.end annotation


# static fields
.field public static final ALREADY_EXISTS:I = -0x2

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final ERROR_INVALID_OPERATION:I = -0x5

.field public static final ERROR_NO_INIT:I = -0x3

.field public static final ERROR_NO_MEMORY:I = -0x6

.field private static final NATIVE_EVENT_FFT_CAPTURE:I = 0x1

.field private static final NATIVE_EVENT_PCM_CAPTURE:I = 0x0

.field public static final STATE_ENABLED:I = 0x2

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Visualizer-JAVA"


# instance fields
.field private mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field private mId:I

.field private mJniData:I

.field private final mListenerLock:Ljava/lang/Object;

.field private mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

.field private mNativeVisualizer:I

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Landroid/media/audiofx/Visualizer;->native_init()V

    .line 67
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .parameter "audioSession"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 132
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    .line 141
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    .line 145
    iput-object v4, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    .line 149
    iput-object v4, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 170
    new-array v0, v3, [I

    .line 172
    .local v0, id:[I
    iget-object v2, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 173
    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 175
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v3, p1, v0}, Landroid/media/audiofx/Visualizer;->native_setup(Ljava/lang/Object;I[I)I

    move-result v1

    .line 176
    .local v1, result:I
    if-eqz v1, :cond_0

    const/4 v3, -0x2

    if-eq v1, v3, :cond_0

    .line 177
    const-string v3, "Visualizer-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when initializing Visualizer."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    packed-switch v1, :pswitch_data_0

    .line 182
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot initialize Visualizer engine, error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 192
    .end local v1           #result:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 180
    .restart local v1       #result:I
    :pswitch_0
    :try_start_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Effect library not loaded"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :cond_0
    const/4 v3, 0x0

    aget v3, v0, v3

    iput v3, p0, Landroid/media/audiofx/Visualizer;->mId:I

    .line 187
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    const/4 v3, 0x2

    iput v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 192
    :goto_0
    monitor-exit v2

    .line 193
    return-void

    .line 190
    :cond_1
    const/4 v3, 0x1

    iput v3, p0, Landroid/media/audiofx/Visualizer;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/media/audiofx/Visualizer;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    return-object v0
.end method

.method public static native getCaptureSizeRange()[I
.end method

.method public static native getMaxCaptureRate()I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getCaptureSize()I
.end method

.method private final native native_getEnabled()Z
.end method

.method private final native native_getFft([B)I
.end method

.method private final native native_getSamplingRate()I
.end method

.method private final native native_getWaveForm([B)I
.end method

.method private static final native native_init()V
.end method

.method private final native native_release()V
.end method

.method private final native native_setCaptureSize(I)I
.end method

.method private final native native_setEnabled(Z)I
.end method

.method private final native native_setPeriodicCapture(IZZ)I
.end method

.method private final native native_setup(Ljava/lang/Object;I[I)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "effect_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 530
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiofx/Visualizer;

    .line 531
    .local v1, visu:Landroid/media/audiofx/Visualizer;
    if-nez v1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v2, v1, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    if-eqz v2, :cond_0

    .line 536
    iget-object v2, v1, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/audiofx/Visualizer$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 537
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    invoke-virtual {v2, v0}, Landroid/media/audiofx/Visualizer$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_finalize()V

    .line 209
    return-void
.end method

.method public getCaptureSize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v1, :cond_0

    .line 293
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCaptureSize() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 295
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getCaptureSize()I

    move-result v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public getEnabled()Z
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEnabled() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 246
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getEnabled()Z

    move-result v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public getFft([B)I
    .locals 4
    .parameter "fft"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_0
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 381
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFft() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 383
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getFft([B)I

    move-result v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public getSamplingRate()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_0
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v1, :cond_0

    .line 307
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSamplingRate() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 309
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getSamplingRate()I

    move-result v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public getWaveForm([B)I
    .locals 4
    .parameter "waveform"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 328
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWaveForm() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 330
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getWaveForm([B)I

    move-result v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_release()V

    .line 202
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 203
    monitor-exit v0

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCaptureSize(I)I
    .locals 4
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 279
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCaptureSize() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 281
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setCaptureSize(I)I

    move-result v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I
    .locals 4
    .parameter "listener"
    .parameter "rate"
    .parameter "waveform"
    .parameter "fft"

    .prologue
    .line 429
    iget-object v2, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 430
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 431
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    if-nez p1, :cond_0

    .line 434
    const/4 p3, 0x0

    .line 435
    const/4 p4, 0x0

    .line 437
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Landroid/media/audiofx/Visualizer;->native_setPeriodicCapture(IZZ)I

    move-result v1

    .line 438
    .local v1, status:I
    if-nez v1, :cond_1

    .line 439
    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    if-nez v2, :cond_1

    .line 441
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_2

    .line 442
    new-instance v2, Landroid/media/audiofx/Visualizer$NativeEventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/media/audiofx/Visualizer$NativeEventHandler;-><init>(Landroid/media/audiofx/Visualizer;Landroid/media/audiofx/Visualizer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    .line 451
    .end local v0           #looper:Landroid/os/Looper;
    :cond_1
    :goto_0
    return v1

    .line 431
    .end local v1           #status:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 443
    .restart local v0       #looper:Landroid/os/Looper;
    .restart local v1       #status:I
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 444
    new-instance v2, Landroid/media/audiofx/Visualizer$NativeEventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/media/audiofx/Visualizer$NativeEventHandler;-><init>(Landroid/media/audiofx/Visualizer;Landroid/media/audiofx/Visualizer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    goto :goto_0

    .line 446
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    .line 447
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public setEnabled(Z)I
    .locals 5
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 220
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    iget v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v2, :cond_0

    .line 222
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEnabled() called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 225
    .local v0, status:I
    if-eqz p1, :cond_1

    :try_start_1
    iget v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eq v2, v3, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-ne v2, v4, :cond_3

    .line 227
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setEnabled(Z)I

    move-result v0

    .line 228
    if-nez v0, :cond_3

    .line 229
    if-eqz p1, :cond_4

    move v2, v4

    :goto_0
    iput v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 232
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :cond_4
    move v2, v3

    .line 229
    goto :goto_0
.end method
