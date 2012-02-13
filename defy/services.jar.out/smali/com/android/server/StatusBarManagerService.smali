.class public Lcom/android/server/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;,
        Lcom/android/server/StatusBarManagerService$H;,
        Lcom/android/server/StatusBarManagerService$StatusBarIconNotificationDeath;,
        Lcom/android/server/StatusBarManagerService$NotificationCallbacks;,
        Lcom/android/server/StatusBarManagerService$DisableRecord;
    }
.end annotation


# static fields
.field private static final MAX_STATUS_ICON_UPDATE_INFO:I = 0xa

.field static final SPEW:Z = false

.field static final TAG:Ljava/lang/String; = "StatusBarManagerService"

.field private static final TIMEOUT_POLL_STATUS_ICON_UPDATE_INFO:I = 0x64


# instance fields
.field volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mContext:Landroid/content/Context;

.field mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field mDisabled:I

.field mHandler:Landroid/os/Handler;

.field mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

.field mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

.field mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/statusbar/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusIconCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusIconUpdateInfo:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    new-instance v1, Lcom/android/server/StatusBarManagerService$H;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/StatusBarManagerService$H;-><init>(Lcom/android/server/StatusBarManagerService;Lcom/android/server/StatusBarManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v1}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mStatusIconCallbacks:Ljava/util/HashMap;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mStatusIconUpdateInfo:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/android/server/StatusBarManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/StatusBarManagerService$2;-><init>(Lcom/android/server/StatusBarManagerService;)V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    const v2, 0x107000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->defineSlots([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/StatusBarManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mStatusIconCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/StatusBarManagerService;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mStatusIconUpdateInfo:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method private enforceExpandStatusBar()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceStatusBar()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceStatusBarService()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private nextStatusIconUpdateInfo()Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, info:Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mStatusIconUpdateInfo:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v3, 0x64

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_0

    const-string v2, "StatusBarManagerService"

    const-string v3, "Status icon update notification congestion"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;

    .end local v1           #info:Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;-><init>(Lcom/android/server/StatusBarManagerService;Lcom/android/server/StatusBarManagerService$1;)V

    .restart local v1       #info:Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;
    :cond_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private onIconChanged(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "slot"
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->nextStatusIconUpdateInfo()Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;

    move-result-object v0

    .local v0, info:Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;
    iput-object p1, v0, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;->slot:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;->iconPackage:Ljava/lang/String;

    iput p3, v0, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;->iconId:I

    iput p4, v0, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;->iconLevel:I

    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v2, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private onIconVisibilityChanged(Ljava/lang/String;Z)V
    .locals 4
    .parameter "slot"
    .parameter "visible"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->nextStatusIconUpdateInfo()Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;

    move-result-object v0

    .local v0, info:Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;
    iput-object p1, v0, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;->slot:Ljava/lang/String;

    iput-boolean p2, v0, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;->visible:Z

    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, v3, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public addNotification(Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/os/IBinder;
    .locals 3
    .parameter "notification"

    .prologue
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .local v0, key:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-object v0

    .end local v0           #key:Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v0       #key:Landroid/os/IBinder;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public collapse()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceExpandStatusBar()V

    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapse()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 4
    .parameter "what"
    .parameter "token"
    .parameter "pkg"

    .prologue
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService;->manageDisableListLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/StatusBarManagerService;->gatherDisableActionsLocked()I

    move-result v0

    .local v0, net:I
    iget v2, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/StatusBarManagerService$1;

    invoke-direct {v3, p0, v0}, Lcom/android/server/StatusBarManagerService$1;-><init>(Lcom/android/server/StatusBarManagerService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v0}, Lcom/android/internal/statusbar/IStatusBar;->disable(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .end local v0           #net:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v0       #net:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v6, p2}, Lcom/android/internal/statusbar/StatusBarIconList;->dump(Ljava/io/PrintWriter;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v6

    const/4 v2, 0x0

    .local v2, i:I
    :try_start_1
    const-string v5, "Notification list:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;>;"
    const-string v7, "  %2d: %s\n"

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v5}, Lcom/android/internal/statusbar/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_4
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDisableRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDisabled=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .local v4, tok:Lcom/android/server/StatusBarManagerService$DisableRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] what=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #N:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #tok:Lcom/android/server/StatusBarManagerService$DisableRecord;
    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    .restart local v0       #N:I
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_6
    monitor-exit v5

    goto/16 :goto_0

    .end local v0           #N:I
    :catchall_2
    move-exception v6

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v6
.end method

.method public expand()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceExpandStatusBar()V

    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpand()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method gatherDisableActionsLocked()I
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, net:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/StatusBarManagerService$DisableRecord;

    iget v3, v3, Lcom/android/server/StatusBarManagerService$DisableRecord;->what:I

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getIcon(Ljava/lang/String;)Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 5
    .parameter "slot"

    .prologue
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, index:I
    if-gez v0, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid status bar icon slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #index:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #index:I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method manageDisableListLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 8
    .parameter "what"
    .parameter "token"
    .parameter "pkg"

    .prologue
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v4, 0x0

    .local v4, tok:Lcom/android/server/StatusBarManagerService$DisableRecord;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .local v3, t:Lcom/android/server/StatusBarManagerService$DisableRecord;
    iget-object v6, v3, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v6, p2, :cond_3

    move-object v4, v3

    .end local v3           #t:Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_1
    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_2
    :goto_1
    monitor-exit v5

    :goto_2
    return-void

    .restart local v3       #t:Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #t:Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_4
    if-nez v4, :cond_5

    new-instance v4, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .end local v4           #tok:Lcom/android/server/StatusBarManagerService$DisableRecord;
    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/android/server/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/StatusBarManagerService;Lcom/android/server/StatusBarManagerService$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v4       #tok:Lcom/android/server/StatusBarManagerService$DisableRecord;
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {p2, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iput p1, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->what:I

    iput-object p2, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    iput-object p3, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    goto :goto_1

    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #tok:Lcom/android/server/StatusBarManagerService$DisableRecord;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v4       #tok:Lcom/android/server/StatusBarManagerService$DisableRecord;
    :catch_0
    move-exception v1

    .local v1, ex:Landroid/os/RemoteException;
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public onClearAllNotifications()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onClearAll()V

    return-void
.end method

.method public onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "uid"
    .parameter "initialPid"
    .parameter "message"

    .prologue
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public onNotificationRemove(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onNotificationRemove(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onPanelRevealed()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onPanelRevealed()V

    return-void
.end method

.method public registerIconNotification(Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;)V
    .locals 4
    .parameter "callback"

    .prologue
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mStatusIconCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/server/StatusBarManagerService$StatusBarIconNotificationDeath;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/StatusBarManagerService$StatusBarIconNotificationDeath;-><init>(Lcom/android/server/StatusBarManagerService;Lcom/android/server/StatusBarManagerService$1;)V

    .local v0, s:Lcom/android/server/StatusBarManagerService$StatusBarIconNotificationDeath;
    iput-object p1, v0, Lcom/android/server/StatusBarManagerService$StatusBarIconNotificationDeath;->token:Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mStatusIconCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    .end local v0           #s:Lcom/android/server/StatusBarManagerService$StatusBarIconNotificationDeath;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v0       #s:Lcom/android/server/StatusBarManagerService$StatusBarIconNotificationDeath;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .parameter "bar"
    .parameter "iconList"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/statusbar/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, notificationKeys:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    .local p4, notifications:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    const-string v2, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerStatusBar bar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {p2, v3}, Lcom/android/internal/statusbar/StatusBarIconList;->copyFrom(Lcom/android/internal/statusbar/StatusBarIconList;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 5
    .parameter "slot"

    .prologue
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, index:I
    if-gez v0, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid status bar icon slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #index:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #index:I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->removeIcon(I)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/StatusBarManagerService;->onIconVisibilityChanged(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v0}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 5
    .parameter "key"

    .prologue
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/StatusBarNotification;

    .local v0, n:Lcom/android/internal/statusbar/StatusBarNotification;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNotification key not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #n:Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, p1}, Lcom/android/internal/statusbar/IStatusBar;->removeNotification(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "slot"
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v3, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid status bar icon slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1           #index:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #index:I
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;II)V

    .local v0, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/StatusBarManagerService;->onIconChanged(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    :try_start_2
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v3, v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 6
    .parameter "slot"
    .parameter "visible"

    .prologue
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v3, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid status bar icon slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1           #index:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #index:I
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v3, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .local v0, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v0, :cond_1

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iget-boolean v3, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v3, p2, :cond_2

    iput-boolean p2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    invoke-direct {p0, p1, p2}, Lcom/android/server/StatusBarManagerService;->onIconVisibilityChanged(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v3, v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public setNotificationCallbacks(Lcom/android/server/StatusBarManagerService$NotificationCallbacks;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method

.method public systemReady2()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1040028

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .local v0, cn:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public unregisterIconNotification(Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;)V
    .locals 4
    .parameter "callback"

    .prologue
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mStatusIconCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mStatusIconCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    .local v0, b:Landroid/os/IBinder$DeathRecipient;
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mStatusIconCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-void

    .end local v0           #b:Landroid/os/IBinder$DeathRecipient;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 4
    .parameter "key"
    .parameter "notification"

    .prologue
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNotification key not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
