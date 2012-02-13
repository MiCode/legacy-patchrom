.class public final Lcom/android/server/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AttributeCache$Entry;,
        Lcom/android/server/AttributeCache$Package;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/server/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AttributeCache$Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p1, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/AttributeCache;

    invoke-direct {v0, p0}, Lcom/android/server/AttributeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    :cond_0
    return-void
.end method

.method public static instance()Lcom/android/server/AttributeCache;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;
    .locals 9
    .parameter "packageName"
    .parameter "resId"
    .parameter "styleable"

    .prologue
    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v6, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AttributeCache$Package;

    .local v5, pkg:Lcom/android/server/AttributeCache$Package;
    const/4 v4, 0x0

    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    const/4 v2, 0x0

    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v5, :cond_0

    #getter for: Lcom/android/server/AttributeCache$Package;->mMap:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    check-cast v4, Ljava/util/HashMap;

    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    check-cast v2, Lcom/android/server/AttributeCache$Entry;

    .restart local v2       #ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v2

    :goto_0
    return-object v6

    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    :try_start_2
    monitor-exit p0

    move-object v6, v8

    goto :goto_0

    .end local v0           #context:Landroid/content/Context;
    :catch_0
    move-exception v6

    move-object v1, v6

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    monitor-exit p0

    move-object v6, v8

    goto :goto_0

    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    new-instance v5, Lcom/android/server/AttributeCache$Package;

    .end local v5           #pkg:Lcom/android/server/AttributeCache$Package;
    invoke-direct {v5, v0}, Lcom/android/server/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    .restart local v5       #pkg:Lcom/android/server/AttributeCache$Package;
    iget-object v6, p0, Lcom/android/server/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v6, p1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #context:Landroid/content/Context;
    :cond_2
    move-object v3, v2

    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    .local v3, ent:Lcom/android/server/AttributeCache$Entry;
    if-nez v4, :cond_3

    new-instance v4, Ljava/util/HashMap;

    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    #getter for: Lcom/android/server/AttributeCache$Package;->mMap:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    new-instance v2, Lcom/android/server/AttributeCache$Entry;

    iget-object v6, v5, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    iget-object v7, v5, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v7, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/android/server/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v3           #ent:Lcom/android/server/AttributeCache$Entry;
    .restart local v2       #ent:Lcom/android/server/AttributeCache$Entry;
    :try_start_4
    invoke-virtual {v4, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    monitor-exit p0

    move-object v6, v2

    goto :goto_0

    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    .restart local v3       #ent:Lcom/android/server/AttributeCache$Entry;
    :catch_1
    move-exception v6

    move-object v1, v6

    move-object v2, v3

    .end local v3           #ent:Lcom/android/server/AttributeCache$Entry;
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    .restart local v2       #ent:Lcom/android/server/AttributeCache$Entry;
    :goto_1
    monitor-exit p0

    move-object v6, v8

    goto :goto_0

    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    .end local v5           #pkg:Lcom/android/server/AttributeCache$Package;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .restart local v2       #ent:Lcom/android/server/AttributeCache$Entry;
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    .restart local v5       #pkg:Lcom/android/server/AttributeCache$Package;
    :catch_2
    move-exception v6

    move-object v1, v6

    goto :goto_1
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .local v0, changes:I
    const v1, -0x400000a1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0           #changes:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
