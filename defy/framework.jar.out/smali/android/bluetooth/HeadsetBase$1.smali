.class Landroid/bluetooth/HeadsetBase$1;
.super Ljava/lang/Thread;
.source "HeadsetBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/HeadsetBase;->startEventThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/HeadsetBase;


# direct methods
.method constructor <init>(Landroid/bluetooth/HeadsetBase;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    #getter for: Landroid/bluetooth/HeadsetBase;->mEventThreadInterrupted:Z
    invoke-static {v2}, Landroid/bluetooth/HeadsetBase;->access$000(Landroid/bluetooth/HeadsetBase;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    const/16 v3, 0x1f4

    #calls: Landroid/bluetooth/HeadsetBase;->readNative(I)Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/bluetooth/HeadsetBase;->access$100(Landroid/bluetooth/HeadsetBase;I)Ljava/lang/String;

    move-result-object v0

    .local v0, input:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2, v0}, Landroid/bluetooth/HeadsetBase;->handleInput(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    #calls: Landroid/bluetooth/HeadsetBase;->getLastReadStatusNative()I
    invoke-static {v2}, Landroid/bluetooth/HeadsetBase;->access$200(Landroid/bluetooth/HeadsetBase;)I

    move-result v1

    .local v1, last_read_error:I
    if-eqz v1, :cond_0

    const-string v2, "Bluetooth HeadsetBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "headset read error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    #getter for: Landroid/bluetooth/HeadsetBase;->mEventThreadHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/bluetooth/HeadsetBase;->access$300(Landroid/bluetooth/HeadsetBase;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    #getter for: Landroid/bluetooth/HeadsetBase;->mEventThreadHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/bluetooth/HeadsetBase;->access$300(Landroid/bluetooth/HeadsetBase;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    iget-object v2, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    #calls: Landroid/bluetooth/HeadsetBase;->disconnectNative()V
    invoke-static {v2}, Landroid/bluetooth/HeadsetBase;->access$400(Landroid/bluetooth/HeadsetBase;)V

    .end local v0           #input:Ljava/lang/String;
    .end local v1           #last_read_error:I
    :cond_3
    return-void
.end method
