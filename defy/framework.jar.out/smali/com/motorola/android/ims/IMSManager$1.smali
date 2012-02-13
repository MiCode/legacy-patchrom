.class Lcom/motorola/android/ims/IMSManager$1;
.super Ljava/lang/Object;
.source "IMSManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/motorola/android/ims/IMSManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onServiceConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    #setter for: Lcom/motorola/android/ims/IMSManager;->mBind:Z
    invoke-static {v2, v4}, Lcom/motorola/android/ims/IMSManager;->access$102(Lcom/motorola/android/ims/IMSManager;Z)Z

    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    invoke-static {p2}, Lcom/motorola/android/ims/IIMSServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/IIMSServer;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/ims/IMSManager;->mIMSServer:Lcom/motorola/android/ims/IIMSServer;

    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    #calls: Lcom/motorola/android/ims/IMSManager;->retrieveNetworkServer()Z
    invoke-static {v2}, Lcom/motorola/android/ims/IMSManager;->access$200(Lcom/motorola/android/ims/IMSManager;)Z

    move-result v2

    if-ne v4, v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    iget-object v2, v2, Lcom/motorola/android/ims/IMSManager;->mIMSNetwork:Lcom/motorola/android/ims/IIMSNetwork;

    invoke-interface {v2}, Lcom/motorola/android/ims/IIMSNetwork;->isImsRegistered()Z

    move-result v1

    .local v1, regStatus:Z
    if-ne v1, v4, :cond_1

    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    const/4 v3, 0x2

    #calls: Lcom/motorola/android/ims/IMSManager;->setState(I)V
    invoke-static {v2, v3}, Lcom/motorola/android/ims/IMSManager;->access$300(Lcom/motorola/android/ims/IMSManager;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    iget-object v3, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    iget-object v3, v3, Lcom/motorola/android/ims/IMSManager;->mIMSNetwork:Lcom/motorola/android/ims/IIMSNetwork;

    invoke-interface {v3}, Lcom/motorola/android/ims/IIMSNetwork;->getImsRegId()J

    move-result-wide v3

    #setter for: Lcom/motorola/android/ims/IMSManager;->mRegId:J
    invoke-static {v2, v3, v4}, Lcom/motorola/android/ims/IMSManager;->access$402(Lcom/motorola/android/ims/IMSManager;J)J

    invoke-static {}, Lcom/motorola/android/ims/IMSManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImsRegId(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    #getter for: Lcom/motorola/android/ims/IMSManager;->mRegId:J
    invoke-static {v4}, Lcom/motorola/android/ims/IMSManager;->access$400(Lcom/motorola/android/ims/IMSManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    iget-object v3, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    iget-object v3, v3, Lcom/motorola/android/ims/IMSManager;->mIMSNetwork:Lcom/motorola/android/ims/IIMSNetwork;

    invoke-interface {v3}, Lcom/motorola/android/ims/IIMSNetwork;->isLimitedAccessMode()Z

    move-result v3

    #setter for: Lcom/motorola/android/ims/IMSManager;->mLimitedAccess:Z
    invoke-static {v2, v3}, Lcom/motorola/android/ims/IMSManager;->access$502(Lcom/motorola/android/ims/IMSManager;Z)Z

    invoke-static {}, Lcom/motorola/android/ims/IMSManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLimitedAccess: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    #getter for: Lcom/motorola/android/ims/IMSManager;->mLimitedAccess:Z
    invoke-static {v4}, Lcom/motorola/android/ims/IMSManager;->access$500(Lcom/motorola/android/ims/IMSManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    #getter for: Lcom/motorola/android/ims/IMSManager;->mApplicationConnectionStateListener:Lcom/motorola/android/ims/ConnectionStateListener;
    invoke-static {v2}, Lcom/motorola/android/ims/IMSManager;->access$600(Lcom/motorola/android/ims/IMSManager;)Lcom/motorola/android/ims/ConnectionStateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    #getter for: Lcom/motorola/android/ims/IMSManager;->mApplicationConnectionStateListener:Lcom/motorola/android/ims/ConnectionStateListener;
    invoke-static {v2}, Lcom/motorola/android/ims/IMSManager;->access$600(Lcom/motorola/android/ims/IMSManager;)Lcom/motorola/android/ims/ConnectionStateListener;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    #getter for: Lcom/motorola/android/ims/IMSManager;->mLimitedAccess:Z
    invoke-static {v3}, Lcom/motorola/android/ims/IMSManager;->access$500(Lcom/motorola/android/ims/IMSManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/android/ims/ConnectionStateListener;->processImsConnected(Z)V

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    iget-object v2, v2, Lcom/motorola/android/ims/IMSManager;->mIMSNetwork:Lcom/motorola/android/ims/IIMSNetwork;

    iget-object v3, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    #getter for: Lcom/motorola/android/ims/IMSManager;->mMgrConnectionStateListener:Lcom/motorola/android/ims/ConnectionStateListener;
    invoke-static {v3}, Lcom/motorola/android/ims/IMSManager;->access$700(Lcom/motorola/android/ims/IMSManager;)Lcom/motorola/android/ims/ConnectionStateListener;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/android/ims/ConnectionStateListener;->mCallback:Lcom/motorola/android/ims/IConnectionStateListener;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/motorola/android/ims/IIMSNetwork;->setListener(Lcom/motorola/android/ims/IConnectionStateListener;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v1           #regStatus:Z
    :goto_2
    invoke-static {}, Lcom/motorola/android/ims/IMSManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected, mState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    iget v4, v4, Lcom/motorola/android/ims/IMSManager;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .restart local v1       #regStatus:Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-static {}, Lcom/motorola/android/ims/IMSManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to getImsRegId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #regStatus:Z
    :catch_1
    move-exception v2

    move-object v0, v2

    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/motorola/android/ims/IMSManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onServiceConnected RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #regStatus:Z
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    const/4 v3, 0x1

    iput v3, v2, Lcom/motorola/android/ims/IMSManager;->mState:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .end local v1           #regStatus:Z
    :cond_2
    invoke-static {}, Lcom/motorola/android/ims/IMSManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onServiceConnected: retrieveNetworkServer fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/motorola/android/ims/IMSManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/android/ims/IMSManager;->mBind:Z
    invoke-static {v0, v1}, Lcom/motorola/android/ims/IMSManager;->access$102(Lcom/motorola/android/ims/IMSManager;Z)Z

    iget-object v0, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    iput-object v2, v0, Lcom/motorola/android/ims/IMSManager;->mIMSServer:Lcom/motorola/android/ims/IIMSServer;

    iget-object v0, p0, Lcom/motorola/android/ims/IMSManager$1;->this$0:Lcom/motorola/android/ims/IMSManager;

    iput-object v2, v0, Lcom/motorola/android/ims/IMSManager;->mIMSNetwork:Lcom/motorola/android/ims/IIMSNetwork;

    return-void
.end method
