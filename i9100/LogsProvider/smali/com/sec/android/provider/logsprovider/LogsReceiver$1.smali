.class final Lcom/sec/android/provider/logsprovider/LogsReceiver$1;
.super Landroid/os/Handler;
.source "LogsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/provider/logsprovider/LogsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 58
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 91
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 92
    return-void

    .line 60
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 61
    .local v0, context:Landroid/content/Context;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/provider/logsprovider/LogsReceiver$1$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/provider/logsprovider/LogsReceiver$1$1;-><init>(Lcom/sec/android/provider/logsprovider/LogsReceiver$1;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 81
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #thread:Ljava/lang/Thread;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;

    .line 82
    .local v1, info:Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/provider/logsprovider/LogsReceiver$1$2;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/provider/logsprovider/LogsReceiver$1$2;-><init>(Lcom/sec/android/provider/logsprovider/LogsReceiver$1;Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    .restart local v2       #thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
