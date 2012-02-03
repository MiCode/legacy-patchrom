.class Landroid/media/AudioService$AudioSystemThread;
.super Ljava/lang/Thread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioSystemThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 1
    .parameter

    .prologue
    .line 1908
    iput-object p1, p0, Landroid/media/AudioService$AudioSystemThread;->this$0:Landroid/media/AudioService;

    .line 1909
    const-string v0, "AudioService"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1910
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1915
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1917
    iget-object v0, p0, Landroid/media/AudioService$AudioSystemThread;->this$0:Landroid/media/AudioService;

    monitor-enter v0

    .line 1918
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$AudioSystemThread;->this$0:Landroid/media/AudioService;

    new-instance v2, Landroid/media/AudioService$AudioHandler;

    iget-object v3, p0, Landroid/media/AudioService$AudioSystemThread;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/media/AudioService$AudioHandler;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    #setter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$102(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;

    .line 1921
    iget-object v1, p0, Landroid/media/AudioService$AudioSystemThread;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1922
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1925
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1926
    return-void

    .line 1922
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
