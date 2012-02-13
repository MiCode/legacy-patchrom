.class public Lcom/motorola/android/wifi/ApEntitlement;
.super Ljava/lang/Object;
.source "ApEntitlement.java"


# static fields
.field private static final APN_CHECK_STATE:Ljava/lang/String; = "APN_CHECK_STATE"

.field private static final AP_ENABLE:Ljava/lang/String; = "AP_ENABLE"

.field private static final DBG:Z = true

.field private static final ENTITLEMENT_CHECK_STATE_CHANGED:Ljava/lang/String; = "motorola.intent.ENTITLEMENT_STATE_CHANGE"

.field private static final ENTITLEMENT_CHECK_STATE_FAIL:I = 0x4

.field private static final ENTITLEMENT_CHECK_STATE_NONE:I = 0x1

.field private static final ENTITLEMENT_CHECK_STATE_SUCCESS:I = 0x3

.field private static final ENTITLEMENT_CHECK_STATE_VERIFYING:I = 0x2

.field private static final EXTRA_ENTITLEMENT_CHECK_STATE:Ljava/lang/String; = "entitlement_state"

.field private static final LAST_UNCHECK_TIME:Ljava/lang/String; = "LAST_UNCHECK_TIME"

.field private static final NOTIF_ID_OFFSET:I = 0x3039

.field private static final REQUEST_START_ENTITLEMENT_APN_CHECK:Ljava/lang/String; = "com.motorola.intent.ACTION_ENTITLEMENT_APN_CHECK"

.field private static final SHORT_ENTITLEMENT_TIMEOUT:J = 0xdbba00L

.field private static final TAG:Ljava/lang/String; = "ApEntitlement"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEntitlementCheckState:I

.field private mLastUncheckTime:J

.field public mPendingWifiEnable:Z

.field private mWifiAuthErrorNotif:Landroid/app/Notification;

.field private mWifiAuthNotif:Landroid/app/Notification;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiConnectErrorNotif:Landroid/app/Notification;

.field private mWifiConnectNotif:Landroid/app/Notification;

.field private mWifiDisconnectNotif:Landroid/app/Notification;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiReadyNotif:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mLastUncheckTime:J

    iput-object p1, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/motorola/android/wifi/ApEntitlement$1;

    invoke-direct {v1, p0}, Lcom/motorola/android/wifi/ApEntitlement$1;-><init>(Lcom/motorola/android/wifi/ApEntitlement;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/motorola/android/wifi/ApEntitlement$2;

    invoke-direct {v1, p0}, Lcom/motorola/android/wifi/ApEntitlement$2;-><init>(Lcom/motorola/android/wifi/ApEntitlement;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "motorola.intent.ENTITLEMENT_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/wifi/ApEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/wifi/ApEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectErrorNotif(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/android/wifi/ApEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/wifi/ApEntitlement;->setWifiReadyNotif(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/android/wifi/ApEntitlement;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mLastUncheckTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/motorola/android/wifi/ApEntitlement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/motorola/android/wifi/ApEntitlement;->mLastUncheckTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/wifi/ApEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/android/wifi/ApEntitlement;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I

    return v0
.end method

.method static synthetic access$602(Lcom/motorola/android/wifi/ApEntitlement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I

    return p1
.end method

.method static synthetic access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/android/wifi/ApEntitlement;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/motorola/android/wifi/ApEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method private createUsbTetherAuthIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private setWifiAuthErrorNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    const-string v4, "ApEntitlement"

    const-string v5, "setWifiAuthErrorNotif()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x10404e5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x10404e6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    const v5, 0x1080340

    iput v5, v4, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    add-int/lit16 v1, v4, 0x303a

    .local v1, notifId:I
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/wifi/ApEntitlement;->createUsbTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setWifiAuthNotif(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    const-string v6, "ApEntitlement"

    const-string v7, "setWifiAuthNotif()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .local v3, notifManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x10404df

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x10404e0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    const v7, 0x108033f

    iput v7, v6, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    iget v2, v6, Landroid/app/Notification;->icon:I

    .local v2, notifId:I
    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setWifiConnectErrorNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    const-string v4, "ApEntitlement"

    const-string v5, "setWifiConnectErrorNotif()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x10404e7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x10404e8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    const v5, 0x1080340

    iput v5, v4, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    add-int/lit16 v1, v4, 0x303b

    .local v1, notifId:I
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/wifi/ApEntitlement;->createUsbTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setWifiConnectNotif(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    const-string v6, "ApEntitlement"

    const-string v7, "setWifiConnectNotif()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .local v3, notifManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x10404e1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x10404e2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    const v7, 0x108033f

    iput v7, v6, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    add-int/lit16 v2, v6, 0x3039

    .local v2, notifId:I
    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setWifiReadyNotif(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    const-string v6, "ApEntitlement"

    const-string v7, "setWifiReadyNotif()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .local v3, notifManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x10404e3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x10404e4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    const v7, 0x108033e

    iput v7, v6, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    add-int/lit16 v2, v6, 0x303a

    .local v2, notifId:I
    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method


# virtual methods
.method public CheckEntitlement(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 12
    .parameter "wifiConfig"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const-string v8, "ApEntitlement"

    iput-object p1, p0, Lcom/motorola/android/wifi/ApEntitlement;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "APN_CHECK_STATE"

    invoke-static {v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v4, "ApEntitlement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved Entitlement State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, currentTime:J
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "LAST_UNCHECK_TIME"

    invoke-static {v4, v5, v10, v11}, Lcom/motorola/android/provider/MotorolaSettings;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mLastUncheckTime:J

    const-string v4, "ApEntitlement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last Uncheck time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/motorola/android/wifi/ApEntitlement;->mLastUncheckTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "currentTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mLastUncheckTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mLastUncheckTime:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xdbba00

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const-string v4, "ApEntitlement"

    const-string v4, "More than 4 hours since last uncheck, Starting Entitlement"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v10, p0, Lcom/motorola/android/wifi/ApEntitlement;->mLastUncheckTime:J

    iput v9, p0, Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I

    :cond_0
    iget v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I

    packed-switch v4, :pswitch_data_0

    :goto_1
    const/4 v4, 0x0

    :goto_2
    return v4

    .end local v0           #currentTime:J
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/lang/Throwable;
    const-string v4, "ApEntitlement"

    const-string v4, "From settings db: setting not found - Entitlement State"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #e:Ljava/lang/Throwable;
    .restart local v0       #currentTime:J
    :pswitch_0
    const-string v4, "ApEntitlement"

    const-string v4, "Sending Intent to trigger apn check"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.intent.ACTION_ENTITLEMENT_APN_CHECK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "com.motorola.permission.ATT_ENTITLEMENT"

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v4, "ApEntitlement"

    const-string v4, "Dont Send Intent to trigger apn check: SUCCESS case,return true"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v9

    goto :goto_2

    :pswitch_2
    iput-boolean v9, p0, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
