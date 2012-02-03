.class public Lcom/android/internal/telephony/gsm/stk/StkBIPManager;
.super Landroid/os/Handler;
.source "StkBIPManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/StkBIPManager$2;
    }
.end annotation


# static fields
.field private static final ADMIN_PDN_EXTENSION_WAIT:I = 0x7530

.field static final BIP_CONTINUE_ADMIN_PDN:I = 0x5

.field static final BIP_DATA_STATE_CHANGED:I = 0x4

.field static final BIP_REQUEST_SETUP_DATA:I = 0x1

.field static final BIP_UICC_SERVER_RESTART_DONE:I = 0x3

.field static final BIP_UICC_SERVER_STARTED:I = 0x2

.field static final MAX_BIP_CHANNELS:I = 0x7

.field static channelIds:[Z

.field static mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;


# instance fields
.field activeClientConnections:I

.field private connMgr:Landroid/net/ConnectivityManager;

.field connection_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;",
            ">;"
        }
    .end annotation
.end field

.field crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

.field currentChannel:I

.field feature:Ljava/lang/String;

.field private mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

.field private mContext:Landroid/content/Context;

.field mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field monitorChannelStatusEvent:Z

.field monitorDataDownloadEvent:Z

.field private nwInfo:Landroid/net/NetworkInfo;

.field resp_pending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/stk/StkService;)V
    .locals 4
    .parameter "context"
    .parameter "phone"
    .parameter "handle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 118
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    .line 98
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->currentChannel:I

    .line 99
    iput v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->activeClientConnections:I

    .line 103
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    .line 105
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->resp_pending:Z

    .line 107
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->monitorDataDownloadEvent:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->monitorChannelStatusEvent:Z

    .line 110
    const-string v1, "enableBIP"

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->feature:Ljava/lang/String;

    .line 115
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    .line 132
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$1;-><init>(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    const-string v1, "Inside StkBIPManager"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 122
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mContext:Landroid/content/Context;

    .line 123
    sput-object p3, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    .line 124
    const/4 v1, 0x7

    new-array v1, v1, [Z

    sput-object v1, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->channelIds:[Z

    .line 125
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    .line 126
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    return-object v0
.end method

.method private assignChannelId()I
    .locals 3

    .prologue
    .line 804
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->channelIds:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 805
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->channelIds:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 806
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->channelIds:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 807
    add-int/lit8 v1, v0, 0x1

    .line 810
    :goto_1
    return v1

    .line 804
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 810
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private channelsAvailable()Z
    .locals 2

    .prologue
    .line 1402
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 1403
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->channelIds:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 1404
    const/4 v1, 0x1

    .line 1407
    :goto_1
    return v1

    .line 1402
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1407
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private checkPortInUse(I)Z
    .locals 5
    .parameter "port"

    .prologue
    const-string v4, "Port "

    .line 1417
    const-string v2, "checkPortInUse"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1418
    const/4 v0, 0x0

    .line 1419
    .local v0, b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1421
    .local v1, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1422
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    .line 1423
    .restart local v0       #b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    if-ne v2, p1, :cond_0

    .line 1424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in use. Cannot connect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1425
    const/4 v2, 0x1

    .line 1429
    :goto_0
    return v2

    .line 1428
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in use. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1429
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private closeClientConnection(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)V
    .locals 3
    .parameter "bipcon"

    .prologue
    const/4 v2, 0x0

    .line 994
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->freeChannel(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    .line 995
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->displayConnectionStatus()V

    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 998
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 1002
    const-string/jumbo v0, "stopUsingNetworkFeature()"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->feature:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1004
    return-void
.end method

.method private closeServerConnection(Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;)V
    .locals 4
    .parameter "server"
    .parameter "params"

    .prologue
    .line 1012
    const-string v2, "closeServerConnection"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1013
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloseChannel: BIP Server connection found! ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1015
    iget-object v2, p2, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;->mCloseChannelMode:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;->value()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1042
    :goto_0
    return-void

    .line 1018
    :pswitch_0
    sget-object v2, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1019
    .local v1, termResp:Landroid/os/Message;
    const-string v2, "handleCloseChannel: remove connection; TCP in CLOSED state!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->freeChannel(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    .line 1021
    const-string v2, "handleCloseChannel: Channel Mode is 00!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1022
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1023
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1024
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1025
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1026
    const-string v2, "handleCloseChannel: Sending Close Channel Terminal Response to mStkService handle"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1030
    .end local v1           #termResp:Landroid/os/Message;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->freeChannel(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    .line 1031
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->listener:Ljava/lang/Thread;

    .line 1032
    const-string v2, "handleCloseChannel: put TCP in LISTEN State!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;

    invoke-direct {v3, p1, p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;-><init>(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->listener:Ljava/lang/Thread;

    .line 1034
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->listener:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1035
    const/4 v2, 0x3

    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1036
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1037
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->sendMessage(Landroid/os/Message;)Z

    .line 1038
    const-string v2, "handleCloseChannel: Channel Mode is 01!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1015
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private continueProcessingCloseChannel(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter "nwInfo"

    .prologue
    .line 1437
    const-string v1, "continueProcessingCloseChannel(nwinfo):"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1438
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$2;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1442
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1443
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1444
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 1446
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1447
    .local v0, msg_resp:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1448
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1450
    const-string v1, "Sent close Channel TR:"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1452
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1453
    const-string v1, "Unregistering..."

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1454
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->stopListening()V

    .line 1455
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    goto :goto_0

    .line 1438
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private continueProcessingOpenChannel(Landroid/net/NetworkInfo;)V
    .locals 11
    .parameter "nwInfo"

    .prologue
    .line 1468
    iget v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->currentChannel:I

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    .line 1469
    .local v2, bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "continueProcessingOpenChannel() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1471
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$2;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 1598
    :cond_0
    :goto_0
    return-void

    .line 1473
    :pswitch_0
    const-string v8, "Sending Failure TR..."

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1475
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v9, v8, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1476
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1477
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v9, 0x0

    iput v9, v8, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 1479
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->resp_pending:Z

    if-eqz v8, :cond_1

    .line 1480
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1481
    .local v7, termResp:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1482
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1483
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->resp_pending:Z

    .line 1487
    .end local v7           #termResp:Landroid/os/Message;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->freeChannel(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    .line 1488
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->displayConnectionStatus()V

    .line 1490
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1491
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->stopListening()V

    .line 1492
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    goto :goto_0

    .line 1498
    :pswitch_1
    iget-object v8, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 1499
    .local v1, addrBytes:[B
    const/4 v5, 0x0

    .line 1501
    .local v5, routeExists:Z
    array-length v8, v1

    const/16 v9, 0x10

    if-ne v8, v9, :cond_3

    .line 1506
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1508
    .local v4, msg_resp:Landroid/os/Message;
    const-string v8, "Exception occurred while Setting up streams"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1509
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v9, v8, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1510
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1511
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v9, 0x0

    iput v9, v8, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 1512
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1514
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1515
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1517
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->channelIds:[Z

    iget v9, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    aput-boolean v10, v8, v9

    .line 1518
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1519
    const-string v8, "Removed connection  Successfully!!"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1523
    :cond_2
    const-string v8, "StopListening() & unregisterHandler()"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1524
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->stopListening()V

    .line 1525
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1526
    const-string v8, "Time to return"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1532
    .end local v4           #msg_resp:Landroid/os/Message;
    :cond_3
    const/4 v8, 0x3

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    const/4 v9, 0x2

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    const/4 v9, 0x1

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x0

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v0, v8, v9

    .line 1536
    .local v0, addr:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    const/16 v9, 0xa

    invoke-virtual {v8, v9, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v5

    .line 1539
    if-eqz v5, :cond_5

    .line 1541
    :try_start_0
    const-string v8, "connMgr.requestRouteToHost returned true"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1542
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->setupStreams()V

    .line 1543
    iget-object v8, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1544
    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z

    .line 1545
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iget-boolean v9, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->mBuffsizeModified:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    :goto_1
    iput-object v9, v8, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1546
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1583
    :goto_2
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->resp_pending:Z

    if-eqz v8, :cond_0

    .line 1585
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1586
    .restart local v7       #termResp:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    new-instance v9, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;

    invoke-direct {v9, v2}, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    iput-object v9, v8, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 1587
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1588
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1589
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->resp_pending:Z

    goto/16 :goto_0

    .line 1545
    .end local v7           #termResp:Landroid/os/Message;
    :cond_4
    :try_start_1
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_1

    .line 1548
    :cond_5
    const-string v8, "connMgr.requestRouteToHost returned false"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1551
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 1552
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "HandleMessage: Exception occurred while Setting up streams"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1553
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->resp_pending:Z

    if-eqz v8, :cond_0

    .line 1554
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v9, v8, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1555
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1556
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v9, 0x0

    iput v9, v8, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 1557
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1559
    .restart local v7       #termResp:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1560
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1562
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 1563
    .local v6, s:Ljava/lang/String;
    const-string v8, "TIMEOUT"

    invoke-virtual {v6, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    .line 1564
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->freeChannel(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    .line 1572
    :cond_6
    :goto_3
    const-string v8, "Stoplistening(),  Unregistring handler"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1573
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->stopListening()V

    .line 1574
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1576
    const-string v8, "Time to return"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1577
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->resp_pending:Z

    goto/16 :goto_0

    .line 1566
    :cond_7
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->channelIds:[Z

    iget v9, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    aput-boolean v10, v8, v9

    .line 1567
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1568
    const-string v8, "Removed connection  Successfully!!"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 1594
    .end local v0           #addr:I
    .end local v1           #addrBytes:[B
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #routeExists:Z
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #termResp:Landroid/os/Message;
    :pswitch_2
    const-string v8, "Still Connecting..."

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private displayConnectionStatus()V
    .locals 5

    .prologue
    .line 1382
    const-string v2, " "

    .line 1383
    .local v2, s:Ljava/lang/String;
    const-string v3, "Displaying ConnectionStatus"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1384
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->channelIds:[Z

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Channel id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " assigned ? - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->channelIds:[Z

    aget-boolean v4, v4, v1

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1387
    :cond_0
    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total number of connections "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1391
    const/4 v0, 0x0

    .line 1392
    .local v0, b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1394
    .local v1, i:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1395
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    .line 1396
    .restart local v0       #b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChannelID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " iface(protcl , port) =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    iget-byte v4, v4, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->transportProtocol:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    iget v4, v4, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1399
    :cond_1
    return-void
.end method

.method private freeChannel(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V
    .locals 3
    .parameter "bipcon"

    .prologue
    .line 347
    if-nez p1, :cond_1

    .line 348
    const-string v0, "Nothing to Free, No channels Open"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to freeChannel() chanelid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->terminateStreams()V

    .line 355
    const-string/jumbo v0, "removing channel id and connection from the list"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->channelIds:[Z

    iget v1, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "Removed connection  Successfully!!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBIPConnection(I)Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    .locals 4
    .parameter "cid"

    .prologue
    .line 783
    const-string v2, "StkBIPConnection : get ID"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    const/4 v0, 0x0

    .line 785
    .local v0, b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 787
    .local v1, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 788
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    .line 789
    .restart local v0       #b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    iget v2, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    if-ne v2, p1, :cond_0

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StkBIPConnection : found ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    .line 795
    :goto_0
    return-object v2

    .line 794
    :cond_1
    const-string v2, "StkBIPConnection : null ID"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 795
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isbearerTypeSupported(I)Z
    .locals 2
    .parameter "bearerType"

    .prologue
    .line 951
    packed-switch p1, :pswitch_data_0

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported bearer type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 957
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 951
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private openChannelAsRemoteClient(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)V
    .locals 14
    .parameter "bipcon"

    .prologue
    const/16 v11, 0x11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v13, "Removed connection  Successfully!!"

    const-string v12, "Exception occurred while Setting up streams"

    .line 174
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 175
    .local v3, msg_resp:Landroid/os/Message;
    const-string/jumbo v6, "openChannelAsRemoteClient()"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isBackgroundMode:Z

    if-nez v6, :cond_0

    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isOnDemand:Z

    if-eqz v6, :cond_2

    .line 179
    :cond_0
    const-string/jumbo v6, "openChannelAsRemoteClient():sending TR connection mode is either backgrnd or ondemand"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iget-boolean v7, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->mBuffsizeModified:Z

    if-ne v7, v10, :cond_1

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    :goto_0
    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 183
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-boolean v9, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 184
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    new-instance v7, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;

    invoke-direct {v7, p1}, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 186
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 187
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 188
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 190
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isOnDemand:Z

    if-eqz v6, :cond_2

    .line 340
    :goto_1
    return-void

    .line 182
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_0

    .line 196
    :cond_2
    const/4 v4, -0x1

    .line 198
    .local v4, result:I
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isBackgroundMode:Z

    if-nez v6, :cond_3

    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isOnDemand:Z

    if-nez v6, :cond_4

    .line 200
    :cond_3
    const-string/jumbo v6, "openChannelAsRemoteClient():requesting PDN connection connection mode :bkgrnd or immediate"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iput-boolean v9, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    .line 205
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->requestDataConnection(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)I

    move-result v4

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestDataConnection() returns "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    packed-switch v4, :pswitch_data_0

    .line 329
    :cond_4
    :goto_2
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isBackgroundMode:Z

    if-eqz v6, :cond_b

    .line 330
    const-string v6, "Backgound mode sending channel status to Stk Service"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    .line 339
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->displayConnectionStatus()V

    goto :goto_1

    .line 212
    :pswitch_0
    const-string/jumbo v6, "sending Failure TR"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 215
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-boolean v10, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 216
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput v9, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 218
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 219
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 227
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->freeChannel(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    .line 228
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->displayConnectionStatus()V

    goto :goto_1

    .line 233
    :pswitch_1
    const-string v6, "APN_ALREADY_ACTIVE"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    :try_start_0
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 237
    .local v1, addrBytes:[B
    const/4 v5, 0x0

    .line 240
    .local v5, routeExists:Z
    array-length v6, v1

    const/16 v7, 0x10

    if-ne v6, v7, :cond_8

    .line 245
    const-string v6, "Exception occurred while Setting up streams"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 247
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 248
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v7, 0x0

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 249
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 251
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 252
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 254
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->channelIds:[Z

    iget v7, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    sub-int/2addr v7, v10

    const/4 v8, 0x0

    aput-boolean v8, v6, v7

    .line 255
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 256
    const-string v6, "Removed connection  Successfully!!"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    :cond_6
    const-string v6, "StopListening() & unregisterHandler()"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->stopListening()V

    .line 262
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 263
    const-string v6, "Time to return"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 298
    .end local v1           #addrBytes:[B
    .end local v5           #routeExists:Z
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 299
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "Exception occurred while Setting up streams"

    invoke-static {p0, v12}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 301
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-boolean v10, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 302
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput v9, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 303
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 305
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 306
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 308
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->channelIds:[Z

    iget v7, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    sub-int/2addr v7, v10

    aput-boolean v9, v6, v7

    .line 309
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 310
    const-string v6, "Removed connection  Successfully!!"

    invoke-static {p0, v13}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    :cond_7
    const-string v6, "StopListening() & unregisterHandler()"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->stopListening()V

    .line 316
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 317
    const-string v6, "Time to return"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 269
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #addrBytes:[B
    .restart local v5       #routeExists:Z
    :cond_8
    const/4 v6, 0x3

    :try_start_1
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x0

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int v0, v6, v7

    .line 273
    .local v0, addr:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    const/16 v7, 0xa

    invoke-virtual {v6, v7, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v5

    .line 277
    if-eqz v5, :cond_a

    .line 278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RouteExists = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->setupStreams()V

    .line 280
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 281
    const/4 v6, 0x0

    iput-boolean v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z

    .line 283
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iget-boolean v7, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->mBuffsizeModified:Z

    if-ne v7, v10, :cond_9

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    :goto_4
    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 284
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 290
    :goto_5
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7530

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 292
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    const/4 v7, 0x4

    invoke-virtual {v6, p0, v7}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    .line 293
    const-string/jumbo v6, "registering handler with ConnectivityListener "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->startListening()V

    .line 296
    const-string v6, "mConnectivityListener.startListening() called "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 283
    :cond_9
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_4

    .line 286
    :cond_a
    const-string v6, " connMgr.requestRouteToHost returned false"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 323
    .end local v0           #addr:I
    .end local v1           #addrBytes:[B
    .end local v5           #routeExists:Z
    :pswitch_2
    const-string v6, " APN_REQUEST_STARTED , wait till we hear from NetworkListener, returning "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 332
    :cond_b
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isOnDemand:Z

    if-nez v6, :cond_5

    .line 333
    const-string v6, "Immediate mode Sending TR to Stk Service"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 335
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    new-instance v7, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;

    invoke-direct {v7, p1}, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 336
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3

    .line 208
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private receiveDataClientMode(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;I)V
    .locals 5
    .parameter "bipcon"
    .parameter "requestedLength"

    .prologue
    .line 924
    const/4 v0, 0x0

    .line 925
    .local v0, bytesRemaining:I
    const/4 v2, 0x0

    .line 926
    .local v2, dataLength:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 927
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 929
    and-int/lit16 v3, p2, 0xff

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->getRxData(I)[B

    move-result-object v1

    .line 930
    .local v1, data:[B
    if-nez v1, :cond_0

    .line 931
    const-string/jumbo v3, "receiveDataClientMode: RxData is null"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 941
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;

    invoke-direct {v4, v1, v2, v0}, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;-><init>([BII)V

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 942
    return-void

    .line 932
    :cond_0
    array-length v3, v1

    and-int/lit16 v4, p2, 0xff

    if-ge v3, v4, :cond_1

    .line 933
    array-length v2, v1

    .line 934
    const-string/jumbo v3, "receiveDataClientMode: RxData is shorter than requested length"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 937
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 938
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    iget v4, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    sub-int v0, v3, v4

    .line 939
    array-length v2, v1

    goto :goto_0
.end method

.method private receiveDataServerMode(Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;B)V
    .locals 9
    .parameter "b"
    .parameter "ChannelDataLength"

    .prologue
    const/4 v8, 0x0

    .line 814
    const-string/jumbo v6, "receiveDataServerMode"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    and-int/lit16 v0, p2, 0xff

    .line 817
    .local v0, arrayLength:I
    const/4 v1, 0x0

    .line 818
    .local v1, availableData:[B
    const/4 v5, 0x0

    .line 820
    .local v5, temp:[B
    const/4 v3, 0x0

    .line 821
    .local v3, bytesInRxBuffer:I
    const/4 v4, 0x0

    .line 823
    .local v4, dataLength:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 824
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-boolean v8, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 826
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 827
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 830
    :cond_0
    if-nez v1, :cond_2

    .line 864
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;

    invoke-direct {v7, v5, v4, v3}, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;-><init>([BII)V

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 865
    const-string/jumbo v6, "receiveDataServerMode: Filling Receive Data Terminal Response"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    return-void

    .line 832
    :cond_2
    array-length v6, v1

    if-ge v6, v0, :cond_3

    .line 833
    array-length v4, v1

    .line 834
    move-object v5, v1

    goto :goto_0

    .line 837
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 839
    array-length v6, v1

    iget v7, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->lastReadPosition:I

    sub-int v2, v6, v7

    .line 840
    .local v2, bytesAvailable:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytesAvailable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  availableData.length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  lastReadPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->lastReadPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 841
    if-lt v0, v2, :cond_4

    .line 842
    move v0, v2

    .line 845
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 846
    new-array v5, v0, [B

    .line 848
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->lastReadPosition:I

    invoke-static {v1, v6, v5, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->lastReadPosition:I

    add-int/2addr v6, v0

    iput v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->lastReadPosition:I

    .line 850
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastReadPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->lastReadPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    iget v7, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->lastReadPosition:I

    sub-int v3, v6, v7

    .line 853
    array-length v4, v5

    .line 855
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->lastReadPosition:I

    array-length v7, v1

    if-lt v6, v7, :cond_1

    .line 856
    const/4 v1, 0x0

    .line 857
    const-string/jumbo v6, "reset rxbuf buffer"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    const/4 v3, 0x0

    .line 859
    iput v8, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->lastReadPosition:I

    .line 860
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_0
.end method

.method private requestDataConnection(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)I
    .locals 5
    .parameter "con"

    .prologue
    const/4 v4, 0x1

    .line 972
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->setBipApn(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)V

    .line 973
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->feature:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 974
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result of startUsingNetworkFeature("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->feature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 976
    if-ne v4, v0, :cond_0

    .line 978
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    .line 979
    const-string/jumbo v1, "registering handler with ConnectivityListener "

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 981
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->startListening()V

    .line 982
    const-string v1, "mConnectivityListener.startListening() called "

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 984
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->resp_pending:Z

    .line 986
    return v0
.end method

.method private sendDataClientMode(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;[BZ)V
    .locals 22
    .parameter "con"
    .parameter "channelData"
    .parameter "sendDataImmediate"

    .prologue
    .line 1055
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isOnDemand:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 1056
    const-string v5, "ConnectionMode.isOnDemand && con.isfirstTime = true"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->requestDataConnection(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)I

    move-result v19

    .line 1060
    .local v19, result:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestDataConnection() returns "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1062
    packed-switch v19, :pswitch_data_0

    .line 1165
    .end local v19           #result:I
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z

    move v5, v0

    if-nez v5, :cond_2

    .line 1166
    const-string v5, "con.isfirstTime = false"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->bufferSize:I

    move v7, v0

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;-><init>(I)V

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 1174
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isTCPRemoteClient()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1176
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->socket:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/net/Socket;

    .line 1177
    .local v21, s:Ljava/net/Socket;
    invoke-virtual/range {v21 .. v21}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/net/Socket;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1178
    :cond_1
    const-string v5, "TCP Remote Client Socket is Closed or Not Connected"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 1181
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 1182
    .local v17, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1183
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .line 1184
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->freeChannel(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    .line 1185
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->displayConnectionStatus()V

    .line 1285
    .end local v17           #msg:Landroid/os/Message;
    .end local v21           #s:Ljava/net/Socket;
    :cond_2
    :goto_1
    return-void

    .line 1065
    .restart local v19       #result:I
    :pswitch_0
    const-string/jumbo v5, "sending Failure TR"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;-><init>(I)V

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 1072
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    .line 1073
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput-byte v0, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->linkStateCause:B

    .line 1076
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 1077
    .restart local v17       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1078
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .line 1080
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->freeChannel(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    goto :goto_1

    .line 1084
    .end local v17           #msg:Landroid/os/Message;
    :pswitch_1
    const-string v5, "APN_ALREADY_ACTIVE"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v11

    .line 1088
    .local v11, addrBytes:[B
    const/16 v20, 0x0

    .line 1090
    .local v20, routeExists:Z
    array-length v5, v11

    const/16 v6, 0x10

    if-ne v5, v6, :cond_4

    .line 1095
    new-instance v18, Landroid/os/Message;

    invoke-direct/range {v18 .. v18}, Landroid/os/Message;-><init>()V

    .line 1096
    .local v18, msg_resp:Landroid/os/Message;
    const-string v5, "Exception occurred while Setting up streams"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 1100
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1103
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    .line 1106
    const-string v5, "StopListening() & unregisterHandler()"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->stopListening()V

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1109
    const-string v5, "Time to return"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1132
    .end local v11           #addrBytes:[B
    .end local v18           #msg_resp:Landroid/os/Message;
    .end local v20           #routeExists:Z
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 1133
    .local v13, e:Ljava/lang/Exception;
    const-string v5, "Exception occurred while Setting up streams"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;-><init>(I)V

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 1139
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 1140
    .restart local v17       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1141
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .line 1142
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    .line 1143
    .local v21, s:Ljava/lang/String;
    const-string v5, "TIMEOUT"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6

    .line 1144
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->freeChannel(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    .line 1152
    :cond_3
    :goto_2
    const-string v5, "StopListening() & Unregister Handle"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->stopListening()V

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1155
    const-string v5, "Time to return"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1115
    .end local v13           #e:Ljava/lang/Exception;
    .end local v17           #msg:Landroid/os/Message;
    .end local v21           #s:Ljava/lang/String;
    .restart local v11       #addrBytes:[B
    .restart local v20       #routeExists:Z
    :cond_4
    const/4 v5, 0x3

    :try_start_1
    aget-byte v5, v11, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x2

    aget-byte v6, v11, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x1

    aget-byte v6, v11, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x0

    aget-byte v6, v11, v6

    and-int/lit16 v6, v6, 0xff

    or-int v10, v5, v6

    .line 1119
    .local v10, addr:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    move-object v6, v0

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v10}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v20

    .line 1123
    if-eqz v20, :cond_5

    .line 1124
    const-string v5, "connMgr.requestRouteToHost returned true"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->setupStreams()V

    .line 1126
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->receiver:Ljava/lang/Thread;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1127
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z

    goto/16 :goto_0

    .line 1129
    :cond_5
    const-string v5, "connMgr.requestRouteToHost returned false"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1146
    .end local v10           #addr:I
    .end local v11           #addrBytes:[B
    .end local v20           #routeExists:Z
    .restart local v13       #e:Ljava/lang/Exception;
    .restart local v17       #msg:Landroid/os/Message;
    .restart local v21       #s:Ljava/lang/String;
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->channelIds:[Z

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    aput-boolean v7, v5, v6

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1148
    const-string v5, "Removed connection  Successfully!!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1160
    .end local v13           #e:Ljava/lang/Exception;
    .end local v17           #msg:Landroid/os/Message;
    .end local v21           #s:Ljava/lang/String;
    :pswitch_2
    const-string v5, "APN_REQUEST_STARTED , wait till we hear from NetworkListner"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1188
    .end local v19           #result:I
    .local v21, s:Ljava/net/Socket;
    :cond_7
    const-string v5, "TCP Remote Client Socket is neither Closed nor Not Connected"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1190
    .end local v21           #s:Ljava/net/Socket;
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isUDPRemoteClient()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1191
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->socket:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/net/DatagramSocket;

    .line 1192
    .local v21, s:Ljava/net/DatagramSocket;
    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1193
    :cond_9
    const-string v5, "UDP Remote Client, Socket is Closed or Not Connected"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 1196
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 1197
    .restart local v17       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1198
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1202
    .end local v17           #msg:Landroid/os/Message;
    :cond_a
    const-string v5, "UDP Remote Client, Socket is neither Closed nor Not Connected"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    .end local v21           #s:Ljava/net/DatagramSocket;
    :cond_b
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storing bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "txIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txIndex:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " channeldatalength =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1209
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move v7, v0

    move-object v0, v5

    move-object/from16 v1, p2

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1210
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txIndex:I

    move v5, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txIndex:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1218
    :goto_3
    if-eqz p3, :cond_e

    .line 1220
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isUDPRemoteClient()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1221
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->socket:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/net/DatagramSocket;

    .line 1222
    .local v12, ds:Ljava/net/DatagramSocket;
    new-instance v4, Ljava/net/DatagramPacket;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;

    move-object v8, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    move-object v9, v0

    iget v9, v9, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    invoke-direct/range {v4 .. v9}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 1229
    .local v4, pkt:Ljava/net/DatagramPacket;
    :try_start_3
    invoke-virtual {v12, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1230
    const-string v5, "Packet Ready sent"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1233
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1234
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txIndex:I

    .line 1236
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->bufferSize:I

    move v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    sub-int v14, v5, v6

    .line 1237
    .local v14, emptySpace:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;

    invoke-direct {v6, v14}, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;-><init>(I)V

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1280
    .end local v4           #pkt:Ljava/net/DatagramPacket;
    .end local v12           #ds:Ljava/net/DatagramSocket;
    .end local v14           #emptySpace:I
    :cond_c
    :goto_4
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 1281
    .restart local v17       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1282
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1211
    .end local v17           #msg:Landroid/os/Message;
    :catch_1
    move-exception v5

    move-object v13, v5

    .line 1212
    .local v13, e:Ljava/lang/NullPointerException;
    const-string v5, "Nul pointer Exception while writing to tx buf "

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1213
    .end local v13           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v5

    move-object/from16 v16, v5

    .line 1214
    .local v16, ioe:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "IndexOutOfBounds Exception while writing to tx buf "

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1238
    .end local v16           #ioe:Ljava/lang/IndexOutOfBoundsException;
    .restart local v4       #pkt:Ljava/net/DatagramPacket;
    .restart local v12       #ds:Ljava/net/DatagramSocket;
    :catch_3
    move-exception v5

    move-object v15, v5

    .line 1239
    .local v15, i:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException while sending UDP packet : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 1241
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1242
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txIndex:I

    goto :goto_4

    .line 1246
    .end local v4           #pkt:Ljava/net/DatagramPacket;
    .end local v12           #ds:Ljava/net/DatagramSocket;
    .end local v15           #i:Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isTCPRemoteClient()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1248
    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->out:Ljava/io/DataOutputStream;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1250
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v21

    .line 1251
    .local v21, s:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data written to TCP sockt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1255
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1256
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txIndex:I

    .line 1258
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->bufferSize:I

    move v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    sub-int v14, v5, v6

    .line 1260
    .restart local v14       #emptySpace:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;

    invoke-direct {v6, v14}, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;-><init>(I)V

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    .line 1262
    .end local v14           #emptySpace:I
    .end local v21           #s:Ljava/lang/String;
    :catch_4
    move-exception v5

    move-object v13, v5

    .line 1263
    .local v13, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while sending to TCP packet : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 1266
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1267
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txIndex:I

    goto/16 :goto_4

    .line 1273
    .end local v13           #e:Ljava/lang/Exception;
    :cond_e
    const-string v5, "Data Stored. Send Response"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1276
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->bufferSize:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txIndex:I

    move v6, v0

    sub-int v14, v5, v6

    .line 1277
    .restart local v14       #emptySpace:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    move-object v5, v0

    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;

    invoke-direct {v6, v14}, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;-><init>(I)V

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    goto/16 :goto_4

    .line 1062
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendDataServerMode(Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;[BZ)V
    .locals 8
    .parameter "b"
    .parameter "ChannelData"
    .parameter "SendImmediate"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 869
    const-string/jumbo v3, "sendDataServerMode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    :try_start_0
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->socket:Ljava/net/Socket;

    .line 872
    .local v2, s:Ljava/net/Socket;
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 873
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 874
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 875
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;-><init>(I)V

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 876
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 878
    const-string/jumbo v3, "sendDataServerMode: Socket Closed/Not Connected"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    .end local v2           #s:Ljava/net/Socket;
    :goto_0
    return-void

    .line 884
    .restart local v2       #s:Ljava/net/Socket;
    :cond_1
    if-eqz p3, :cond_2

    .line 885
    const-string/jumbo v3, "sendDataServerMode: send immediate"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 886
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    array-length v5, p2

    invoke-virtual {v3, p2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 887
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 888
    .local v1, immediateData:[B
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 889
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 890
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDataServerMode: Wrote all data to socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 891
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 893
    const-string/jumbo v3, "sendDataServerMode: Resetting the Buffer"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    .end local v1           #immediateData:[B
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 901
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 902
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;

    const/16 v5, 0xff

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;-><init>(I)V

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 903
    const-string/jumbo v3, "sendDataServerMode: Filling SEND DATA Terminal Response"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 905
    .end local v2           #s:Ljava/net/Socket;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 906
    .local v0, e:Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 907
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-boolean v7, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 908
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;-><init>(I)V

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 909
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput v6, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 910
    const-string/jumbo v3, "sendDataServerMode: Java IO Exception: Filling SEND DATA Terminal Response with BIP_ERROR"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 895
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #s:Ljava/net/Socket;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "sendDataServerMode: Store Mode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 896
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    array-length v5, p2

    invoke-virtual {v3, p2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 897
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDataServerMode: Size of Tx buffer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setBipApn(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)V
    .locals 4
    .parameter "bipcon"

    .prologue
    .line 1603
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1605
    .local v1, pref:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 1606
    const-string/jumbo v2, "setBipApn : there is no default preferences"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1616
    :goto_0
    return-void

    .line 1609
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1610
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "setBipApn : set values"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1611
    const-string v2, "bip.pref.enable"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1612
    const-string v2, "bip.pref.apn"

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1613
    const-string v2, "bip.pref.user"

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->userName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1614
    const-string v2, "bip.pref.passwd"

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->passwd:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1615
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public getChannelStatus(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 5
    .parameter "cmdParams"

    .prologue
    .line 615
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    .line 616
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 617
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 618
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 620
    const-string v2, "getChannelStatus"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 623
    .local v0, i:Ljava/util/Iterator;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/gsm/stk/GetChannelStatusResponse;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->channelIds:[Z

    invoke-direct {v3, v0, v4}, Lcom/android/internal/telephony/gsm/stk/GetChannelStatusResponse;-><init>(Ljava/util/Iterator;[Z)V

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 624
    const-string v2, "Filled crnt_resp.data"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    sget-object v2, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 627
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 628
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 629
    return-void
.end method

.method public handleCloseChannel(Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;)V
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x3

    .line 464
    const-string v4, "handleCloseChannel"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    const/4 v1, 0x0

    .line 467
    .local v1, b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    iget v4, p1, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;->mChannelId:I

    and-int/lit8 v2, v4, 0x7

    .line 468
    .local v2, cid:I
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    .line 469
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 471
    .local v3, termResp:Landroid/os/Message;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCloseChannel: Requested Chanel ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 473
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 474
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 476
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->displayConnectionStatus()V

    .line 477
    iget v4, p1, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;->mChannelId:I

    const/16 v5, 0x21

    if-lt v4, v5, :cond_0

    iget v4, p1, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;->mChannelId:I

    const/16 v5, 0x27

    if-le v4, v5, :cond_1

    .line 479
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCloseChannel: Invalid Channel Id! BIP\'s cid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " params.mChannelId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;->mChannelId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput v6, v4, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 482
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 483
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 508
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    move-result-object v1

    .line 489
    if-nez v1, :cond_2

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCloseChannel: No Channel Available! BIP cid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " params.mChannelId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;->mChannelId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput v6, v4, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 494
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 495
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 500
    :cond_2
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isServer()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 501
    const-string v4, "handleCloseChannel: UICC in SERVER Mode"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    move-object v4, v0

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->closeServerConnection(Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;)V

    goto :goto_0

    .line 504
    :cond_3
    const-string v4, "handleCloseChannel: UICC in CLIENT Mode"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    move-object v4, v0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->closeClientConnection(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/16 v10, 0x11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, "handleMessage: Filled Open Channel Terminal Response params"

    const-string v11, "handleMessage: BIP Server socket closed"

    .line 645
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handling Message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 768
    const-string v6, "handleMessage: default"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    :goto_0
    return-void

    .line 649
    :pswitch_0
    const-string v6, "BIP_DATA_STATE_CHANGED"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    .line 651
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 652
    .local v3, connectionState:Landroid/net/NetworkInfo$State;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nwInfo.getType()  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ConnectionState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_0

    .line 656
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network :nwInfo.getType() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not TYPE_MOBILE_BIP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_0
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v6, :cond_2

    .line 661
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->monitorChannelStatusEvent:Z

    if-ne v6, v9, :cond_2

    .line 662
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 663
    .local v4, i:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 664
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    .line 665
    .local v0, bipclient:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isRemoteClient()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 666
    iput-boolean v8, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    .line 667
    const/4 v6, 0x5

    iput-byte v6, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->linkStateCause:B

    .line 669
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    goto :goto_1

    .line 675
    .end local v0           #bipclient:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;
    .end local v4           #i:Ljava/util/Iterator;
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkService;->mBIPCurrntCmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    if-nez v6, :cond_4

    .line 676
    :cond_3
    const-string v6, "No BIP cmd is being processed, May not have been unregistered from NWConnectivityListener  "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 680
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkService;->mBIPCurrntCmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v2

    .line 681
    .local v2, cmd:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Still processing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_0

    .line 686
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->continueProcessingOpenChannel(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 689
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->continueProcessingCloseChannel(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 700
    .end local v2           #cmd:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .end local v3           #connectionState:Landroid/net/NetworkInfo$State;
    :pswitch_3
    const-string v6, "handleMessage: BIP_UICC_SERVER_STARTED"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    .line 703
    .local v1, bipserver:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->listener:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-nez v6, :cond_6

    .line 704
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 705
    const-string v6, "handleMessage: BIP Server socket closed"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    iput-byte v8, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->linkState:B

    .line 708
    iput-byte v8, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->linkStateCause:B

    .line 711
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 712
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-boolean v9, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 713
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput v8, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 714
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    new-instance v7, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;

    invoke-direct {v7, v1}, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 715
    const-string v6, "handleMessage: Filled Open Channel Terminal Response params"

    invoke-static {p0, v12}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 728
    :cond_5
    :goto_2
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 729
    .local v5, termResp:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 730
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 731
    const-string v6, "handleMessage: Sending OPEN CHANNEL Terminal Response to mStkService handle"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 718
    .end local v5           #termResp:Landroid/os/Message;
    :cond_6
    const-string v6, "handleMessage: BIP Server socket opened in LISTEN state"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    iput-byte v9, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->linkState:B

    .line 720
    iput-byte v8, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->linkStateCause:B

    .line 722
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iget-boolean v7, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->mBuffsizeModified:Z

    if-ne v7, v9, :cond_7

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    :goto_3
    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 723
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-boolean v9, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 724
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput v8, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 725
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    new-instance v7, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;

    invoke-direct {v7, v1}, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 726
    const-string v6, "handleMessage: Filled Open Channel Terminal Response params"

    invoke-static {p0, v12}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 722
    :cond_7
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_3

    .line 736
    .end local v1           #bipserver:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;
    :pswitch_4
    const-string v6, "handleMessage: BIP_UICC_SERVER_RESTART_DONE"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    .line 739
    .restart local v1       #bipserver:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->listener:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-nez v6, :cond_9

    .line 740
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 741
    const-string v6, "handleMessage: BIP Server socket closed"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    iput-byte v8, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->linkState:B

    .line 744
    iput-byte v8, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->linkStateCause:B

    .line 747
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 748
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-boolean v9, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 749
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iget-byte v7, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->linkStateCause:B

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 750
    const-string v6, "handleMessage: Filled Terminal Response params"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    :cond_8
    :goto_4
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 762
    .restart local v5       #termResp:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 763
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 764
    const-string v6, "handleMessage: BIP_UICC_SERVER_RESTART_DONE: Sending Terminal Response to mStkService handle"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 753
    .end local v5           #termResp:Landroid/os/Message;
    :cond_9
    const-string v6, "handleMessage: BIP Server socket opened in LISTEN State"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    iput-byte v9, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->linkState:B

    .line 755
    iput-byte v8, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->linkStateCause:B

    .line 756
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 757
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-boolean v9, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 758
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iget-byte v7, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->linkStateCause:B

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 759
    const-string v6, "handleMessage: Filled Terminal Response params"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 647
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 684
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleOpenChannel(Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;)V
    .locals 14
    .parameter "params"

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    .line 371
    const-string v2, "handleOpenChannel"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    const/4 v11, 0x0

    .line 373
    .local v11, msg:Landroid/os/Message;
    const/4 v1, 0x0

    .line 375
    .local v1, bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    .line 376
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 377
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 378
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-boolean v4, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 380
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->channelsAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    const-string v2, "Bearer type not supported"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 383
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-boolean v4, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 384
    sget-object v2, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 385
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v2, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 386
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 456
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->checkPortInUse(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 392
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 393
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/16 v3, 0x10

    iput v3, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 394
    sget-object v2, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 395
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v2, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 396
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->displayConnectionStatus()V

    .line 403
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isServer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 405
    const-string v2, "handleOpenChannel: UICC in SERVER mode"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    .end local v1           #bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    iget v2, p1, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBufferSize:I

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;-><init>(ILcom/android/internal/telephony/gsm/stk/TransportLevel;Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)V

    .line 411
    .restart local v1       #bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    const-string v2, "handleOpenChannel: Starting Thread"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->assignChannelId()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    .line 414
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    move-object v2, v0

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;

    invoke-direct {v4, v1, p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;-><init>(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->listener:Ljava/lang/Thread;

    .line 421
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->listener:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 423
    const-string v2, "handleOpenChannel: Started Thread"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v11

    .line 425
    iput-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 426
    const-string v2, "handleOpenChannel: Msg Obtained"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->sendMessage(Landroid/os/Message;)Z

    .line 428
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->displayConnectionStatus()V

    goto/16 :goto_0

    .line 430
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 431
    .local v13, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v12

    .line 432
    .local v12, networkType:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "networkType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    .end local v1           #bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;

    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBufferSize:I

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

    iget-object v8, p1, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mUsernameTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v9, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mPasswordTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v10, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;-><init>(Lcom/android/internal/telephony/gsm/stk/BearerDescription;ILcom/android/internal/telephony/gsm/stk/TransportLevel;Lcom/android/internal/telephony/gsm/stk/StkBIPManager;Ljava/lang/String;Lcom/android/internal/telephony/gsm/stk/BearerMode;Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .restart local v1       #bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->assignChannelId()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    .line 446
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel Assigned  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    iget v2, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->currentChannel:I

    .line 450
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    move-object v2, v0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->openChannelAsRemoteClient(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)V

    .line 453
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->displayConnectionStatus()V

    goto/16 :goto_0
.end method

.method public handleReceiveData(Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;)V
    .locals 9
    .parameter "params"

    .prologue
    const/4 v7, 0x1

    const-string v8, "handleReceiveData: Sending Receive Data Terminal Response to mStkService handle"

    .line 552
    const-string v5, "handleReceiveData"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;->mChannelId:I

    and-int/lit8 v2, v5, 0x7

    .line 554
    .local v2, cid:I
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    .line 557
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 560
    .local v4, termResp:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 561
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 562
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-boolean v7, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 563
    const-string v5, "handleReceiveData: Created partial Receive Data Terminal Response"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;->mChannelId:I

    const/16 v6, 0x21

    if-lt v5, v6, :cond_0

    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;->mChannelId:I

    const/16 v6, 0x27

    if-le v5, v6, :cond_1

    .line 567
    :cond_0
    const-string v5, "handleReceiveData: Invalid Channel ID"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v6, 0x3

    iput v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 569
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 570
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 604
    :goto_0
    return-void

    .line 574
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    move-result-object v1

    .line 575
    .local v1, b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    if-nez v1, :cond_2

    .line 577
    const-string v5, "handleReceiveData: No Channel available"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput v7, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 579
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 580
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 585
    :cond_2
    iget-object v5, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isServer()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 587
    const-string v5, "handleReceiveData: BIP Connection Found. UICC in SERVER mode"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    move-object v3, v0

    .line 590
    .local v3, server:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;
    iget-byte v5, p1, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;->mChannelDataLength:B

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->receiveDataServerMode(Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;B)V

    .line 591
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 592
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 593
    const-string v5, "handleReceiveData: Sending Receive Data Terminal Response to mStkService handle"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    .end local v3           #server:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;
    :cond_3
    const-string v5, "Receiving Data in Client mode"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    check-cast v1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    .end local v1           #b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    iget-byte v5, p1, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;->mChannelDataLength:B

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->receiveDataClientMode(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;I)V

    .line 600
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 601
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 602
    const-string v5, "handleReceiveData: Sending Receive Data Terminal Response to mStkService handle"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSendData(Lcom/android/internal/telephony/gsm/stk/SendDataParams;)V
    .locals 7
    .parameter "params"

    .prologue
    .line 511
    const-string v5, "handleSendData"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/SendDataParams;->mChannelId:I

    and-int/lit8 v2, v5, 0x7

    .line 515
    .local v2, cid:I
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 517
    .local v4, termResp:Landroid/os/Message;
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    .line 518
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 519
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 520
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 522
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->displayConnectionStatus()V

    .line 524
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    move-result-object v1

    .line 525
    if-eqz v1, :cond_0

    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/SendDataParams;->mChannelId:I

    const/16 v6, 0x21

    if-lt v5, v6, :cond_0

    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/SendDataParams;->mChannelId:I

    const/16 v6, 0x27

    if-le v5, v6, :cond_1

    .line 526
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSendData: No Channel available : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    const/4 v6, 0x3

    iput v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 528
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 529
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 549
    .end local v1           #b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    :goto_0
    return-void

    .line 533
    .restart local v1       #b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    :cond_1
    iget-object v5, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isServer()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 535
    const-string v5, "handleSendData: UICC in SERVER mode"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    move-object v3, v0

    .line 538
    .local v3, server:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;
    iget-object v5, p1, Lcom/android/internal/telephony/gsm/stk/SendDataParams;->mChannelData:[B

    iget-boolean v6, p1, Lcom/android/internal/telephony/gsm/stk/SendDataParams;->mSendImmediate:Z

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->sendDataServerMode(Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;[BZ)V

    .line 539
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->crnt_resp:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 540
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 541
    const-string v5, "handleSendData: Sending Send Data Terminal Response to mStkService handle"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    .end local v3           #server:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;
    :cond_2
    const-string v5, "handleSendData: UICC in CLIENT mode"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    check-cast v1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    .end local v1           #b:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    iget-object v5, p1, Lcom/android/internal/telephony/gsm/stk/SendDataParams;->mChannelData:[B

    iget-boolean v6, p1, Lcom/android/internal/telephony/gsm/stk/SendDataParams;->mSendImmediate:Z

    invoke-direct {p0, v1, v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->sendDataClientMode(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;[BZ)V

    goto :goto_0
.end method

.method public sendChannelStatusEvent(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V
    .locals 11
    .parameter "bipcon"

    .prologue
    const-string v10, "StkBIPManager"

    .line 1294
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->monitorChannelStatusEvent:Z

    if-nez v6, :cond_0

    .line 1295
    const-string v6, "StkBIPManager"

    const-string/jumbo v6, "sendChannelStatusEvent: not set"

    invoke-static {v10, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    :goto_0
    return-void

    .line 1299
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1300
    .local v1, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 1301
    .local v5, tag:I
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1302
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1304
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    and-int/lit8 v6, v6, 0x7

    int-to-byte v4, v6

    .line 1306
    .local v4, s:B
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isServer()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1307
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    move-object v6, v0

    iget-byte v6, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->linkState:B

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v4

    int-to-byte v4, v6

    .line 1313
    :cond_1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1314
    iget-byte v6, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->linkStateCause:B

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1316
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    const/16 v6, 0xa

    const/16 v7, 0x82

    const/16 v8, 0x81

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;-><init>(III[B)V

    .line 1321
    .local v2, env:Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1322
    .local v3, msg:Landroid/os/Message;
    const-string v6, "StkBIPManager"

    const-string/jumbo v6, "sendChannelStatusEvent: Send EVENT_DOWNLOAD_CHANNEL_STATUS Envelope Message to mStkService handle"

    invoke-static {v10, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1324
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1309
    .end local v2           #env:Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;
    .end local v3           #msg:Landroid/os/Message;
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    if-eqz v6, :cond_1

    .line 1310
    or-int/lit16 v6, v4, 0x80

    int-to-byte v4, v6

    goto :goto_1
.end method

.method public sendDataAvailableEvent(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V
    .locals 13
    .parameter "bipcon"

    .prologue
    const/16 v9, 0xff

    const-string v12, "StkBIPManager"

    .line 1332
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->monitorDataDownloadEvent:Z

    if-nez v8, :cond_0

    .line 1333
    const-string v8, "StkBIPManager"

    const-string/jumbo v8, "sendDataAvailableEvent: not set"

    invoke-static {v12, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    .end local p1
    :goto_0
    return-void

    .line 1338
    .restart local p1
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1340
    .local v1, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v8

    or-int/lit16 v7, v8, 0x80

    .line 1341
    .local v7, tag:I
    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1342
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1344
    iget v8, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    and-int/lit8 v8, v8, 0x7

    int-to-byte v6, v8

    .line 1345
    .local v6, s:B
    iget-object v8, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isServer()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1346
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    move-object v8, v0

    iget-byte v8, v8, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->linkState:B

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v8, v6

    int-to-byte v6, v8

    .line 1352
    :cond_1
    :goto_1
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1353
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1356
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v8

    or-int/lit16 v7, v8, 0x80

    .line 1357
    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1358
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1360
    const/4 v3, 0x0

    .line 1361
    .local v3, dataLength:I
    iget-object v8, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isServer()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1362
    const/16 v3, 0xff

    .line 1367
    .end local p1
    :goto_2
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1369
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    const/16 v8, 0x9

    const/16 v9, 0x82

    const/16 v10, 0x81

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v4, v8, v9, v10, v11}, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;-><init>(III[B)V

    .line 1374
    .local v4, env:Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->mStkServicehandle:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1375
    .local v5, msg:Landroid/os/Message;
    const-string v8, "StkBIPManager"

    const-string/jumbo v8, "sendDataAvailableEvent: Send EVENT_DOWNLOAD_DATA_AVAILABLE Envelope Message to mStkService handle"

    invoke-static {v12, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1377
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1348
    .end local v3           #dataLength:I
    .end local v4           #env:Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;
    .end local v5           #msg:Landroid/os/Message;
    .restart local p1
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    move-object v8, v0

    iget-boolean v8, v8, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    if-eqz v8, :cond_1

    .line 1349
    or-int/lit16 v8, v6, 0x80

    int-to-byte v6, v8

    goto :goto_1

    .line 1364
    .restart local v3       #dataLength:I
    :cond_3
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    .end local p1
    iget-object v8, p1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .line 1365
    .local v2, bytesAvailable:I
    if-le v2, v9, :cond_4

    move v3, v9

    :goto_3
    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3
.end method
