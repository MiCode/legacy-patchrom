.class public Lcom/broadcom/bt/service/fm/FmServiceManager;
.super Ljava/lang/Object;
.source "FmServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FmServiceManager"

.field private static _DBG:Z

.field private static mFmReceiver:Landroid/content/BroadcastReceiver;

.field private static mFmServiceWrapper:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static mInitialized:Z

.field private static mIsFactoryTest:Z

.field private static mLastFmState:I

.field private static mSystemContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    .line 47
    new-instance v0, Lcom/broadcom/bt/service/fm/FmServiceManager$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method private static _registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V
    .locals 6
    .parameter "svcName"
    .parameter "svc"

    .prologue
    const-string/jumbo v5, "null"

    const-string v4, "FmServiceManager"

    const-string v3, ": "

    .line 149
    invoke-static {p0}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    .line 150
    .local v0, isSupported:Z
    sget-boolean v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v1, :cond_1

    .line 151
    if-nez v0, :cond_0

    .line 152
    const-string v1, "FmServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****Fm Service not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_3

    const-string/jumbo v2, "null"

    move-object v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...Skipping. ****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    const-string v1, "FmServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****Registering Fm Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_4

    const-string/jumbo v2, "null"

    move-object v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    if-eqz v0, :cond_2

    .line 163
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 164
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;-><init>(Lcom/broadcom/bt/service/framework/IBtService;Z)V

    invoke-virtual {v2, p0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_2
    return-void

    .line 152
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 157
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 166
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static _startService(Ljava/lang/String;)V
    .locals 5
    .parameter "svcName"

    .prologue
    const-string v2, "***"

    const-string v4, "FmServiceManager"

    .line 196
    if-eqz p0, :cond_0

    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 198
    :cond_0
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_1

    .line 199
    const-string v2, "FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Fm service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_2

    const-string/jumbo v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not enabled. Skipping start...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v3, p0

    .line 199
    goto :goto_0

    .line 206
    :cond_3
    const/4 v1, 0x0

    .line 207
    .local v1, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 208
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    move-object v1, v0

    .line 209
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    if-nez v1, :cond_4

    .line 212
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_1

    .line 213
    const-string v2, "FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Unable to find service record for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 209
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 219
    :cond_4
    monitor-enter v1

    .line 220
    :try_start_2
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$000(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 221
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already started....skipping start..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    monitor-exit v1

    goto :goto_1

    .line 248
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 225
    :cond_5
    :try_start_3
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    if-nez v2, :cond_7

    .line 226
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_6

    .line 227
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***startService(): Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not managed by FmServiceManager. Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v2, 0x1

    #setter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 235
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/broadcom/bt/service/fm/FmServiceManager;->createFmSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 238
    :cond_6
    monitor-exit v1

    goto/16 :goto_1

    .line 240
    :cond_7
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_8

    .line 241
    const/4 v2, 0x1

    #setter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 242
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***startService(): Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_8
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->init()V

    .line 246
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->start()V

    .line 248
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1
.end method

.method private static _stopService(Ljava/lang/String;)V
    .locals 6
    .parameter "svcName"

    .prologue
    const-string v5, "***"

    const-string v4, "FmServiceManager"

    .line 253
    if-nez p0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_2

    .line 257
    const-string v2, "FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***stopService(): Stopping service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "***"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_2
    const/4 v1, 0x0

    .line 261
    .local v1, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 262
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    move-object v1, v0

    .line 263
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    if-nez v1, :cond_3

    .line 266
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_0

    .line 267
    const-string v2, "FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***stopService(): Unable to find service record for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 274
    :cond_3
    monitor-enter v1

    .line 275
    :try_start_2
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$000(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 276
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already stopped....skipping stop..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    monitor-exit v1

    goto :goto_0

    .line 305
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 281
    :cond_4
    :try_start_3
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    if-nez v2, :cond_6

    .line 282
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_5

    .line 283
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***stopService(): Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not managed by Service Manager. Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v2, 0x0

    #setter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 290
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/broadcom/bt/service/fm/FmServiceManager;->createFmSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 293
    :cond_5
    monitor-exit v1

    goto/16 :goto_0

    .line 296
    :cond_6
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_7

    .line 297
    const/4 v2, 0x0

    #setter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 298
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***stopService(): Stop service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_7
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 303
    :try_start_4
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->stop()V

    .line 304
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 305
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 304
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public static createFmSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .parameter "svcName"
    .parameter "state"

    .prologue
    .line 448
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.bt.intent.action.FM_SVC_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .local v0, i:Landroid/content/Intent;
    const-string v1, "fm_svc_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v1, "fm_svc_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;
    .locals 3
    .parameter "svcName"

    .prologue
    .line 418
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 419
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    .line 420
    .local v0, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v1

    return-object v2

    :cond_0
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    goto :goto_0

    .line 421
    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getServiceState(Ljava/lang/String;)I
    .locals 2
    .parameter "svcName"

    .prologue
    .line 431
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    .line 432
    .local v0, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    if-nez v0, :cond_0

    .line 433
    const/4 v1, -0x1

    .line 435
    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$000(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 6
    .parameter "systemContext"

    .prologue
    const-string v1, "FmServiceManager"

    .line 99
    const-class v1, Lcom/broadcom/bt/service/fm/FmServiceManager;

    monitor-enter v1

    :try_start_0
    const-string v2, "FmServiceManager"

    const-string v3, "init() called "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 103
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    const-string v2, "FmServiceManager"

    const-string v3, "Fm Service is not supported..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_1
    monitor-exit v1

    return-void

    .line 102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z

    if-eqz v2, :cond_2

    .line 111
    const-string v2, "FmServiceManager"

    const-string v3, "Fm Service Manager already initialized.....Skipping init()..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 99
    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 115
    .restart local v0       #i:I
    :cond_2
    :try_start_2
    sput-object p0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    .line 116
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->initSettings()V

    .line 118
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->registerServices()V

    .line 119
    const/4 v2, 0x1

    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z

    .line 120
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "broadcom.bt.intent.action.FM_SVC_STATE_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static initFmPower()V
    .locals 3

    .prologue
    const-string v2, "FmServiceManager"

    .line 125
    const-string v1, "FmServiceManager"

    const-string v1, "initFmPower()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManager;->getProxy()Lcom/broadcom/bt/service/framework/PowerManager;

    move-result-object v0

    .line 128
    .local v0, fmPwrMgr:Lcom/broadcom/bt/service/framework/PowerManager;
    if-nez v0, :cond_1

    .line 129
    const-string v1, "FmServiceManager"

    const-string v1, "Unable to initialize  FM!!!!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/PowerManager;->enableFm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->onEnabled()V

    goto :goto_0
.end method

.method private static initSettings()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "fm_svcst_init"

    const-string v8, "fm_svcst_"

    const-string v5, "FmServiceManager"

    .line 173
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 174
    const-string v3, "FmServiceManager"

    const-string v3, "initSettings mSystemContext isn\'t null"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 176
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "fm_svcst_init"

    invoke-static {v0, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 178
    .local v2, settingsExist:I
    if-nez v2, :cond_2

    .line 179
    const-string v3, "FmServiceManager"

    const-string v3, "*********Initializing Fm Service Settings*******"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fm_svcst_"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    move v4, v7

    :goto_1
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    const-string v3, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fm_svcst_"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: isServiceSupported=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";  SERVICES_STARTUP_ENABLED= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 181
    goto :goto_1

    .line 191
    :cond_1
    const-string v3, "fm_svcst_init"

    invoke-static {v0, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #i:I
    .end local v2           #settingsExist:I
    :cond_2
    return-void
.end method

.method public static declared-synchronized isInitialized()Z
    .locals 2

    .prologue
    .line 62
    const-class v0, Lcom/broadcom/bt/service/fm/FmServiceManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static onDisabled()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v3, "FmServiceManager"

    .line 368
    const-string v2, "FmServiceManager"

    const-string/jumbo v2, "onDisabled()"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    if-ne v2, v4, :cond_0

    .line 371
    const-string v2, "FmServiceManager"

    const-string v2, "Already STOPPED..Skipping"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    return-void

    .line 375
    :cond_0
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 376
    :try_start_0
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 378
    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 379
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 380
    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_stopService(Ljava/lang/String;)V

    goto :goto_1

    .line 382
    .end local v0           #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #svcName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    sput v4, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    goto :goto_0
.end method

.method public static declared-synchronized onEnabled()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const-string v2, "FmServiceManager"

    .line 345
    const-class v2, Lcom/broadcom/bt/service/fm/FmServiceManager;

    monitor-enter v2

    :try_start_0
    const-string v3, "FmServiceManager"

    const-string/jumbo v4, "onEnabled()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mIsFactoryTest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 365
    :goto_0
    monitor-exit v2

    return-void

    .line 351
    :cond_0
    :try_start_1
    sget v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    if-ne v3, v5, :cond_1

    .line 352
    const-string v3, "FmServiceManager"

    const-string v4, "Already STARTED..Skipping"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 356
    :cond_1
    :try_start_2
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    :try_start_3
    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 359
    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 360
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 361
    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_startService(Ljava/lang/String;)V

    goto :goto_1

    .line 363
    .end local v0           #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #svcName:Ljava/lang/String;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v0       #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 364
    const/4 v3, 0x2

    :try_start_6
    sput v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public static onFmServiceStateChanged(Ljava/lang/String;I)V
    .locals 7
    .parameter "svcName"
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    const-string v5, "FmServiceManager"

    .line 310
    const-string v3, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnFmServiceStateChanged() serviceName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v4

    .line 314
    :try_start_0
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    move-object v1, v0

    .line 315
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    if-nez v1, :cond_1

    .line 318
    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v3, :cond_0

    .line 319
    const-string v3, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***onFmServiceStateChanged(): Unable to find service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 315
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 326
    :cond_1
    monitor-enter v1

    .line 327
    const/4 v3, 0x2

    if-ne v3, p1, :cond_3

    .line 328
    const/4 v3, 0x1

    :try_start_2
    #setter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v3}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 341
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 329
    :cond_3
    if-ne v6, p1, :cond_2

    .line 330
    const/4 v3, 0x0

    :try_start_3
    #setter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v3}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 332
    :try_start_4
    const-string v3, "FmServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 334
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v3

    invoke-interface {v3}, Lcom/broadcom/bt/service/framework/IBtService;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 337
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 338
    .local v2, t:Ljava/lang/Throwable;
    :try_start_5
    const-string v3, "FmServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error finishing service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method private static registerServices()V
    .locals 3

    .prologue
    .line 70
    const-string v0, "bluetooth_fm_receiver_service"

    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiverService;

    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 72
    const-string v0, "bluetooth_fm_transmitter_service"

    new-instance v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;

    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 74
    return-void
.end method

.method public static shutdownFmPower()V
    .locals 3

    .prologue
    const-string v2, "FmServiceManager"

    .line 137
    const-string v1, "FmServiceManager"

    const-string/jumbo v1, "shutDownFmPower()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManager;->getProxy()Lcom/broadcom/bt/service/framework/PowerManager;

    move-result-object v0

    .line 140
    .local v0, fmPwrMgr:Lcom/broadcom/bt/service/framework/PowerManager;
    if-nez v0, :cond_1

    .line 141
    const-string v1, "FmServiceManager"

    const-string v1, "Unable to shutdown FM!!!!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/PowerManager;->disableFm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->onDisabled()V

    goto :goto_0
.end method
