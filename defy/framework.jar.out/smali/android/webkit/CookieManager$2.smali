.class Landroid/webkit/CookieManager$2;
.super Ljava/lang/Object;
.source "CookieManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CookieManager;->removeAllCookie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/CookieManager;


# direct methods
.method constructor <init>(Landroid/webkit/CookieManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/CookieManager$2;->this$0:Landroid/webkit/CookieManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-object v0, p0, Landroid/webkit/CookieManager$2;->this$0:Landroid/webkit/CookieManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/webkit/CookieManager$2;->this$0:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/util/LinkedHashMap;

    const/16 v3, 0xc8

    const/high16 v4, 0x3f40

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    #setter for: Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;
    invoke-static {v1, v2}, Landroid/webkit/CookieManager;->access$102(Landroid/webkit/CookieManager;Ljava/util/Map;)Ljava/util/Map;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->clearAllCookies()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
