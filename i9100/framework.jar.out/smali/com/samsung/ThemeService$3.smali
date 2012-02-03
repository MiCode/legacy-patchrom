.class Lcom/samsung/ThemeService$3;
.super Landroid/content/BroadcastReceiver;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ThemeService;


# direct methods
.method constructor <init>(Lcom/samsung/ThemeService;)V
    .locals 0
    .parameter

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/samsung/ThemeService$3;->this$0:Lcom/samsung/ThemeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1417
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1420
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1421
    iget-object v1, p0, Lcom/samsung/ThemeService$3;->this$0:Lcom/samsung/ThemeService;

    #calls: Lcom/samsung/ThemeService;->setToLastSelectedTheme()Z
    invoke-static {v1}, Lcom/samsung/ThemeService;->access$400(Lcom/samsung/ThemeService;)Z

    .line 1422
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/samsung/ThemeService$3;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mRunnable_loadInstalledThemeList:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/samsung/ThemeService;->access$500(Lcom/samsung/ThemeService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1441
    :cond_0
    :goto_0
    return-void

    .line 1426
    :cond_1
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1427
    iget-object v1, p0, Lcom/samsung/ThemeService$3;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mInstalledThemeListLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/samsung/ThemeService;->access$200(Lcom/samsung/ThemeService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1428
    :try_start_0
    iget-object v2, p0, Lcom/samsung/ThemeService$3;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mInstalledThemeListAvailable:Z
    invoke-static {v2}, Lcom/samsung/ThemeService;->access$600(Lcom/samsung/ThemeService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1429
    monitor-exit v1

    goto :goto_0

    .line 1436
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1431
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/samsung/ThemeService$3;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/ThemeService;->access$800(Lcom/samsung/ThemeService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/samsung/ThemeService$3;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mCurrentLocale:Ljava/lang/Object;
    invoke-static {v3}, Lcom/samsung/ThemeService;->access$700(Lcom/samsung/ThemeService;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1432
    monitor-exit v1

    goto :goto_0

    .line 1434
    :cond_3
    iget-object v2, p0, Lcom/samsung/ThemeService$3;->this$0:Lcom/samsung/ThemeService;

    #calls: Lcom/samsung/ThemeService;->clearInstalledThemeListLocked()V
    invoke-static {v2}, Lcom/samsung/ThemeService;->access$900(Lcom/samsung/ThemeService;)V

    .line 1436
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1438
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/samsung/ThemeService$3;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mRunnable_loadInstalledThemeList:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/samsung/ThemeService;->access$500(Lcom/samsung/ThemeService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
