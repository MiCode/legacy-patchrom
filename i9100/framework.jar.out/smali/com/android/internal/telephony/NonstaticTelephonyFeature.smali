.class public Lcom/android/internal/telephony/NonstaticTelephonyFeature;
.super Ljava/lang/Object;
.source "NonstaticTelephonyFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;
    }
.end annotation


# static fields
.field private static final EVENT_GET_FEATURE_DONE:I = 0x1

.field private static final MAX_RETRIES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NonstaticTelephonyFeature"

.field private static mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private static sFeatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->sFeatureMap:Ljava/util/Map;

    .line 36
    sput-object v0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getInstance()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "NonstaticTelephonyFeature"

    .line 136
    sget-object v0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->sFeatureMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_1

    .line 138
    const-string v0, "NonstaticTelephonyFeature"

    const-string v0, "NonstaticTelephonyFeature not prepared - most likely RIL object has not been created yet"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->sFeatureMap:Ljava/util/Map;

    return-object v0

    .line 140
    :cond_1
    const-string v0, "NonstaticTelephonyFeature"

    const-string v0, "NonstaticTelephonyFeature not prepared - trying again anyway..."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v0}, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->newInstance(Lcom/android/internal/telephony/CommandsInterface;)Ljava/util/Map;

    goto :goto_0
.end method

.method public static newInstance(Lcom/android/internal/telephony/CommandsInterface;)Ljava/util/Map;
    .locals 9
    .parameter "cm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/CommandsInterface;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    sput-object p0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 74
    sget-object v0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->sFeatureMap:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 75
    const-string v0, "NonstaticTelephonyFeature"

    const-string/jumbo v1, "newInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    move v4, v0

    .end local v0           #i:I
    .local v4, i:I
    :goto_0
    const/4 v0, 0x3

    if-ge v4, v0, :cond_2

    .line 78
    new-instance v3, Landroid/os/HandlerThread;

    const-string v0, "NonstaticTelephonyFeature"

    invoke-direct {v3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 79
    .local v3, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 82
    .local v6, startLatch:Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 84
    .local v1, doneLatch:Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v6, v1}, Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;-><init>(ILjava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    .line 85
    .local v0, cb:Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 87
    .local v2, handler:Landroid/os/Handler;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .end local v0           #cb:Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;
    const/4 v5, 0x0

    const-string v7, "getFeatures"

    aput-object v7, v0, v5

    .line 89
    .local v0, req:[Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 90
    .local v5, resp:Landroid/os/Message;
    invoke-interface {p0, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 92
    const/4 v0, 0x0

    .line 95
    .local v0, gotResult:Z
    const-wide/16 v7, 0x1f4

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .end local v2           #handler:Landroid/os/Handler;
    invoke-virtual {v6, v7, v8, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v2, v0

    .line 102
    .end local v0           #gotResult:Z
    .end local v6           #startLatch:Ljava/util/concurrent/CountDownLatch;
    .local v2, gotResult:Z
    :goto_1
    iget-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 104
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 105
    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    .line 107
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .end local v1           #doneLatch:Ljava/util/concurrent/CountDownLatch;
    if-nez v1, :cond_3

    .line 108
    iget-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    .line 110
    .local p0, ret:[Ljava/lang/String;
    const-string v0, "NonstaticTelephonyFeature"

    .end local v0           #ar:Landroid/os/AsyncResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully received features: "

    .end local v2           #gotResult:Z
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #handlerThread:Landroid/os/HandlerThread;
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/String;
    array-length v2, p0

    .local v2, len$:I
    const/4 v0, 0x0

    .end local v4           #i:I
    .end local v5           #resp:Landroid/os/Message;
    .local v0, i$:I
    :goto_2
    if-ge v0, v2, :cond_1

    aget-object v1, p0, v0

    .line 114
    .local v1, s:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, kv:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    array-length v5, v1

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    const/4 v5, 0x1

    aget-object v1, v1, v5

    .end local v1           #kv:[Ljava/lang/String;
    :goto_3
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 96
    .end local v2           #len$:I
    .local v0, gotResult:Z
    .local v1, doneLatch:Ljava/util/concurrent/CountDownLatch;
    .local v3, handlerThread:Landroid/os/HandlerThread;
    .restart local v4       #i:I
    .restart local v5       #resp:Landroid/os/Message;
    .restart local v6       #startLatch:Ljava/util/concurrent/CountDownLatch;
    .local p0, cm:Lcom/android/internal/telephony/CommandsInterface;
    :catch_0
    move-exception v2

    .line 97
    .local v2, ignore:Ljava/lang/InterruptedException;
    const-string v2, "NonstaticTelephonyFeature"

    .end local v2           #ignore:Ljava/lang/InterruptedException;
    const-string v6, "Unexpected InterruptedException while waiting for NonstaticTelephonyFeatureThread, handleMessage()"

    .end local v6           #startLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .end local v0           #gotResult:Z
    .local v2, gotResult:Z
    goto :goto_1

    .line 115
    .end local v4           #i:I
    .end local v5           #resp:Landroid/os/Message;
    .local v0, i$:I
    .local v1, kv:[Ljava/lang/String;
    .local v2, len$:I
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p0, arr$:[Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "true"

    goto :goto_3

    .line 118
    .end local v1           #kv:[Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .end local p0           #arr$:[Ljava/lang/String;
    sput-object p0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->sFeatureMap:Ljava/util/Map;

    .line 132
    .end local v0           #i$:I
    .end local v2           #len$:I
    .end local v3           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    sget-object p0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->sFeatureMap:Ljava/util/Map;

    return-object p0

    .line 122
    .local v0, ar:Landroid/os/AsyncResult;
    .local v2, gotResult:Z
    .local v3, handlerThread:Landroid/os/HandlerThread;
    .restart local v4       #i:I
    .restart local v5       #resp:Landroid/os/Message;
    .local p0, cm:Lcom/android/internal/telephony/CommandsInterface;
    :cond_3
    const-string v0, "NonstaticTelephonyFeature"

    .end local v0           #ar:Landroid/os/AsyncResult;
    const-string v1, "getFeatures failed, retrying after timeout..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :goto_4
    add-int/lit8 v0, v4, 0x1

    .end local v4           #i:I
    .local v0, i:I
    move v4, v0

    .end local v0           #i:I
    .restart local v4       #i:I
    goto/16 :goto_0

    .line 126
    :catch_1
    move-exception v0

    goto :goto_4
.end method
