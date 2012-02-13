.class Landroid/webkit/WebSettings$EventHandler$1;
.super Landroid/os/Handler;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebSettings$EventHandler;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebSettings$EventHandler;


# direct methods
.method constructor <init>(Landroid/webkit/WebSettings$EventHandler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v1, v1, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v2, v2, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    #getter for: Landroid/webkit/WebSettings;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebSettings;->access$000(Landroid/webkit/WebSettings;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    iget v2, v2, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v2, v2, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    iget-object v3, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v3, v3, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    #getter for: Landroid/webkit/WebSettings;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v3}, Landroid/webkit/WebSettings;->access$000(Landroid/webkit/WebSettings;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    iget v3, v3, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    #calls: Landroid/webkit/WebSettings;->nativeSync(I)V
    invoke-static {v2, v3}, Landroid/webkit/WebSettings;->access$100(Landroid/webkit/WebSettings;I)V

    :cond_0
    iget-object v2, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v2, v2, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebSettings;->mSyncPending:Z
    invoke-static {v2, v3}, Landroid/webkit/WebSettings;->access$202(Landroid/webkit/WebSettings;Z)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :pswitch_1
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    #calls: Landroid/webkit/WebSettings$EventHandler;->setRenderPriority()V
    invoke-static {v1}, Landroid/webkit/WebSettings$EventHandler;->access$300(Landroid/webkit/WebSettings$EventHandler;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v1, v1, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    #getter for: Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebSettings;->access$400(Landroid/webkit/WebSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "WebViewSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "double_tap_toast_count"

    invoke-static {}, Landroid/webkit/WebSettings;->access$500()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
