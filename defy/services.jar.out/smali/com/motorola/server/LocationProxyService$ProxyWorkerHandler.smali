.class Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;
.super Landroid/os/Handler;
.source "LocationProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/LocationProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/LocationProxyService;


# direct methods
.method private constructor <init>(Lcom/motorola/server/LocationProxyService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;->this$0:Lcom/motorola/server/LocationProxyService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/server/LocationProxyService;Lcom/motorola/server/LocationProxyService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;-><init>(Lcom/motorola/server/LocationProxyService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const-string v9, "LocationProxyService"

    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1

    const-string v6, "LocationProxyService"

    const-string v7, "Received SUPL_MTLR_REQ:going to send MTLR broadcast..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;->this$0:Lcom/motorola/server/LocationProxyService;

    #calls: Lcom/motorola/server/LocationProxyService;->sendMtlrBroadcast(Landroid/os/Message;)V
    invoke-static {v6, p1}, Lcom/motorola/server/LocationProxyService;->access$000(Lcom/motorola/server/LocationProxyService;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v6, "LocationProxyService"

    const-string v6, "OK: Leaving handleMessage()"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    const-string v6, "LocationProxyService"

    const-string v7, "Received SUPL_MTLR2_REQ:going to send MTLR broadcast..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;->this$0:Lcom/motorola/server/LocationProxyService;

    #calls: Lcom/motorola/server/LocationProxyService;->sendMtlrBroadcast2(Landroid/os/Message;)V
    invoke-static {v6, p1}, Lcom/motorola/server/LocationProxyService;->access$100(Lcom/motorola/server/LocationProxyService;Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v3, v6

    .local v3, e:Ljava/lang/Exception;
    const-string v6, "LocationProxyService"

    const-string v6, "Exception in ProxyWorkerHandler.handleMessage:"

    invoke-static {v9, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x40

    if-ne v6, v7, :cond_3

    const-string v6, "LocationProxyService"

    const-string v7, "Received SUPL_MTLR_STATUS_REQ"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;->this$0:Lcom/motorola/server/LocationProxyService;

    #getter for: Lcom/motorola/server/LocationProxyService;->mListener:Lcom/motorola/android/locationproxy/IMtlrListener;
    invoke-static {v6}, Lcom/motorola/server/LocationProxyService;->access$200(Lcom/motorola/server/LocationProxyService;)Lcom/motorola/android/locationproxy/IMtlrListener;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .local v2, data:[Ljava/lang/Object;
    const/4 v6, 0x0

    aget-object v5, v2, v6

    check-cast v5, Ljava/lang/Integer;

    .local v5, reqId:Ljava/lang/Integer;
    const/4 v6, 0x1

    aget-object v4, v2, v6

    check-cast v4, Ljava/lang/Integer;

    .local v4, reason:Ljava/lang/Integer;
    const-string v6, "LocationProxyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calling onMtlrStatusChanged--reqId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",reason:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;->this$0:Lcom/motorola/server/LocationProxyService;

    #getter for: Lcom/motorola/server/LocationProxyService;->mListener:Lcom/motorola/android/locationproxy/IMtlrListener;
    invoke-static {v6}, Lcom/motorola/server/LocationProxyService;->access$200(Lcom/motorola/server/LocationProxyService;)Lcom/motorola/android/locationproxy/IMtlrListener;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/motorola/android/locationproxy/IMtlrListener;->onMtlrStatusChanged(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[Ljava/lang/Object;
    .end local v4           #reason:Ljava/lang/Integer;
    .end local v5           #reqId:Ljava/lang/Integer;
    :catch_1
    move-exception v6

    move-object v3, v6

    .local v3, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "LocationProxyService"

    const-string v7, "Exception when doing callback:"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v3           #e:Landroid/os/RemoteException;
    :cond_3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method
