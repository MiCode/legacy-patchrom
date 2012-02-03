.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartTetheringErrorState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .parameter

    .prologue
    .line 1831
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 1834
    const-string v2, "Tethering"

    const-string v3, "Error in startTethering"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;->notify(I)V

    .line 1836
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1837
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 1840
    .local v1, service:Landroid/os/INetworkManagementService;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1842
    :goto_0
    return-void

    .line 1841
    :catch_0
    move-exception v2

    goto :goto_0
.end method
