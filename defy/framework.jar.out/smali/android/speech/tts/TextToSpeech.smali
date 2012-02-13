.class public Landroid/speech/tts/TextToSpeech;
.super Ljava/lang/Object;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$Engine;,
        Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;,
        Landroid/speech/tts/TextToSpeech$OnInitListener;
    }
.end annotation


# static fields
.field public static final ACTION_TTS_QUEUE_PROCESSING_COMPLETED:Ljava/lang/String; = "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

.field public static final ERROR:I = -0x1

.field public static final LANG_AVAILABLE:I = 0x0

.field public static final LANG_COUNTRY_AVAILABLE:I = 0x1

.field public static final LANG_COUNTRY_VAR_AVAILABLE:I = 0x2

.field public static final LANG_MISSING_DATA:I = -0x1

.field public static final LANG_NOT_SUPPORTED:I = -0x2

.field public static final QUEUE_ADD:I = 0x1

.field public static final QUEUE_FLUSH:I

.field public static final SUCCESS:I


# instance fields
.field private mCachedParams:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mITts:Landroid/speech/tts/ITts;

.field private mITtscallback:Landroid/speech/tts/ITtsCallback;

.field private mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mPackageName:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mStartLock:Ljava/lang/Object;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .locals 5
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v3, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    const-string v0, ""

    iput-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const-string v1, "rate"

    aput-object v1, v0, v2

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "language"

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "country"

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "variant"

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "streamType"

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "utteranceId"

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "engine"

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "pitch"

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v3, v0, v1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const-string v1, ""

    aput-object v3, v0, v4

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v3, v0, v1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v3, v0, v1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v3, v0, v1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v3, v0, v1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "100"

    aput-object v2, v0, v1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    return-void
.end method

.method static synthetic access$000(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITts;)Landroid/speech/tts/ITts;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    return-object p1
.end method

.method static synthetic access$202(Landroid/speech/tts/TextToSpeech;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    return p1
.end method

.method static synthetic access$300(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$OnInitListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-object v0
.end method

.method static synthetic access$302(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/speech/tts/TextToSpeech$OnInitListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-object p1
.end method

.method private initTts()V
    .locals 6

    .prologue
    const-string v5, "TextToSpeech.java"

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    new-instance v2, Landroid/speech/tts/TextToSpeech$1;

    invoke-direct {v2, p0}, Landroid/speech/tts/TextToSpeech$1;-><init>(Landroid/speech/tts/TextToSpeech;)V

    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.START_TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.TTS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .local v0, bound:Z
    if-nez v0, :cond_1

    const-string v2, "TextToSpeech.java"

    const-string v2, "initTts() failed to bind to service"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "TextToSpeech.java"

    const-string v2, "initTts() successfully bound to service"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetCachedParams()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x9

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    return-void
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "earcon"
    .parameter "filename"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addEarcon"

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v5

    :goto_0
    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Landroid/speech/tts/ITts;->addEarconFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    monitor-exit v1

    move v1, v4

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    move v1, v5

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_2
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .parameter "earcon"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addEarcon"

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v5

    :goto_0
    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/speech/tts/ITts;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    monitor-exit v1

    move v1, v4

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    move v1, v5

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_2
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "text"
    .parameter "filename"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addSpeech"

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v5

    :goto_0
    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Landroid/speech/tts/ITts;->addSpeechFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    monitor-exit v1

    move v1, v4

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    move v1, v5

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_2
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .parameter "text"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addSpeech"

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v5

    :goto_0
    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/speech/tts/ITts;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    monitor-exit v1

    move v1, v4

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    move v1, v5

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_2
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public areDefaultsEnforced()Z
    .locals 6

    .prologue
    const-string v3, "TextToSpeech.java - areDefaultsEnforced"

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, defaultsEnforced:Z
    :try_start_0
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .end local v0           #defaultsEnforced:Z
    .local v1, defaultsEnforced:I
    :goto_0
    return v1

    .end local v1           #defaultsEnforced:I
    .restart local v0       #defaultsEnforced:Z
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v4}, Landroid/speech/tts/ITts;->areDefaultsEnforced()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v0

    .restart local v1       #defaultsEnforced:I
    goto :goto_0

    .end local v1           #defaultsEnforced:I
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "TextToSpeech.java - areDefaultsEnforced"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2           #e:Landroid/os/RemoteException;
    :goto_1
    move v1, v0

    .restart local v1       #defaultsEnforced:I
    goto :goto_0

    .end local v1           #defaultsEnforced:I
    :catch_1
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v4, "TextToSpeech.java - areDefaultsEnforced"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v3

    goto :goto_1

    .end local v2           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    :catch_2
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v4, "TextToSpeech.java - areDefaultsEnforced"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v3

    goto :goto_1

    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public getDefaultEngine()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v3, "TextToSpeech.java - setEngineByPackageName"

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v1, ""

    .local v1, engineName:Ljava/lang/String;
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    .end local v1           #engineName:Ljava/lang/String;
    .local v2, engineName:Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2           #engineName:Ljava/lang/String;
    .restart local v1       #engineName:Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v4}, Landroid/speech/tts/ITts;->getDefaultEngine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move-object v2, v1

    .end local v1           #engineName:Ljava/lang/String;
    .restart local v2       #engineName:Ljava/lang/String;
    goto :goto_0

    .end local v2           #engineName:Ljava/lang/String;
    .restart local v1       #engineName:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v3

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #engineName:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .restart local v1       #engineName:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v3

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public getLanguage()Ljava/util/Locale;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x3

    const-string v2, "TextToSpeech.java - getLanguage"

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v8

    :goto_0
    return-object v2

    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_2

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v3}, Landroid/speech/tts/ITts;->getLanguage()[Ljava/lang/String;

    move-result-object v1

    .local v1, locStrings:[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-ne v3, v5, :cond_1

    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v8

    goto :goto_0

    .end local v1           #locStrings:[Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v3, Ljava/util/Locale;

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    monitor-exit v2

    move-object v2, v8

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catch_2
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "IllegalStateException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .locals 9
    .parameter "loc"

    .prologue
    const-string v3, "TextToSpeech.java - isLanguageAvailable"

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, -0x2

    .local v1, result:I
    :try_start_0
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/speech/tts/ITts;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v3

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    :catch_1
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v3

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public isSpeaking()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - isSpeaking"

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    :goto_0
    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v2}, Landroid/speech/tts/ITts;->isSpeaking()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    :try_start_2
    monitor-exit v1

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    move v1, v4

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_2
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 8
    .parameter "earcon"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "TextToSpeech.java - playEarcon"

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v2, -0x1

    .local v2, result:I
    :try_start_0
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_0
    if-eqz p3, :cond_2

    :try_start_1
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "streamType"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0x9

    aput-object v1, v5, v6

    :cond_1
    const-string v5, "utteranceId"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_2

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v5, v6

    .end local v1           #extra:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v6, p1, p2, v7}, Landroid/speech/tts/ITts;->playEarcon(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    :try_start_2
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    monitor-exit v4

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    :catch_1
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    monitor-exit v4

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public playSilence(JILjava/util/HashMap;)I
    .locals 11
    .parameter "durationInMs"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p4, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "TextToSpeech.java - playSilence"

    iget-object v10, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v8, -0x1

    .local v8, result:I
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v0, :cond_0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v8

    .end local v8           #result:I
    .local v9, result:I
    :goto_0
    return v9

    .end local v9           #result:I
    .restart local v8       #result:I
    :cond_0
    if-eqz p4, :cond_1

    :try_start_1
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "utteranceId"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, extra:Ljava/lang/String;
    if-eqz v7, :cond_1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object v7, v0, v1

    .end local v7           #extra:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    move-wide v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITts;->playSilence(Ljava/lang/String;JI[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v8

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v9, v8

    .end local v8           #result:I
    .restart local v9       #result:I
    goto :goto_0

    .end local v9           #result:I
    .restart local v8       #result:I
    :catch_0
    move-exception v0

    move-object v6, v0

    .local v6, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v10

    goto :goto_1

    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    move-object v6, v0

    .local v6, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    move-object v6, v0

    .local v6, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "IllegalStateException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v10

    goto :goto_1

    .end local v6           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public setEngineByPackageName(Ljava/lang/String;)I
    .locals 6
    .parameter "enginePackageName"

    .prologue
    const-string v3, "TextToSpeech.java - setEngineByPackageName"

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, -0x1

    .local v1, result:I
    :try_start_0
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v4, p1}, Landroid/speech/tts/ITts;->setEngineByPackageName(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v5, 0xd

    aput-object p1, v4, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v3

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    :catch_1
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v3

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public setLanguage(Ljava/util/Locale;)I
    .locals 10
    .parameter "loc"

    .prologue
    const-string v6, ""

    const-string v6, "TextToSpeech.java - setLanguage"

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v3, -0x2

    .local v3, result:I
    :try_start_0
    iget-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v7, :cond_0

    monitor-exit v6

    move v4, v3

    .end local v3           #result:I
    .local v4, result:I
    :goto_0
    return v4

    .end local v4           #result:I
    .restart local v3       #result:I
    :cond_0
    if-nez p1, :cond_1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v3

    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_0

    .end local v4           #result:I
    .restart local v3       #result:I
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    .local v2, language:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    .local v0, country:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .local v5, variant:Ljava/lang/String;
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v8, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v7, v2, v0, v5, v8}, Landroid/speech/tts/ITts;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v2, v7, v8

    const/4 v7, 0x1

    if-lt v3, v7, :cond_3

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x5

    aput-object v0, v7, v8

    :goto_1
    const/4 v7, 0x2

    if-lt v3, v7, :cond_4

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x7

    aput-object v5, v7, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0           #country:Ljava/lang/String;
    .end local v2           #language:Ljava/lang/String;
    .end local v5           #variant:Ljava/lang/String;
    :goto_3
    move v4, v3

    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_0

    .end local v4           #result:I
    .restart local v0       #country:Ljava/lang/String;
    .restart local v2       #language:Ljava/lang/String;
    .restart local v3       #result:I
    .restart local v5       #variant:Ljava/lang/String;
    :cond_3
    :try_start_3
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x5

    const-string v9, ""

    aput-object v9, v7, v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .end local v0           #country:Ljava/lang/String;
    .end local v2           #language:Ljava/lang/String;
    .end local v5           #variant:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "TextToSpeech.java - setLanguage"

    const-string v8, "RemoteException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v6

    goto :goto_3

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .restart local v0       #country:Ljava/lang/String;
    .restart local v2       #language:Ljava/lang/String;
    .restart local v5       #variant:Ljava/lang/String;
    :cond_4
    :try_start_6
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x7

    const-string v9, ""

    aput-object v9, v7, v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .end local v0           #country:Ljava/lang/String;
    .end local v2           #language:Ljava/lang/String;
    .end local v5           #variant:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_7
    const-string v7, "TextToSpeech.java - setLanguage"

    const-string v8, "NullPointerException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_9
    const-string v7, "TextToSpeech.java - setLanguage"

    const-string v8, "IllegalStateException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    monitor-exit v6

    goto :goto_3

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v7

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3
.end method

.method public setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
    .locals 7
    .parameter "listener"

    .prologue
    const-string v3, "TextToSpeech.java - registerCallback"

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, -0x1

    .local v1, result:I
    :try_start_0
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_0

    monitor-exit v3

    move v2, v1

    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    new-instance v4, Landroid/speech/tts/TextToSpeech$2;

    invoke-direct {v4, p0, p1}, Landroid/speech/tts/TextToSpeech$2;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)V

    iput-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;

    invoke-interface {v4, v5, v6}, Landroid/speech/tts/ITts;->registerCallback(Ljava/lang/String;Landroid/speech/tts/ITtsCallback;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v3

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    :catch_1
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v3

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public setPitch(F)I
    .locals 8
    .parameter "pitch"

    .prologue
    const-string v4, "TextToSpeech.java - setPitch"

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v2, -0x1

    .local v2, result:I
    :try_start_0
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_0
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    const/high16 v5, 0x42c8

    mul-float/2addr v5, p1

    float-to-int v1, v5

    .local v1, p:I
    :try_start_1
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xf

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    .end local v1           #p:I
    :cond_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    .restart local v1       #p:I
    .restart local v2       #result:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v5, "TextToSpeech.java - setPitch"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v4

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v1           #p:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .restart local v1       #p:I
    :catch_1
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v5, "TextToSpeech.java - setPitch"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v4

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public setSpeechRate(F)I
    .locals 9
    .parameter "speechRate"

    .prologue
    const/4 v8, 0x0

    const-string v4, "TextToSpeech.java - setSpeechRate"

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v2, -0x1

    .local v2, result:I
    :try_start_0
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_0
    cmpl-float v5, p1, v8

    if-lez v5, :cond_1

    const/high16 v5, 0x42c8

    mul-float/2addr v5, p1

    float-to-int v1, v5

    .local v1, rate:I
    :try_start_1
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    cmpl-float v5, p1, v8

    if-lez v5, :cond_2

    const/4 v2, 0x0

    .end local v1           #rate:I
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    .restart local v1       #rate:I
    .restart local v2       #result:I
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v5, "TextToSpeech.java - setSpeechRate"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v4

    goto :goto_2

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v1           #rate:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .restart local v1       #rate:I
    :catch_1
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v5, "TextToSpeech.java - setSpeechRate"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v4

    goto :goto_2

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public shutdown()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 8
    .parameter "text"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "TextToSpeech.java - speak"

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v2, -0x1

    .local v2, result:I
    :try_start_0
    const-string v5, "TextToSpeech.java - speak"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "speak text of length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_0

    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "service isn\'t started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_0
    if-eqz p3, :cond_3

    :try_start_1
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "streamType"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0x9

    aput-object v1, v5, v6

    :cond_1
    const-string v5, "utteranceId"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_2

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v5, v6

    :cond_2
    const-string v5, "engine"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xd

    aput-object v1, v5, v6

    .end local v1           #extra:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v5, v6, p1, p2, v7}, Landroid/speech/tts/ITts;->speak(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    :try_start_2
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    monitor-exit v4

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    :catch_1
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    monitor-exit v4

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public stop()I
    .locals 6

    .prologue
    const-string v3, "TextToSpeech.java - stop"

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, -0x1

    .local v1, result:I
    :try_start_0
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/speech/tts/ITts;->stop(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v3

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    :catch_1
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v3

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 9
    .parameter "text"
    .parameter
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    const-string v4, "TextToSpeech.java - synthesizeToFile"

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v2, -0x1

    .local v2, result:I
    :try_start_0
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synthesizeToFile text of length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_0

    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "service isn\'t started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "utteranceId"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v5, v6

    :cond_1
    const-string v5, "engine"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_2

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xd

    aput-object v1, v5, v6

    .end local v1           #extra:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v5, v6, p1, v7, p3}, Landroid/speech/tts/ITts;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    if-eqz v5, :cond_3

    move v2, v8

    :goto_1
    :try_start_2
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_3
    const/4 v5, -0x1

    move v2, v5

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    monitor-exit v4

    goto :goto_2

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    :catch_1
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    monitor-exit v4

    goto :goto_2

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method
