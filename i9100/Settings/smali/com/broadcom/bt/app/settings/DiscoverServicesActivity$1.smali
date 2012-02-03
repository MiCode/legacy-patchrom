.class Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DiscoverServicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;->this$0:Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .local v0, b:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;->this$0:Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;

    #getter for: Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->access$300(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1$1;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1$1;-><init>(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method
