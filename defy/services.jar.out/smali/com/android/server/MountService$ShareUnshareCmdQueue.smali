.class Lcom/android/server/MountService$ShareUnshareCmdQueue;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareUnshareCmdQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;
    }
.end annotation


# instance fields
.field private mShareUnshareCmdList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method private constructor <init>(Lcom/android/server/MountService;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->mShareUnshareCmdList:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService$ShareUnshareCmdQueue;-><init>(Lcom/android/server/MountService;)V

    return-void
.end method


# virtual methods
.method public attempt()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->mShareUnshareCmdList:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->mShareUnshareCmdList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;

    .local v0, cmd:Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mCondition:Lcom/android/server/MountService$Condition;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mCondition:Lcom/android/server/MountService$Condition;

    invoke-interface {v2}, Lcom/android/server/MountService$Condition;->condition()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    monitor-exit v1

    return-void

    .end local v0           #cmd:Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public enqueue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "path"
    .parameter "method"
    .parameter "enable"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/MountService$ShareUnshareCmdQueue;->enqueue(Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/MountService$Condition;)V

    return-void
.end method

.method public enqueue(Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/MountService$Condition;)V
    .locals 7
    .parameter "path"
    .parameter "method"
    .parameter "enable"
    .parameter "condition"

    .prologue
    iget-object v6, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->mShareUnshareCmdList:Ljava/util/LinkedList;

    monitor-enter v6

    :try_start_0
    new-instance v0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;-><init>(Lcom/android/server/MountService$ShareUnshareCmdQueue;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/MountService$Condition;)V

    .local v0, cmd:Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;
    iget-object v1, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->mShareUnshareCmdList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit v6

    return-void

    .end local v0           #cmd:Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public realExec()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->mShareUnshareCmdList:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->mShareUnshareCmdList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;

    .local v0, cmd:Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->exec()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->mShareUnshareCmdList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cmd:Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;
    check-cast v0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;

    .restart local v0       #cmd:Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mCondition:Lcom/android/server/MountService$Condition;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mCondition:Lcom/android/server/MountService$Condition;

    invoke-interface {v2}, Lcom/android/server/MountService$Condition;->condition()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    monitor-exit v1

    return-void

    .end local v0           #cmd:Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
