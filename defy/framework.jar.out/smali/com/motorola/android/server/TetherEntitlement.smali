.class public Lcom/motorola/android/server/TetherEntitlement;
.super Ljava/lang/Object;
.source "TetherEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/server/TetherEntitlement$1;,
        Lcom/motorola/android/server/TetherEntitlement$StateReceiver;
    }
.end annotation


# static fields
.field private static final APN_CHECK_STATE:Ljava/lang/String; = "APN_CHECK_STATE"

.field private static final DEBUG_LOGS:Z = true

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

.field private static final TAG:Ljava/lang/String; = "TetherEntitlement"

.field private static final TETHER_PENDING:Ljava/lang/String; = "TETHER_PENDING"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEntitlementCheckState:I

.field private mLastIfaceEnable:Ljava/lang/String;

.field private mLastUncheckTime:J

.field private mPendingTetherEnable:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbConnectNotification:Landroid/app/Notification;

.field private mUsbTetherAuthErrorNotif:Landroid/app/Notification;

.field private mUsbTetherAuthNotif:Landroid/app/Notification;

.field private mUsbTetherConnectErrorNotif:Landroid/app/Notification;

.field private mUsbTetherConnectNotif:Landroid/app/Notification;

.field private mUsbTetherReadyNotif:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mLastUncheckTime:J

    iput-object v3, p0, Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    iput-object p1, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;

    invoke-direct {v1, p0, v3}, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;-><init>(Lcom/motorola/android/server/TetherEntitlement;Lcom/motorola/android/server/TetherEntitlement$1;)V

    iput-object v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "motorola.intent.ENTITLEMENT_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/server/TetherEntitlement;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/server/TetherEntitlement;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/motorola/android/server/TetherEntitlement;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/motorola/android/server/TetherEntitlement;->mLastUncheckTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/motorola/android/server/TetherEntitlement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/motorola/android/server/TetherEntitlement;->mLastUncheckTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/motorola/android/server/TetherEntitlement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/server/TetherEntitlement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/android/server/TetherEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/android/server/TetherEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/android/server/TetherEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V

    return-void
.end method

.method private createUsbTetherAuthIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private setUsbTetherAuthErrorNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    const-string v4, "TetherEntitlement"

    const-string v5, "setUsbTetherAuthErrorNotif()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x10404db

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x10404dc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    const v5, 0x108033c

    iput v5, v4, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->icon:I

    .local v1, notifId:I
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/server/TetherEntitlement;->createUsbTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setUsbTetherAuthNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    const-string v4, "TetherEntitlement"

    const-string v5, "setUsbTetherAuthNotif()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x10404d5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x10404d6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    const v5, 0x108033b

    iput v5, v4, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    const/16 v5, 0x22

    iput v5, v4, Landroid/app/Notification;->flags:I

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->icon:I

    .local v1, notifId:I
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/server/TetherEntitlement;->createUsbTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setUsbTetherConnectErrorNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    const-string v4, "TetherEntitlement"

    const-string v5, "setUsbTetherConnectErrorNotif()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x10404dd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x10404de

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    const v5, 0x108033c

    iput v5, v4, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    add-int/lit16 v1, v4, 0x3039

    .local v1, notifId:I
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/server/TetherEntitlement;->createUsbTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setUsbTetherConnectNotif(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    const-string v6, "TetherEntitlement"

    const-string v7, "setUsbTetherConnectNotif()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

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

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x10404d7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x10404d8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    const v7, 0x108033b

    iput v7, v6, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    add-int/lit16 v2, v6, 0x3039

    .local v2, notifId:I
    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setUsbTetherReadyNotif(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    const-string v6, "TetherEntitlement"

    const-string v7, "setUsbTetherReadyNotif()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

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

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x10404d9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x10404da

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    const v7, 0x108033a

    iput v7, v6, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    add-int/lit16 v2, v6, 0x303a

    .local v2, notifId:I
    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkEntitlement(Ljava/lang/String;)Z
    .locals 12
    .parameter "Iface"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const-string v8, "TetherEntitlement"

    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "APN_CHECK_STATE"

    invoke-static {v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v4, "TetherEntitlement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved entitlement State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, currentTime:J
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "LAST_UNCHECK_TIME"

    invoke-static {v4, v5, v10, v11}, Lcom/motorola/android/provider/MotorolaSettings;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mLastUncheckTime:J

    const-string v4, "TetherEntitlement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last Uncheck time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/motorola/android/server/TetherEntitlement;->mLastUncheckTime:J

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

    iget-wide v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mLastUncheckTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mLastUncheckTime:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xdbba00

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const-string v4, "TetherEntitlement"

    const-string v4, "More than 4 hours since last uncheck, Starting Entitlement"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v10, p0, Lcom/motorola/android/server/TetherEntitlement;->mLastUncheckTime:J

    iput v9, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    :cond_0
    iget v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

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
    const-string v4, "TetherEntitlement"

    const-string v4, "From settings db: setting not found - entitlement State"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/Throwable;
    .restart local v0       #currentTime:J
    :pswitch_0
    const-string v4, "TetherEntitlement"

    const-string v4, "Sending Intent to trigger apn check"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.intent.ACTION_ENTITLEMENT_APN_CHECK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "com.motorola.permission.ATT_ENTITLEMENT"

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v4, "TetherEntitlement"

    const-string v4, "Dont Send Intent to trigger apn check: SUCCESS case"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v9

    goto :goto_2

    :pswitch_2
    iput-boolean v9, p0, Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
