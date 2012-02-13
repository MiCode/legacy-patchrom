.class Landroid/app/ApplicationLoaders;
.super Ljava/lang/Object;
.source "ApplicationLoaders.java"


# static fields
.field private static final gApplicationLoaders:Landroid/app/ApplicationLoaders;


# instance fields
.field private final mLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/app/ApplicationLoaders;

    invoke-direct {v0}, Landroid/app/ApplicationLoaders;-><init>()V

    sput-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mLoaders:Ljava/util/Map;

    return-void
.end method

.method public static getDefault()Landroid/app/ApplicationLoaders;
    .locals 1

    .prologue
    sget-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-object v0
.end method


# virtual methods
.method public getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 5
    .parameter "zip"
    .parameter "libPath"
    .parameter "parent"

    .prologue
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .local v0, baseParent:Ljava/lang/ClassLoader;
    iget-object v3, p0, Landroid/app/ApplicationLoaders;->mLoaders:Ljava/util/Map;

    monitor-enter v3

    if-nez p3, :cond_0

    move-object p3, v0

    :cond_0
    if-ne p3, v0, :cond_2

    :try_start_0
    iget-object v4, p0, Landroid/app/ApplicationLoaders;->mLoaders:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .local v1, loader:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_1

    monitor-exit v3

    move-object v3, v1

    .end local v1           #loader:Ljava/lang/ClassLoader;
    :goto_0
    return-object v3

    .restart local v1       #loader:Ljava/lang/ClassLoader;
    :cond_1
    new-instance v2, Ldalvik/system/PathClassLoader;

    invoke-direct {v2, p1, p2, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v2, pathClassloader:Ldalvik/system/PathClassLoader;
    iget-object v4, p0, Landroid/app/ApplicationLoaders;->mLoaders:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    move-object v3, v2

    goto :goto_0

    .end local v1           #loader:Ljava/lang/ClassLoader;
    .end local v2           #pathClassloader:Ldalvik/system/PathClassLoader;
    :cond_2
    new-instance v4, Ldalvik/system/PathClassLoader;

    invoke-direct {v4, p1, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    monitor-exit v3

    move-object v3, v4

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
