.class Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
.super Ljava/lang/Object;
.source "HierarchicalStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateInfo"
.end annotation


# instance fields
.field active:Z

.field parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

.field state:Lcom/android/internal/util/HierarchicalState;

.field final synthetic this$0:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->this$0:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;-><init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget-object v1, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
