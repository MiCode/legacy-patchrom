.class Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1$1;
.super Ljava/lang/Thread;
.source "BluetoothAVRCPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;

.field final synthetic val$PlayerName:Ljava/lang/String;

.field final synthetic val$wait:I


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1$1;->this$1:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;

    iput-object p2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1$1;->val$PlayerName:Ljava/lang/String;

    iput p3, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1$1;->val$wait:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1$1;->this$1:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1$1;->val$PlayerName:Ljava/lang/String;

    iget v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1$1;->val$wait:I

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->launchPlayer(Ljava/lang/String;I)V

    .line 113
    const-string v0, "BluetoothAVRCPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread launchPlayer returned: player name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1$1;->this$1:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;

    iget-object v2, v2, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    iget-object v2, v2, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getCurrentPlayer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; launched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1$1;->this$1:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;

    iget-object v2, v2, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    iget-object v2, v2, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1$1;->val$PlayerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->isPlayerLaunched(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method
