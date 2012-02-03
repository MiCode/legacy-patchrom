.class Lcom/broadcom/bt/service/opp/OppEventLoop$1;
.super Landroid/content/BroadcastReceiver;
.source "OppEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/OppEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/opp/OppEventLoop;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/opp/OppEventLoop;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop$1;->this$0:Lcom/broadcom/bt/service/opp/OppEventLoop;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 127
    if-nez p2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.bluetooth.device.action.AMP_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    const-string v4, "android.bluetooth.device.extra.BTA_APP_ID"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 133
    .local v2, appId:I
    const-string v4, "android.bluetooth.device.extra.AMP_STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 134
    .local v1, ampState:I
    const-string v4, "android.bluetooth.adapter.extra.DI_REMOTE_ADDRESS"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, device:Ljava/lang/String;
    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 138
    iget-object v4, p0, Lcom/broadcom/bt/service/opp/OppEventLoop$1;->this$0:Lcom/broadcom/bt/service/opp/OppEventLoop;

    invoke-virtual {v4, v3, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->onOpcAmpStateChanged(Ljava/lang/String;I)V

    goto :goto_0

    .line 140
    :cond_2
    const/4 v4, 0x7

    if-ne v2, v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/broadcom/bt/service/opp/OppEventLoop$1;->this$0:Lcom/broadcom/bt/service/opp/OppEventLoop;

    invoke-virtual {v4, v3, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->onOpsAmpStateChanged(Ljava/lang/String;I)V

    goto :goto_0
.end method
