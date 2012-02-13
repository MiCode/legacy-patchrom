.class Lcom/android/server/WifiService$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V
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
    iput-object p1, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$302(Lcom/android/server/WifiService;Z)Z

    iget-object v0, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->isAirplaneModeOn()Z
    invoke-static {v0}, Lcom/android/server/WifiService;->access$400(Lcom/android/server/WifiService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z
    invoke-static {v0}, Lcom/android/server/WifiService;->access$500(Lcom/android/server/WifiService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v1, 0x1

    #calls: Lcom/android/server/WifiService;->persistWifiEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v0}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)V

    return-void
.end method
