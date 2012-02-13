.class Landroid/media/audiofx/AudioEffect$NativeEventHandler;
.super Landroid/os/Handler;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/AudioEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private mAudioEffect:Landroid/media/audiofx/AudioEffect;

.field final synthetic this$0:Landroid/media/audiofx/AudioEffect;


# direct methods
.method public constructor <init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "ae"
    .parameter "looper"

    .prologue
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .parameter "msg"

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v11, v0

    packed-switch v11, :pswitch_data_0

    const-string v11, "AudioEffect-JAVA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleMessage() Unknown event type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x0

    .local v2, enableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v11, v11, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    #getter for: Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    invoke-static {v12}, Landroid/media/audiofx/AudioEffect;->access$000(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    move-result-object v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v12, v0

    if-eqz v12, :cond_2

    move v12, v14

    :goto_1
    invoke-interface {v2, v11, v12}, Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;->onEnableStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    goto :goto_0

    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    :cond_2
    move v12, v13

    goto :goto_1

    .end local v2           #enableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    :pswitch_1
    const/4 v1, 0x0

    .local v1, controlStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v11, v11, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_2
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    #getter for: Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    invoke-static {v12}, Landroid/media/audiofx/AudioEffect;->access$100(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    move-result-object v1

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v12, v0

    if-eqz v12, :cond_3

    move v12, v14

    :goto_2
    invoke-interface {v1, v11, v12}, Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;->onControlStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    goto :goto_0

    :catchall_1
    move-exception v12

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v12

    :cond_3
    move v12, v13

    goto :goto_2

    .end local v1           #controlStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    :pswitch_2
    const/4 v5, 0x0

    .local v5, parameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v11, v11, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_4
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    #getter for: Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    invoke-static {v12}, Landroid/media/audiofx/AudioEffect;->access$200(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    move-result-object v5

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    .local v8, vOffset:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v3, v0

    .local v3, p:[B
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v11, v3, v13}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v7

    .local v7, status:I
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    const/4 v12, 0x4

    invoke-virtual {v11, v3, v12}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v6

    .local v6, psize:I
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    const/16 v12, 0x8

    invoke-virtual {v11, v3, v12}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v10

    .local v10, vsize:I
    new-array v4, v6, [B

    .local v4, param:[B
    new-array v9, v10, [B

    .local v9, value:[B
    const/16 v11, 0xc

    invoke-static {v3, v11, v4, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v8, v9, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-interface {v5, v11, v7, v4, v9}, Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V

    goto/16 :goto_0

    .end local v3           #p:[B
    .end local v4           #param:[B
    .end local v6           #psize:I
    .end local v7           #status:I
    .end local v8           #vOffset:I
    .end local v9           #value:[B
    .end local v10           #vsize:I
    :catchall_2
    move-exception v12

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v12

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
