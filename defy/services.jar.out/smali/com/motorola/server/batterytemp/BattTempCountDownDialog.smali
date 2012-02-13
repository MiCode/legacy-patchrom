.class Lcom/motorola/server/batterytemp/BattTempCountDownDialog;
.super Landroid/app/Dialog;
.source "BattTempCountDownDialog.java"


# static fields
.field private static final COUNT_DOWN_TIME:I = 0x14

.field private static final DEBUG:Z = false

.field private static final SCREEN_TIMEOUT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BattTempCountDownDialog"


# instance fields
.field private countDownTimer:Landroid/os/CountDownTimer;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTempService:Lcom/motorola/server/batterytemp/BatteryTempService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/server/batterytemp/BatteryTempService;)V
    .locals 4
    .parameter "context"
    .parameter "tempService"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->countDownTimer:Landroid/os/CountDownTimer;

    new-instance v1, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$1;

    invoke-direct {v1, p0}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$1;-><init>(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->mTempService:Lcom/motorola/server/batterytemp/BatteryTempService;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_TEMP_NORMAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)Landroid/os/CountDownTimer;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->countDownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->destroyDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)Lcom/motorola/server/batterytemp/BatteryTempService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->mTempService:Lcom/motorola/server/batterytemp/BatteryTempService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->showCooldownMode()V

    return-void
.end method

.method private destroyDialog()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->dismiss()V

    return-void
.end method

.method private showCooldownMode()V
    .locals 5

    .prologue
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.batteryreport.TEMPERATURE_COOLDOWN_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.android.batteryreport"

    const-string v4, "com.android.batteryreport.BattTempCooldownScreen"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->requestWindowFeature(I)Z

    const v0, 0x1090075

    invoke-virtual {p0, v0}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->setContentView(I)V

    const v0, 0x10403fd

    invoke-virtual {p0, v0}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->setTitle(I)V

    invoke-virtual {p0}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1080424

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    invoke-virtual {p0}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    new-instance v0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$2;

    const-wide/16 v2, 0x5208

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$2;-><init>(Lcom/motorola/server/batterytemp/BattTempCountDownDialog;JJ)V

    invoke-virtual {v0}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method
