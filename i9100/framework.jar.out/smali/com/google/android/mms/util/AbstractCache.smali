.class public abstract Lcom/google/android/mms/util/AbstractCache;
.super Ljava/lang/Object;
.source "AbstractCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/util/AbstractCache$1;,
        Lcom/google/android/mms/util/AbstractCache$CacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_CACHED_ITEMS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "AbstractCache"


# instance fields
.field private final mCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/google/android/mms/util/AbstractCache$CacheEntry",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/google/android/mms/util/AbstractCache;,"Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    .line 36
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/google/android/mms/util/AbstractCache;,"Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    if-eqz p1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;

    .line 72
    .local v0, cacheEntry:Lcom/google/android/mms/util/AbstractCache$CacheEntry;,"Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    if-eqz v0, :cond_0

    .line 73
    iget v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->hit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->hit:I

    .line 77
    iget-object v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    .line 80
    .end local v0           #cacheEntry:Lcom/google/android/mms/util/AbstractCache$CacheEntry;,"Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public purge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/google/android/mms/util/AbstractCache;,"Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;

    .line 94
    .local v0, v:Lcom/google/android/mms/util/AbstractCache$CacheEntry;,"Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public purgeAll()V
    .locals 1

    .prologue
    .line 102
    .local p0, this:Lcom/google/android/mms/util/AbstractCache;,"Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 103
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/mms/util/AbstractCache;,"Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/4 v3, 0x0

    .line 43
    iget-object v1, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    move v1, v3

    .line 62
    :goto_0
    return v1

    .line 52
    :cond_0
    if-eqz p1, :cond_1

    .line 53
    new-instance v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/mms/util/AbstractCache$CacheEntry;-><init>(Lcom/google/android/mms/util/AbstractCache$1;)V

    .line 54
    .local v0, cacheEntry:Lcom/google/android/mms/util/AbstractCache$CacheEntry;,"Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    iput-object p2, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    .line 55
    iget-object v1, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v1, 0x1

    goto :goto_0

    .end local v0           #cacheEntry:Lcom/google/android/mms/util/AbstractCache$CacheEntry;,"Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    :cond_1
    move v1, v3

    .line 62
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 106
    .local p0, this:Lcom/google/android/mms/util/AbstractCache;,"Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
