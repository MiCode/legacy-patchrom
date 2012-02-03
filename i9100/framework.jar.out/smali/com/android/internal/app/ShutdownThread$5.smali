.class final Lcom/android/internal/app/ShutdownThread$5;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->startSoundThreadForPowerOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const-string v1, "ShutdownThread"

    .line 289
    const-string v0, "ShutdownThread"

    const-string/jumbo v0, "onCompletion(MediaPlayer arg0) called !!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$600()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "ShutdownThread"

    const-string v0, "Releasing sAnimationSound end lock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$600()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 294
    :cond_0
    return-void
.end method
