.class final Lcom/android/internal/app/ShutdownThread$3;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 250
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$500()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "ShutdownThread"

    const-string v1, "Releasing animation end lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$500()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 254
    :cond_0
    return-void
.end method
