.class Landroid/drm/mobile2/DrmRoapManager$HttpThread;
.super Ljava/lang/Object;
.source "DrmRoapManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/mobile2/DrmRoapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpThread"
.end annotation


# instance fields
.field config:Landroid/drm/mobile2/HttpConfig;

.field dataHandle:Landroid/drm/mobile2/DrmRoapManager$DataHandler;

.field final synthetic this$0:Landroid/drm/mobile2/DrmRoapManager;


# direct methods
.method constructor <init>(Landroid/drm/mobile2/DrmRoapManager;Landroid/drm/mobile2/HttpConfig;Landroid/drm/mobile2/DrmRoapManager$DataHandler;)V
    .locals 1
    .parameter
    .parameter "config"
    .parameter "datahandle"

    .prologue
    .line 158
    iput-object p1, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->this$0:Landroid/drm/mobile2/DrmRoapManager;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->dataHandle:Landroid/drm/mobile2/DrmRoapManager$DataHandler;

    .line 160
    iput-object p2, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    .line 161
    iput-object p3, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->dataHandle:Landroid/drm/mobile2/DrmRoapManager$DataHandler;

    .line 162
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 165
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->this$0:Landroid/drm/mobile2/DrmRoapManager;

    #getter for: Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/drm/mobile2/DrmRoapManager;->access$000(Landroid/drm/mobile2/DrmRoapManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Inside a Thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v12, 0x0

    .line 167
    .local v12, status:I
    const/4 v4, 0x0

    .line 170
    .local v4, isProxySet:Z
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, host:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v6

    .line 172
    .local v6, port:I
    if-eqz v5, :cond_2

    const/4 v1, -0x1

    if-eq v6, v1, :cond_2

    .line 174
    const/4 v4, 0x1

    .line 175
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget-object v1, v1, Landroid/drm/mobile2/HttpConfig;->postData:[C

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget v1, v1, Landroid/drm/mobile2/HttpConfig;->trId:I

    iget-object v2, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget-object v2, v2, Landroid/drm/mobile2/HttpConfig;->pUrl:Ljava/lang/String;

    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget v3, v3, Landroid/drm/mobile2/HttpConfig;->method:I

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget-object v8, v8, Landroid/drm/mobile2/HttpConfig;->postData:[C

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    iget-object v8, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget-object v8, v8, Landroid/drm/mobile2/HttpConfig;->pSendHeader:Ljava/lang/String;

    iget-object v11, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->dataHandle:Landroid/drm/mobile2/DrmRoapManager$DataHandler;

    move v10, v9

    invoke-static/range {v0 .. v11}, Landroid/drm/mobile2/HttpManager;->httpConnection(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)I

    move-result v12

    .line 196
    :goto_0
    const/4 v0, 0x1

    if-eq v12, v0, :cond_0

    .line 198
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->this$0:Landroid/drm/mobile2/DrmRoapManager;

    #getter for: Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/drm/mobile2/DrmRoapManager;->access$000(Landroid/drm/mobile2/DrmRoapManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside run for the failure case  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->this$0:Landroid/drm/mobile2/DrmRoapManager;

    iget-object v0, v0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMManager;->mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->this$0:Landroid/drm/mobile2/DrmRoapManager;

    iget-object v0, v0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMManager;->mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    invoke-interface {v0, v12}, Landroid/drm/mobile2/OMADRMManager$OnErrorListener;->onError(I)Z

    .line 209
    :cond_0
    return-void

    .line 180
    :cond_1
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget v1, v1, Landroid/drm/mobile2/HttpConfig;->trId:I

    iget-object v2, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget-object v2, v2, Landroid/drm/mobile2/HttpConfig;->pUrl:Ljava/lang/String;

    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget v3, v3, Landroid/drm/mobile2/HttpConfig;->method:I

    iget-object v7, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget-object v8, v7, Landroid/drm/mobile2/HttpConfig;->pSendHeader:Ljava/lang/String;

    iget-object v11, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->dataHandle:Landroid/drm/mobile2/DrmRoapManager$DataHandler;

    move-object v7, v0

    move v10, v9

    invoke-static/range {v0 .. v11}, Landroid/drm/mobile2/HttpManager;->httpConnection(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)I

    move-result v12

    goto :goto_0

    .line 187
    :cond_2
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget-object v1, v1, Landroid/drm/mobile2/HttpConfig;->postData:[C

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget v1, v1, Landroid/drm/mobile2/HttpConfig;->trId:I

    iget-object v2, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget-object v2, v2, Landroid/drm/mobile2/HttpConfig;->pUrl:Ljava/lang/String;

    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget v3, v3, Landroid/drm/mobile2/HttpConfig;->method:I

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget-object v8, v8, Landroid/drm/mobile2/HttpConfig;->postData:[C

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    iget-object v8, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget-object v8, v8, Landroid/drm/mobile2/HttpConfig;->pSendHeader:Ljava/lang/String;

    iget-object v11, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->dataHandle:Landroid/drm/mobile2/DrmRoapManager$DataHandler;

    move v10, v9

    invoke-static/range {v0 .. v11}, Landroid/drm/mobile2/HttpManager;->httpConnection(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)I

    move-result v12

    goto :goto_0

    .line 192
    :cond_3
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget v1, v1, Landroid/drm/mobile2/HttpConfig;->trId:I

    iget-object v2, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget-object v2, v2, Landroid/drm/mobile2/HttpConfig;->pUrl:Ljava/lang/String;

    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget v3, v3, Landroid/drm/mobile2/HttpConfig;->method:I

    iget-object v7, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    iget-object v8, v7, Landroid/drm/mobile2/HttpConfig;->pSendHeader:Ljava/lang/String;

    iget-object v11, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->dataHandle:Landroid/drm/mobile2/DrmRoapManager$DataHandler;

    move-object v7, v0

    move v10, v9

    invoke-static/range {v0 .. v11}, Landroid/drm/mobile2/HttpManager;->httpConnection(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)I

    move-result v12

    goto/16 :goto_0
.end method
