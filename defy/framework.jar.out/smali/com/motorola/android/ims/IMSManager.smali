.class public Lcom/motorola/android/ims/IMSManager;
.super Ljava/lang/Object;
.source "IMSManager.java"


# static fields
.field public static final EXTRA_CODE:Ljava/lang/String; = "Code"

.field public static final EXTRA_REREG:Ljava/lang/String; = "reReg"

.field public static final IMS_CONNECTED:I = 0x0

.field public static final IMS_DISCONNECTED:I = 0x1

.field public static final IMS_REGISTRATION_STATUS:Ljava/lang/String; = "com.motorola.ims.action.registration_status"

.field public static final IMS_REG_FAIL_403:I = 0x3

.field public static final IMS_REG_FAIL_404:I = 0x4

.field public static final IMS_REG_FAIL_LOCALIP_INVALID:I = 0x5

.field public static final IMS_REG_GENERAL_FAIL:I = 0x2

.field public static final STATE_OFFLINE:I = 0x1

.field public static final STATE_ONLINE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static mManager:Lcom/motorola/android/ims/IMSManager;


# instance fields
.field private mApplicationConnectionStateListener:Lcom/motorola/android/ims/ConnectionStateListener;

.field private mBind:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field protected mIMSNetwork:Lcom/motorola/android/ims/IIMSNetwork;

.field protected mIMSServer:Lcom/motorola/android/ims/IIMSServer;

.field private mIMSServerConnection:Landroid/content/ServiceConnection;

.field protected mIMSServices:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/motorola/android/ims/IMSService;",
            ">;"
        }
    .end annotation
.end field

.field private mLimitedAccess:Z

.field private mMgrConnectionStateListener:Lcom/motorola/android/ims/ConnectionStateListener;

.field private mRegId:J

.field protected mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/motorola/android/ims/IMSManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/android/ims/IMSManager;->mRegId:J

    iput-object v2, p0, Lcom/motorola/android/ims/IMSManager;->mIMSNetwork:Lcom/motorola/android/ims/IIMSNetwork;

    iput-object v2, p0, Lcom/motorola/android/ims/IMSManager;->mIMSServer:Lcom/motorola/android/ims/IIMSServer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/ims/IMSManager;->mLimitedAccess:Z

    new-instance v0, Lcom/motorola/android/ims/IMSManager$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/ims/IMSManager$1;-><init>(Lcom/motorola/android/ims/IMSManager;)V

    iput-object v0, p0, Lcom/motorola/android/ims/IMSManager;->mIMSServerConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/motorola/android/ims/IMSManager$2;

    invoke-direct {v0, p0}, Lcom/motorola/android/ims/IMSManager$2;-><init>(Lcom/motorola/android/ims/IMSManager;)V

    iput-object v0, p0, Lcom/motorola/android/ims/IMSManager;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/motorola/android/ims/IMSManager;->mApplicationConnectionStateListener:Lcom/motorola/android/ims/ConnectionStateListener;

    new-instance v0, Lcom/motorola/android/ims/IMSManager$3;

    invoke-direct {v0, p0}, Lcom/motorola/android/ims/IMSManager$3;-><init>(Lcom/motorola/android/ims/IMSManager;)V

    iput-object v0, p0, Lcom/motorola/android/ims/IMSManager;->mMgrConnectionStateListener:Lcom/motorola/android/ims/ConnectionStateListener;

    sget-object v0, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    const-string v1, "IMSManager create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/motorola/android/ims/IMSManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/ims/IMSManager;->mIMSServices:Ljava/util/LinkedList;

    sput-object p0, Lcom/motorola/android/ims/IMSManager;->mManager:Lcom/motorola/android/ims/IMSManager;

    iput v3, p0, Lcom/motorola/android/ims/IMSManager;->mState:I

    iget-object v0, p0, Lcom/motorola/android/ims/IMSManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.android.intent.action.IMSSERVER_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager;->mIMSServerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/motorola/android/ims/IMSManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/android/ims/IMSManager;->mBind:Z

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/android/ims/IMSManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/ims/IMSManager;->retrieveNetworkServer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/android/ims/IMSManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/ims/IMSManager;->setState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/android/ims/IMSManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/motorola/android/ims/IMSManager;->mRegId:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/motorola/android/ims/IMSManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/motorola/android/ims/IMSManager;->mRegId:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/motorola/android/ims/IMSManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/ims/IMSManager;->mLimitedAccess:Z

    return v0
.end method

.method static synthetic access$502(Lcom/motorola/android/ims/IMSManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/android/ims/IMSManager;->mLimitedAccess:Z

    return p1
.end method

.method static synthetic access$600(Lcom/motorola/android/ims/IMSManager;)Lcom/motorola/android/ims/ConnectionStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/ims/IMSManager;->mApplicationConnectionStateListener:Lcom/motorola/android/ims/ConnectionStateListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/android/ims/IMSManager;)Lcom/motorola/android/ims/ConnectionStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/ims/IMSManager;->mMgrConnectionStateListener:Lcom/motorola/android/ims/ConnectionStateListener;

    return-object v0
.end method

.method private getLocationIfServiceExist(Ljava/lang/String;)I
    .locals 5
    .parameter "serviceName"

    .prologue
    iget-object v4, p0, Lcom/motorola/android/ims/IMSManager;->mIMSServices:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, services:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/motorola/android/ims/IMSService;>;"
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v0, 0x0

    .local v0, exist:Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/ims/IMSService;

    .local v2, service:Lcom/motorola/android/ims/IMSService;
    invoke-virtual {v2}, Lcom/motorola/android/ims/IMSService;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .end local v2           #service:Lcom/motorola/android/ims/IMSService;
    :cond_0
    const/4 v4, 0x1

    if-ne v4, v0, :cond_2

    move v4, v1

    :goto_1
    return v4

    .restart local v2       #service:Lcom/motorola/android/ims/IMSService;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #service:Lcom/motorola/android/ims/IMSService;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public static getManager(Landroid/content/Context;)Lcom/motorola/android/ims/IMSManager;
    .locals 1
    .parameter "context"

    .prologue
    sget-object v0, Lcom/motorola/android/ims/IMSManager;->mManager:Lcom/motorola/android/ims/IMSManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/android/ims/IMSManager;

    invoke-direct {v0, p0}, Lcom/motorola/android/ims/IMSManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/ims/IMSManager;->mManager:Lcom/motorola/android/ims/IMSManager;

    :cond_0
    sget-object v0, Lcom/motorola/android/ims/IMSManager;->mManager:Lcom/motorola/android/ims/IMSManager;

    return-object v0
.end method

.method private isValidService(Ljava/lang/String;)Z
    .locals 3
    .parameter "serviceName"

    .prologue
    const-string v0, "smsonims"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this is not the valid service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private retrieveNetworkServer()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/motorola/android/ims/IMSManager;->mIMSServer:Lcom/motorola/android/ims/IIMSServer;

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    const-string v2, "retrieveNetworkServer, IIMSServer.Stub.asInterface return null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/ims/IMSManager;->mIMSNetwork:Lcom/motorola/android/ims/IIMSNetwork;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    const-string v2, "retrieveNetworkServer, mIMSNetwork is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/ims/IMSManager;->mIMSServer:Lcom/motorola/android/ims/IIMSServer;

    invoke-interface {v1}, Lcom/motorola/android/ims/IIMSServer;->getNetworkService()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/ims/IIMSNetwork$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/IIMSNetwork;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/ims/IMSManager;->mIMSNetwork:Lcom/motorola/android/ims/IIMSNetwork;

    iget-object v1, p0, Lcom/motorola/android/ims/IMSManager;->mIMSNetwork:Lcom/motorola/android/ims/IIMSNetwork;

    if-nez v1, :cond_2

    sget-object v1, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    const-string v2, "retrieveNetworkServer, mIMSNetwork is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    const-string v2, "retrieveNetworkServer, failed to get the network service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v1, v4

    goto :goto_0
.end method

.method private setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    iput p1, p0, Lcom/motorola/android/ims/IMSManager;->mState:I

    return-void
.end method


# virtual methods
.method public createService(Ljava/lang/String;)Lcom/motorola/android/ims/IMSService;
    .locals 5
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/IMSException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    sget-object v2, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    const-string v3, "createService"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/motorola/android/ims/IMSManager;->isValidService(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/motorola/android/ims/IMSManager;->getLocationIfServiceExist(Ljava/lang/String;)I

    move-result v0

    .local v0, location:I
    sget-object v2, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createService location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager;->mIMSServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/android/ims/IMSService;

    move-object v2, p0

    :goto_0
    return-object v2

    .restart local p0
    :cond_0
    const-string v2, "smsonims"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    const-string v3, "createService create SmsOnImsService"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-direct {v1, p1}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;-><init>(Ljava/lang/String;)V

    .local v1, service:Lcom/motorola/android/ims/IMSService;
    if-nez v1, :cond_1

    sget-object v2, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create the SmsOnImsService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/motorola/android/ims/IMSException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t create the service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/motorola/android/ims/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager;->mIMSServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createService this.mIMSServices.add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto :goto_0

    .end local v0           #location:I
    .end local v1           #service:Lcom/motorola/android/ims/IMSService;
    :cond_2
    sget-object v2, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only support smsonims service, the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported yet."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v0       #location:I
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/ims/IMSManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getIMSServer()Lcom/motorola/android/ims/IIMSServer;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/ims/IMSManager;->mIMSServer:Lcom/motorola/android/ims/IIMSServer;

    return-object v0
.end method

.method public getLimitedAccessMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/ims/IMSManager;->mLimitedAccess:Z

    return v0
.end method

.method getRegId()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/motorola/android/ims/IMSManager;->mRegId:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/ims/IMSManager;->mState:I

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/ims/IMSManager;->mBind:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/ims/IMSManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/android/ims/IMSManager;->mIMSServerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/ims/IMSManager;->mBind:Z

    :cond_0
    return-void
.end method

.method removeService(Lcom/motorola/android/ims/IMSService;)V
    .locals 5
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .local v1, removeRet:Z
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/ims/IMSManager;->mIMSServices:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/UnsupportedOperationException;
    sget-object v2, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to remove the service from the list"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setListener(Lcom/motorola/android/ims/ConnectionStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    sget-object v0, Lcom/motorola/android/ims/IMSManager;->TAG:Ljava/lang/String;

    const-string v1, "setListener, mApplicationConnectionStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/motorola/android/ims/IMSManager;->mApplicationConnectionStateListener:Lcom/motorola/android/ims/ConnectionStateListener;

    return-void
.end method
