.class Lcom/android/phone/IconCache$1;
.super Ljava/lang/Thread;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IconCache;->get(J)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IconCache;

.field final synthetic val$key:J


# direct methods
.method constructor <init>(Lcom/android/phone/IconCache;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/phone/IconCache$1;->this$0:Lcom/android/phone/IconCache;

    iput-wide p2, p0, Lcom/android/phone/IconCache$1;->val$key:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 38
    .local v1, icon:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/IconCache$1;->this$0:Lcom/android/phone/IconCache;

    iget-wide v3, p0, Lcom/android/phone/IconCache$1;->val$key:J

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/IconCache;->getOnCacheMiss(J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/android/phone/IconCache$1;->this$0:Lcom/android/phone/IconCache;

    iget-object v2, v2, Lcom/android/phone/IconCache;->mMap:Ljava/util/HashMap;

    iget-wide v3, p0, Lcom/android/phone/IconCache$1;->val$key:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 41
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "IconCache"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v2, p0, Lcom/android/phone/IconCache$1;->this$0:Lcom/android/phone/IconCache;

    iget-object v2, v2, Lcom/android/phone/IconCache;->mMap:Ljava/util/HashMap;

    iget-wide v3, p0, Lcom/android/phone/IconCache$1;->val$key:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
