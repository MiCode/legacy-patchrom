.class Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;
.super Lcom/android/internal/util/HierarchicalState;
.source "HierarchicalStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuittingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;->this$0:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;-><init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    return v0
.end method
