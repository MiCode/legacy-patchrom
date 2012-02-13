.class Lcom/vzw/location/VzwGpsLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "VzwGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsLocationProvider$2;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v6, "VzwGpsLocationProvider"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v4, "VzwGpsLocationProvider"

    const-string v4, "action==null in BroadcastReceiver::onReceive()"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "com.motorola.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "VzwGpsLocationProvider"

    const-string v4, "ALARM_WAKEUP"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/vzw/location/VzwGpsLocationProvider$2;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vzw/location/VzwGpsLocationProvider;->startNavigating(Z)V

    goto :goto_0

    :cond_2
    const-string v4, "com.motorola.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "VzwGpsLocationProvider"

    const-string v4, "ALARM_TIMEOUT"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/vzw/location/VzwGpsLocationProvider$2;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #calls: Lcom/vzw/location/VzwGpsLocationProvider;->hibernate()V
    invoke-static {v4}, Lcom/vzw/location/VzwGpsLocationProvider;->access$100(Lcom/vzw/location/VzwGpsLocationProvider;)V

    goto :goto_0

    :cond_3
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, state:Ljava/lang/String;
    const-string v4, "apn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, apnName:Ljava/lang/String;
    const-string v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, reason:Ljava/lang/String;
    const-string v4, "VzwGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "CONNECTED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/vzw/location/VzwGpsLocationProvider$2;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #setter for: Lcom/vzw/location/VzwGpsLocationProvider;->mAGpsApn:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/vzw/location/VzwGpsLocationProvider;->access$202(Lcom/vzw/location/VzwGpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/vzw/location/VzwGpsLocationProvider$2;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/VzwGpsLocationProvider;->mAGpsDataConnectionState:I
    invoke-static {v4}, Lcom/vzw/location/VzwGpsLocationProvider;->access$300(Lcom/vzw/location/VzwGpsLocationProvider;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/vzw/location/VzwGpsLocationProvider$2;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    iget-object v5, p0, Lcom/vzw/location/VzwGpsLocationProvider$2;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/VzwGpsLocationProvider;->mAGpsApn:Ljava/lang/String;
    invoke-static {v5}, Lcom/vzw/location/VzwGpsLocationProvider;->access$200(Lcom/vzw/location/VzwGpsLocationProvider;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/vzw/location/VzwGpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/vzw/location/VzwGpsLocationProvider;->access$400(Lcom/vzw/location/VzwGpsLocationProvider;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vzw/location/VzwGpsLocationProvider$2;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    const/4 v5, 0x2

    #setter for: Lcom/vzw/location/VzwGpsLocationProvider;->mAGpsDataConnectionState:I
    invoke-static {v4, v5}, Lcom/vzw/location/VzwGpsLocationProvider;->access$302(Lcom/vzw/location/VzwGpsLocationProvider;I)I

    goto/16 :goto_0
.end method
