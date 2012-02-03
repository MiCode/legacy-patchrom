.class Lcom/android/server/DemoThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 843
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 844
    iput-object p1, p0, Lcom/android/server/DemoThread;->mContext:Landroid/content/Context;

    .line 845
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 851
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DemoThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 852
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v9, v0

    .line 853
    .local v9, hasData:Z
    :goto_0
    if-eqz v6, :cond_0

    .line 854
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    .line 856
    :cond_0
    if-nez v9, :cond_1

    .line 857
    new-instance v7, Lcom/android/server/DemoDataSet;

    invoke-direct {v7}, Lcom/android/server/DemoDataSet;-><init>()V

    .line 858
    .local v7, dataset:Lcom/android/server/DemoDataSet;
    iget-object v0, p0, Lcom/android/server/DemoThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/android/server/DemoDataSet;->add(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #dataset:Lcom/android/server/DemoDataSet;
    .end local v9           #hasData:Z
    :cond_1
    :goto_1
    return-void

    .line 852
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_2
    const/4 v0, 0x0

    move v9, v0

    goto :goto_0

    .line 860
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 861
    .local v8, e:Ljava/lang/Throwable;
    const-string v0, "SystemServer"

    const-string v1, "Failure installing demo data"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
