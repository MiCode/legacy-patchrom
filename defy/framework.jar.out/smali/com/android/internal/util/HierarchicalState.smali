.class public Lcom/android/internal/util/HierarchicalState;
.super Ljava/lang/Object;
.source "HierarchicalState.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter()V
    .locals 0

    .prologue
    return-void
.end method

.method protected exit()V
    .locals 0

    .prologue
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    return-object v2
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    return v0
.end method
