.class Landroid/view/PointerDevice$LooperThread;
.super Ljava/lang/Thread;
.source "PointerDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PointerDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LooperThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/PointerDevice;


# direct methods
.method constructor <init>(Landroid/view/PointerDevice;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Landroid/view/PointerDevice$LooperThread;->this$0:Landroid/view/PointerDevice;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 227
    const/4 v2, -0x6

    .line 228
    .local v2, prio:I
    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 229
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 230
    .local v1, mytid:I
    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 231
    .local v0, hasprio:I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PointerDevice.LooperThread: tid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", want prio = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", has = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0           #hasprio:I
    .end local v1           #mytid:I
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 238
    iget-object v4, p0, Landroid/view/PointerDevice$LooperThread;->this$0:Landroid/view/PointerDevice;

    invoke-static {}, Landroid/view/PointerDevice;->access$100()Landroid/view/IWindowManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PointerDevice-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v5

    #setter for: Landroid/view/PointerDevice;->mInputChannel:Landroid/view/InputChannel;
    invoke-static {v4, v5}, Landroid/view/PointerDevice;->access$002(Landroid/view/PointerDevice;Landroid/view/InputChannel;)Landroid/view/InputChannel;

    .line 239
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PointerDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/view/PointerDevice$LooperThread;->this$0:Landroid/view/PointerDevice;

    #getter for: Landroid/view/PointerDevice;->mInputChannel:Landroid/view/InputChannel;
    invoke-static {v6}, Landroid/view/PointerDevice;->access$000(Landroid/view/PointerDevice;)Landroid/view/InputChannel;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    iget-object v4, p0, Landroid/view/PointerDevice$LooperThread;->this$0:Landroid/view/PointerDevice;

    #getter for: Landroid/view/PointerDevice;->mInputChannel:Landroid/view/InputChannel;
    invoke-static {v4}, Landroid/view/PointerDevice;->access$000(Landroid/view/PointerDevice;)Landroid/view/InputChannel;

    move-result-object v4

    iget-object v5, p0, Landroid/view/PointerDevice$LooperThread;->this$0:Landroid/view/PointerDevice;

    #getter for: Landroid/view/PointerDevice;->mInputHandler:Landroid/view/InputHandler;
    invoke-static {v5}, Landroid/view/PointerDevice;->access$200(Landroid/view/PointerDevice;)Landroid/view/InputHandler;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V

    .line 241
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "PointerDevice: successfully registered"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 248
    :goto_1
    return-void

    .line 233
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 234
    .local v3, t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 243
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 244
    .restart local v3       #t:Ljava/lang/Throwable;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "=error init PointerDevice=================================="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 246
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "============================================================"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method
