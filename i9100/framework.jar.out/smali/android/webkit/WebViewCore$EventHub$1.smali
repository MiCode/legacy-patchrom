.class Landroid/webkit/WebViewCore$EventHub$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


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
    .line 1143
    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 75
    .parameter "msg"

    .prologue
    .line 1146
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    if-eqz v5, :cond_1

    .line 1147
    const-string/jumbo v5, "webcore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/16 v8, 0x61

    if-lt v7, v8, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/16 v8, 0x92

    if-le v7, v8, :cond_3

    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " arg1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " arg2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " obj="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    sparse-switch v5, :sswitch_data_0

    .line 1939
    .end local p0
    .end local p1
    :cond_2
    :goto_1
    return-void

    .line 1147
    .restart local p0
    .restart local p1
    :cond_3
    sget-object v7, Landroid/webkit/WebViewCore;->HandlerDebugString:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v8, v0

    const/16 v9, 0x61

    sub-int/2addr v8, v9

    aget-object v7, v7, v8

    goto :goto_0

    .line 1157
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->webkitDraw()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)V

    goto :goto_1

    .line 1163
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    monitor-enter v5

    .line 1164
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v6}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/BrowserFrame;->destroy()V

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore;->access$702(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;
    invoke-static {v6}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->onDestroyed()V

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore;->access$902(Landroid/webkit/WebViewCore;I)I

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore;->access$1002(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 1169
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1173
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1174
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v58, v0

    .line 1175
    .local v58, nodePointer:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v58

    #calls: Landroid/webkit/WebViewCore;->nativeRequestLabel(II)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v53

    .line 1177
    .local v53, label:Ljava/lang/String;
    if-eqz v53, :cond_2

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x7d

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v58

    move v3, v7

    move-object/from16 v4, v53

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1186
    .end local v53           #label:Ljava/lang/String;
    .end local v58           #nodePointer:I
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCacheIfLoading()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1190
    :sswitch_4
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
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;FI)V

    goto/16 :goto_1

    .line 1199
    .restart local p0
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Landroid/webkit/WebViewCore$GetUrlData;

    .line 1200
    .local v59, param:Landroid/webkit/WebViewCore$GetUrlData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    move-object v7, v0

    #calls: Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1205
    .end local v59           #param:Landroid/webkit/WebViewCore$GetUrlData;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Landroid/webkit/WebViewCore$PostUrlData;

    .line 1206
    .local v59, param:Landroid/webkit/WebViewCore$PostUrlData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/BrowserFrame;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 1210
    .end local v59           #param:Landroid/webkit/WebViewCore$PostUrlData;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Landroid/webkit/WebViewCore$BaseUrlData;

    .line 1211
    .local v54, loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    move-object v6, v0

    .line 1212
    .local v6, baseUrl:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 1213
    const/16 v5, 0x3a

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v47

    .line 1214
    .local v47, i:I
    if-lez v47, :cond_4

    .line 1225
    const/4 v5, 0x0

    move-object v0, v6

    move v1, v5

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v68

    .line 1226
    .local v68, scheme:Ljava/lang/String;
    const-string v5, "http"

    move-object/from16 v0, v68

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ftp"

    move-object/from16 v0, v68

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "about"

    move-object/from16 v0, v68

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "javascript"

    move-object/from16 v0, v68

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move-object/from16 v1, v68

    #calls: Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    .line 1234
    .end local v47           #i:I
    .end local v68           #scheme:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    move-object v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1246
    .end local v6           #baseUrl:Ljava/lang/String;
    .end local v54           #loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 1251
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->stopLoading()V

    goto/16 :goto_1

    .line 1259
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_1

    .line 1263
    :sswitch_a
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
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_1

    .line 1267
    .restart local p0
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

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    #calls: Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_1

    .line 1275
    .restart local p0
    :sswitch_c
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
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1700(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1279
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebView$ViewSizeData;

    .line 1281
    .local v41, data:Landroid/webkit/WebView$ViewSizeData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    move v8, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    move v9, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    move v10, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    move v11, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    move v12, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    move v13, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    move v14, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/webkit/WebView$ViewSizeData;->mNeedAnchorDiff:Z

    move v15, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mViewportLeft:I

    move/from16 v16, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mViewportTop:I

    move/from16 v17, v0

    #calls: Landroid/webkit/WebViewCore;->viewSizeChanged(IIIFIIZZII)V
    invoke-static/range {v7 .. v17}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;IIIFIIZZII)V

    goto/16 :goto_1

    .line 1293
    .end local v41           #data:Landroid/webkit/WebView$ViewSizeData;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebView$PluginUpdateData;

    .line 1296
    .local v41, data:Landroid/webkit/WebView$PluginUpdateData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mMode:I

    move v8, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mViewLeft:I

    move v9, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mViewTop:I

    move v10, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mViewRight:I

    move v11, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mViewBottom:I

    move v12, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mScale:F

    move v13, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mAnchorX:I

    move v14, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mAnchorY:I

    move v15, v0

    #calls: Landroid/webkit/WebViewCore;->nativeUpdatePlugins(IIIIIFII)V
    invoke-static/range {v7 .. v15}, Landroid/webkit/WebViewCore;->access$1900(Landroid/webkit/WebViewCore;IIIIIFII)V

    goto/16 :goto_1

    .line 1304
    .end local v41           #data:Landroid/webkit/WebView$PluginUpdateData;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/graphics/Point;

    .line 1305
    .local v61, pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v7, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v8, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSetScrollOffset(III)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$2000(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_1

    .line 1309
    .end local v61           #pt:Landroid/graphics/Point;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/graphics/Rect;

    .line 1310
    .local v62, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    invoke-virtual/range {v62 .. v62}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v62 .. v62}, Landroid/graphics/Rect;->height()I

    move-result v9

    #calls: Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$2100(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_1

    .line 1317
    .end local v62           #r:Landroid/graphics/Rect;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->loadType()I

    move-result v5

    if-nez v5, :cond_6

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_1

    .line 1328
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/BrowserFrame;->goBackOrForward(I)V

    goto/16 :goto_1

    .line 1333
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->stopLoading()V

    .line 1334
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

    .line 1338
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

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v5}, Landroid/webkit/WebViewCore$EventHub;->access$2400(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1341
    invoke-static {}, Landroid/webkit/WebViewCore;->pauseTimers()V

    .line 1342
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v5

    const/16 v6, 0x6f

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1347
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

    .line 1348
    invoke-static {}, Landroid/webkit/WebViewCore;->resumeTimers()V

    .line 1349
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v5

    const/16 v6, 0x70

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1354
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativePause()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2500(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1358
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeResume()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2600(Landroid/webkit/WebViewCore;)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1367
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$2800(Landroid/webkit/WebViewCore;Z)V

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeFreeMemory()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2900(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1374
    :sswitch_18
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELKEY_SIML_FOR_COUNT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSimulateDelKeyForCount(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$3000(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1380
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkit/WebView$ResultTransport;

    .line 1381
    .local v26, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v60

    .line 1382
    .local v60, params:[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object p1, v60, v5

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 1383
    .local v38, count:I
    const/4 v5, 0x1

    aget-object p1, v60, v5

    check-cast p1, Landroid/webkit/WebView$CursorDirection;

    sget-object v5, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    move-object/from16 v0, p1

    move-object v1, v5

    if-ne v0, v1, :cond_7

    const/4 v5, 0x1

    move/from16 v49, v5

    .line 1384
    .local v49, isBefore:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move/from16 v1, v38

    move/from16 v2, v49

    #calls: Landroid/webkit/WebViewCore;->nativeGetTextAroundCursor(IZ)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$3100(Landroid/webkit/WebViewCore;IZ)Ljava/lang/String;

    move-result-object v70

    .line 1386
    .local v70, str:Ljava/lang/String;
    monitor-enter v26

    .line 1388
    :try_start_1
    move-object/from16 v0, v26

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1389
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 1391
    monitor-exit v26

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    .line 1383
    .end local v49           #isBefore:Z
    .end local v70           #str:Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    move/from16 v49, v5

    goto :goto_2

    .line 1398
    .end local v26           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v38           #count:I
    .end local v60           #params:[Ljava/lang/Object;
    .restart local p1
    :sswitch_1a
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

    #calls: Landroid/webkit/WebViewCore;->nativeDeleteSurroundingText(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$3200(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1403
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/webkit/WebView$ResultTransport;

    .line 1407
    .local v21, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetSelectionOffset()Landroid/graphics/Point;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3300(Landroid/webkit/WebViewCore;)Landroid/graphics/Point;

    move-result-object v66

    .line 1409
    .local v66, result:Landroid/graphics/Point;
    monitor-enter v21

    .line 1411
    :try_start_2
    move-object/from16 v0, v21

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1412
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notify()V

    .line 1414
    monitor-exit v21

    goto/16 :goto_1

    :catchall_2
    move-exception v5

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v5

    .line 1420
    .end local v21           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    .end local v66           #result:Landroid/graphics/Point;
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkit/WebView$ResultTransport;

    .line 1421
    .restart local v26       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetBodyText()Ljava/lang/String;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3400(Landroid/webkit/WebViewCore;)Ljava/lang/String;

    move-result-object v70

    .line 1423
    .restart local v70       #str:Ljava/lang/String;
    monitor-enter v26

    .line 1425
    :try_start_3
    move-object/from16 v0, v26

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1426
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 1428
    monitor-exit v26

    goto/16 :goto_1

    :catchall_3
    move-exception v5

    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v5

    .line 1434
    .end local v26           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v70           #str:Ljava/lang/String;
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkit/WebView$ResultTransport;

    .line 1435
    .restart local v26       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetBodyHTML()Ljava/lang/String;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3500(Landroid/webkit/WebViewCore;)Ljava/lang/String;

    move-result-object v70

    .line 1437
    .restart local v70       #str:Ljava/lang/String;
    monitor-enter v26

    .line 1439
    :try_start_4
    move-object/from16 v0, v26

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1440
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 1442
    monitor-exit v26

    goto/16 :goto_1

    :catchall_4
    move-exception v5

    monitor-exit v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v5

    .line 1447
    .end local v26           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v70           #str:Ljava/lang/String;
    :sswitch_1e
    const/16 v50, 0x0

    .line 1448
    .local v50, isBodyEmpty:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkit/WebView$ResultTransport;

    .line 1449
    .local v24, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetBodyEmpty()Z
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3600(Landroid/webkit/WebViewCore;)Z

    move-result v50

    .line 1451
    monitor-enter v24

    .line 1453
    :try_start_5
    invoke-static/range {v50 .. v50}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1454
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 1456
    monitor-exit v24

    goto/16 :goto_1

    :catchall_5
    move-exception v5

    monitor-exit v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v5

    .line 1461
    .end local v24           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v50           #isBodyEmpty:Z
    :sswitch_1f
    const/16 v69, -0x1

    .line 1462
    .local v69, selectedType:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkit/WebView$ResultTransport;

    .line 1463
    .local v25, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeContentSelectionType()I
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3700(Landroid/webkit/WebViewCore;)I

    move-result v69

    .line 1465
    monitor-enter v25

    .line 1467
    :try_start_6
    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1468
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notify()V

    .line 1470
    monitor-exit v25

    goto/16 :goto_1

    :catchall_6
    move-exception v5

    monitor-exit v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v5

    .line 1477
    .end local v25           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v69           #selectedType:I
    :sswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/webkit/WebView$ResultTransport;

    .line 1478
    .local v22, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/webkit/WebView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v60

    .line 1479
    .restart local v60       #params:[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v45, v60, v5

    check-cast v45, Ljava/lang/Boolean;

    .line 1480
    .local v45, giveContentRect:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    #calls: Landroid/webkit/WebViewCore;->nativeGetCursorRect(Z)Landroid/graphics/Rect;
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$3800(Landroid/webkit/WebViewCore;Z)Landroid/graphics/Rect;

    move-result-object v40

    .line 1482
    .local v40, cursurRect:Landroid/graphics/Rect;
    monitor-enter v22

    .line 1484
    :try_start_7
    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1485
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notify()V

    .line 1487
    monitor-exit v22

    goto/16 :goto_1

    :catchall_7
    move-exception v5

    monitor-exit v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v5

    .line 1494
    .end local v22           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    .end local v40           #cursurRect:Landroid/graphics/Rect;
    .end local v45           #giveContentRect:Ljava/lang/Boolean;
    .end local v60           #params:[Ljava/lang/Object;
    :sswitch_21
    const/16 v51, 0x0

    .line 1495
    .local v51, isCommandSuces:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/webkit/WebView$CmdVal;

    .line 1496
    .local v37, cmdVal:Landroid/webkit/WebView$CmdVal;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/webkit/WebView$CmdVal;->command:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/webkit/WebView$CmdVal;->value:Ljava/lang/String;

    move-object v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeExecCommand(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$3900(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    .line 1497
    monitor-enter v37

    .line 1499
    :try_start_8
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notify()V

    .line 1501
    monitor-exit v37

    goto/16 :goto_1

    :catchall_8
    move-exception v5

    monitor-exit v37
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v5

    .line 1506
    .end local v37           #cmdVal:Landroid/webkit/WebView$CmdVal;
    .end local v51           #isCommandSuces:Z
    :sswitch_22
    const/16 v31, 0x0

    .line 1507
    .local v31, canUndo:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkit/WebView$ResultTransport;

    .line 1508
    .restart local v24       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCanUndo()Z
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4000(Landroid/webkit/WebViewCore;)Z

    move-result v31

    .line 1509
    monitor-enter v24

    .line 1511
    :try_start_9
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1512
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 1514
    monitor-exit v24

    goto/16 :goto_1

    :catchall_9
    move-exception v5

    monitor-exit v24
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v5

    .line 1520
    .end local v24           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v31           #canUndo:Z
    :sswitch_23
    const/16 v30, 0x0

    .line 1521
    .local v30, canRedo:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkit/WebView$ResultTransport;

    .line 1522
    .restart local v24       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCanRedo()Z
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4100(Landroid/webkit/WebViewCore;)Z

    move-result v30

    .line 1523
    monitor-enter v24

    .line 1525
    :try_start_a
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1526
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 1528
    monitor-exit v24

    goto/16 :goto_1

    :catchall_a
    move-exception v5

    monitor-exit v24
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v5

    .line 1532
    .end local v24           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v30           #canRedo:Z
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUndoRedoStateReset()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1538
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v74, v0

    check-cast v74, Ljava/lang/String;

    .line 1539
    .local v74, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move-object/from16 v1, v74

    #calls: Landroid/webkit/WebViewCore;->nativeCopyAndSaveImage(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$4300(Landroid/webkit/WebViewCore;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1544
    .end local v74           #url:Ljava/lang/String;
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x4

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1548
    :sswitch_27
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/webkit/WebView$ResultTransport;

    .line 1549
    .local v23, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetFullMarkupData()Landroid/webkit/WebHTMLMarkupData;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4500(Landroid/webkit/WebViewCore;)Landroid/webkit/WebHTMLMarkupData;

    move-result-object v70

    .line 1551
    .local v70, str:Landroid/webkit/WebHTMLMarkupData;
    monitor-enter v23

    .line 1553
    :try_start_b
    move-object/from16 v0, v23

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1554
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notify()V

    .line 1556
    monitor-exit v23

    goto/16 :goto_1

    :catchall_b
    move-exception v5

    monitor-exit v23
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v5

    .line 1561
    .end local v23           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    .end local v70           #str:Landroid/webkit/WebHTMLMarkupData;
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    const/4 v6, 0x1

    :goto_3
    #calls: Landroid/webkit/WebViewCore;->nativeSetEditable(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4600(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 1565
    :sswitch_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/graphics/Point;

    .line 1566
    .local v63, recTwoIntObj:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v63

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSetSelectionEditable(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$4700(Landroid/webkit/WebViewCore;II)V

    .line 1567
    monitor-enter v63

    .line 1569
    :try_start_c
    invoke-virtual/range {v63 .. v63}, Ljava/lang/Object;->notify()V

    .line 1571
    monitor-exit v63

    goto/16 :goto_1

    :catchall_c
    move-exception v5

    monitor-exit v63
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v5

    .line 1576
    .end local v63           #recTwoIntObj:Landroid/graphics/Point;
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSetSelectionNone()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1581
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeRestorePreviousSelectionController()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4900(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1586
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSaveSelectionController()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5000(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1591
    :sswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkit/WebView$ResultTransport;

    .line 1592
    .restart local v25       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v66, -0x1

    .line 1593
    .local v66, result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCheckSelectionAtBoundry()I
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5100(Landroid/webkit/WebViewCore;)I

    move-result v66

    .line 1595
    monitor-enter v25

    .line 1597
    :try_start_d
    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1598
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notify()V

    .line 1600
    monitor-exit v25

    goto/16 :goto_1

    :catchall_d
    move-exception v5

    monitor-exit v25
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v5

    .line 1607
    .end local v25           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v66           #result:I
    :sswitch_2e
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_9

    .line 1608
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1611
    :cond_9
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v5, v6}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkOnLine(Z)V

    goto/16 :goto_1

    :cond_a
    const/4 v6, 0x0

    goto :goto_4

    .line 1616
    :sswitch_2f
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_b

    .line 1617
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1620
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Ljava/util/Map;

    .line 1621
    .local v55, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const-string/jumbo v6, "type"

    move-object/from16 v0, v55

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string/jumbo v6, "subtype"

    move-object/from16 v0, v55

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

    .line 1626
    .end local v55           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0
    .restart local p1
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    const/4 v6, 0x1

    :goto_5
    #calls: Landroid/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$2800(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_c
    const/4 v6, 0x0

    goto :goto_5

    .line 1630
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5200(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v6}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v6

    iget v6, v6, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebBackForwardList;->close(I)V

    goto/16 :goto_1

    .line 1635
    :sswitch_32
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v65, v0

    check-cast v65, Landroid/webkit/WebViewCore$ReplaceTextData;

    .line 1636
    .local v65, rep:Landroid/webkit/WebViewCore$ReplaceTextData;
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

    move-object/from16 v0, v65

    iget-object v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v65

    iget v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    move v11, v0

    move-object/from16 v0, v65

    iget v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    move v12, v0

    move-object/from16 v0, v65

    iget v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    move v13, v0

    #calls: Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IILjava/lang/String;III)V
    invoke-static/range {v7 .. v13}, Landroid/webkit/WebViewCore;->access$5300(Landroid/webkit/WebViewCore;IILjava/lang/String;III)V

    goto/16 :goto_1

    .line 1642
    .end local v65           #rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    :sswitch_33
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Landroid/webkit/WebViewCore$JSKeyData;

    .line 1643
    .local v52, jsData:Landroid/webkit/WebViewCore$JSKeyData;
    move-object/from16 v0, v52

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    move-object/from16 v43, v0

    .line 1644
    .local v43, evt:Landroid/view/KeyEvent;
    invoke-virtual/range {v43 .. v43}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 1645
    .local v10, keyCode:I
    invoke-virtual/range {v43 .. v43}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v11

    .line 1646
    .local v11, keyValue:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    .line 1647
    .local v8, generation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v52

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/KeyEvent;->isDown()Z

    move-result v12

    invoke-virtual/range {v43 .. v43}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v13

    invoke-virtual/range {v43 .. v43}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v14

    invoke-virtual/range {v43 .. v43}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v15

    #calls: Landroid/webkit/WebViewCore;->passToJs(ILjava/lang/String;IIZZZZ)V
    invoke-static/range {v7 .. v15}, Landroid/webkit/WebViewCore;->access$5400(Landroid/webkit/WebViewCore;ILjava/lang/String;IIZZZZ)V

    goto/16 :goto_1

    .line 1658
    .end local v8           #generation:I
    .end local v10           #keyCode:I
    .end local v11           #keyValue:I
    .end local v43           #evt:Landroid/view/KeyEvent;
    .end local v52           #jsData:Landroid/webkit/WebViewCore$JSKeyData;
    :sswitch_34
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebViewCore$CursorData;

    .line 1659
    .local v28, cDat:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v28

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$5500(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1664
    .end local v28           #cDat:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5600(Landroid/webkit/WebViewCore;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/Network;->clearUserSslPrefTable()V

    goto/16 :goto_1

    .line 1673
    :sswitch_36
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v73, v0

    check-cast v73, Landroid/webkit/WebViewCore$TouchUpData;

    .line 1674
    .local v73, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v12, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v73

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    move v13, v0

    move-object/from16 v0, v73

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    move v14, v0

    move-object/from16 v0, v73

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    move v15, v0

    move-object/from16 v0, v73

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    move/from16 v16, v0

    move-object/from16 v0, v73

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    move/from16 v17, v0

    #calls: Landroid/webkit/WebViewCore;->nativeTouchUp(IIIII)V
    invoke-static/range {v12 .. v17}, Landroid/webkit/WebViewCore;->access$5700(Landroid/webkit/WebViewCore;IIIII)V

    goto/16 :goto_1

    .line 1680
    .end local v73           #touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    :sswitch_37
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Landroid/webkit/WebViewCore$TouchEventData;

    .line 1681
    .local v71, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x73

    move-object/from16 v0, v71

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v8, v0

    iget-object v8, v8, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v71

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v9, v0

    move-object/from16 v0, v71

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    move v10, v0

    move-object/from16 v0, v71

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    move v11, v0

    move-object/from16 v0, v71

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move v12, v0

    #calls: Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(IIII)Z
    invoke-static {v8, v9, v10, v11, v12}, Landroid/webkit/WebViewCore;->access$5800(Landroid/webkit/WebViewCore;IIII)Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x1

    :goto_6
    move-object/from16 v0, v71

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    move v9, v0

    if-eqz v9, :cond_e

    move-object/from16 v9, v71

    :goto_7
    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_d
    const/4 v8, 0x0

    goto :goto_6

    :cond_e
    const/4 v9, 0x0

    goto :goto_7

    .line 1692
    .end local v71           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :sswitch_38
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

    :goto_8
    #calls: Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$5900(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_f
    const/4 v6, 0x0

    goto :goto_8

    .line 1696
    :sswitch_39
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Landroid/webkit/WebViewCore$JSInterfaceData;

    .line 1697
    .local v52, jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, v52

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    move-object v6, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/BrowserFrame;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1702
    .end local v52           #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

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

    .line 1707
    .restart local p0
    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

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

    .line 1711
    .restart local p0
    :sswitch_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/webkit/WebViewCore$CursorData;

    .line 1712
    .local v44, focusData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mNode:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeMoveFocus(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$6000(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1716
    .end local v44           #focusData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_3d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/webkit/WebViewCore$CursorData;

    .line 1717
    .local v39, cursorData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move v7, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    move v8, v0

    #calls: Landroid/webkit/WebViewCore;->nativeMoveMouse(III)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$6100(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_1

    .line 1722
    .end local v39           #cursorData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_3e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebViewCore$CursorData;

    .line 1723
    .local v29, cData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    move v6, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v7, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move v8, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    move v9, v0

    #calls: Landroid/webkit/WebViewCore;->nativeMoveMouseIfLatest(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$6200(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_1

    .line 1729
    .end local v29           #cData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_3f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/os/Message;

    .line 1730
    .local v46, hrefMsg:Landroid/os/Message;
    invoke-virtual/range {v46 .. v46}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "url"

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
    invoke-static {v7, v8, v9}, Landroid/webkit/WebViewCore;->access$6300(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    invoke-virtual/range {v46 .. v46}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "title"

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
    invoke-static {v7, v8, v9}, Landroid/webkit/WebViewCore;->access$6400(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    invoke-virtual/range {v46 .. v46}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1739
    .end local v46           #hrefMsg:Landroid/os/Message;
    :sswitch_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->postInvalidate()V

    .line 1744
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$6500(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1748
    :sswitch_41
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/os/Message;

    .line 1749
    .local v48, imageResult:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->documentHasImages()Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    :goto_9
    move v0, v5

    move-object/from16 v1, v48

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1751
    invoke-virtual/range {v48 .. v48}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1749
    :cond_11
    const/4 v5, 0x0

    goto :goto_9

    .line 1755
    .end local v48           #imageResult:Landroid/os/Message;
    :sswitch_42
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/webkit/WebViewCore$TextSelectionData;

    .line 1757
    .local v42, deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    move v6, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    #calls: Landroid/webkit/WebViewCore;->nativeDeleteSelection(III)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$6600(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_1

    .line 1762
    .end local v42           #deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    :sswitch_43
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
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$6700(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1766
    :sswitch_44
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/util/SparseBooleanArray;

    .line 1768
    .local v33, choices:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    .line 1769
    .local v35, choicesSize:I
    move/from16 v0, v35

    new-array v0, v0, [Z

    move-object/from16 v34, v0

    .line 1770
    .local v34, choicesArray:[Z
    const/16 v27, 0x0

    .local v27, c:I
    :goto_a
    move/from16 v0, v27

    move/from16 v1, v35

    if-ge v0, v1, :cond_12

    .line 1771
    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    aput-boolean v5, v34, v27

    .line 1770
    add-int/lit8 v27, v27, 0x1

    goto :goto_a

    .line 1773
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move-object/from16 v1, v34

    move/from16 v2, v35

    #calls: Landroid/webkit/WebViewCore;->nativeSendListBoxChoices([ZI)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$6800(Landroid/webkit/WebViewCore;[ZI)V

    goto/16 :goto_1

    .line 1778
    .end local v27           #c:I
    .end local v33           #choices:Landroid/util/SparseBooleanArray;
    .end local v34           #choicesArray:[Z
    .end local v35           #choicesSize:I
    :sswitch_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$6900(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1782
    :sswitch_46
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$7000(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1786
    :sswitch_47
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_13

    const/4 v6, 0x1

    :goto_b
    #calls: Landroid/webkit/WebViewCore;->nativeDumpDomTree(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$7100(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_13
    const/4 v6, 0x0

    goto :goto_b

    .line 1790
    :sswitch_48
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_14

    const/4 v6, 0x1

    :goto_c
    #calls: Landroid/webkit/WebViewCore;->nativeDumpRenderTree(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$7200(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_14
    const/4 v6, 0x0

    goto :goto_c

    .line 1794
    :sswitch_49
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeDumpNavTree()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$7300(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1798
    :sswitch_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeDumpV8Counters()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$7400(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1802
    :sswitch_4b
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
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$7500(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1806
    .restart local p0
    :sswitch_4c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebViewCore$GeolocationPermissionsData;

    .line 1808
    .local v41, data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mAllow:Z

    move v7, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mRemember:Z

    move v8, v0

    #calls: Landroid/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$7600(Landroid/webkit/WebViewCore;Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1813
    .end local v41           #data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    :sswitch_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #setter for: Landroid/webkit/WebViewCore;->mWebkitScrollX:I
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$7702(Landroid/webkit/WebViewCore;I)I

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    #setter for: Landroid/webkit/WebViewCore;->mWebkitScrollY:I
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$7802(Landroid/webkit/WebViewCore;I)I

    goto/16 :goto_1

    .line 1818
    :sswitch_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSplitContent()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$7900(Landroid/webkit/WebViewCore;)V

    .line 1819
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$8002(Landroid/webkit/WebViewCore;Z)Z

    goto/16 :goto_1

    .line 1826
    :sswitch_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeClearContent()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$8100(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1830
    :sswitch_50
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    instance-of v5, v5, Landroid/os/Message;

    if-eqz v5, :cond_2

    .line 1831
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1836
    .restart local p0
    :sswitch_51
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
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$8200(Landroid/webkit/WebViewCore;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1840
    .restart local p0
    :sswitch_52
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Landroid/webkit/WebViewCore$MotionUpData;

    .line 1841
    .local v57, motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v57

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v57

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    move v7, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    move-object v8, v0

    #calls: Landroid/webkit/WebViewCore;->nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$8300(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;)V

    .line 1846
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x77

    move-object/from16 v0, v57

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    move v7, v0

    move-object/from16 v0, v57

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    move v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v56

    .line 1849
    .local v56, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v0, v5

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1855
    .end local v56           #message:Landroid/os/Message;
    .end local v57           #motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    :sswitch_53
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->nativeFullScreenPluginHidden(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$8400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1859
    :sswitch_54
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_16

    .line 1860
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1863
    :cond_16
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

    .line 1868
    .restart local p0
    :sswitch_55
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_17

    .line 1869
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1872
    :cond_17
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

    .line 1877
    .restart local p0
    :sswitch_56
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_18

    .line 1878
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1881
    :cond_18
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

    .line 1886
    .restart local p0
    :sswitch_57
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Landroid/graphics/Point;

    .line 1887
    .local v72, touchPt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v72

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v72

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v7, v0

    const/high16 v8, 0x3f80

    #calls: Landroid/webkit/WebViewCore;->nativeGetBlockBounds(IIF)Landroid/graphics/Rect;
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$8500(Landroid/webkit/WebViewCore;IIF)Landroid/graphics/Rect;

    move-result-object v64

    .line 1888
    .local v64, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x82

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v64

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1894
    .end local v64           #rect:Landroid/graphics/Rect;
    .end local v72           #touchPt:Landroid/graphics/Point;
    :sswitch_58
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/webkit/WebViewCore$CursorData;

    .line 1895
    .local v32, cd:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mNode:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeMouseClick(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$8600(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1899
    .end local v32           #cd:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_59
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v67, v0

    check-cast v67, Landroid/webkit/WebViewCore$SelectAndClickData;

    .line 1900
    .local v67, scdata:Landroid/webkit/WebViewCore$SelectAndClickData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v67

    iget v0, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->selectionStart:I

    move v6, v0

    move-object/from16 v0, v67

    iget v0, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->selectionEnd:I

    move v7, v0

    move-object/from16 v0, v67

    iget v0, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->cursorFrame:I

    move v8, v0

    move-object/from16 v0, v67

    iget v0, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->cursorNode:I

    move v9, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSelectAndClick(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$8700(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_1

    .line 1905
    .end local v67           #scdata:Landroid/webkit/WebViewCore$SelectAndClickData;
    :sswitch_5a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Landroid/webkit/WebViewCore$CopyParams;

    .line 1906
    .local v60, params:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v12, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v60

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v13, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v14, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    move v15, v0

    move-object/from16 v0, v60

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    move/from16 v16, v0

    move-object/from16 v0, v60

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    move/from16 v17, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    move/from16 v18, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    move/from16 v19, v0

    #calls: Landroid/webkit/WebViewCore;->nativeCopyMoveSelection(IIIZZFI)V
    invoke-static/range {v12 .. v19}, Landroid/webkit/WebViewCore;->access$8800(Landroid/webkit/WebViewCore;IIIZZFI)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v60

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1916
    .end local v60           #params:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_5b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/webkit/WebViewCore$CopyParams;

    .line 1918
    .local v20, Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v6, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v7, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v9, v0

    iget-object v9, v9, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v9}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v9

    add-int/2addr v8, v9

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v10, v0

    iget-object v10, v10, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v10}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v10

    add-int/2addr v9, v10

    #calls: Landroid/webkit/WebViewCore;->nativeWebTextSelectionAll(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$8900(Landroid/webkit/WebViewCore;IIII)V

    .line 1920
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1926
    .end local v20           #Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_5c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/webkit/WebViewCore$CopyParams;

    .line 1927
    .restart local v20       #Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v7, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v8, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    move v9, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    move v10, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSelectClosestWord(IIFZ)Z
    invoke-static {v6, v7, v8, v9, v10}, Landroid/webkit/WebViewCore;->access$9000(Landroid/webkit/WebViewCore;IIFZ)Z

    move-result v6

    if-ne v5, v6, :cond_2

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1934
    .end local v20           #Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_5d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/webkit/WebViewCore$CopyParams;

    .line 1935
    .local v36, clearSelection:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v6, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeClearTextSelection(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$9100(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1155
    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_2
        0x62 -> :sswitch_3
        0x63 -> :sswitch_4
        0x64 -> :sswitch_5
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
        0x68 -> :sswitch_b
        0x69 -> :sswitch_d
        0x6a -> :sswitch_11
        0x6b -> :sswitch_f
        0x6c -> :sswitch_12
        0x6d -> :sswitch_13
        0x6e -> :sswitch_14
        0x6f -> :sswitch_30
        0x70 -> :sswitch_31
        0x71 -> :sswitch_43
        0x72 -> :sswitch_32
        0x73 -> :sswitch_33
        0x74 -> :sswitch_10
        0x75 -> :sswitch_40
        0x76 -> :sswitch_c
        0x77 -> :sswitch_2e
        0x78 -> :sswitch_41
        0x7a -> :sswitch_42
        0x7b -> :sswitch_44
        0x7c -> :sswitch_45
        0x7d -> :sswitch_50
        0x7e -> :sswitch_46
        0x7f -> :sswitch_3c
        0x80 -> :sswitch_34
        0x82 -> :sswitch_0
        0x83 -> :sswitch_4d
        0x84 -> :sswitch_6
        0x85 -> :sswitch_4e
        0x86 -> :sswitch_4f
        0x87 -> :sswitch_3d
        0x88 -> :sswitch_3e
        0x89 -> :sswitch_3f
        0x8a -> :sswitch_39
        0x8b -> :sswitch_7
        0x8c -> :sswitch_36
        0x8d -> :sswitch_37
        0x8e -> :sswitch_38
        0x8f -> :sswitch_15
        0x90 -> :sswitch_16
        0x91 -> :sswitch_17
        0x92 -> :sswitch_52
        0x96 -> :sswitch_35
        0xa0 -> :sswitch_3a
        0xa1 -> :sswitch_3b
        0xaa -> :sswitch_47
        0xab -> :sswitch_48
        0xac -> :sswitch_49
        0xad -> :sswitch_4a
        0xae -> :sswitch_4b
        0xb4 -> :sswitch_4c
        0xb5 -> :sswitch_51
        0xb6 -> :sswitch_53
        0xb7 -> :sswitch_2f
        0xb8 -> :sswitch_54
        0xb9 -> :sswitch_55
        0xba -> :sswitch_56
        0xbb -> :sswitch_57
        0xbc -> :sswitch_58
        0xbe -> :sswitch_59
        0xc8 -> :sswitch_1
        0xd2 -> :sswitch_5a
        0xd3 -> :sswitch_5d
        0xd4 -> :sswitch_5c
        0xd5 -> :sswitch_e
        0xd8 -> :sswitch_5b
        0x1fc -> :sswitch_18
        0x1fd -> :sswitch_19
        0x1fe -> :sswitch_29
        0x1ff -> :sswitch_1a
        0x200 -> :sswitch_1d
        0x201 -> :sswitch_1b
        0x202 -> :sswitch_1c
        0x203 -> :sswitch_21
        0x204 -> :sswitch_25
        0x205 -> :sswitch_26
        0x206 -> :sswitch_27
        0x207 -> :sswitch_28
        0x209 -> :sswitch_20
        0x20b -> :sswitch_2a
        0x20d -> :sswitch_22
        0x20f -> :sswitch_23
        0x211 -> :sswitch_24
        0x212 -> :sswitch_1e
        0x213 -> :sswitch_1f
        0x214 -> :sswitch_2b
        0x215 -> :sswitch_2c
        0x217 -> :sswitch_2d
    .end sparse-switch
.end method
