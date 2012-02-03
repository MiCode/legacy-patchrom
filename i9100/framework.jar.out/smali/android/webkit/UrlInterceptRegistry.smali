.class public final Landroid/webkit/UrlInterceptRegistry;
.super Ljava/lang/Object;
.source "UrlInterceptRegistry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "intercept"

.field private static mDisabled:Z

.field private static mHandlerList:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getHandlers()Ljava/util/LinkedList;
    .locals 2

    .prologue
    .line 41
    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;

    .line 43
    :cond_0
    sget-object v1, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPluginData(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/PluginData;
    .locals 6
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/PluginData;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 147
    const-class v3, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->urlInterceptDisabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v5

    .line 158
    :goto_0
    monitor-exit v3

    return-object v4

    .line 150
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 151
    .local v2, iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/UrlInterceptHandler;

    .line 153
    .local v1, handler:Landroid/webkit/UrlInterceptHandler;
    invoke-interface {v1, p0, p1}, Landroid/webkit/UrlInterceptHandler;->getPluginData(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/PluginData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 154
    .local v0, data:Landroid/webkit/PluginData;
    if-eqz v0, :cond_1

    move-object v4, v0

    .line 155
    goto :goto_0

    .end local v0           #data:Landroid/webkit/PluginData;
    .end local v1           #handler:Landroid/webkit/UrlInterceptHandler;
    :cond_2
    move-object v4, v5

    .line 158
    goto :goto_0

    .line 147
    .end local v2           #iter:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method public static declared-synchronized getSurrogate(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .locals 6
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 120
    const-class v3, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->urlInterceptDisabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v5

    .line 131
    :goto_0
    monitor-exit v3

    return-object v4

    .line 123
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 124
    .local v1, iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/UrlInterceptHandler;

    .line 126
    .local v0, handler:Landroid/webkit/UrlInterceptHandler;
    invoke-interface {v0, p0, p1}, Landroid/webkit/UrlInterceptHandler;->service(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 127
    .local v2, result:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v2, :cond_1

    move-object v4, v2

    .line 128
    goto :goto_0

    .end local v0           #handler:Landroid/webkit/UrlInterceptHandler;
    .end local v2           #result:Landroid/webkit/CacheManager$CacheResult;
    :cond_2
    move-object v4, v5

    .line 131
    goto :goto_0

    .line 120
    .end local v1           #iter:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method public static declared-synchronized registerHandler(Landroid/webkit/UrlInterceptHandler;)Z
    .locals 2
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const/4 v1, 0x1

    .line 89
    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setUrlInterceptDisabled(Z)V
    .locals 2
    .parameter "disabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v0

    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized unregisterHandler(Landroid/webkit/UrlInterceptHandler;)Z
    .locals 2
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized urlInterceptDisabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
