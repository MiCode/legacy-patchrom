.class Landroid/webkit/WebViewCore$EventHub$1;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkit/MotoExtensionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewCore$EventHub;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$EventHub;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 46
    .parameter "msg"

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    sparse-switch v5, :sswitch_data_0

    const/4 v5, 0x0

    .end local p0
    .end local p1
    :goto_0
    return v5

    .restart local p0
    .restart local p1
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/webkit/MotoDispatchHandler;
    invoke-static {v5}, Landroid/webkit/WebViewCore$EventHub;->access$600(Landroid/webkit/WebViewCore$EventHub;)Landroid/webkit/MotoDispatchHandler;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/ArrayList;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/MotoDispatchHandler;->addHandlers(Ljava/util/ArrayList;)V

    .end local p1
    :cond_0
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .restart local p0
    .restart local p1
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->webkitDraw()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)V

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v6}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/BrowserFrame;->destroy()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore;->access$802(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;
    invoke-static {v6}, Landroid/webkit/WebViewCore;->access$900(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->onDestroyed()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore;->access$1002(Landroid/webkit/WebViewCore;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore;->access$1102(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v38, v0

    .local v38, nodePointer:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v38

    #calls: Landroid/webkit/WebViewCore;->nativeRequestLabel(II)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1200(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v33

    .local v33, label:Ljava/lang/String;
    if-eqz v33, :cond_0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x7d

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v38

    move v3, v7

    move-object/from16 v4, v33

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .end local v33           #label:Ljava/lang/String;
    .end local v38           #nodePointer:I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCacheIfLoading()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeScrollFocusedTextInput(FI)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;FI)V

    goto/16 :goto_1

    .restart local p0
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/webkit/WebViewCore$GetUrlData;

    .local v39, param:Landroid/webkit/WebViewCore$GetUrlData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    move-object v7, v0

    #calls: Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .end local v39           #param:Landroid/webkit/WebViewCore$GetUrlData;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/webkit/WebViewCore$PostUrlData;

    .local v39, param:Landroid/webkit/WebViewCore$PostUrlData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/BrowserFrame;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .end local v39           #param:Landroid/webkit/WebViewCore$PostUrlData;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/webkit/WebViewCore$BaseUrlData;

    .local v34, loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    move-object v6, v0

    .local v6, baseUrl:Ljava/lang/String;
    if-eqz v6, :cond_1

    const/16 v5, 0x3a

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v30

    .local v30, i:I
    if-lez v30, :cond_1

    const/4 v5, 0x0

    move-object v0, v6

    move v1, v5

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    .local v43, scheme:Ljava/lang/String;
    const-string v5, "http"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "ftp"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "about"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "javascript"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move-object/from16 v1, v43

    #calls: Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    .end local v30           #i:I
    .end local v43           #scheme:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    move-object v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v6           #baseUrl:Ljava/lang/String;
    .end local v34           #loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->stopLoading()V

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    #calls: Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1700(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_1

    .restart local p0
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    #calls: Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1700(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_1

    .restart local p0
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeClick(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkit/WebView$ViewSizeData;

    .local v25, data:Landroid/webkit/WebView$ViewSizeData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    move v8, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    move v9, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    move v10, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    move v11, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    move v12, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    move v13, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    move v14, v0

    #calls: Landroid/webkit/WebViewCore;->viewSizeChanged(IIIFIIZ)V
    invoke-static/range {v7 .. v14}, Landroid/webkit/WebViewCore;->access$1900(Landroid/webkit/WebViewCore;IIIFIIZ)V

    goto/16 :goto_1

    .end local v25           #data:Landroid/webkit/WebView$ViewSizeData;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/graphics/Point;

    .local v40, pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v7, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v8, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSetScrollOffset(III)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$2000(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_1

    .end local v40           #pt:Landroid/graphics/Point;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/graphics/Rect;

    .local v41, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->height()I

    move-result v9

    #calls: Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$2100(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_1

    .end local v41           #r:Landroid/graphics/Rect;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->loadType()I

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/BrowserFrame;->goBackOrForward(I)V

    goto/16 :goto_1

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->stopLoading()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->restoreState(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v6}, Landroid/webkit/WebViewCore$EventHub;->access$2400(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v6

    #setter for: Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore$EventHub;->access$2302(Landroid/webkit/WebViewCore$EventHub;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v5}, Landroid/webkit/WebViewCore$EventHub;->access$2400(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Landroid/os/Process;->setThreadPriority(II)V

    invoke-static {}, Landroid/webkit/WebViewCore;->pauseTimers()V

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v5

    const/16 v6, 0x6f

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v5}, Landroid/webkit/WebViewCore$EventHub;->access$2400(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v6}, Landroid/webkit/WebViewCore$EventHub;->access$2300(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/Process;->setThreadPriority(II)V

    invoke-static {}, Landroid/webkit/WebViewCore;->resumeTimers()V

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v5

    const/16 v6, 0x70

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativePause()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2500(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeResume()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2600(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeFreeMemory()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    :sswitch_18
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v6}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkOnLine(Z)V

    goto/16 :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :sswitch_19
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/util/Map;

    .local v35, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const-string v6, "type"

    move-object/from16 v0, v35

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v6, "subtype"

    move-object/from16 v0, v35

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v35           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0
    .restart local p1
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    const/4 v6, 0x1

    :goto_3
    #calls: Landroid/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2900(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v6}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v6

    iget v6, v6, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebBackForwardList;->close(I)V

    goto/16 :goto_1

    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/webkit/WebViewCore$ReplaceTextData;

    .local v42, rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v9, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    move v11, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    move v12, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    move v13, v0

    #calls: Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IILjava/lang/String;III)V
    invoke-static/range {v7 .. v13}, Landroid/webkit/WebViewCore;->access$3000(Landroid/webkit/WebViewCore;IILjava/lang/String;III)V

    goto/16 :goto_1

    .end local v42           #rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/webkit/WebViewCore$JSKeyData;

    .local v32, jsData:Landroid/webkit/WebViewCore$JSKeyData;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    move-object/from16 v27, v0

    .local v27, evt:Landroid/view/KeyEvent;
    invoke-virtual/range {v27 .. v27}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .local v10, keyCode:I
    invoke-virtual/range {v27 .. v27}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v11

    .local v11, keyValue:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    .local v8, generation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/KeyEvent;->isDown()Z

    move-result v12

    invoke-virtual/range {v27 .. v27}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v13

    invoke-virtual/range {v27 .. v27}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v14

    invoke-virtual/range {v27 .. v27}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v15

    #calls: Landroid/webkit/WebViewCore;->passToJs(ILjava/lang/String;IIZZZZ)V
    invoke-static/range {v7 .. v15}, Landroid/webkit/WebViewCore;->access$3100(Landroid/webkit/WebViewCore;ILjava/lang/String;IIZZZZ)V

    goto/16 :goto_1

    .end local v8           #generation:I
    .end local v10           #keyCode:I
    .end local v11           #keyValue:I
    .end local v27           #evt:Landroid/view/KeyEvent;
    .end local v32           #jsData:Landroid/webkit/WebViewCore$JSKeyData;
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/webkit/WebViewCore$CursorData;

    .local v19, cDat:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$3200(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .end local v19           #cDat:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3300(Landroid/webkit/WebViewCore;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/Network;->clearUserSslPrefTable()V

    goto/16 :goto_1

    :sswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/webkit/WebViewCore$TouchUpData;

    .local v45, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v12, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v45

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    move v13, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    move v14, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    move v15, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    move/from16 v16, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    move/from16 v17, v0

    #calls: Landroid/webkit/WebViewCore;->nativeTouchUp(IIIII)V
    invoke-static/range {v12 .. v17}, Landroid/webkit/WebViewCore;->access$3400(Landroid/webkit/WebViewCore;IIIII)V

    goto/16 :goto_1

    .end local v45           #touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    :sswitch_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/webkit/WebViewCore$TouchEventData;

    .local v44, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x73

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v8, v0

    iget-object v8, v8, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v9, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    move v10, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    move v11, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move v12, v0

    #calls: Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(IIII)Z
    invoke-static {v8, v9, v10, v11, v12}, Landroid/webkit/WebViewCore;->access$3500(Landroid/webkit/WebViewCore;IIII)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    :goto_4
    move-object/from16 v0, v44

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    move v9, v0

    if-eqz v9, :cond_9

    move-object/from16 v9, v44

    :goto_5
    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    goto :goto_5

    .end local v44           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    const/4 v6, 0x1

    :goto_6
    #calls: Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$3600(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_a
    const/4 v6, 0x0

    goto :goto_6

    :sswitch_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/webkit/WebViewCore$JSInterfaceData;

    .local v32, jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    move-object v6, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/BrowserFrame;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v32           #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/BrowserFrame;->externalRepresentation(Landroid/os/Message;)V

    goto/16 :goto_1

    .restart local p0
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/BrowserFrame;->documentAsText(Landroid/os/Message;)V

    goto/16 :goto_1

    .restart local p0
    :sswitch_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebViewCore$CursorData;

    .local v28, focusData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v28

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mNode:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeMoveFocus(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$3700(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .end local v28           #focusData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_27
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkit/WebViewCore$CursorData;

    .local v24, cursorData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move v7, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    move v8, v0

    #calls: Landroid/webkit/WebViewCore;->nativeMoveMouse(III)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$3800(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_1

    .end local v24           #cursorData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_28
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/webkit/WebViewCore$CursorData;

    .local v20, cData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    move v6, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v7, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move v8, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    move v9, v0

    #calls: Landroid/webkit/WebViewCore;->nativeMoveMouseIfLatest(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$3900(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_1

    .end local v20           #cData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/Message;

    .local v29, hrefMsg:Landroid/os/Message;
    invoke-virtual/range {v29 .. v29}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "url"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v7, v0

    iget-object v7, v7, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v9, v0

    #calls: Landroid/webkit/WebViewCore;->nativeRetrieveHref(II)Ljava/lang/String;
    invoke-static {v7, v8, v9}, Landroid/webkit/WebViewCore;->access$4000(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v7, v0

    iget-object v7, v7, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v9, v0

    #calls: Landroid/webkit/WebViewCore;->nativeRetrieveAnchorText(II)Ljava/lang/String;
    invoke-static {v7, v8, v9}, Landroid/webkit/WebViewCore;->access$4100(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .end local v29           #hrefMsg:Landroid/os/Message;
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4200(Landroid/webkit/WebViewCore;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->postInvalidate()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4300(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    :sswitch_2b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/Message;

    .local v31, imageResult:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->documentHasImages()Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    :goto_7
    move v0, v5

    move-object/from16 v1, v31

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v31 .. v31}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_c
    const/4 v5, 0x0

    goto :goto_7

    .end local v31           #imageResult:Landroid/os/Message;
    :sswitch_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkit/WebViewCore$TextSelectionData;

    .local v26, deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v26

    iget v0, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    move v6, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    #calls: Landroid/webkit/WebViewCore;->nativeDeleteSelection(III)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_1

    .end local v26           #deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSetSelection(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$4500(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    :sswitch_2e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/util/SparseBooleanArray;

    .local v21, choices:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .local v23, choicesSize:I
    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v22, v0

    .local v22, choicesArray:[Z
    const/16 v18, 0x0

    .local v18, c:I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    aput-boolean v5, v22, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move-object/from16 v1, v22

    move/from16 v2, v23

    #calls: Landroid/webkit/WebViewCore;->nativeSendListBoxChoices([ZI)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$4600(Landroid/webkit/WebViewCore;[ZI)V

    goto/16 :goto_1

    .end local v18           #c:I
    .end local v21           #choices:Landroid/util/SparseBooleanArray;
    .end local v22           #choicesArray:[Z
    .end local v23           #choicesSize:I
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4700(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    :sswitch_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4800(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    :sswitch_31
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    const/4 v6, 0x1

    :goto_9
    #calls: Landroid/webkit/WebViewCore;->nativeDumpDomTree(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4900(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_e
    const/4 v6, 0x0

    goto :goto_9

    :sswitch_32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f

    const/4 v6, 0x1

    :goto_a
    #calls: Landroid/webkit/WebViewCore;->nativeDumpRenderTree(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$5000(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_f
    const/4 v6, 0x0

    goto :goto_a

    :sswitch_33
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeDumpNavTree()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5100(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    :sswitch_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeDumpV8Counters()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    :sswitch_35
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    #calls: Landroid/webkit/WebViewCore;->nativeSetJsFlags(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$5300(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local p0
    :sswitch_36
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkit/WebViewCore$GeolocationPermissionsData;

    .local v25, data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mAllow:Z

    move v7, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mRemember:Z

    move v8, v0

    #calls: Landroid/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$5400(Landroid/webkit/WebViewCore;Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .end local v25           #data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #setter for: Landroid/webkit/WebViewCore;->mWebkitScrollX:I
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$5502(Landroid/webkit/WebViewCore;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    #setter for: Landroid/webkit/WebViewCore;->mWebkitScrollY:I
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$5602(Landroid/webkit/WebViewCore;I)I

    goto/16 :goto_1

    :sswitch_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSplitContent()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5700(Landroid/webkit/WebViewCore;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$5802(Landroid/webkit/WebViewCore;Z)Z

    goto/16 :goto_1

    :sswitch_39
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeClearContent()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5900(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    :sswitch_3a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    instance-of v5, v5, Landroid/os/Message;

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .restart local p0
    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    #calls: Landroid/webkit/WebViewCore;->nativeProvideVisitedHistory([Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$6000(Landroid/webkit/WebViewCore;[Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local p0
    :sswitch_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/webkit/WebViewCore$MotionUpData;

    .local v37, motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v37

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    move v7, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    move-object v8, v0

    #calls: Landroid/webkit/WebViewCore;->nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$6100(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4200(Landroid/webkit/WebViewCore;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x77

    move-object/from16 v0, v37

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    move v7, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    move v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v36

    .local v36, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_1

    .end local v36           #message:Landroid/os/Message;
    .end local v37           #motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    :sswitch_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->nativeFullScreenPluginHidden(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$6200(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    :sswitch_3e
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_11

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_11
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/util/Set;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/JWebCoreJavaBridge;->addPackageNames(Ljava/util/Set;)V

    goto/16 :goto_1

    .restart local p0
    :sswitch_3f
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_12

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_12
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/JWebCoreJavaBridge;->addPackageName(Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local p0
    :sswitch_40
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_13

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_13
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/JWebCoreJavaBridge;->removePackageName(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_3
        0x62 -> :sswitch_4
        0x63 -> :sswitch_5
        0x64 -> :sswitch_6
        0x65 -> :sswitch_9
        0x66 -> :sswitch_a
        0x67 -> :sswitch_b
        0x68 -> :sswitch_c
        0x69 -> :sswitch_e
        0x6a -> :sswitch_11
        0x6b -> :sswitch_f
        0x6c -> :sswitch_12
        0x6d -> :sswitch_13
        0x6e -> :sswitch_14
        0x6f -> :sswitch_1a
        0x70 -> :sswitch_1b
        0x71 -> :sswitch_2d
        0x72 -> :sswitch_1c
        0x73 -> :sswitch_1d
        0x74 -> :sswitch_10
        0x75 -> :sswitch_2a
        0x76 -> :sswitch_d
        0x77 -> :sswitch_18
        0x78 -> :sswitch_2b
        0x7a -> :sswitch_2c
        0x7b -> :sswitch_2e
        0x7c -> :sswitch_2f
        0x7d -> :sswitch_3a
        0x7e -> :sswitch_30
        0x7f -> :sswitch_26
        0x80 -> :sswitch_1e
        0x82 -> :sswitch_1
        0x83 -> :sswitch_37
        0x84 -> :sswitch_7
        0x85 -> :sswitch_38
        0x86 -> :sswitch_39
        0x87 -> :sswitch_27
        0x88 -> :sswitch_28
        0x89 -> :sswitch_29
        0x8a -> :sswitch_23
        0x8b -> :sswitch_8
        0x8c -> :sswitch_20
        0x8d -> :sswitch_21
        0x8e -> :sswitch_22
        0x8f -> :sswitch_15
        0x90 -> :sswitch_16
        0x91 -> :sswitch_17
        0x92 -> :sswitch_3c
        0x96 -> :sswitch_1f
        0xa0 -> :sswitch_24
        0xa1 -> :sswitch_25
        0xaa -> :sswitch_31
        0xab -> :sswitch_32
        0xac -> :sswitch_33
        0xad -> :sswitch_34
        0xae -> :sswitch_35
        0xb4 -> :sswitch_36
        0xb5 -> :sswitch_3b
        0xb6 -> :sswitch_3d
        0xb7 -> :sswitch_19
        0xb8 -> :sswitch_3e
        0xb9 -> :sswitch_3f
        0xba -> :sswitch_40
        0xc8 -> :sswitch_2
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method
