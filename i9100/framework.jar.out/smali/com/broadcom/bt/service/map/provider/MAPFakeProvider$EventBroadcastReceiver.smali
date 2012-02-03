.class Lcom/broadcom/bt/service/map/provider/MAPFakeProvider$EventBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MAPFakeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider$EventBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;Lcom/broadcom/bt/service/map/provider/MAPFakeProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider$EventBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider$EventBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;

    #calls: Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->onSMSReceived(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->access$000(Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;Landroid/content/Intent;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v1, "MapFakeProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAPSMSProvider received unhandled event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
