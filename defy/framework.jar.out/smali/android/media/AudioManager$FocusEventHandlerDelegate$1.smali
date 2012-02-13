.class Landroid/media/AudioManager$FocusEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioManager$FocusEventHandlerDelegate;-><init>(Landroid/media/AudioManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioManager$FocusEventHandlerDelegate;

.field final synthetic val$this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager$FocusEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    iput-object p3, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;->val$this$0:Landroid/media/AudioManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .local v0, listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    iget-object v1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    iget-object v1, v1, Landroid/media/AudioManager$FocusEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    #getter for: Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioManager;->access$000(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    iget-object v2, v2, Landroid/media/AudioManager$FocusEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    #calls: Landroid/media/AudioManager;->findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v2, p0}, Landroid/media/AudioManager;->access$100(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
