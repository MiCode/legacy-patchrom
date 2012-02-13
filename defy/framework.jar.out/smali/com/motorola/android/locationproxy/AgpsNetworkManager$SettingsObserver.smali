.class Lcom/motorola/android/locationproxy/AgpsNetworkManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AgpsNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/AgpsNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;


# direct methods
.method public constructor <init>(Lcom/motorola/android/locationproxy/AgpsNetworkManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "h"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$SettingsObserver;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$SettingsObserver;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->isGpsProviderEnabled()Z
    invoke-static {v0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$300(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onChange: turn on location provider"

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$SettingsObserver;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->startUsingAgpsPdp()Z
    invoke-static {v0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$500(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "onChange: turn off location provider"

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$SettingsObserver;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->stopUsingAgpsPdp()V
    invoke-static {v0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$1100(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)V

    goto :goto_0
.end method
