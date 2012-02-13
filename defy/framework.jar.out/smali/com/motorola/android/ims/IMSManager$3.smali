.class Lcom/motorola/android/ims/IMSManager$3;
.super Lcom/motorola/android/ims/ConnectionStateListener;
.source "IMSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/ims/IMSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/ims/IMSManager;


# direct methods
.method constructor <init>(Lcom/motorola/android/ims/IMSManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/ims/IMSManager$3;->this$0:Lcom/motorola/android/ims/IMSManager;

    invoke-direct {p0}, Lcom/motorola/android/ims/ConnectionStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public processImsConnected(Z)V
    .locals 5
    .parameter "isLimited"

    .prologue
    invoke-static {}, Lcom/motorola/android/ims/IMSManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on mMgrConnectionStateListener.processImsConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/motorola/android/ims/IMSManager$3;->this$0:Lcom/motorola/android/ims/IMSManager;

    const/4 v2, 0x2

    #calls: Lcom/motorola/android/ims/IMSManager;->setState(I)V
    invoke-static {v1, v2}, Lcom/motorola/android/ims/IMSManager;->access$300(Lcom/motorola/android/ims/IMSManager;I)V

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/ims/IMSManager$3;->this$0:Lcom/motorola/android/ims/IMSManager;

    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$3;->this$0:Lcom/motorola/android/ims/IMSManager;

    iget-object v2, v2, Lcom/motorola/android/ims/IMSManager;->mIMSNetwork:Lcom/motorola/android/ims/IIMSNetwork;

    invoke-interface {v2}, Lcom/motorola/android/ims/IIMSNetwork;->getImsRegId()J

    move-result-wide v2

    #setter for: Lcom/motorola/android/ims/IMSManager;->mRegId:J
    invoke-static {v1, v2, v3}, Lcom/motorola/android/ims/IMSManager;->access$402(Lcom/motorola/android/ims/IMSManager;J)J

    invoke-static {}, Lcom/motorola/android/ims/IMSManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsRegId(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/ims/IMSManager$3;->this$0:Lcom/motorola/android/ims/IMSManager;

    #getter for: Lcom/motorola/android/ims/IMSManager;->mRegId:J
    invoke-static {v3}, Lcom/motorola/android/ims/IMSManager;->access$400(Lcom/motorola/android/ims/IMSManager;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/motorola/android/ims/IMSManager$3;->this$0:Lcom/motorola/android/ims/IMSManager;

    #setter for: Lcom/motorola/android/ims/IMSManager;->mLimitedAccess:Z
    invoke-static {v1, p1}, Lcom/motorola/android/ims/IMSManager;->access$502(Lcom/motorola/android/ims/IMSManager;Z)Z

    invoke-static {}, Lcom/motorola/android/ims/IMSManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLimitedAccess: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/ims/IMSManager$3;->this$0:Lcom/motorola/android/ims/IMSManager;

    #getter for: Lcom/motorola/android/ims/IMSManager;->mLimitedAccess:Z
    invoke-static {v3}, Lcom/motorola/android/ims/IMSManager;->access$500(Lcom/motorola/android/ims/IMSManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/motorola/android/ims/IMSManager$3;->this$0:Lcom/motorola/android/ims/IMSManager;

    #getter for: Lcom/motorola/android/ims/IMSManager;->mApplicationConnectionStateListener:Lcom/motorola/android/ims/ConnectionStateListener;
    invoke-static {v1}, Lcom/motorola/android/ims/IMSManager;->access$600(Lcom/motorola/android/ims/IMSManager;)Lcom/motorola/android/ims/ConnectionStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/ims/IMSManager$3;->this$0:Lcom/motorola/android/ims/IMSManager;

    #getter for: Lcom/motorola/android/ims/IMSManager;->mApplicationConnectionStateListener:Lcom/motorola/android/ims/ConnectionStateListener;
    invoke-static {v1}, Lcom/motorola/android/ims/IMSManager;->access$600(Lcom/motorola/android/ims/IMSManager;)Lcom/motorola/android/ims/ConnectionStateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$3;->this$0:Lcom/motorola/android/ims/IMSManager;

    #getter for: Lcom/motorola/android/ims/IMSManager;->mLimitedAccess:Z
    invoke-static {v2}, Lcom/motorola/android/ims/IMSManager;->access$500(Lcom/motorola/android/ims/IMSManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/android/ims/ConnectionStateListener;->processImsConnected(Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/motorola/android/ims/IMSManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to getImsRegId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public processImsDisconnected()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Lcom/motorola/android/ims/IMSManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on mMgrConnectionStateListener.processImsDisconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$3;->this$0:Lcom/motorola/android/ims/IMSManager;

    const/4 v3, 0x1

    #calls: Lcom/motorola/android/ims/IMSManager;->setState(I)V
    invoke-static {v2, v3}, Lcom/motorola/android/ims/IMSManager;->access$300(Lcom/motorola/android/ims/IMSManager;I)V

    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$3;->this$0:Lcom/motorola/android/ims/IMSManager;

    #setter for: Lcom/motorola/android/ims/IMSManager;->mLimitedAccess:Z
    invoke-static {v2, v5}, Lcom/motorola/android/ims/IMSManager;->access$502(Lcom/motorola/android/ims/IMSManager;Z)Z

    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$3;->this$0:Lcom/motorola/android/ims/IMSManager;

    iget-object v2, v2, Lcom/motorola/android/ims/IMSManager;->mIMSServices:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/ims/IMSService;

    .local v1, service:Lcom/motorola/android/ims/IMSService;
    invoke-virtual {v1}, Lcom/motorola/android/ims/IMSService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v1           #service:Lcom/motorola/android/ims/IMSService;
    :cond_0
    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$3;->this$0:Lcom/motorola/android/ims/IMSManager;

    #getter for: Lcom/motorola/android/ims/IMSManager;->mApplicationConnectionStateListener:Lcom/motorola/android/ims/ConnectionStateListener;
    invoke-static {v2}, Lcom/motorola/android/ims/IMSManager;->access$600(Lcom/motorola/android/ims/IMSManager;)Lcom/motorola/android/ims/ConnectionStateListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$3;->this$0:Lcom/motorola/android/ims/IMSManager;

    #getter for: Lcom/motorola/android/ims/IMSManager;->mApplicationConnectionStateListener:Lcom/motorola/android/ims/ConnectionStateListener;
    invoke-static {v2}, Lcom/motorola/android/ims/IMSManager;->access$600(Lcom/motorola/android/ims/IMSManager;)Lcom/motorola/android/ims/ConnectionStateListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/android/ims/ConnectionStateListener;->processImsDisconnected()V

    :cond_1
    return-void
.end method
