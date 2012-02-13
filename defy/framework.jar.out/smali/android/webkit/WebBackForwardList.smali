.class public Landroid/webkit/WebBackForwardList;
.super Ljava/lang/Object;
.source "WebBackForwardList.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/WebHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mClearPending:Z

.field private mCurrentIndex:I


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebBackForwardList;->mCurrentIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/webkit/WebBackForwardList;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-void
.end method

.method private static native nativeClose(I)V
.end method

.method private declared-synchronized removeHistoryItem(I)V
    .locals 3
    .parameter "index"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebHistoryItem;

    .local v0, h:Landroid/webkit/WebHistoryItem;
    iget v1, p0, Landroid/webkit/WebBackForwardList;->mCurrentIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebBackForwardList;->mCurrentIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #h:Landroid/webkit/WebHistoryItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synchronized native declared-synchronized restoreIndex(II)V
.end method


# virtual methods
.method declared-synchronized addHistoryItem(Landroid/webkit/WebHistoryItem;)V
    .locals 4
    .parameter "item"

    .prologue
    monitor-enter p0

    :try_start_0
    iget v3, p0, Landroid/webkit/WebBackForwardList;->mCurrentIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/webkit/WebBackForwardList;->mCurrentIndex:I

    iget-object v3, p0, Landroid/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    iget v1, p0, Landroid/webkit/WebBackForwardList;->mCurrentIndex:I

    .local v1, newPos:I
    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    iget-object v3, p0, Landroid/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebHistoryItem;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/webkit/WebBackForwardList;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkit/WebBackForwardList;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3, p1}, Landroid/webkit/CallbackProxy;->onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    .end local v1           #newPos:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected declared-synchronized clone()Landroid/webkit/WebBackForwardList;
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/webkit/WebBackForwardList;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/webkit/WebBackForwardList;-><init>(Landroid/webkit/CallbackProxy;)V

    .local v1, l:Landroid/webkit/WebBackForwardList;
    iget-boolean v3, p0, Landroid/webkit/WebBackForwardList;->mClearPending:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebBackForwardList;->addHistoryItem(Landroid/webkit/WebHistoryItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget v3, p0, Landroid/webkit/WebBackForwardList;->mCurrentIndex:I

    iput v3, v1, Landroid/webkit/WebBackForwardList;->mCurrentIndex:I

    invoke-virtual {p0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    .local v2, size:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v1, Landroid/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v4, v1, Landroid/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebHistoryItem;

    invoke-virtual {v3}, Landroid/webkit/WebHistoryItem;->clone()Landroid/webkit/WebHistoryItem;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #l:Landroid/webkit/WebBackForwardList;
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/webkit/WebBackForwardList;->clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized close(I)V
    .locals 1
    .parameter "nativeFrame"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebBackForwardList;->mCurrentIndex:I

    invoke-static {p1}, Landroid/webkit/WebBackForwardList;->nativeClose(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebBackForwardList;->mClearPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getClearPending()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebBackForwardList;->mClearPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentIndex()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebBackForwardList;->mCurrentIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentItem()Landroid/webkit/WebHistoryItem;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebBackForwardList;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItemAtIndex(I)Landroid/webkit/WebHistoryItem;
    .locals 1
    .parameter "index"

    .prologue
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebBackForwardList;->getSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebHistoryItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setClearPending()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/webkit/WebBackForwardList;->mClearPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCurrentIndex(I)V
    .locals 2
    .parameter "newIndex"

    .prologue
    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroid/webkit/WebBackForwardList;->mCurrentIndex:I

    iget-object v0, p0, Landroid/webkit/WebBackForwardList;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebBackForwardList;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {p0, p1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CallbackProxy;->onIndexChanged(Landroid/webkit/WebHistoryItem;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
