.class Lcom/android/server/TvOutService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TvOutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvOutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvOutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvOutService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    .line 115
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 116
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 119
    const-string v1, "TvOut-Observer"

    const-string/jumbo v2, "observe"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    #getter for: Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/TvOutService;->access$000(Lcom/android/server/TvOutService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 122
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v1, "tv_system"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/server/TvOutService$SettingsObserver;->update()V

    .line 125
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 128
    const-string v0, "TvOut-Observer"

    const-string/jumbo v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/android/server/TvOutService$SettingsObserver;->update()V

    .line 130
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    .line 133
    const-string v4, "TvOut-Observer"

    const-string/jumbo v5, "update"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v4, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    #getter for: Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/TvOutService;->access$000(Lcom/android/server/TvOutService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 135
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 137
    .local v0, isupdatetvsystem:Z
    iget-object v4, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    iget-object v4, v4, Lcom/android/server/TvOutService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 139
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    #getter for: Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/TvOutService;->access$000(Lcom/android/server/TvOutService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "tv_system"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, tvoutsystem:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 141
    .local v3, tvsystem:I
    iget-object v5, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    #getter for: Lcom/android/server/TvOutService;->mAnalogTvSystem:I
    invoke-static {v5}, Lcom/android/server/TvOutService;->access$100(Lcom/android/server/TvOutService;)I

    move-result v5

    if-eq v5, v3, :cond_0

    .line 143
    iget-object v5, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    #setter for: Lcom/android/server/TvOutService;->mAnalogTvSystem:I
    invoke-static {v5, v3}, Lcom/android/server/TvOutService;->access$102(Lcom/android/server/TvOutService;I)I

    .line 144
    const/4 v0, 0x1

    .line 147
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    if-eqz v0, :cond_1

    .line 151
    iget-object v4, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    #calls: Lcom/android/server/TvOutService;->TvoutAnalogSetTvSystem()V
    invoke-static {v4}, Lcom/android/server/TvOutService;->access$200(Lcom/android/server/TvOutService;)V

    .line 152
    const/4 v0, 0x0

    .line 154
    :cond_1
    return-void

    .line 147
    .end local v2           #tvoutsystem:Ljava/lang/String;
    .end local v3           #tvsystem:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method
