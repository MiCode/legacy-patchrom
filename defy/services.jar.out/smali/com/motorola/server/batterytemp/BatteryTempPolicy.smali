.class public Lcom/motorola/server/batterytemp/BatteryTempPolicy;
.super Ljava/lang/Object;
.source "BatteryTempPolicy.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatteryTempPolicy"

.field private static mBatteryTempPolicy:Lcom/motorola/server/batterytemp/BatteryTempPolicy;


# instance fields
.field private mBattTempThresholds:[I

.field private mBatteryPlugged:Z

.field private mBatteryTemp:I

.field private mBatteryTempThreshold:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPluggedInStatus:I

.field private mService:Lcom/motorola/server/batterytemp/BatteryTempService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    iput v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    new-instance v0, Lcom/motorola/server/batterytemp/BatteryTempPolicy$1;

    invoke-direct {v0, p0}, Lcom/motorola/server/batterytemp/BatteryTempPolicy$1;-><init>(Lcom/motorola/server/batterytemp/BatteryTempPolicy;)V

    iput-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-direct {v0, p1}, Lcom/motorola/server/batterytemp/BatteryTempService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sub-int/2addr v2, v4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sub-int/2addr v1, v4

    aput v1, v0, v4

    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    const/4 v1, -0x1

    aput v1, v0, v5

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryTempNormal(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryTempAlertCharging(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryTempAlertNoCharging(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryCooldownMode(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/server/batterytemp/BatteryTempPolicy;
    .locals 1
    .parameter "context"

    .prologue
    sget-object v0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempPolicy:Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    invoke-direct {v0, p0}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempPolicy:Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    :cond_0
    sget-object v0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempPolicy:Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    return-object v0
.end method

.method private handleBatteryCooldownMode(I)V
    .locals 1
    .parameter "batteryTemp"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-virtual {v0, p1}, Lcom/motorola/server/batterytemp/BatteryTempService;->onBatteryCooldownMode(I)V

    return-void
.end method

.method private handleBatteryTempAlertCharging(I)V
    .locals 1
    .parameter "batteryTemp"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-virtual {v0, p1}, Lcom/motorola/server/batterytemp/BatteryTempService;->onBatteryTempAlertCharging(I)V

    return-void
.end method

.method private handleBatteryTempAlertNoCharging(I)V
    .locals 1
    .parameter "batteryTemp"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-virtual {v0, p1}, Lcom/motorola/server/batterytemp/BatteryTempService;->onBatteryTempAlertNoCharging(I)V

    return-void
.end method

.method private handleBatteryTempNormal(I)V
    .locals 1
    .parameter "batteryTemp"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-virtual {v0, p1}, Lcom/motorola/server/batterytemp/BatteryTempService;->onBatteryTempNormal(I)V

    return-void
.end method

.method private notifyBatteryTemp(IIZ)V
    .locals 8
    .parameter "batteryThreshold"
    .parameter "batteryTemp"
    .parameter "charging"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v5, "mode"

    const-string v3, "com.motorola.internal.intent.action.PRE_TEMPERATURE_MODE_CHANGED"

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.internal.intent.action.PRE_TEMPERATURE_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, alarmIntent:Landroid/content/Intent;
    const-string v2, "mode"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v0           #alarmIntent:Landroid/content/Intent;
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.internal.intent.action.PRE_TEMPERATURE_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #alarmIntent:Landroid/content/Intent;
    const-string v2, "mode"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #msg:Landroid/os/Message;
    :goto_1
    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #msg:Landroid/os/Message;
    goto :goto_1

    .end local v0           #alarmIntent:Landroid/content/Intent;
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.internal.intent.action.PRE_TEMPERATURE_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #alarmIntent:Landroid/content/Intent;
    const-string v2, "mode"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pickNextBatteryTempThreshold(I)V
    .locals 3
    .parameter "temperature"

    .prologue
    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    array-length v0, v2

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    aget v2, v2, v1

    if-le p1, v2, :cond_2

    iput v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    :cond_0
    iget v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    if-lt v2, v0, :cond_1

    const/4 v2, 0x1

    sub-int v2, v0, v2

    iput v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final updateBatteryTemp(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v4, "plugged"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v6

    .local v2, plugged:Z
    :goto_0
    iget v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    .local v1, oldThreshold:I
    const-string v4, "temperature"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, batteryTemp:I
    const-string v4, "status"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mPluggedInStatus:I

    iput-boolean v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryPlugged:Z

    invoke-direct {p0, v0}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->pickNextBatteryTempThreshold(I)V

    const-string v4, "BatteryTempPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBatteryTemp temperature = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Threshhold = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTemp:I

    iget v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTemp:I

    iget-object v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    aget v5, v5, v7

    add-int/lit8 v5, v5, 0x32

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .local v3, pmc:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    .end local v3           #pmc:Landroid/os/PowerManager;
    :cond_0
    iget v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    if-eq v4, v1, :cond_1

    iget v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    iget v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTemp:I

    invoke-direct {p0, v4, v5, v2}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->notifyBatteryTemp(IIZ)V

    :cond_1
    return-void

    .end local v0           #batteryTemp:I
    .end local v1           #oldThreshold:I
    .end local v2           #plugged:Z
    :cond_2
    move v2, v7

    goto :goto_0
.end method


# virtual methods
.method public onReceiveIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, pluggedInStatus:I
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->updateBatteryTemp(Landroid/content/Intent;)V

    .end local v1           #pluggedInStatus:I
    :cond_0
    return-void
.end method
