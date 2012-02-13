.class Landroid/webkit/WebIconDatabase$EventHandler$1;
.super Landroid/os/Handler;
.source "WebIconDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebIconDatabase$EventHandler;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebIconDatabase$EventHandler;


# direct methods
.method constructor <init>(Landroid/webkit/WebIconDatabase$EventHandler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebIconDatabase$EventHandler$1;->this$0:Landroid/webkit/WebIconDatabase$EventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :pswitch_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    #calls: Landroid/webkit/WebIconDatabase;->nativeOpen(Ljava/lang/String;)V
    invoke-static {p0}, Landroid/webkit/WebIconDatabase;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .restart local p0
    :pswitch_1
    #calls: Landroid/webkit/WebIconDatabase;->nativeClose()V
    invoke-static {}, Landroid/webkit/WebIconDatabase;->access$200()V

    goto :goto_0

    :pswitch_2
    #calls: Landroid/webkit/WebIconDatabase;->nativeRemoveAllIcons()V
    invoke-static {}, Landroid/webkit/WebIconDatabase;->access$300()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebIconDatabase$IconListener;

    .local v0, l:Landroid/webkit/WebIconDatabase$IconListener;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/WebIconDatabase$EventHandler$1;->this$0:Landroid/webkit/WebIconDatabase$EventHandler;

    #calls: Landroid/webkit/WebIconDatabase$EventHandler;->requestIconAndSendResult(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    invoke-static {v2, v1, v0}, Landroid/webkit/WebIconDatabase$EventHandler;->access$400(Landroid/webkit/WebIconDatabase$EventHandler;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    goto :goto_0

    .end local v0           #l:Landroid/webkit/WebIconDatabase$IconListener;
    .end local v1           #url:Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Landroid/webkit/WebIconDatabase$EventHandler$1;->this$0:Landroid/webkit/WebIconDatabase$EventHandler;

    #calls: Landroid/webkit/WebIconDatabase$EventHandler;->bulkRequestIcons(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/webkit/WebIconDatabase$EventHandler;->access$500(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    #calls: Landroid/webkit/WebIconDatabase;->nativeRetainIconForPageUrl(Ljava/lang/String;)V
    invoke-static {p0}, Landroid/webkit/WebIconDatabase;->access$600(Ljava/lang/String;)V

    goto :goto_0

    .restart local p0
    :pswitch_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    #calls: Landroid/webkit/WebIconDatabase;->nativeReleaseIconForPageUrl(Ljava/lang/String;)V
    invoke-static {p0}, Landroid/webkit/WebIconDatabase;->access$700(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
