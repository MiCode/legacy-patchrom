.class Lcom/samsung/ThemeService$5;
.super Landroid/os/Handler;
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
    .line 1580
    iput-object p1, p0, Lcom/samsung/ThemeService$5;->this$0:Lcom/samsung/ThemeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1582
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1611
    :goto_0
    return-void

    .line 1584
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/ThemeService$5;->this$0:Lcom/samsung/ThemeService;

    #calls: Lcom/samsung/ThemeService;->updateThemeToPersistentStorage()V
    invoke-static {v1}, Lcom/samsung/ThemeService;->access$1800(Lcom/samsung/ThemeService;)V

    .line 1585
    iget-object v1, p0, Lcom/samsung/ThemeService$5;->this$0:Lcom/samsung/ThemeService;

    #calls: Lcom/samsung/ThemeService;->updateThemeToActivityManager()Z
    invoke-static {v1}, Lcom/samsung/ThemeService;->access$000(Lcom/samsung/ThemeService;)Z

    goto :goto_0

    .line 1589
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1590
    .local v0, newThemePackage:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/ThemeService$5;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->wLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/samsung/ThemeService;->access$1900(Lcom/samsung/ThemeService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1593
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ThemeService$5;->this$0:Lcom/samsung/ThemeService;

    #calls: Lcom/samsung/ThemeService;->setCurrentThemePackageLocked(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/samsung/ThemeService;->access$2000(Lcom/samsung/ThemeService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1595
    iget-object v1, p0, Lcom/samsung/ThemeService$5;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->wLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/samsung/ThemeService;->access$1900(Lcom/samsung/ThemeService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/ThemeService$5;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->wLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v2}, Lcom/samsung/ThemeService;->access$1900(Lcom/samsung/ThemeService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 1582
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
