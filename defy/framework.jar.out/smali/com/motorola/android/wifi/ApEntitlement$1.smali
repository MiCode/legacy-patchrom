.class Lcom/motorola/android/wifi/ApEntitlement$1;
.super Landroid/content/BroadcastReceiver;
.source "ApEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/wifi/ApEntitlement;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/wifi/ApEntitlement;


# direct methods
.method constructor <init>(Lcom/motorola/android/wifi/ApEntitlement;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "LAST_UNCHECK_TIME"

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, wifiAPState:I
    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "ApEntitlement"

    const-string v2, "posting state change to Enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static {v1, v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectErrorNotif(Z)V
    invoke-static {v1, v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$100(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiReadyNotif(Z)V
    invoke-static {v1, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$200(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const-wide/16 v2, 0x0

    #setter for: Lcom/motorola/android/wifi/ApEntitlement;->mLastUncheckTime:J
    invoke-static {v1, v2, v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$302(Lcom/motorola/android/wifi/ApEntitlement;J)J

    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$400(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LAST_UNCHECK_TIME"

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mLastUncheckTime:J
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$300(Lcom/motorola/android/wifi/ApEntitlement;)J

    move-result-wide v2

    invoke-static {v1, v5, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static {v1, v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiReadyNotif(Z)V
    invoke-static {v1, v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$200(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    #setter for: Lcom/motorola/android/wifi/ApEntitlement;->mLastUncheckTime:J
    invoke-static {v1, v2, v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$302(Lcom/motorola/android/wifi/ApEntitlement;J)J

    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$400(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LAST_UNCHECK_TIME"

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mLastUncheckTime:J
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$300(Lcom/motorola/android/wifi/ApEntitlement;)J

    move-result-wide v2

    invoke-static {v1, v5, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$400(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "AP_ENABLE"

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V
    invoke-static {v1, v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$500(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static {v1, v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static {v1, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static {v1, v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectErrorNotif(Z)V
    invoke-static {v1, v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$100(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$1;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectErrorNotif(Z)V
    invoke-static {v1, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$100(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
