.class public Lcom/android/phone/OtaStartupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OtaStartupReceiver.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final MIN_READY:I = 0xa

.field private static final TAG:Ljava/lang/String; = "OtaStartupReceiver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/OtaStartupReceiver;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    new-instance v0, Lcom/android/phone/OtaStartupReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaStartupReceiver$1;-><init>(Lcom/android/phone/OtaStartupReceiver;)V

    iput-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/OtaStartupReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/OtaStartupReceiver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private shouldPostpone(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "REQUIRED"

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.DEVICE_INITIALIZATION_WIZARD"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x1

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 88
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v2, v9

    .line 90
    .local v2, provisioned:Z
    :goto_0
    const-string v5, "ro.setupwizard.mode"

    const-string v6, "REQUIRED"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, mode:Ljava/lang/String;
    const-string v5, "REQUIRED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "OPTIONAL"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    move v4, v9

    .line 92
    .local v4, runningSetupWizard:Z
    :goto_1
    sget-boolean v5, Lcom/android/phone/OtaStartupReceiver;->DBG:Z

    if-eqz v5, :cond_1

    .line 93
    const-string v5, "OtaStartupReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolvInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", provisioned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", runningSetupWizard = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    if-eqz v4, :cond_4

    move v5, v9

    :goto_2
    return v5

    .end local v1           #mode:Ljava/lang/String;
    .end local v2           #provisioned:Z
    .end local v4           #runningSetupWizard:Z
    :cond_2
    move v2, v8

    .line 88
    goto :goto_0

    .restart local v1       #mode:Ljava/lang/String;
    .restart local v2       #provisioned:Z
    :cond_3
    move v4, v8

    .line 91
    goto :goto_1

    .restart local v4       #runningSetupWizard:Z
    :cond_4
    move v5, v8

    .line 96
    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v1, "OtaStartupReceiver"

    .line 53
    iput-object p1, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {}, Lcom/android/phone/OtaUtils;->isCdmaPhone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    sget-boolean v0, Lcom/android/phone/OtaStartupReceiver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OtaStartupReceiver"

    const-string v0, "Not a CDMA phone, no need to process OTA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/OtaStartupReceiver;->shouldPostpone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    sget-boolean v0, Lcom/android/phone/OtaStartupReceiver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OtaStartupReceiver"

    const-string v0, "Postponing CDMA provisioning until wizard runs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/android/phone/OtaUtils;->maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z

    goto :goto_0
.end method
