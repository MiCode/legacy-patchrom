.class public Lcom/android/settings/bluetooth/DockEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DockEventReceiver.java"


# static fields
.field private static mStartingService:Landroid/os/PowerManager$WakeLock;

.field private static final mStartingServiceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/DockEventReceiver;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 150
    sget-object v1, Lcom/android/settings/bluetooth/DockEventReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    sget-object v2, Lcom/android/settings/bluetooth/DockEventReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 152
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 153
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "StartingDockService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/android/settings/bluetooth/DockEventReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 157
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    sget-object v2, Lcom/android/settings/bluetooth/DockEventReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 159
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 160
    const-string v2, "DockEventReceiver"

    const-string v3, "Can\'t start DockService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    monitor-exit v1

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 2
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 170
    sget-object v0, Lcom/android/settings/bluetooth/DockEventReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    sget-object v1, Lcom/android/settings/bluetooth/DockEventReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    .line 176
    :cond_0
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const-class v3, Lcom/android/settings/bluetooth/DockService;

    .line 51
    if-nez p2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v0, "android.intent.extra.DOCK_STATE"

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/16 v1, -0x4d2

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 56
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    .line 63
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    :cond_2
    if-eqz p0, :cond_0

    .line 71
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 75
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 76
    const-class v1, Lcom/android/settings/bluetooth/DockService;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    :cond_3
    const-string v0, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    if-eqz p0, :cond_0

    .line 96
    const-string v0, "android.bluetooth.headset.extra.STATE"

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 98
    if-nez v0, :cond_0

    .line 101
    const-string v0, "android.bluetooth.headset.extra.DISCONNECT_INITIATOR"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 103
    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 109
    const-class v1, Lcom/android/settings/bluetooth/DockService;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 110
    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    :cond_4
    const-string v0, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    if-eqz p0, :cond_0

    .line 124
    const-string v0, "android.bluetooth.a2dp.extra.SINK_STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 125
    const-string v1, "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 126
    if-nez v0, :cond_0

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 131
    const-class v1, Lcom/android/settings/bluetooth/DockService;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 132
    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 135
    :cond_5
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x8000

    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 137
    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 139
    const-class v1, Lcom/android/settings/bluetooth/DockService;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 140
    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
