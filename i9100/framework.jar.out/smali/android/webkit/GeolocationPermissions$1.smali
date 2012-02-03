.class Landroid/webkit/GeolocationPermissions$1;
.super Landroid/os/Handler;
.source "GeolocationPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/GeolocationPermissions;->createUIHandler()V
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
    .line 100
    iput-object p1, p0, Landroid/webkit/GeolocationPermissions$1;->this$0:Landroid/webkit/GeolocationPermissions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-string v6, "callback"

    .line 104
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    .line 107
    .local v4, values:Ljava/util/Map;
    const-string/jumbo v5, "origins"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 108
    .local v3, origins:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "callback"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/ValueCallback;

    .line 109
    .local v2, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    .end local v2           #callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v3           #origins:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #values:Ljava/util/Map;
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    .line 113
    .restart local v4       #values:Ljava/util/Map;
    const-string v5, "allowed"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 114
    .local v0, allowed:Ljava/lang/Boolean;
    const-string v5, "callback"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ValueCallback;

    .line 115
    .local v1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
