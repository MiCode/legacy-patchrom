.class Landroid/net/http/RequestQueue$1;
.super Landroid/content/BroadcastReceiver;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/http/RequestQueue;->enablePlatformNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/http/RequestQueue;


# direct methods
.method constructor <init>(Landroid/net/http/RequestQueue;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/http/RequestQueue$1;->this$0:Landroid/net/http/RequestQueue;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "ctx"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Landroid/net/http/RequestQueue$1;->this$0:Landroid/net/http/RequestQueue;

    #calls: Landroid/net/http/RequestQueue;->setProxyConfig()V
    invoke-static {v0}, Landroid/net/http/RequestQueue;->access$300(Landroid/net/http/RequestQueue;)V

    return-void
.end method
