.class public final Landroid/os/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public static native currentThreadTimeMillis()J
.end method

.method public static native elapsedRealtime()J
.end method

.method public static native setCurrentTimeMillis(J)Z
.end method

.method public static sleep(J)V
    .locals 10
    .parameter "ms"

    .prologue
    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 110
    .local v4, start:J
    move-wide v0, p0

    .line 111
    .local v0, duration:J
    const/4 v3, 0x0

    .line 114
    .local v3, interrupted:Z
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    add-long v6, v4, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 120
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    .line 122
    if-eqz v3, :cond_1

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 128
    :cond_1
    return-void

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, e:Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static native uptimeMillis()J
.end method
