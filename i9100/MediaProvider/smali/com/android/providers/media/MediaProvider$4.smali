.class Lcom/android/providers/media/MediaProvider$4;
.super Landroid/content/BroadcastReceiver;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 873
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, action:Ljava/lang/String;
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 876
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "received Intent.ACTION_LOCALE_CHANGED > set locale"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v2, 0x0

    .line 881
    .local v2, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1100(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 882
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1100(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v5

    const-string v7, "external"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-object v2, v0

    .line 883
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    if-eqz v2, :cond_0

    .line 887
    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 890
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 900
    .end local v2           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return-void

    .line 883
    .restart local v2       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 891
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 892
    .local v4, e:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failed to setLocale()"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
