.class public Landroid/media/audiofx/AudioEffect;
.super Ljava/lang/Object;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/AudioEffect$NativeEventHandler;,
        Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$Descriptor;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final ACTION_DISPLAY_AUDIO_EFFECT_CONTROL_PANEL:Ljava/lang/String; = "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

.field public static final ACTION_OPEN_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final ALREADY_EXISTS:I = -0x2

.field public static final CONTENT_TYPE_GAME:I = 0x2

.field public static final CONTENT_TYPE_MOVIE:I = 0x1

.field public static final CONTENT_TYPE_MUSIC:I = 0x0

.field public static final CONTENT_TYPE_VOICE:I = 0x3

.field public static final EFFECT_AUXILIARY:Ljava/lang/String; = "Auxiliary"

.field public static final EFFECT_INSERT:Ljava/lang/String; = "Insert"

.field public static final EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID; = null

.field public static final EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID; = null

.field public static final EFFECT_TYPE_EQUALIZER:Ljava/util/UUID; = null

.field public static final EFFECT_TYPE_NULL:Ljava/util/UUID; = null

.field public static final EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID; = null

.field public static final EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID; = null

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final ERROR_INVALID_OPERATION:I = -0x5

.field public static final ERROR_NO_INIT:I = -0x3

.field public static final ERROR_NO_MEMORY:I = -0x6

.field public static final EXTRA_AUDIO_SESSION:Ljava/lang/String; = "android.media.extra.AUDIO_SESSION"

.field public static final EXTRA_CONTENT_TYPE:Ljava/lang/String; = "android.media.extra.CONTENT_TYPE"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.media.extra.PACKAGE_NAME"

.field public static final NATIVE_EVENT_CONTROL_STATUS:I = 0x0

.field public static final NATIVE_EVENT_ENABLED_STATUS:I = 0x1

.field public static final NATIVE_EVENT_PARAMETER_CHANGED:I = 0x2

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioEffect-JAVA"


# instance fields
.field private mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

.field private mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

.field private mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

.field private mId:I

.field private mJniData:I

.field public final mListenerLock:Ljava/lang/Object;

.field private mNativeAudioEffect:I

.field public mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

.field private mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_init()V

    .line 80
    const-string v0, "c2e5d5f0-94bd-4763-9cac-4e234d06839e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

    .line 86
    const-string v0, "47382d60-ddd8-11db-bf3a-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

    .line 92
    const-string v0, "0bed4300-ddd6-11db-8f34-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    .line 98
    const-string v0, "0634f220-ddd4-11db-a0fc-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

    .line 104
    const-string v0, "37cc2c00-dddd-11db-8577-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    .line 111
    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;II)V
    .locals 10
    .parameter "type"
    .parameter "uuid"
    .parameter "priority"
    .parameter "audioSession"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput v9, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 257
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    .line 277
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 283
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 289
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 294
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    .line 299
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    .line 341
    new-array v6, v2, [I

    .line 342
    .local v6, id:[I
    new-array v7, v2, [Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 344
    .local v7, desc:[Landroid/media/audiofx/AudioEffect$Descriptor;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Landroid/media/audiofx/AudioEffect;->native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;)I

    move-result v8

    .line 347
    .local v8, initResult:I
    if-eqz v8, :cond_0

    const/4 v0, -0x2

    if-eq v8, v0, :cond_0

    .line 348
    const-string v0, "AudioEffect-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing AudioEffect."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    packed-switch v8, :pswitch_data_0

    .line 358
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot initialize effect engine for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Effect library not loaded"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    aget v0, v6, v9

    iput v0, p0, Landroid/media/audiofx/AudioEffect;->mId:I

    .line 364
    aget-object v0, v7, v9

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 365
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 367
    monitor-exit v0

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 350
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    return-object v0
.end method

.method private createNativeEventHandler()V
    .locals 2

    .prologue
    .line 857
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 858
    new-instance v1, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    .line 864
    :goto_0
    return-void

    .line 859
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 860
    new-instance v1, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_0

    .line 862
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_0
.end method

.method private final native native_command(II[B[I[B)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getEnabled()Z
.end method

.method private final native native_getParameter(I[B[I[B)I
.end method

.method private final native native_hasControl()Z
.end method

.method private static final native native_init()V
.end method

.method private static native native_query_effects()[Ljava/lang/Object;
.end method

.method private final native native_release()V
.end method

.method private final native native_setEnabled(Z)I
.end method

.method private final native native_setParameter(I[BI[B)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "effect_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1113
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/AudioEffect;

    .line 1114
    .local v0, effect:Landroid/media/audiofx/AudioEffect;
    if-nez v0, :cond_1

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-eqz v2, :cond_0

    .line 1118
    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1120
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-virtual {v2, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1

    .prologue
    .line 410
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_query_effects()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method


# virtual methods
.method public byteArrayToInt([B)I
    .locals 1
    .parameter "valueBuf"

    .prologue
    .line 1193
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v0

    return v0
.end method

.method public byteArrayToInt([BI)I
    .locals 2
    .parameter "valueBuf"
    .parameter "offset"

    .prologue
    .line 1201
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1202
    .local v0, converter:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1203
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public byteArrayToShort([B)S
    .locals 1
    .parameter "valueBuf"

    .prologue
    .line 1221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v0

    return v0
.end method

.method public byteArrayToShort([BI)S
    .locals 2
    .parameter "valueBuf"
    .parameter "offset"

    .prologue
    .line 1228
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1229
    .local v0, converter:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1230
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1
.end method

.method public checkState(Ljava/lang/String;)V
    .locals 4
    .parameter "methodName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1163
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1164
    :try_start_0
    iget v1, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1165
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " called on uninitialized AudioEffect."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1169
    return-void
.end method

.method public checkStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 1175
    packed-switch p1, :pswitch_data_0

    .line 1185
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AudioEffect: set/get parameter error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1179
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AudioEffect: bad parameter value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1182
    :pswitch_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "AudioEffect: invalid parameter operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :pswitch_3
    return-void

    .line 1175
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public command(I[B[B)I
    .locals 9
    .parameter "cmdCode"
    .parameter "command"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 748
    const-string v0, "command()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 749
    const/4 v0, 0x1

    new-array v4, v0, [I

    .line 750
    .local v4, replySize:[I
    array-length v0, p3

    aput v0, v4, v8

    .line 752
    array-length v2, p2

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/AudioEffect;->native_command(II[B[I[B)I

    move-result v7

    .line 755
    .local v7, status:I
    array-length v0, p3

    aget v1, v4, v8

    if-le v0, v1, :cond_0

    .line 756
    aget v0, v4, v8

    new-array v6, v0, [B

    .line 757
    .local v6, resizedReply:[B
    aget v0, v4, v8

    invoke-static {p3, v8, v6, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 758
    move-object p3, v6

    .line 760
    .end local v6           #resizedReply:[B
    :cond_0
    return v7
.end method

.method public varargs concatArrays([[B)[B
    .locals 9
    .parameter "arrays"

    .prologue
    .line 1249
    const/4 v4, 0x0

    .line 1250
    .local v4, len:I
    move-object v1, p1

    .local v1, arr$:[[B
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    .line 1251
    .local v0, a:[B
    array-length v7, v0

    add-int/2addr v4, v7

    .line 1250
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1253
    .end local v0           #a:[B
    :cond_0
    new-array v2, v4, [B

    .line 1255
    .local v2, b:[B
    const/4 v6, 0x0

    .line 1256
    .local v6, offs:I
    move-object v1, p1

    array-length v5, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 1257
    .restart local v0       #a:[B
    const/4 v7, 0x0

    array-length v8, v0

    invoke-static {v0, v7, v2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1258
    array-length v7, v0

    add-int/2addr v6, v7

    .line 1256
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1260
    .end local v0           #a:[B
    :cond_1
    return-object v2
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_finalize()V

    .line 385
    return-void
.end method

.method public getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 394
    const-string v0, "getDescriptor()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 787
    const-string v0, "getEnabled()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 788
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_getEnabled()Z

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 776
    const-string v0, "getId()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 777
    iget v0, p0, Landroid/media/audiofx/AudioEffect;->mId:I

    return v0
.end method

.method public getParameter(I[B)I
    .locals 2
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 610
    .local v0, p:[B
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    return v1
.end method

.method public getParameter(I[I)I
    .locals 6
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 622
    array-length v3, p2

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 623
    const/4 v3, -0x4

    .line 635
    :goto_0
    return v3

    .line 625
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 627
    .local v0, p:[B
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x4

    new-array v2, v3, [B

    .line 629
    .local v2, v:[B
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    .line 631
    .local v1, status:I
    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v4

    aput v4, p2, v3

    .line 632
    array-length v3, v2

    if-le v3, v5, :cond_1

    .line 633
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v4

    aput v4, p2, v3

    :cond_1
    move v3, v1

    .line 635
    goto :goto_0
.end method

.method public getParameter(I[S)I
    .locals 6
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 647
    array-length v3, p2

    if-le v3, v5, :cond_0

    .line 648
    const/4 v3, -0x4

    .line 660
    :goto_0
    return v3

    .line 650
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 652
    .local v0, p:[B
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 654
    .local v2, v:[B
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    .line 656
    .local v1, status:I
    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v4

    aput-short v4, p2, v3

    .line 657
    array-length v3, v2

    if-le v3, v5, :cond_1

    .line 658
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v4

    aput-short v4, p2, v3

    :cond_1
    move v3, v1

    .line 660
    goto :goto_0
.end method

.method public getParameter([B[B)I
    .locals 6
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 587
    const-string v3, "getParameter()"

    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 588
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 589
    .local v2, vSize:[I
    array-length v3, p2

    aput v3, v2, v5

    .line 590
    array-length v3, p1

    invoke-direct {p0, v3, p1, v2, p2}, Landroid/media/audiofx/AudioEffect;->native_getParameter(I[B[I[B)I

    move-result v1

    .line 591
    .local v1, status:I
    array-length v3, p2

    aget v4, v2, v5

    if-le v3, v4, :cond_0

    .line 592
    aget v3, v2, v5

    new-array v0, v3, [B

    .line 593
    .local v0, resizedValue:[B
    aget v3, v2, v5

    invoke-static {p2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    move-object p2, v0

    .line 596
    .end local v0           #resizedValue:[B
    :cond_0
    return v1
.end method

.method public getParameter([I[B)I
    .locals 6
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 728
    array-length v2, p1

    if-le v2, v5, :cond_0

    .line 729
    const/4 v2, -0x4

    .line 737
    :goto_0
    return v2

    .line 731
    :cond_0
    aget v2, p1, v4

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 732
    .local v0, p:[B
    array-length v2, p1

    if-le v2, v3, :cond_1

    .line 733
    aget v2, p1, v3

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 734
    .local v1, p2:[B
    new-array v2, v5, [[B

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 737
    .end local v1           #p2:[B
    :cond_1
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v2

    goto :goto_0
.end method

.method public getParameter([I[I)I
    .locals 9
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 672
    array-length v4, p1

    if-gt v4, v7, :cond_0

    array-length v4, p2

    if-le v4, v7, :cond_1

    .line 673
    :cond_0
    const/4 v4, -0x4

    .line 688
    :goto_0
    return v4

    .line 675
    :cond_1
    aget v4, p1, v6

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 676
    .local v0, p:[B
    array-length v4, p1

    if-le v4, v5, :cond_2

    .line 677
    aget v4, p1, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 678
    .local v1, p2:[B
    new-array v4, v7, [[B

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 680
    .end local v1           #p2:[B
    :cond_2
    array-length v4, p2

    mul-int/lit8 v4, v4, 0x4

    new-array v3, v4, [B

    .line 682
    .local v3, v:[B
    invoke-virtual {p0, v0, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v2

    .line 684
    .local v2, status:I
    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v4

    aput v4, p2, v6

    .line 685
    array-length v4, v3

    if-le v4, v8, :cond_3

    .line 686
    invoke-virtual {p0, v3, v8}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v4

    aput v4, p2, v5

    :cond_3
    move v4, v2

    .line 688
    goto :goto_0
.end method

.method public getParameter([I[S)I
    .locals 8
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 700
    array-length v4, p1

    if-gt v4, v5, :cond_0

    array-length v4, p2

    if-le v4, v5, :cond_1

    .line 701
    :cond_0
    const/4 v4, -0x4

    .line 716
    :goto_0
    return v4

    .line 703
    :cond_1
    aget v4, p1, v7

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 704
    .local v0, p:[B
    array-length v4, p1

    if-le v4, v6, :cond_2

    .line 705
    aget v4, p1, v6

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 706
    .local v1, p2:[B
    new-array v4, v5, [[B

    aput-object v0, v4, v7

    aput-object v1, v4, v6

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 708
    .end local v1           #p2:[B
    :cond_2
    array-length v4, p2

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 710
    .local v3, v:[B
    invoke-virtual {p0, v0, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v2

    .line 712
    .local v2, status:I
    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v4

    aput-short v4, p2, v7

    .line 713
    array-length v4, v3

    if-le v4, v5, :cond_3

    .line 714
    invoke-virtual {p0, v3, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v4

    aput-short v4, p2, v6

    :cond_3
    move v4, v2

    .line 716
    goto :goto_0
.end method

.method public hasControl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 799
    const-string v0, "hasControl()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 800
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_hasControl()Z

    move-result v0

    return v0
.end method

.method public intToByteArray(I)[B
    .locals 2
    .parameter "value"

    .prologue
    .line 1211
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1212
    .local v0, converter:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1213
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1214
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_0
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_release()V

    .line 378
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 379
    monitor-exit v0

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setControlStatusListener(Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 828
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 829
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 830
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_0

    .line 832
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    .line 834
    :cond_0
    return-void

    .line 830
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setEnableStatusListener(Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 813
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 814
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 815
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_0

    .line 817
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    .line 819
    :cond_0
    return-void

    .line 815
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setEnabled(Z)I
    .locals 1
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 430
    const-string/jumbo v0, "setEnabled()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0, p1}, Landroid/media/audiofx/AudioEffect;->native_setEnabled(Z)I

    move-result v0

    return v0
.end method

.method public setParameter(II)I
    .locals 3
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 465
    .local v0, p:[B
    invoke-virtual {p0, p2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 466
    .local v1, v:[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method

.method public setParameter(IS)I
    .locals 3
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 479
    .local v0, p:[B
    invoke-virtual {p0, p2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v1

    .line 480
    .local v1, v:[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method

.method public setParameter(I[B)I
    .locals 2
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 493
    .local v0, p:[B
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v1

    return v1
.end method

.method public setParameter([B[B)I
    .locals 2
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 453
    const-string/jumbo v0, "setParameter()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 454
    array-length v0, p1

    array-length v1, p2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_setParameter(I[BI[B)I

    move-result v0

    return v0
.end method

.method public setParameter([I[B)I
    .locals 6
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 556
    array-length v2, p1

    if-le v2, v5, :cond_0

    .line 557
    const/4 v2, -0x4

    .line 564
    :goto_0
    return v2

    .line 559
    :cond_0
    aget v2, p1, v4

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 560
    .local v0, p:[B
    array-length v2, p1

    if-le v2, v3, :cond_1

    .line 561
    aget v2, p1, v3

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 562
    .local v1, p2:[B
    new-array v2, v5, [[B

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 564
    .end local v1           #p2:[B
    :cond_1
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    goto :goto_0
.end method

.method public setParameter([I[I)I
    .locals 8
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 505
    array-length v4, p1

    if-gt v4, v7, :cond_0

    array-length v4, p2

    if-le v4, v7, :cond_1

    .line 506
    :cond_0
    const/4 v4, -0x4

    .line 518
    :goto_0
    return v4

    .line 508
    :cond_1
    aget v4, p1, v6

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 509
    .local v0, p:[B
    array-length v4, p1

    if-le v4, v5, :cond_2

    .line 510
    aget v4, p1, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 511
    .local v1, p2:[B
    new-array v4, v7, [[B

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 513
    .end local v1           #p2:[B
    :cond_2
    aget v4, p2, v6

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 514
    .local v2, v:[B
    array-length v4, p2

    if-le v4, v5, :cond_3

    .line 515
    aget v4, p2, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 516
    .local v3, v2:[B
    new-array v4, v7, [[B

    aput-object v2, v4, v6

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 518
    .end local v3           #v2:[B
    :cond_3
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v4

    goto :goto_0
.end method

.method public setParameter([I[S)I
    .locals 8
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 530
    array-length v4, p1

    if-gt v4, v7, :cond_0

    array-length v4, p2

    if-le v4, v7, :cond_1

    .line 531
    :cond_0
    const/4 v4, -0x4

    .line 544
    :goto_0
    return v4

    .line 533
    :cond_1
    aget v4, p1, v6

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 534
    .local v0, p:[B
    array-length v4, p1

    if-le v4, v5, :cond_2

    .line 535
    aget v4, p1, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 536
    .local v1, p2:[B
    new-array v4, v7, [[B

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 539
    .end local v1           #p2:[B
    :cond_2
    aget-short v4, p2, v6

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v2

    .line 540
    .local v2, v:[B
    array-length v4, p2

    if-le v4, v5, :cond_3

    .line 541
    aget-short v4, p2, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v3

    .line 542
    .local v3, v2:[B
    new-array v4, v7, [[B

    aput-object v2, v4, v6

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 544
    .end local v3           #v2:[B
    :cond_3
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v4

    goto :goto_0
.end method

.method public setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 843
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 844
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 845
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_0

    .line 847
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    .line 849
    :cond_0
    return-void

    .line 845
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public shortToByteArray(S)[B
    .locals 3
    .parameter "value"

    .prologue
    .line 1238
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1239
    .local v0, converter:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1240
    move v1, p1

    .line 1241
    .local v1, sValue:S
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1242
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method
