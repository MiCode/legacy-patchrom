.class Lcom/android/settings/wifi/WifiSettings$2;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->showProgressDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$2;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "whichButton"

    .prologue
    .line 537
    const-string v0, "WifiSettings"

    const-string v1, "mProgressDialog: onClick(), CANCEL clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$2;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$2;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$2;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->wpsCommandCancel()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$2;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$2;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$400(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$2;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 549
    :cond_1
    return-void
.end method
