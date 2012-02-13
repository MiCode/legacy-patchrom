.class Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;
.super Landroid/os/Handler;
.source "HierarchicalStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/HierarchicalStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HsmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;,
        Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;,
        Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    }
.end annotation


# static fields
.field private static final mInitMsg:Landroid/os/Message;

.field private static final mQuitObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lcom/android/internal/util/HierarchicalState;

.field private mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

.field private mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

.field private mInitialState:Lcom/android/internal/util/HierarchicalState;

.field private mIsConstructionCompleted:Z

.field private mMsg:Landroid/os/Message;

.field private mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

.field private mQuittingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/util/HierarchicalState;",
            "Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

.field private mTempStateStackCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuitObj:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mInitMsg:Landroid/os/Message;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/HierarchicalStateMachine;)V
    .locals 2
    .parameter "looper"
    .parameter "hsm"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    new-instance v0, Lcom/android/internal/util/ProcessedMessages;

    invoke-direct {v0}, Lcom/android/internal/util/ProcessedMessages;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    new-instance v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;-><init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalStateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    new-instance v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;-><init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalStateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuittingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuittingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/HierarchicalStateMachine;Lcom/android/internal/util/HierarchicalStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/HierarchicalStateMachine;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setProcessedMessagesSize(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getProcessedMessagesSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getProcessedMessagesCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;I)Lcom/android/internal/util/ProcessedMessages$Info;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getProcessedMessage(I)Lcom/android/internal/util/ProcessedMessages$Info;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->quit()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Landroid/os/Message;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->isDbg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setDbg(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->completeConstruction()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalState;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setInitialState(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method private final addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .locals 6
    .parameter "state"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    const-string v5, "HierarchicalStateMachine"

    iget-boolean v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    const-string v2, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addStateInternal: E state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_3

    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .local v0, parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    check-cast v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .restart local v0       #parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    if-nez v0, :cond_1

    invoke-direct {p0, p2, v4}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .local v1, stateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    if-nez v1, :cond_2

    new-instance v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .end local v1           #stateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    invoke-direct {v1, p0, v4}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;-><init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalStateMachine$1;)V

    .restart local v1       #stateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    if-eq v2, v0, :cond_4

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "state already added"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .end local v1           #stateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .restart local v0       #parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .restart local v1       #stateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    :cond_4
    iput-object p1, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    iput-object v0, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->active:Z

    iget-boolean v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v2, :cond_5

    const-string v2, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addStateInternal: X stateInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v1
.end method

.method private final completeConstruction()V
    .locals 8

    .prologue
    const-string v7, "HierarchicalStateMachine"

    iget-boolean v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v5, :cond_0

    const-string v5, "HierarchicalStateMachine"

    const-string v5, "completeConstruction: E"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    .local v3, maxDepth:I
    iget-object v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .local v4, si:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    const/4 v0, 0x0

    .local v0, depth:I
    move-object v1, v4

    .local v1, i:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-ge v3, v0, :cond_1

    move v3, v0

    goto :goto_0

    .end local v0           #depth:I
    .end local v1           #i:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .end local v4           #si:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v5, :cond_4

    const-string v5, "HierarchicalStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "completeConstruction: maxDepth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-array v5, v3, [Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iput-object v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    new-array v5, v3, [Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iput-object v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setupInitialStateStack()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mIsConstructionCompleted:Z

    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mMsg:Landroid/os/Message;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->invokeEnterMethods(I)V

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->performTransitions()V

    iget-boolean v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v5, :cond_5

    const-string v5, "HierarchicalStateMachine"

    const-string v5, "completeConstruction: X"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    const-string v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deferMessage: msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .local v0, newMsg:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final getCurrentMessage()Landroid/os/Message;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mMsg:Landroid/os/Message;

    return-object v0
.end method

.method private final getCurrentState()Lcom/android/internal/util/HierarchicalState;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method private final getProcessedMessage(I)Lcom/android/internal/util/ProcessedMessages$Info;
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/ProcessedMessages;->get(I)Lcom/android/internal/util/ProcessedMessages$Info;

    move-result-object v0

    return-object v0
.end method

.method private final getProcessedMessagesCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    invoke-virtual {v0}, Lcom/android/internal/util/ProcessedMessages;->count()I

    move-result v0

    return v0
.end method

.method private final getProcessedMessagesSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    invoke-virtual {v0}, Lcom/android/internal/util/ProcessedMessages;->size()I

    move-result v0

    return v0
.end method

.method private final invokeEnterMethods(I)V
    .locals 4
    .parameter "stateStackEnteringIndex"

    .prologue
    move v0, p1

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    if-gt v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    const-string v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v1}, Lcom/android/internal/util/HierarchicalState;->enter()V

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->active:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final invokeExitMethods(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;)V
    .locals 4
    .parameter "commonStateInfo"

    .prologue
    :goto_0
    iget v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    .local v0, curState:Lcom/android/internal/util/HierarchicalState;
    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    const-string v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/HierarchicalState;->exit()V

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->active:Z

    iget v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    goto :goto_0

    .end local v0           #curState:Lcom/android/internal/util/HierarchicalState;
    :cond_1
    return-void
.end method

.method private final isDbg()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    return v0
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuitObj:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .local v0, curMsg:Landroid/os/Message;
    iget-boolean v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    const-string v2, "HierarchicalStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0           #curMsg:Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .locals 7

    .prologue
    const/4 v5, 0x1

    const-string v6, "HierarchicalStateMachine"

    iget v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    add-int/lit8 v2, v3, 0x1

    .local v2, startingIndex:I
    iget v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    sub-int v0, v3, v5

    .local v0, i:I
    move v1, v2

    .local v1, j:I
    :goto_0
    if-ltz v0, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v3, :cond_0

    const-string v3, "HierarchicalStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTempStackToStateStack: i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",j="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget-object v4, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    sub-int v3, v1, v5

    iput v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    iget-boolean v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v3, :cond_2

    const-string v3, "HierarchicalStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",startingIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Top="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v4}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method private performTransitions()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, destState:Lcom/android/internal/util/HierarchicalState;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDestState:Lcom/android/internal/util/HierarchicalState;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v3, :cond_0

    const-string v3, "HierarchicalStateMachine"

    const-string v4, "handleMessage: new destination call exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDestState:Lcom/android/internal/util/HierarchicalState;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDestState:Lcom/android/internal/util/HierarchicalState;

    invoke-direct {p0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    move-result-object v0

    .local v0, commonStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->invokeExitMethods(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;)V

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->moveTempStateStackToStateStack()I

    move-result v2

    .local v2, stateStackEnteringIndex:I
    invoke-direct {p0, v2}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->invokeEnterMethods(I)V

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->moveDeferredMessageAtFrontOfQueue()V

    goto :goto_0

    .end local v0           #commonStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .end local v2           #stateStackEnteringIndex:I
    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuittingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalStateMachine;->quitting()V

    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    #getter for: Lcom/android/internal/util/HierarchicalStateMachine;->mHsmThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/android/internal/util/HierarchicalStateMachine;->access$300(Lcom/android/internal/util/HierarchicalStateMachine;)Landroid/os/HandlerThread;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalStateMachine;->halting()V

    goto :goto_1
.end method

.method private final processMsg(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const-string v6, "processMsg: "

    const-string v5, "HierarchicalStateMachine"

    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v0, v2, v3

    .local v0, curStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    iget-boolean v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    const-string v2, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMsg: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/HierarchicalState;->processMessage(Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/HierarchicalStateMachine;->unhandledMessage(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuittingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

    invoke-direct {p0, v2}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    :cond_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v2, v2, v3

    iget-object v1, v2, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    .local v1, orgState:Lcom/android/internal/util/HierarchicalState;
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    iget-object v3, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/internal/util/ProcessedMessages;->add(Landroid/os/Message;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .end local v1           #orgState:Lcom/android/internal/util/HierarchicalState;
    :goto_1
    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    const-string v2, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMsg: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    invoke-virtual {v2, p1, v4, v4}, Lcom/android/internal/util/ProcessedMessages;->add(Landroid/os/Message;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1
.end method

.method private final quit()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "HierarchicalStateMachine"

    const-string v1, "quit:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    sget-object v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuitObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private final setDbg(Z)V
    .locals 0
    .parameter "dbg"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    return-void
.end method

.method private final setInitialState(Lcom/android/internal/util/HierarchicalState;)V
    .locals 3
    .parameter "initialState"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "HierarchicalStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitialState: initialState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    return-void
.end method

.method private final setProcessedMessagesSize(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/ProcessedMessages;->setSize(I)V

    return-void
.end method

.method private final setupInitialStateStack()V
    .locals 4

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    const-string v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .local v0, curStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    iget-object v0, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->moveTempStateStackToStateStack()I

    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .locals 4
    .parameter "destState"

    .prologue
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .local v0, curStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    iget-object v0, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v1, :cond_2

    const-string v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",curStateInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method private final transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    .locals 3
    .parameter "destState"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "HierarchicalStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateMachine.transitionTo EX destState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDestState:Lcom/android/internal/util/HierarchicalState;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v2, "HierarchicalStateMachine"

    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "HierarchicalStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: E msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mMsg:Landroid/os/Message;

    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mIsConstructionCompleted:Z

    if-nez v0, :cond_2

    const-string v0, "HierarchicalStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The start method not called, ignore msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->processMsg(Landroid/os/Message;)V

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->performTransitions()V

    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    const-string v0, "HierarchicalStateMachine"

    const-string v0, "handleMessage: X"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
