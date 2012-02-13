.class public Landroid/net/wifi/WifiMonitor;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final CONNECTED:I = 0x1

.field private static final DISCONNECTED:I = 0x2

.field private static final DRIVER_STATE:I = 0x7

.field private static final LINK_SPEED:I = 0x5

.field private static final MAX_RECV_ERRORS:I = 0xa

.field private static final SCAN_RESULTS:I = 0x4

.field private static final STATE_CHANGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiMonitor"

.field private static final TERMINATING:I = 0x6

.field private static final UNKNOWN:I = 0x8

.field private static final connectedEvent:Ljava/lang/String; = "CONNECTED"

.field private static final disconnectedEvent:Ljava/lang/String; = "DISCONNECTED"

.field private static final driverStateEvent:Ljava/lang/String; = "DRIVER-STATE"

.field private static final eventPrefix:Ljava/lang/String; = "CTRL-EVENT-"

#the value of this static final field might be set in the static constructor
.field private static final eventPrefixLen:I = 0x0

.field private static final linkSpeedEvent:Ljava/lang/String; = "LINK-SPEED"

.field private static mConnectedEventPattern:Ljava/util/regex/Pattern; = null

.field private static mWapiCertRequestPattern:Ljava/util/regex/Pattern; = null

.field private static final monitorSocketClosed:Ljava/lang/String; = "connection closed"

.field private static final passwordKeyMayBeIncorrectEvent:Ljava/lang/String; = "pre-shared key may be incorrect"

.field private static final scanResultsEvent:Ljava/lang/String; = "SCAN-RESULTS"

.field private static final stateChangeEvent:Ljava/lang/String; = "STATE-CHANGE"

.field private static final terminatingEvent:Ljava/lang/String; = "TERMINATING"

.field private static final wapiAuthActivation:Ljava/lang/String; = "WAPI-AUTH-ACTIVATION"

.field private static final wapiCertRequest:Ljava/lang/String; = "CTRL-REQ-WAPI_CERT-"

.field private static final wpaEventPrefix:Ljava/lang/String; = "WPA:"

.field private static final wpaRecvError:Ljava/lang/String; = "recv error"

.field private static final wpsEventPrefix:Ljava/lang/String; = "WPS-"


# instance fields
.field private mRecvErrors:I

.field private final mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "CTRL-EVENT-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/net/wifi/WifiMonitor;->eventPrefixLen:I

    const-string v0, "[0-9]*-[0-9a-fA-F]* "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiMonitor;->mWapiCertRequestPattern:Ljava/util/regex/Pattern;

    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiMonitor;->mRecvErrors:I

    iput-object p1, p0, Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    sget v0, Landroid/net/wifi/WifiMonitor;->eventPrefixLen:I

    return v0
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiMonitor;->mRecvErrors:I

    return p1
.end method

.method static synthetic access$204(Landroid/net/wifi/WifiMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiMonitor;->mRecvErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiMonitor;->mRecvErrors:I

    return v0
.end method

.method static synthetic access$300(I)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-static {p0}, Landroid/net/wifi/WifiMonitor;->nap(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 6
    .parameter "newState"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .local v0, BSSID:Ljava/lang/String;
    const/4 v3, -0x1

    .local v3, networkId:I
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_0

    sget-object v4, Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .local v2, match:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "WifiMonitor"

    const-string v5, "Could not find BSSID in CONNECTED event string"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #match:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4, p1, v0, v3}, Landroid/net/wifi/WifiStateTracker;->notifyStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    return-void

    .restart local v2       #match:Ljava/util/regex/Matcher;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private static nap(I)V
    .locals 2
    .parameter "secs"

    .prologue
    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getNetworkStateTracker()Landroid/net/NetworkStateTracker;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    return-object v0
.end method

.method public startMonitoring()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/WifiMonitor$MonitorThread;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;-><init>(Landroid/net/wifi/WifiMonitor;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->start()V

    return-void
.end method
