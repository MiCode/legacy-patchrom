.class public final Landroid/view/accessibility/AccessibilityManager;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityManager$MyHandler;
    }
.end annotation


# static fields
.field private static final DO_SET_ENABLED:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManager"

.field private static sInstance:Landroid/view/accessibility/AccessibilityManager;

.field static final sInstanceSync:Ljava/lang/Object;


# instance fields
.field final mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

.field final mHandler:Landroid/os/Handler;

.field mIsEnabled:Z

.field final mService:Landroid/view/accessibility/IAccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v2, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v2, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    .line 109
    new-instance v2, Landroid/view/accessibility/AccessibilityManager$MyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/view/accessibility/AccessibilityManager$MyHandler;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    .line 110
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 111
    .local v0, iBinder:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    .line 113
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    invoke-interface {v2, v3}, Landroid/view/accessibility/IAccessibilityManager;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 115
    .local v1, re:Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "AccessibilityManagerService is dead"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 95
    sget-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {v1, p0}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    .line 99
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    sget-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    return-object v0

    .line 99
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getAccessibilityServiceList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 189
    .local v1, services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->getAccessibilityServiceList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 196
    :goto_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 193
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 194
    .local v0, re:Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public interrupt()V
    .locals 3

    .prologue
    .line 168
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Accessibility off. Did you forget to check that?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->interrupt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 177
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "Error while requesting interrupt from all services. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    monitor-exit v0

    return v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 140
    iget-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v4, :cond_0

    .line 141
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Accessibility off. Did you forget to check that?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 145
    .local v0, doRecycle:Z
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 150
    .local v1, identityToken:J
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v4, p1}, Landroid/view/accessibility/IAccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 151
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    if-eqz v0, :cond_1

    .line 159
    .end local v1           #identityToken:J
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 162
    :cond_1
    return-void

    .line 155
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 156
    .local v3, re:Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "AccessibilityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    if-eqz v0, :cond_1

    goto :goto_0

    .end local v3           #re:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 158
    :cond_2
    throw v4
.end method
