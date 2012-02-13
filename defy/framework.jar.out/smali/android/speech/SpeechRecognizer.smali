.class public Landroid/speech/SpeechRecognizer;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/SpeechRecognizer$InternalListener;,
        Landroid/speech/SpeechRecognizer$Connection;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final ERROR_AUDIO:I = 0x3

.field public static final ERROR_CLIENT:I = 0x5

.field public static final ERROR_INSUFFICIENT_PERMISSIONS:I = 0x9

.field public static final ERROR_NETWORK:I = 0x2

.field public static final ERROR_NETWORK_TIMEOUT:I = 0x1

.field public static final ERROR_NO_MATCH:I = 0x7

.field public static final ERROR_RECOGNIZER_BUSY:I = 0x8

.field public static final ERROR_SERVER:I = 0x4

.field public static final ERROR_SPEECH_TIMEOUT:I = 0x6

.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_CHANGE_LISTENER:I = 0x4

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2

.field public static final RESULTS_RECOGNITION:Ljava/lang/String; = "results_recognition"

.field private static final TAG:Ljava/lang/String; = "SpeechRecognizer"


# instance fields
.field private mConnection:Landroid/speech/SpeechRecognizer$Connection;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/speech/SpeechRecognizer$InternalListener;

.field private final mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/speech/IRecognitionService;

.field private final mServiceComponent:Landroid/content/ComponentName;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2
    .parameter "context"
    .parameter "serviceComponent"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/speech/SpeechRecognizer$1;

    invoke-direct {v0, p0}, Landroid/speech/SpeechRecognizer$1;-><init>(Landroid/speech/SpeechRecognizer;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    new-instance v0, Landroid/speech/SpeechRecognizer$InternalListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/speech/SpeechRecognizer$InternalListener;-><init>(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$1;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    iput-object p1, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/speech/SpeechRecognizer;->mServiceComponent:Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic access$000(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer;->handleStartListening(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Landroid/speech/SpeechRecognizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->handleStopMessage()V

    return-void
.end method

.method static synthetic access$200(Landroid/speech/SpeechRecognizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->handleCancelMessage()V

    return-void
.end method

.method static synthetic access$300(Landroid/speech/SpeechRecognizer;Landroid/speech/RecognitionListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer;->handleChangeListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method static synthetic access$502(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)Landroid/speech/IRecognitionService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    return-object p1
.end method

.method static synthetic access$600(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$700(Landroid/speech/SpeechRecognizer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$Connection;)Landroid/speech/SpeechRecognizer$Connection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    return-object p1
.end method

.method private static checkIsCalledFromMainThread()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SpeechRecognizer should be used only from the application\'s main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkOpenConnection()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    const-string v0, "SpeechRecognizer"

    const-string v1, "not connected to the recognition service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public static createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;
    .locals 2
    .parameter "context"
    .parameter "serviceComponent"

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    new-instance v0, Landroid/speech/SpeechRecognizer;

    invoke-direct {v0, p0, p1}, Landroid/speech/SpeechRecognizer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method private handleCancelMessage()V
    .locals 3

    .prologue
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-interface {v1, v2}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string v2, "cancel() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    goto :goto_0
.end method

.method private handleChangeListener(Landroid/speech/RecognitionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    #setter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0, p1}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1002(Landroid/speech/SpeechRecognizer$InternalListener;Landroid/speech/RecognitionListener;)Landroid/speech/RecognitionListener;

    return-void
.end method

.method private handleStartListening(Landroid/content/Intent;)V
    .locals 3
    .parameter "recognizerIntent"

    .prologue
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-interface {v1, p1, v2}, Landroid/speech/IRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string v2, "startListening() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    goto :goto_0
.end method

.method private handleStopMessage()V
    .locals 3

    .prologue
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-interface {v1, v2}, Landroid/speech/IRecognitionService;->stopListening(Landroid/speech/IRecognitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string v2, "stopListening() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    goto :goto_0
.end method

.method public static isRecognitionAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method private putMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iput-object v2, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iput-object v2, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    #setter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0, v2}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1002(Landroid/speech/SpeechRecognizer$InternalListener;Landroid/speech/RecognitionListener;)Landroid/speech/RecognitionListener;

    return-void
.end method

.method public setRecognitionListener(Landroid/speech/RecognitionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    return-void
.end method

.method public startListening(Landroid/content/Intent;)V
    .locals 8
    .parameter "recognizerIntent"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "SpeechRecognizer"

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "intent must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    if-nez v2, :cond_3

    new-instance v2, Landroid/speech/SpeechRecognizer$Connection;

    invoke-direct {v2, p0, v4}, Landroid/speech/SpeechRecognizer$Connection;-><init>(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$1;)V

    iput-object v2, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.RecognitionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, serviceIntent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mServiceComponent:Landroid/content/ComponentName;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_recognition_service"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, serviceComponent:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SpeechRecognizer"

    const-string v2, "no selected voice recognition service"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-virtual {v2, v6}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    .end local v0           #serviceComponent:Ljava/lang/String;
    .end local v1           #serviceIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .restart local v0       #serviceComponent:Ljava/lang/String;
    .restart local v1       #serviceIntent:Landroid/content/Intent;
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .end local v0           #serviceComponent:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "SpeechRecognizer"

    const-string v2, "bind to recognition service failed"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    iput-object v4, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-virtual {v2, v6}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .end local v1           #serviceIntent:Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public stopListening()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    return-void
.end method
