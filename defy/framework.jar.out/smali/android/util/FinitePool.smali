.class Landroid/util/FinitePool;
.super Ljava/lang/Object;
.source "FinitePool.java"

# interfaces
.implements Landroid/util/Pool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/util/Poolable",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Landroid/util/Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mInfinite:Z

.field private final mLimit:I

.field private final mManager:Landroid/util/PoolableManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/PoolableManager",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mPoolCount:I

.field private mRoot:Landroid/util/Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/util/PoolableManager;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/PoolableManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/FinitePool;,"Landroid/util/FinitePool<TT;>;"
    .local p1, manager:Landroid/util/PoolableManager;,"Landroid/util/PoolableManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/FinitePool;->mManager:Landroid/util/PoolableManager;

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/FinitePool;->mLimit:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/FinitePool;->mInfinite:Z

    return-void
.end method

.method constructor <init>(Landroid/util/PoolableManager;I)V
    .locals 2
    .parameter
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/PoolableManager",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/FinitePool;,"Landroid/util/FinitePool<TT;>;"
    .local p1, manager:Landroid/util/PoolableManager;,"Landroid/util/PoolableManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The pool limit must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/util/FinitePool;->mManager:Landroid/util/PoolableManager;

    iput p2, p0, Landroid/util/FinitePool;->mLimit:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/FinitePool;->mInfinite:Z

    return-void
.end method


# virtual methods
.method public acquire()Landroid/util/Poolable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/FinitePool;,"Landroid/util/FinitePool<TT;>;"
    iget-object v1, p0, Landroid/util/FinitePool;->mRoot:Landroid/util/Poolable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/util/FinitePool;->mRoot:Landroid/util/Poolable;

    .local v0, element:Landroid/util/Poolable;,"TT;"
    invoke-interface {v0}, Landroid/util/Poolable;->getNextPoolable()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Poolable;

    iput-object v1, p0, Landroid/util/FinitePool;->mRoot:Landroid/util/Poolable;

    iget v1, p0, Landroid/util/FinitePool;->mPoolCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/util/FinitePool;->mPoolCount:I

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/util/Poolable;->setNextPoolable(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/util/FinitePool;->mManager:Landroid/util/PoolableManager;

    invoke-interface {v1, v0}, Landroid/util/PoolableManager;->onAcquired(Landroid/util/Poolable;)V

    :cond_0
    return-object v0

    .end local v0           #element:Landroid/util/Poolable;,"TT;"
    :cond_1
    iget-object v1, p0, Landroid/util/FinitePool;->mManager:Landroid/util/PoolableManager;

    invoke-interface {v1}, Landroid/util/PoolableManager;->newInstance()Landroid/util/Poolable;

    move-result-object v0

    .restart local v0       #element:Landroid/util/Poolable;,"TT;"
    goto :goto_0
.end method

.method public release(Landroid/util/Poolable;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/FinitePool;,"Landroid/util/FinitePool<TT;>;"
    .local p1, element:Landroid/util/Poolable;,"TT;"
    iget-boolean v0, p0, Landroid/util/FinitePool;->mInfinite:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/FinitePool;->mPoolCount:I

    iget v1, p0, Landroid/util/FinitePool;->mLimit:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/util/FinitePool;->mPoolCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/FinitePool;->mPoolCount:I

    iget-object v0, p0, Landroid/util/FinitePool;->mRoot:Landroid/util/Poolable;

    invoke-interface {p1, v0}, Landroid/util/Poolable;->setNextPoolable(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/util/FinitePool;->mRoot:Landroid/util/Poolable;

    :cond_1
    iget-object v0, p0, Landroid/util/FinitePool;->mManager:Landroid/util/PoolableManager;

    invoke-interface {v0, p1}, Landroid/util/PoolableManager;->onReleased(Landroid/util/Poolable;)V

    return-void
.end method
