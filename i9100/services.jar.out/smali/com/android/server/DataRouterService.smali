.class public Lcom/android/server/DataRouterService;
.super Landroid/os/Binder;
.source "DataRouterService.java"


# static fields
.field private static FirstCurrentState:Ljava/lang/String; = null

.field private static final LOCAL_LOGD:Z = false

.field private static SecondCurrentState:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DataRouterService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v1, "unmounted"

    .line 28
    const-string v0, "unmounted"

    sput-object v1, Lcom/android/server/DataRouterService;->FirstCurrentState:Ljava/lang/String;

    .line 29
    const-string v0, "unmounted"

    sput-object v1, Lcom/android/server/DataRouterService;->SecondCurrentState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 92
    new-instance v0, Lcom/android/server/DataRouterService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DataRouterService$1;-><init>(Lcom/android/server/DataRouterService;)V

    iput-object v0, p0, Lcom/android/server/DataRouterService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 35
    iput-object p1, p0, Lcom/android/server/DataRouterService;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/android/server/DataRouterService;->init()V

    .line 38
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/DataRouterService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 39
    iget-object v0, p0, Lcom/android/server/DataRouterService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/server/DataRouterService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DataRouterService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/server/DataRouterService;->updateData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, vs:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/DataRouterService;->rearrangedData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/DataRouterService;->FirstCurrentState:Ljava/lang/String;

    .line 45
    const-string v2, "EXTERNAL_STORAGE_STATE"

    sget-object v3, Lcom/android/server/DataRouterService;->FirstCurrentState:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, secondState:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/DataRouterService;->rearrangedData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/DataRouterService;->SecondCurrentState:Ljava/lang/String;

    .line 52
    const-string v2, "EXTERNAL_STORAGE_STATE_SD"

    sget-object v3, Lcom/android/server/DataRouterService;->SecondCurrentState:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .end local v0           #secondState:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private rearrangedData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    const-string v1, "mounted"

    .line 58
    const-string v0, "mounted"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "mounted"

    move-object v0, v1

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "unmounted"

    goto :goto_0
.end method

.method private updateData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "state"

    .prologue
    .line 67
    invoke-direct {p0, p2}, Lcom/android/server/DataRouterService;->rearrangedData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, NowState:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Lcom/android/server/DataRouterService;->FirstCurrentState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const-string v1, "EXTERNAL_STORAGE_STATE"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sput-object v0, Lcom/android/server/DataRouterService;->FirstCurrentState:Ljava/lang/String;

    .line 78
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    sget-object v1, Lcom/android/server/DataRouterService;->SecondCurrentState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    const-string v1, "EXTERNAL_STORAGE_STATE_SD"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sput-object v0, Lcom/android/server/DataRouterService;->SecondCurrentState:Ljava/lang/String;

    .line 90
    :cond_1
    return-void
.end method
