.class public abstract Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
.super Ljava/lang/Object;
.source "StkBIPConnection.java"


# instance fields
.field bufferSize:I

.field channelId:I

.field linkStateCause:B

.field public mBuffsizeModified:Z

.field mStkBIPManager:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

.field uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;


# direct methods
.method public constructor <init>(ILcom/android/internal/telephony/gsm/stk/TransportLevel;Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)V
    .locals 2
    .parameter "buffSize"
    .parameter "iface"
    .parameter "stkBIPManager"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v0, 0x5dc

    if-le p1, v0, :cond_0

    .line 71
    const/16 p1, 0x5dc

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->mBuffsizeModified:Z

    .line 76
    :goto_0
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->bufferSize:I

    .line 77
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    .line 78
    iput-byte v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->linkStateCause:B

    .line 79
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->mStkBIPManager:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    .line 80
    return-void

    .line 74
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->mBuffsizeModified:Z

    goto :goto_0
.end method


# virtual methods
.method public abstract terminateStreams()V
.end method
