.class public Lcom/broadcom/bt/service/opp/BluetoothOPP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothOPP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/opp/BluetoothOPP$1;,
        Lcom/broadcom/bt/service/opp/BluetoothOPP$OppBroadcastReceiver;,
        Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_opp_service"

.field private static final TAG:Ljava/lang/String; = "BluetoothOPP"

.field private static mRefs:I


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

.field private mService:Lcom/broadcom/bt/service/opp/IOppService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 100
    sget v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    .line 101
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/opp/IOppService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 133
    sget v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    .line 134
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    .line 138
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilterAll(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 202
    invoke-static {p0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterOpc(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 203
    .local v0, f:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterOps(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 204
    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterVCard(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 205
    return-object v0
.end method

.method public static createFilterOpc(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 244
    if-nez p0, :cond_0

    .line 245
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .restart local p0
    :cond_0
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_OPEN"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_ENABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_PROGRESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_OBJECT_PUSHED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_AMP_STATE_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v0, "com.broadcom.bt.app.opp.action.ACTION_ON_OPC_OBJECT_PUSHED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_CLOSE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    return-object p0
.end method

.method public static createFilterOps(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 225
    if-nez p0, :cond_0

    .line 226
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .restart local p0
    :cond_0
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPS_PROGRESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPS_AMP_STATE_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPS_OBJECT_RECEIVED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPS_CLOSE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    return-object p0
.end method

.method public static createFilterVCard(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 209
    if-nez p0, :cond_0

    .line 210
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    .restart local p0
    :cond_0
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OP_OWNER_VCARD_NOT_SET"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    return-object p0
.end method

.method private getOutputResult(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .parameter "is"

    .prologue
    .line 636
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 637
    .local v1, r:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .local v0, b:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 640
    .local v2, s:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 641
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 644
    :catch_0
    move-exception v3

    .line 648
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 646
    :catchall_0
    move-exception v3

    throw v3
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 88
    const-string v1, "bluetooth_opp_service"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to get proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x0

    .line 93
    :goto_0
    return v1

    .line 92
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-direct {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;-><init>()V

    .line 93
    .local v0, p:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.OppService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public closeOpcSession()V
    .locals 2

    .prologue
    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppService;->closeOpcSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 312
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public closeOpsSession()V
    .locals 2

    .prologue
    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppService;->closeOpsSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 327
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteMergedVcards(Ljava/lang/String;)Z
    .locals 13
    .parameter "filePathPrefix"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 539
    const/4 v8, 0x0

    .line 541
    .local v8, success:Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v1, fPrefix:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 544
    .local v4, parentDir:Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "rm "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 545
    .local v6, rmCmd:Ljava/lang/String;
    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "sh"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string v10, "-c"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    aput-object v6, v7, v9

    .line 547
    .local v7, rmCmdArg:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 548
    .local v3, p:Ljava/lang/Process;
    const/4 v2, 0x0

    .line 550
    .local v2, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 552
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->getOutputResult(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 553
    .local v5, result:Ljava/lang/String;
    const-string v9, "BluetoothOPP"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    move v9, v12

    .line 563
    :goto_0
    if-eqz v2, :cond_1

    .line 565
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 576
    .end local v1           #fPrefix:Ljava/io/File;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #parentDir:Ljava/io/File;
    .end local v5           #result:Ljava/lang/String;
    .end local v6           #rmCmd:Ljava/lang/String;
    .end local v7           #rmCmdArg:[Ljava/lang/String;
    :cond_1
    :goto_1
    return v9

    .restart local v1       #fPrefix:Ljava/io/File;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #p:Ljava/lang/Process;
    .restart local v4       #parentDir:Ljava/io/File;
    .restart local v5       #result:Ljava/lang/String;
    .restart local v6       #rmCmd:Ljava/lang/String;
    .restart local v7       #rmCmdArg:[Ljava/lang/String;
    :cond_2
    move v9, v11

    .line 554
    goto :goto_0

    .line 563
    .end local v5           #result:Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_3

    .line 565
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 563
    :cond_3
    :goto_2
    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 573
    .end local v1           #fPrefix:Ljava/io/File;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #parentDir:Ljava/io/File;
    .end local v6           #rmCmd:Ljava/lang/String;
    .end local v7           #rmCmdArg:[Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 574
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :goto_3
    move v9, v8

    .line 576
    goto :goto_1

    .line 560
    .restart local v1       #fPrefix:Ljava/io/File;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #p:Ljava/lang/Process;
    .restart local v4       #parentDir:Ljava/io/File;
    .restart local v6       #rmCmd:Ljava/lang/String;
    .restart local v7       #rmCmdArg:[Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 563
    if-eqz v2, :cond_4

    .line 565
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 571
    :cond_4
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 566
    :catch_2
    move-exception v9

    goto :goto_4

    :catch_3
    move-exception v10

    goto :goto_2

    .restart local v5       #result:Ljava/lang/String;
    :catch_4
    move-exception v10

    goto :goto_1
.end method

.method public enableOpcSession()V
    .locals 2

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppService;->enableOpcSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 297
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public exchangeVcard(Ljava/lang/String;)V
    .locals 4
    .parameter "peerBDAddress"

    .prologue
    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->exchangeVcard(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 458
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exchangeVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 463
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 465
    sget v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    .line 466
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalize: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    if-eqz v1, :cond_0

    .line 502
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 513
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V

    .line 514
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 519
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    .line 521
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    monitor-exit p0

    return-void

    .line 515
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 516
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 501
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public grantAccess(IILjava/lang/String;)V
    .locals 7
    .parameter "operation"
    .parameter "access"
    .parameter "filePathName"

    .prologue
    const-string v6, "grantAccess("

    const-string v5, "BluetoothOPP"

    const-string v4, ")"

    const-string v3, ":"

    .line 373
    const-string v1, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grantAccess("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/opp/IOppService;->grantAccess(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 378
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grantAccess("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 112
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/opp/IOppService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/4 v1, 0x1

    .line 116
    :goto_0
    return v1

    .line 114
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 115
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeVcards(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "filePathPrefix"
    .parameter "mergedVcardFilepath"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 598
    const/4 v8, 0x0

    .line 600
    .local v8, success:Z
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .local v3, fPrefix:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 602
    .local v6, parentDir:Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cat "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, catCmd:Ljava/lang/String;
    const/4 v9, 0x3

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "sh"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "-c"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    aput-object v0, v1, v9

    .line 605
    .local v1, catCmdArg:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 606
    .local v5, p:Ljava/lang/Process;
    const/4 v4, 0x0

    .line 608
    .local v4, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 610
    invoke-direct {p0, v4}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->getOutputResult(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 611
    .local v7, result:Ljava/lang/String;
    const-string v9, "BluetoothOPP"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    move v9, v12

    .line 620
    :goto_0
    if-eqz v4, :cond_1

    .line 622
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 632
    .end local v0           #catCmd:Ljava/lang/String;
    .end local v1           #catCmdArg:[Ljava/lang/String;
    .end local v3           #fPrefix:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #p:Ljava/lang/Process;
    .end local v6           #parentDir:Ljava/io/File;
    .end local v7           #result:Ljava/lang/String;
    :cond_1
    :goto_1
    return v9

    .restart local v0       #catCmd:Ljava/lang/String;
    .restart local v1       #catCmdArg:[Ljava/lang/String;
    .restart local v3       #fPrefix:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #p:Ljava/lang/Process;
    .restart local v6       #parentDir:Ljava/io/File;
    .restart local v7       #result:Ljava/lang/String;
    :cond_2
    move v9, v11

    .line 612
    goto :goto_0

    .line 620
    .end local v7           #result:Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_3

    .line 622
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 620
    :cond_3
    :goto_2
    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 629
    .end local v0           #catCmd:Ljava/lang/String;
    .end local v1           #catCmdArg:[Ljava/lang/String;
    .end local v3           #fPrefix:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #p:Ljava/lang/Process;
    .end local v6           #parentDir:Ljava/io/File;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 630
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2           #e:Ljava/lang/Exception;
    :goto_3
    move v9, v8

    .line 632
    goto :goto_1

    .line 617
    .restart local v0       #catCmd:Ljava/lang/String;
    .restart local v1       #catCmdArg:[Ljava/lang/String;
    .restart local v3       #fPrefix:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #p:Ljava/lang/Process;
    .restart local v6       #parentDir:Ljava/io/File;
    :catch_1
    move-exception v9

    .line 620
    if-eqz v4, :cond_4

    .line 622
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 628
    :cond_4
    :goto_4
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 623
    :catch_2
    move-exception v9

    goto :goto_4

    :catch_3
    move-exception v10

    goto :goto_2

    .restart local v7       #result:Ljava/lang/String;
    :catch_4
    move-exception v10

    goto :goto_1
.end method

.method public pullVcard(Ljava/lang/String;)V
    .locals 4
    .parameter "peerBDAddress"

    .prologue
    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->pullVcard(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 440
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pullVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pushObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "peerBDAddress"
    .parameter "filePathName"

    .prologue
    .line 345
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call pushObject("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppService;->pushObject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 350
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothOPP"

    const-string/jumbo v1, "registerEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 3
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 190
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;-><init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;Lcom/broadcom/bt/service/opp/BluetoothOPP$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 194
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "BluetoothOPP"

    const-string v2, "Error registering callback handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 171
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 2
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 163
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresAccessProcessing()Z
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x1

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .locals 1
    .parameter "opCode"
    .parameter "allow"
    .parameter "name"

    .prologue
    .line 483
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, p1, v0, p3}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->grantAccess(IILjava/lang/String;)V

    .line 484
    return-void

    .line 483
    .restart local p3
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setExchangeFolder(Ljava/lang/String;)V
    .locals 6
    .parameter "pathName"

    .prologue
    const-string/jumbo v5, "setExchangeFolder("

    const-string v4, "BluetoothOPP"

    const-string v3, ")"

    .line 415
    const-string v1, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExchangeFolder("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->setExchangeFolder(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 421
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExchangeFolder("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setOwnerVcard(Ljava/lang/String;)V
    .locals 6
    .parameter "fileName"

    .prologue
    const-string/jumbo v5, "setOwnerVcard("

    const-string v4, "BluetoothOPP"

    const-string v3, ")"

    .line 394
    const-string v1, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOwnerVcard("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->setOwnerVcard(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 400
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOwnerVcard("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized unregisterEventHandler()V
    .locals 3

    .prologue
    const-string v1, "BluetoothOPP"

    .line 268
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothOPP"

    const-string/jumbo v2, "unregisterEventHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 285
    :goto_0
    monitor-exit p0

    return-void

    .line 280
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 281
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 268
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
