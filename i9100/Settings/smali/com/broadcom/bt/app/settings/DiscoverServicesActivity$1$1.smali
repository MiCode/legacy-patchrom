.class Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1$1;
.super Ljava/lang/Object;
.source "DiscoverServicesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;

.field final synthetic val$b:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1$1;->this$1:Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;

    iput-object p2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1$1;->val$b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 80
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bleutooth.device.action.UUID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1$1;->this$1:Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;

    iget-object v1, v1, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;->this$0:Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;

    iget-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1$1;->val$b:Landroid/os/Bundle;

    #calls: Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->processDiscoverEvent(Landroid/os/Bundle;)V
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->access$000(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;Landroid/os/Bundle;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v1, "android.bluetooth.adapter.action.DI_REMOTE_DI_INFO_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1$1;->this$1:Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;

    iget-object v1, v1, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;->this$0:Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;

    iget-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1$1;->val$b:Landroid/os/Bundle;

    #calls: Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->processRemoteDiInfo(Landroid/os/Bundle;)V
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->access$100(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 85
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.DI_REMOTE_DI_RECORD_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1$1;->this$1:Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;

    iget-object v1, v1, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;->this$0:Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;

    iget-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1$1;->val$b:Landroid/os/Bundle;

    #calls: Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->processRemoteDiRecord(Landroid/content/Context;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v3}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->access$200(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
