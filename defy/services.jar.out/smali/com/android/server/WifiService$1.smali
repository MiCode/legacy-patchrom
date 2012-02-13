.class Lcom/android/server/WifiService$1;
.super Landroid/telephony/PhoneStateListener;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v0}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    invoke-static {}, Landroid/net/wifi/WifiStateTracker;->isWapiForOlympus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateRegulatoryDomain()V
    invoke-static {v0}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)V

    :cond_0
    return-void
.end method
