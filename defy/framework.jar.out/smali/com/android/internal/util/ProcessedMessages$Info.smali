.class public Lcom/android/internal/util/ProcessedMessages$Info;
.super Ljava/lang/Object;
.source "ProcessedMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ProcessedMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Info"
.end annotation


# instance fields
.field private orgState:Lcom/android/internal/util/HierarchicalState;

.field private state:Lcom/android/internal/util/HierarchicalState;

.field final synthetic this$0:Lcom/android/internal/util/ProcessedMessages;

.field private what:I


# direct methods
.method constructor <init>(Lcom/android/internal/util/ProcessedMessages;Landroid/os/Message;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter
    .parameter "message"
    .parameter "state"
    .parameter "orgState"

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/ProcessedMessages$Info;->this$0:Lcom/android/internal/util/ProcessedMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/util/ProcessedMessages$Info;->update(Landroid/os/Message;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method private cn(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "n"

    .prologue
    if-nez p1, :cond_0

    const-string v2, "null"

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, name:Ljava/lang/String;
    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, lastDollar:I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getOriginalState()Lcom/android/internal/util/HierarchicalState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/ProcessedMessages$Info;->orgState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method public getState()Lcom/android/internal/util/HierarchicalState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/ProcessedMessages$Info;->state:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method public getWhat()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/util/ProcessedMessages$Info;->what:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/util/ProcessedMessages$Info;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/ProcessedMessages$Info;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcessedMessages$Info;->cn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " orgState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/ProcessedMessages$Info;->orgState:Lcom/android/internal/util/HierarchicalState;

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcessedMessages$Info;->cn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/os/Message;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 1
    .parameter "message"
    .parameter "state"
    .parameter "orgState"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/android/internal/util/ProcessedMessages$Info;->what:I

    iput-object p2, p0, Lcom/android/internal/util/ProcessedMessages$Info;->state:Lcom/android/internal/util/HierarchicalState;

    iput-object p3, p0, Lcom/android/internal/util/ProcessedMessages$Info;->orgState:Lcom/android/internal/util/HierarchicalState;

    return-void
.end method
