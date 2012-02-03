.class Lcom/android/settings/wifi/WifiDirectSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiDirectSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiDirectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settings/wifi/WifiDirectSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiDirectSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 648
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiDirectSettings;Lcom/android/settings/wifi/WifiDirectSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "WifiDirectSettings"

    .line 664
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #calls: Lcom/android/settings/wifi/WifiDirectSettings;->updateAccessPoints()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$800(Lcom/android/settings/wifi/WifiDirectSettings;)V

    .line 669
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 670
    const-string v0, "WifiDirectSettings"

    const-string v0, "handleMessage: setDeviceDiscoveryEnabled +++ : Direct Disconnected. : "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 672
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 674
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$400(Lcom/android/settings/wifi/WifiDirectSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 681
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 682
    iput v2, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->mRetry:I

    .line 690
    :cond_1
    const-wide/16 v0, 0x2ee0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$400(Lcom/android/settings/wifi/WifiDirectSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 677
    const-string v0, "WifiDirectSettings"

    const-string v0, "   +++ handleMessage: setDeviceDiscoveryEnabled +++ : Direct Connected. : "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 683
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->mRetry:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 684
    iput v2, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->mRetry:I

    .line 685
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    const v1, 0x7f08016b

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 657
    iput v1, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->mRetry:I

    .line 658
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$400(Lcom/android/settings/wifi/WifiDirectSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 659
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->removeMessages(I)V

    .line 660
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 651
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->sendEmptyMessage(I)Z

    .line 654
    :cond_0
    return-void
.end method
