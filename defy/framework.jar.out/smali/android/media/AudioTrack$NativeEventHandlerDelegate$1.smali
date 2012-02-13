.class Landroid/media/AudioTrack$NativeEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioTrack$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

.field final synthetic val$this$0:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Landroid/media/AudioTrack$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioTrack;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate$1;->this$1:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    iput-object p3, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate$1;->val$this$0:Landroid/media/AudioTrack;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget-object v1, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate$1;->this$1:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    #getter for: Landroid/media/AudioTrack$NativeEventHandlerDelegate;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v1}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->access$100(Landroid/media/AudioTrack$NativeEventHandlerDelegate;)Landroid/media/AudioTrack;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, listener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    iget-object v1, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate$1;->this$1:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    iget-object v1, v1, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->this$0:Landroid/media/AudioTrack;

    #getter for: Landroid/media/AudioTrack;->mPositionListenerLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioTrack;->access$200(Landroid/media/AudioTrack;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate$1;->this$1:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    #getter for: Landroid/media/AudioTrack$NativeEventHandlerDelegate;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->access$100(Landroid/media/AudioTrack$NativeEventHandlerDelegate;)Landroid/media/AudioTrack;

    move-result-object v2

    #getter for: Landroid/media/AudioTrack;->mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    invoke-static {v2}, Landroid/media/AudioTrack;->access$300(Landroid/media/AudioTrack;)Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "AudioTrack-Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ android.media.AudioTrack.NativeEventHandler ] Unknown event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :pswitch_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate$1;->this$1:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    #getter for: Landroid/media/AudioTrack$NativeEventHandlerDelegate;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v1}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->access$100(Landroid/media/AudioTrack$NativeEventHandlerDelegate;)Landroid/media/AudioTrack;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;->onMarkerReached(Landroid/media/AudioTrack;)V

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate$1;->this$1:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    #getter for: Landroid/media/AudioTrack$NativeEventHandlerDelegate;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v1}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->access$100(Landroid/media/AudioTrack$NativeEventHandlerDelegate;)Landroid/media/AudioTrack;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;->onPeriodicNotification(Landroid/media/AudioTrack;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
