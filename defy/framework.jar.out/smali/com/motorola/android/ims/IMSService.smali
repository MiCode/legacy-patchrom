.class public abstract Lcom/motorola/android/ims/IMSService;
.super Ljava/lang/Object;
.source "IMSService.java"


# static fields
.field static final MESSAGE_CONN_STATE:I = 0x1

.field static final MESSAGE_SERVICE_STATE:I = 0x2

.field public static final SERVICE_TYPE_SMSONIMS:Ljava/lang/String; = "smsonims"

.field public static final STATE_CLOSED:I = 0x4

.field public static final STATE_CLOSING:I = 0x3

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_OPEN:I = 0x2

.field public static final STATE_OPENING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IMSService"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field protected mManager:Lcom/motorola/android/ims/IMSManager;

.field protected mService:Lcom/motorola/android/ims/IMSService;

.field protected mServiceListener:Lcom/motorola/android/ims/IMSServiceListener;

.field protected mState:I

.field protected serviceType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/android/ims/IMSService$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/ims/IMSService$1;-><init>(Lcom/motorola/android/ims/IMSService;)V

    iput-object v0, p0, Lcom/motorola/android/ims/IMSService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/motorola/android/ims/IMSService;->serviceType:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/ims/IMSService;->mState:I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/android/ims/IMSManager;->getManager(Landroid/content/Context;)Lcom/motorola/android/ims/IMSManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/ims/IMSService;->mManager:Lcom/motorola/android/ims/IMSManager;

    return-void
.end method


# virtual methods
.method protected abstract addCallBack()V
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    iget v0, p0, Lcom/motorola/android/ims/IMSService;->mState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/android/ims/IMSService;->removeCallBack()V

    iget-object v0, p0, Lcom/motorola/android/ims/IMSService;->mManager:Lcom/motorola/android/ims/IMSManager;

    invoke-virtual {v0, p0}, Lcom/motorola/android/ims/IMSManager;->removeService(Lcom/motorola/android/ims/IMSService;)V

    iput v1, p0, Lcom/motorola/android/ims/IMSService;->mState:I

    iget-object v0, p0, Lcom/motorola/android/ims/IMSService;->mServiceListener:Lcom/motorola/android/ims/IMSServiceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/ims/IMSService;->mServiceListener:Lcom/motorola/android/ims/IMSServiceListener;

    invoke-virtual {v0, p0}, Lcom/motorola/android/ims/IMSServiceListener;->processServiceClosed(Lcom/motorola/android/ims/IMSService;)V

    :cond_0
    return-void

    :pswitch_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/android/ims/IMSService;->mState:I

    goto :goto_0

    :pswitch_1
    iput v1, p0, Lcom/motorola/android/ims/IMSService;->mState:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getFeatureTags()Ljava/lang/String;
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/ims/IMSService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getRegId()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/android/ims/IMSService;->mManager:Lcom/motorola/android/ims/IMSManager;

    invoke-virtual {v0}, Lcom/motorola/android/ims/IMSManager;->getRegId()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getSMSServer()Lcom/motorola/android/ims/IIMSCSms;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, smsServer:Lcom/motorola/android/ims/IIMSCSms;
    iget-object v2, p0, Lcom/motorola/android/ims/IMSService;->mManager:Lcom/motorola/android/ims/IMSManager;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/ims/IMSService;->mManager:Lcom/motorola/android/ims/IMSManager;

    invoke-virtual {v2}, Lcom/motorola/android/ims/IMSManager;->getIMSServer()Lcom/motorola/android/ims/IIMSServer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/ims/IMSService;->mManager:Lcom/motorola/android/ims/IMSManager;

    invoke-virtual {v2}, Lcom/motorola/android/ims/IMSManager;->getIMSServer()Lcom/motorola/android/ims/IIMSServer;

    move-result-object v2

    invoke-interface {v2}, Lcom/motorola/android/ims/IIMSServer;->getSMSService()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/ims/IIMSCSms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/IIMSCSms;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "IMSService"

    const-string v3, "failed to get the network service."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/ims/IMSService;->mState:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/ims/IMSService;->serviceType:Ljava/lang/String;

    return-object v0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/IMSException;,
            Lcom/motorola/android/ims/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const-string v0, "IMSService"

    const-string v1, "open"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/motorola/android/ims/IMSService;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/android/ims/IMSService;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/motorola/android/ims/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The service is in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/ims/IMSService;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state, not in INIT state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/ims/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/ims/IMSService;->mManager:Lcom/motorola/android/ims/IMSManager;

    invoke-virtual {v0}, Lcom/motorola/android/ims/IMSManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput v2, p0, Lcom/motorola/android/ims/IMSService;->mState:I

    return-void
.end method

.method protected abstract removeCallBack()V
.end method

.method public setListener(Lcom/motorola/android/ims/IMSServiceListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/ims/IMSService;->mServiceListener:Lcom/motorola/android/ims/IMSServiceListener;

    return-void
.end method
