.class Landroid/net/wifi/WifiStateTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$2;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 491
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$2;->this$0:Landroid/net/wifi/WifiStateTracker;

    const/4 v1, -0x1

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;I)I

    .line 492
    return-void
.end method
