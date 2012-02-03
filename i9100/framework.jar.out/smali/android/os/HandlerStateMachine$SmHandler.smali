.class Landroid/os/HandlerStateMachine$SmHandler;
.super Landroid/os/Handler;
.source "HandlerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/HandlerStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmHandler"
.end annotation


# instance fields
.field public mCurrentState:Landroid/os/HandlerState;

.field public mDeferredMessages:Landroid/os/Message;

.field public mDestState:Landroid/os/HandlerState;

.field final synthetic this$0:Landroid/os/HandlerStateMachine;


# direct methods
.method constructor <init>(Landroid/os/HandlerStateMachine;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 103
    iput-object p1, p0, Landroid/os/HandlerStateMachine$SmHandler;->this$0:Landroid/os/HandlerStateMachine;

    .line 104
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-string v3, "HandlerStateMachine"

    .line 113
    iget-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->this$0:Landroid/os/HandlerStateMachine;

    #getter for: Landroid/os/HandlerStateMachine;->mDbg:Z
    invoke-static {v1}, Landroid/os/HandlerStateMachine;->access$000(Landroid/os/HandlerStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HandlerStateMachine"

    const-string v1, "SmHandler.handleMessage E"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    iget-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->mDestState:Landroid/os/HandlerState;

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->this$0:Landroid/os/HandlerStateMachine;

    #getter for: Landroid/os/HandlerStateMachine;->mDbg:Z
    invoke-static {v1}, Landroid/os/HandlerStateMachine;->access$000(Landroid/os/HandlerStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HandlerStateMachine"

    const-string v1, "SmHandler.handleMessage; new destation call enter"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    iget-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->mDestState:Landroid/os/HandlerState;

    iput-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->mCurrentState:Landroid/os/HandlerState;

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->mDestState:Landroid/os/HandlerState;

    .line 118
    iget-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->mCurrentState:Landroid/os/HandlerState;

    invoke-virtual {v1, p1}, Landroid/os/HandlerState;->enter(Landroid/os/Message;)V

    .line 120
    :cond_2
    iget-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->mCurrentState:Landroid/os/HandlerState;

    if-eqz v1, :cond_6

    .line 121
    iget-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->this$0:Landroid/os/HandlerStateMachine;

    #getter for: Landroid/os/HandlerStateMachine;->mDbg:Z
    invoke-static {v1}, Landroid/os/HandlerStateMachine;->access$000(Landroid/os/HandlerStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HandlerStateMachine"

    const-string v1, "SmHandler.handleMessage; call processMessage"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_3
    iget-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->mCurrentState:Landroid/os/HandlerState;

    invoke-virtual {v1, p1}, Landroid/os/HandlerState;->processMessage(Landroid/os/Message;)V

    .line 128
    :goto_0
    iget-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->mDestState:Landroid/os/HandlerState;

    if-eqz v1, :cond_8

    .line 129
    iget-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->this$0:Landroid/os/HandlerStateMachine;

    #getter for: Landroid/os/HandlerStateMachine;->mDbg:Z
    invoke-static {v1}, Landroid/os/HandlerStateMachine;->access$000(Landroid/os/HandlerStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "HandlerStateMachine"

    const-string v1, "SmHandler.handleMessage; new destination call exit"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_4
    iget-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->mCurrentState:Landroid/os/HandlerState;

    invoke-virtual {v1, p1}, Landroid/os/HandlerState;->exit(Landroid/os/Message;)V

    .line 140
    :goto_1
    iget-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->mDeferredMessages:Landroid/os/Message;

    if-eqz v1, :cond_7

    .line 141
    iget-object v0, p0, Landroid/os/HandlerStateMachine$SmHandler;->mDeferredMessages:Landroid/os/Message;

    .line 142
    .local v0, cur:Landroid/os/Message;
    iget-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->mDeferredMessages:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->mDeferredMessages:Landroid/os/Message;

    .line 143
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/os/Message;->when:J

    .line 144
    iget-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->this$0:Landroid/os/HandlerStateMachine;

    #getter for: Landroid/os/HandlerStateMachine;->mDbg:Z
    invoke-static {v1}, Landroid/os/HandlerStateMachine;->access$000(Landroid/os/HandlerStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "HandlerStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmHandler.handleMessage; queue deferred message what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_5
    invoke-virtual {p0, v0}, Landroid/os/HandlerStateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_1

    .line 125
    .end local v0           #cur:Landroid/os/Message;
    :cond_6
    const-string v1, "HandlerStateMachine"

    const-string v1, "handleMessage: no current state, did you call setInitialState"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_7
    iget-object v1, p0, Landroid/os/HandlerStateMachine$SmHandler;->this$0:Landroid/os/HandlerStateMachine;

    #getter for: Landroid/os/HandlerStateMachine;->mDbg:Z
    invoke-static {v1}, Landroid/os/HandlerStateMachine;->access$000(Landroid/os/HandlerStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "HandlerStateMachine"

    const-string v1, "SmHandler.handleMessage X"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_8
    return-void
.end method
