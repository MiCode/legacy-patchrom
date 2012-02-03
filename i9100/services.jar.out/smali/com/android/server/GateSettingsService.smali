.class public Lcom/android/server/GateSettingsService;
.super Landroid/util/IGateSettingsService$Stub;
.source "GateSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GateSettingsService$1;,
        Lcom/android/server/GateSettingsService$GateReceiver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Lcom/android/server/GateSettingsService$GateReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-string v2, "0"

    .line 34
    invoke-direct {p0}, Landroid/util/IGateSettingsService$Stub;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/GateSettingsService;->mReceiver:Lcom/android/server/GateSettingsService$GateReceiver;

    .line 35
    iput-object p1, p0, Lcom/android/server/GateSettingsService;->mContext:Landroid/content/Context;

    .line 36
    const-string v0, "service.gate.enabled"

    const-string v1, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "service.gate.lcdtexton"

    const-string v1, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/server/GateSettingsService;->registerBroadcastRecievers()V

    .line 39
    const-string v0, "GATE"

    const-string v1, "GateSettingsService created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method


# virtual methods
.method public registerBroadcastRecievers()V
    .locals 3

    .prologue
    .line 44
    new-instance v1, Lcom/android/server/GateSettingsService$GateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/GateSettingsService$GateReceiver;-><init>(Lcom/android/server/GateSettingsService;Lcom/android/server/GateSettingsService$1;)V

    iput-object v1, p0, Lcom/android/server/GateSettingsService;->mReceiver:Lcom/android/server/GateSettingsService$GateReceiver;

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.gate.GATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/GateSettingsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/GateSettingsService;->mReceiver:Lcom/android/server/GateSettingsService$GateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.gate.LCDTEXT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 51
    .restart local v0       #filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/GateSettingsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/GateSettingsService;->mReceiver:Lcom/android/server/GateSettingsService$GateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    return-void
.end method

.method public unregisterBroadcastRecievers()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/GateSettingsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/GateSettingsService;->mReceiver:Lcom/android/server/GateSettingsService$GateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/GateSettingsService;->mReceiver:Lcom/android/server/GateSettingsService$GateReceiver;

    .line 58
    return-void
.end method
