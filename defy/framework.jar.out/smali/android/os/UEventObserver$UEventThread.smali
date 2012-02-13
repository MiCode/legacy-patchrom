.class Landroid/os/UEventObserver$UEventThread;
.super Ljava/lang/Thread;
.source "UEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UEventThread"
.end annotation


# instance fields
.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const-string v0, "UEventObserver"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addObserver(Ljava/lang/String;Landroid/os/UEventObserver;)V
    .locals 2
    .parameter "match"
    .parameter "observer"

    .prologue
    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeObserver(Landroid/os/UEventObserver;)V
    .locals 5
    .parameter "observer"

    .prologue
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x1

    .local v0, found:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget-object v3, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .end local v1           #i:I
    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public run()V
    .locals 7

    .prologue
    #calls: Landroid/os/UEventObserver;->native_setup()V
    invoke-static {}, Landroid/os/UEventObserver;->access$000()V

    const/16 v4, 0x400

    new-array v0, v4, [B

    .local v0, buffer:[B
    :cond_0
    :goto_0
    #calls: Landroid/os/UEventObserver;->next_event([B)I
    invoke-static {v0}, Landroid/os/UEventObserver;->access$100([B)I

    move-result v3

    .local v3, len:I
    if-lez v3, :cond_0

    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v3}, Ljava/lang/String;-><init>([BII)V

    .local v1, bufferStr:Ljava/lang/String;
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    monitor-enter v5

    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    iget-object v4, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    iget-object v4, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UEventObserver;

    new-instance v6, Landroid/os/UEventObserver$UEvent;

    invoke-direct {v6, v1}, Landroid/os/UEventObserver$UEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/os/UEventObserver;->onUEvent(Landroid/os/UEventObserver$UEvent;)V

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
