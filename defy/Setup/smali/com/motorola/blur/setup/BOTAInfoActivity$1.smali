.class Lcom/motorola/blur/setup/BOTAInfoActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BOTAInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/BOTAInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/BOTAInfoActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/BOTAInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/motorola/blur/setup/BOTAInfoActivity$1;->this$0:Lcom/motorola/blur/setup/BOTAInfoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 31
    iget-object v3, p0, Lcom/motorola/blur/setup/BOTAInfoActivity$1;->this$0:Lcom/motorola/blur/setup/BOTAInfoActivity;

    #getter for: Lcom/motorola/blur/setup/BOTAInfoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/blur/setup/BOTAInfoActivity;->access$000(Lcom/motorola/blur/setup/BOTAInfoActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 32
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.motorola.blur.service.blur.Actions.UPGRADE_DOWNLOAD_STATUS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 37
    invoke-static {p2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilMethods;->downloadStatusFromIntent(Landroid/content/Intent;)Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    move-result-object v2

    .line 38
    .local v2, status:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;
    sget-object v3, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_TEMP_OK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_OK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    if-ne v2, v3, :cond_1

    .line 40
    :cond_0
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 41
    invoke-static {p2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilMethods;->receivedBytesFromIntent(Landroid/content/Intent;)I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 42
    invoke-static {p2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilMethods;->totalBytesFromIntent(Landroid/content/Intent;)I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 48
    .end local v2           #status:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/motorola/blur/setup/BOTAInfoActivity$1;->this$0:Lcom/motorola/blur/setup/BOTAInfoActivity;

    #getter for: Lcom/motorola/blur/setup/BOTAInfoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/blur/setup/BOTAInfoActivity;->access$000(Lcom/motorola/blur/setup/BOTAInfoActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 49
    return-void

    .line 44
    :cond_2
    const-string v3, "com.motorola.blur.updater.FAILURE_DIALOG_CLEARED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    const-string v3, "BOTAActivity"

    const-string v4, "Error occurred during downloading BOTA"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v3, p0, Lcom/motorola/blur/setup/BOTAInfoActivity$1;->this$0:Lcom/motorola/blur/setup/BOTAInfoActivity;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/motorola/blur/setup/BOTAInfoActivity$1;->this$0:Lcom/motorola/blur/setup/BOTAInfoActivity;

    const-class v6, Lcom/motorola/blur/setup/LocaleSelect;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/blur/setup/BOTAInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
