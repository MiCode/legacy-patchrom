.class Landroid/media/AudioService$4;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 3109
    iput-object p1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3112
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v1, "samsung.theme_package_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3113
    iget-object v1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->updateTheme()V
    invoke-static {v1}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)V

    .line 3115
    :cond_0
    return-void
.end method
