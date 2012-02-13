.class Lcom/android/server/sip/SipService$1;
.super Landroid/content/BroadcastReceiver;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, state:I
    iget-object v2, p0, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    :try_start_0
    monitor-exit v2

    .end local v1           #state:I
    :cond_1
    return-void

    .restart local v1       #state:I
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/sip/SipService;->mWifiEnabled:Z
    invoke-static {v3, v4}, Lcom/android/server/sip/SipService;->access$102(Lcom/android/server/sip/SipService;Z)Z

    iget-object v3, p0, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->anyOpenedToReceiveCalls()Z
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->grabWifiLock()V
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :pswitch_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/sip/SipService;->mWifiEnabled:Z
    invoke-static {v3, v4}, Lcom/android/server/sip/SipService;->access$102(Lcom/android/server/sip/SipService;Z)Z

    iget-object v3, p0, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->releaseWifiLock()V
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
