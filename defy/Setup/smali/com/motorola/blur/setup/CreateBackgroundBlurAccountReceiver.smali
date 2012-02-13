.class public Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CreateBackgroundBlurAccountReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupCBBAR"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-static {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver;->wakeUpService(Landroid/content/Context;)V

    return-void
.end method

.method private handleDataStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v11, "default"

    const-string v10, "SetupCBBAR"

    .line 45
    const-string v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, state:Ljava/lang/String;
    const-string v1, "ACTION_ANY_DATA_CONNECTION_STATE_CHANGED event received: "

    .line 48
    .local v1, info:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    :goto_0
    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, reason:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    :cond_0
    const-string v6, "apn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, apn:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", APN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    :cond_1
    const-string v6, "apnType"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, types:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", APN types: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    :cond_2
    const-string v6, "iface"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, interfaceName:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", interface name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    :cond_3
    const-string v6, "SetupCBBAR"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v9

    invoke-static {v10, v6}, Lcom/motorola/blur/util/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    if-eqz v4, :cond_5

    const-string v6, "CONNECTED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 77
    if-eqz v5, :cond_4

    if-nez v3, :cond_7

    .line 78
    :cond_4
    const-string v6, "SetupCBBAR"

    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore ACTION_ANY_DATA_CONNECTION_STATE_CHANGED with no reason - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v10, v6}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :cond_5
    :goto_1
    return-void

    .line 51
    .end local v0           #apn:Ljava/lang/String;
    .end local v2           #interfaceName:Ljava/lang/String;
    .end local v3           #reason:Ljava/lang/String;
    .end local v5           #types:Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "state= null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 79
    .restart local v0       #apn:Ljava/lang/String;
    .restart local v2       #interfaceName:Ljava/lang/String;
    .restart local v3       #reason:Ljava/lang/String;
    .restart local v5       #types:Ljava/lang/String;
    :cond_7
    const-string v6, "default"

    invoke-virtual {v5, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "apnChanged"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    .line 83
    const-string v6, "SetupCBBAR"

    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "STATUS - default APN configuration has changed"

    aput-object v7, v6, v9

    invoke-static {v10, v6}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-static {p1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver;->wakeUpService(Landroid/content/Context;)V

    goto :goto_1

    .line 85
    :cond_8
    const-string v6, "default"

    invoke-virtual {v5, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "2GVoiceCallEnded"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_9

    .line 90
    const-string v6, "SetupCBBAR"

    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "STATUS - voice call ended"

    aput-object v7, v6, v9

    invoke-static {v10, v6}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-static {p1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver;->wakeUpService(Landroid/content/Context;)V

    goto :goto_1

    .line 98
    :cond_9
    const-string v6, "SetupCBBAR"

    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore ACTION_ANY_DATA_CONNECTION_STATE_CHANGED - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v10, v6}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static wakeUpService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SilentRegRequestFrom"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16
    new-instance v0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver$1;-><init>(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver$1;->start()V

    .line 35
    return-void
.end method
