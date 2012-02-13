.class public Lcom/motorola/android/server/checkin/CheckinService;
.super Landroid/os/ICheckinService$Stub;
.source "CheckinService.java"


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "CheckinService"

.field private static final _inLog:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _logLevel:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/motorola/android/server/checkin/CheckinService$1;

    invoke-direct {v0}, Lcom/motorola/android/server/checkin/CheckinService$1;-><init>()V

    sput-object v0, Lcom/motorola/android/server/checkin/CheckinService;->_inLog:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Landroid/os/ICheckinService$Stub;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I

    iput-object p1, p0, Lcom/motorola/android/server/checkin/CheckinService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinService;->getLogLevel()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I

    return-void
.end method


# virtual methods
.method public checkin()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public getLogLevel()I
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/android/provider/Checkin$Properties$Tag;->LOG_LEVEL:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-static {v1, v2}, Lcom/motorola/android/provider/Checkin;->getProperty(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Properties$Tag;)Ljava/lang/String;

    move-result-object v0

    .local v0, level:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #level:Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I

    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "level"
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    iget v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I

    if-lt p1, v1, :cond_0

    const/4 v1, 0x7

    if-le p1, v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I

    :goto_0
    return v1

    :cond_1
    sget-object v1, Lcom/motorola/android/server/checkin/CheckinService;->_inLog:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, reenter:I
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/motorola/android/server/checkin/CheckinService;->_inLog:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, p2, p3}, Lcom/motorola/android/provider/Checkin;->logEvent(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/motorola/android/server/checkin/CheckinService;->_inLog:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget v1, p0, Lcom/motorola/android/server/checkin/CheckinService;->_logLevel:I

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/motorola/android/server/checkin/CheckinService;->_inLog:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v1
.end method

.method public setLogLevel(I)V
    .locals 3
    .parameter "level"

    .prologue
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/android/server/checkin/CheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Checkin$Properties$Tag;->LOG_LEVEL:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/Checkin;->setProperty(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Properties$Tag;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0
.end method
