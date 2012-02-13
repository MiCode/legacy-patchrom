.class abstract Lcom/android/phone/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# static fields
.field private static final DBG:Z


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/IconCache;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/phone/IconCache;->mContext:Landroid/content/Context;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IconCache;->mMap:Ljava/util/HashMap;

    .line 26
    return-void
.end method


# virtual methods
.method public get(J)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 29
    sget-boolean v1, Lcom/android/phone/IconCache;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "IconCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IconCache;->mMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/android/phone/IconCache;->mMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v1, p0

    .line 48
    :goto_0
    return-object v1

    .line 34
    .restart local p0
    :cond_1
    new-instance v0, Lcom/android/phone/IconCache$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/phone/IconCache$1;-><init>(Lcom/android/phone/IconCache;J)V

    .line 46
    .local v0, t:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/android/phone/IconCache;->mMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move-object v1, v4

    .line 48
    goto :goto_0
.end method

.method protected abstract getOnCacheMiss(J)Landroid/graphics/Bitmap;
.end method
