.class Lcom/broadcom/bt/service/map/MapEventLoop$1;
.super Ljava/lang/Thread;
.source "MapEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/service/map/MapEventLoop;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/map/MapEventLoop;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/map/MapEventLoop;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/broadcom/bt/service/map/MapEventLoop$1;->this$0:Lcom/broadcom/bt/service/map/MapEventLoop;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v5, "MapEventLoop"

    .line 97
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop$1;->this$0:Lcom/broadcom/bt/service/map/MapEventLoop;

    #getter for: Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->access$000(Lcom/broadcom/bt/service/map/MapEventLoop;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop$1;->this$0:Lcom/broadcom/bt/service/map/MapEventLoop;

    #getter for: Lcom/broadcom/bt/service/map/MapEventLoop;->m_MapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;
    invoke-static {v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->access$200(Lcom/broadcom/bt/service/map/MapEventLoop;)Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapEventLoop$1;->this$0:Lcom/broadcom/bt/service/map/MapEventLoop;

    #getter for: Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/broadcom/bt/service/map/MapEventLoop;->access$100(Lcom/broadcom/bt/service/map/MapEventLoop;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->init(Landroid/content/Context;Z)V

    .line 102
    const-string v2, "MapEventLoop"

    const-string v2, "ENTER MAPEventLoop in Native code"

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop$1;->this$0:Lcom/broadcom/bt/service/map/MapEventLoop;

    #getter for: Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z
    invoke-static {v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->access$300(Lcom/broadcom/bt/service/map/MapEventLoop;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop$1;->this$0:Lcom/broadcom/bt/service/map/MapEventLoop;

    #calls: Lcom/broadcom/bt/service/map/MapEventLoop;->Native_BluetoothMapMSEEventLoop()V
    invoke-static {v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->access$400(Lcom/broadcom/bt/service/map/MapEventLoop;)V

    .line 107
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Lcom/broadcom/bt/service/map/MapEventLoop$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 111
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 114
    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_1
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop$1;->this$0:Lcom/broadcom/bt/service/map/MapEventLoop;

    #calls: Lcom/broadcom/bt/service/map/MapEventLoop;->Native_classUninitData()V
    invoke-static {v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->access$500(Lcom/broadcom/bt/service/map/MapEventLoop;)V

    .line 115
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop$1;->this$0:Lcom/broadcom/bt/service/map/MapEventLoop;

    const/4 v3, 0x0

    #setter for: Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/broadcom/bt/service/map/MapEventLoop;->access$602(Lcom/broadcom/bt/service/map/MapEventLoop;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 117
    const-string v2, "MapEventLoop"

    const-string v2, "Event Loop thread finished"

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 109
    :cond_0
    :try_start_1
    const-string v2, "MapEventLoop"

    const-string v3, "LEAVING MAPEventLoop in Native code"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
