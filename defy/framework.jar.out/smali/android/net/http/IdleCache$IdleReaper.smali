.class Landroid/net/http/IdleCache$IdleReaper;
.super Ljava/lang/Thread;
.source "IdleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/IdleCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleReaper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/http/IdleCache;


# direct methods
.method private constructor <init>(Landroid/net/http/IdleCache;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/http/IdleCache$IdleReaper;-><init>(Landroid/net/http/IdleCache;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, check:I
    const-string v1, "IdleReaper"

    invoke-virtual {p0, v1}, Landroid/net/http/IdleCache$IdleReaper;->setName(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    monitor-enter v1

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    #getter for: Landroid/net/http/IdleCache;->mCount:I
    invoke-static {v2}, Landroid/net/http/IdleCache;->access$100(Landroid/net/http/IdleCache;)I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    #calls: Landroid/net/http/IdleCache;->clearIdle()V
    invoke-static {v2}, Landroid/net/http/IdleCache;->access$200(Landroid/net/http/IdleCache;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    const/4 v3, 0x0

    #setter for: Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;
    invoke-static {v2, v3}, Landroid/net/http/IdleCache;->access$302(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper;)Landroid/net/http/IdleCache$IdleReaper;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v2

    goto :goto_1
.end method
