.class Landroid/webkit/GeolocationPermissions$2;
.super Landroid/os/Handler;
.source "GeolocationPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/GeolocationPermissions;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/GeolocationPermissions;


# direct methods
.method constructor <init>(Landroid/webkit/GeolocationPermissions;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/GeolocationPermissions$2;->this$0:Landroid/webkit/GeolocationPermissions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const-string v7, "callback"

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :pswitch_0
    #calls: Landroid/webkit/GeolocationPermissions;->nativeGetOrigins()Ljava/util/Set;
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->access$000()Ljava/util/Set;

    move-result-object v3

    .local v3, origins:Ljava/util/Set;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/ValueCallback;

    .local v1, callback:Landroid/webkit/ValueCallback;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .local v5, values:Ljava/util/Map;
    const-string v6, "callback"

    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "origins"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Landroid/webkit/GeolocationPermissions$2;->this$0:Landroid/webkit/GeolocationPermissions;

    const/4 v7, 0x0

    invoke-static {v8, v7, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    #calls: Landroid/webkit/GeolocationPermissions;->postUIMessage(Landroid/os/Message;)V
    invoke-static {v6, v7}, Landroid/webkit/GeolocationPermissions;->access$100(Landroid/webkit/GeolocationPermissions;Landroid/os/Message;)V

    goto :goto_0

    .end local v1           #callback:Landroid/webkit/ValueCallback;
    .end local v3           #origins:Ljava/util/Set;
    .end local v5           #values:Ljava/util/Map;
    :pswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    .restart local v5       #values:Ljava/util/Map;
    const-string v6, "origin"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, origin:Ljava/lang/String;
    const-string v6, "callback"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ValueCallback;

    .restart local v1       #callback:Landroid/webkit/ValueCallback;
    #calls: Landroid/webkit/GeolocationPermissions;->nativeGetAllowed(Ljava/lang/String;)Z
    invoke-static {v2}, Landroid/webkit/GeolocationPermissions;->access$200(Ljava/lang/String;)Z

    move-result v0

    .local v0, allowed:Z
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .local v4, retValues:Ljava/util/Map;
    const-string v6, "callback"

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "allowed"

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Landroid/webkit/GeolocationPermissions$2;->this$0:Landroid/webkit/GeolocationPermissions;

    const/4 v7, 0x1

    invoke-static {v8, v7, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    #calls: Landroid/webkit/GeolocationPermissions;->postUIMessage(Landroid/os/Message;)V
    invoke-static {v6, v7}, Landroid/webkit/GeolocationPermissions;->access$100(Landroid/webkit/GeolocationPermissions;Landroid/os/Message;)V

    goto :goto_0

    .end local v0           #allowed:Z
    .end local v1           #callback:Landroid/webkit/ValueCallback;
    .end local v2           #origin:Ljava/lang/String;
    .end local v4           #retValues:Ljava/util/Map;
    .end local v5           #values:Ljava/util/Map;
    :pswitch_2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    #calls: Landroid/webkit/GeolocationPermissions;->nativeClear(Ljava/lang/String;)V
    invoke-static {p0}, Landroid/webkit/GeolocationPermissions;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .restart local p0
    :pswitch_3
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    #calls: Landroid/webkit/GeolocationPermissions;->nativeAllow(Ljava/lang/String;)V
    invoke-static {p0}, Landroid/webkit/GeolocationPermissions;->access$400(Ljava/lang/String;)V

    goto :goto_0

    .restart local p0
    :pswitch_4
    #calls: Landroid/webkit/GeolocationPermissions;->nativeClearAll()V
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->access$500()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
