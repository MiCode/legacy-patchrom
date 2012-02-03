.class Lcom/android/server/GateSettingsService$GateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GateSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GateSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GateSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/GateSettingsService;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/server/GateSettingsService$GateReceiver;->this$0:Lcom/android/server/GateSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GateSettingsService;Lcom/android/server/GateSettingsService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/GateSettingsService$GateReceiver;-><init>(Lcom/android/server/GateSettingsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v6, "ENABLED"

    const-string v5, "1"

    const-string v4, "0"

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.android.gate.GATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    const-string v1, "service.gate.enabled"

    const-string v2, "ENABLED"

    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1"

    move-object v2, v5

    :goto_0
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_1
    return-void

    .line 68
    :cond_1
    const-string v2, "0"

    move-object v2, v4

    goto :goto_0

    .line 69
    :cond_2
    const-string v1, "com.sec.android.gate.LCDTEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "service.gate.lcdtexton"

    const-string v2, "ENABLED"

    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "1"

    move-object v2, v5

    :goto_2
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "0"

    move-object v2, v4

    goto :goto_2
.end method
