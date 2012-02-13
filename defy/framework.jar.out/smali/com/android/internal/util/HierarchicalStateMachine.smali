.class public Lcom/android/internal/util/HierarchicalStateMachine;
.super Ljava/lang/Object;
.source "HierarchicalStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/HierarchicalStateMachine$1;,
        Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final HSM_INIT_CMD:I = -0x1

.field public static final HSM_QUIT_CMD:I = -0x1

.field public static final NOT_HANDLED:Z = false

.field private static final TAG:Ljava/lang/String; = "HierarchicalStateMachine"


# instance fields
.field private mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

.field private mHsmThread:Landroid/os/HandlerThread;

.field private mName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/HierarchicalStateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .parameter "name"
    .parameter "looper"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/util/HierarchicalStateMachine;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
    .parameter "name"
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mName:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/HierarchicalStateMachine;Lcom/android/internal/util/HierarchicalStateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    return-void
.end method


# virtual methods
.method protected final addState(Lcom/android/internal/util/HierarchicalState;)V
    .locals 2
    .parameter "state"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$600(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    return-void
.end method

.method protected final addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 1
    .parameter "state"
    .parameter "parent"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$600(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    return-void
.end method

.method protected final deferMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1200(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Landroid/os/Message;)V

    return-void
.end method

.method protected final getCurrentMessage()Landroid/os/Message;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$700(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected final getCurrentState()Lcom/android/internal/util/HierarchicalState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getCurrentState()Lcom/android/internal/util/HierarchicalState;
    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$800(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v0

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessedMessage(I)Lcom/android/internal/util/ProcessedMessages$Info;
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getProcessedMessage(I)Lcom/android/internal/util/ProcessedMessages$Info;
    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1600(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;I)Lcom/android/internal/util/ProcessedMessages$Info;

    move-result-object v0

    return-object v0
.end method

.method public final getProcessedMessagesCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getProcessedMessagesCount()I
    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1500(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)I

    move-result v0

    return v0
.end method

.method public final getProcessedMessagesSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getProcessedMessagesSize()I
    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1400(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)I

    move-result v0

    return v0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    return-void
.end method

.method protected halting()V
    .locals 0

    .prologue
    return-void
.end method

.method public isDbg()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->isDbg()Z
    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1900(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Z

    move-result v0

    return v0
.end method

.method protected final isQuit(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->isQuit(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1800(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final quit()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->quit()V
    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1700(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V

    return-void
.end method

.method protected quitting()V
    .locals 0

    .prologue
    return-void
.end method

.method public final sendMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .locals 2
    .parameter "what"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessageDelayed(IJ)V
    .locals 2
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .parameter "msg"
    .parameter "delayMillis"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setDbg(Z)V
    .locals 1
    .parameter "dbg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setDbg(Z)V
    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$2000(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Z)V

    return-void
.end method

.method protected final setInitialState(Lcom/android/internal/util/HierarchicalState;)V
    .locals 1
    .parameter "initialState"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setInitialState(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$900(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method public final setProcessedMessagesSize(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setProcessedMessagesSize(I)V
    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1300(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;I)V

    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->completeConstruction()V
    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$2100(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V

    return-void
.end method

.method protected final transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    .locals 1
    .parameter "destState"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1000(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method protected final transitionToHaltingState()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    #getter for: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;
    invoke-static {v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1100(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    move-result-object v1

    #calls: Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1000(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    return-void
.end method
