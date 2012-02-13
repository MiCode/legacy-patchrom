.class Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "VzwLocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwLocationManagerService;


# direct methods
.method private constructor <init>(Lcom/vzw/location/VzwLocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vzw/location/VzwLocationManagerService;Lcom/vzw/location/VzwLocationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;-><init>(Lcom/vzw/location/VzwLocationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-string v7, "VzwLocationMgrService"

    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "VzwLocationMgrService"

    const-string v4, "LocationWorkerHandler: MESSAGE_LOCATION_CHANGED!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/vzw/location/VzwLocationManagerService;->access$200(Lcom/vzw/location/VzwLocationManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/vzw/location/VzwLocation;

    .local v1, location:Lcom/vzw/location/VzwLocation;
    invoke-virtual {v1}, Lcom/vzw/location/VzwLocation;->getProvider()Ljava/lang/String;

    move-result-object v2

    .local v2, provider:Ljava/lang/String;
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #calls: Lcom/vzw/location/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z
    invoke-static {v4, v2}, Lcom/vzw/location/VzwLocationManagerService;->access$400(Lcom/vzw/location/VzwLocationManagerService;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "VzwLocationMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocationWorkerHandler: disabled provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    .end local v1           #location:Lcom/vzw/location/VzwLocation;
    .end local v2           #provider:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local v1       #location:Lcom/vzw/location/VzwLocation;
    .restart local v2       #provider:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$500(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwGpsReqMgr;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/vzw/location/VzwGpsReqMgr;->trigger_LocationChanged(Lcom/vzw/location/VzwLocation;)V

    monitor-exit v3

    goto :goto_0

    .end local v1           #location:Lcom/vzw/location/VzwLocation;
    .end local v2           #provider:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VzwLocationMgrService"

    const-string v3, "Exception in LocationWorkerHandler.handleMessage():"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
