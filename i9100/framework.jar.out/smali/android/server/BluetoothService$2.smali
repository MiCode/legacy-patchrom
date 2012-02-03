.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 2617
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2620
    if-nez p2, :cond_1

    .line 2759
    :cond_0
    :goto_0
    return-void

    .line 2622
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2624
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2627
    const-string v9, "BluetoothService"

    const-string v10, " Received BOOT_COMPLETED message"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0xbb8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2629
    :cond_2
    const-string v9, "broadcom.android.bluetooth.intent.action.CALL_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2630
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2631
    .local v3, extras:Landroid/os/Bundle;
    const-string v9, "broadcom.android.bluetooth.intent.CALL_STATE"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 2632
    .local v7, state:I
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got Call State change - new call state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    const-string/jumbo v9, "service.brcm.bt.call_active"

    const/4 v10, 0x1

    if-ne v7, v10, :cond_3

    const-string v10, "1"

    :goto_1
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2635
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2636
    const-string/jumbo v9, "service.brcm.bt.avrcp_pass_thru"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const/4 v11, 0x1

    if-ne v7, v11, :cond_4

    const-wide/16 v11, 0x1388

    :goto_2
    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2633
    :cond_3
    const-string v10, "0"

    goto :goto_1

    .line 2637
    :cond_4
    const-wide/16 v11, 0x1388

    goto :goto_2

    .line 2645
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v7           #state:I
    :cond_5
    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2646
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2649
    .local v6, resolver:Landroid/content/ContentResolver;
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isAirplaneModeOn()Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$2500(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x1

    move v2, v9

    .line 2651
    .local v2, enabled:Z
    :goto_3
    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_0

    .line 2652
    if-eqz v2, :cond_7

    .line 2653
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/server/BluetoothService;->enable(Z)Z

    goto/16 :goto_0

    .line 2649
    .end local v2           #enabled:Z
    :cond_6
    const/4 v9, 0x0

    move v2, v9

    goto :goto_3

    .line 2655
    .restart local v2       #enabled:Z
    :cond_7
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/server/BluetoothService;->disable(Z)Z

    goto/16 :goto_0

    .line 2658
    .end local v2           #enabled:Z
    .end local v6           #resolver:Landroid/content/ContentResolver;
    :cond_8
    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2659
    const-string v9, "android.intent.extra.DOCK_STATE"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 2661
    .restart local v7       #state:I
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    if-nez v7, :cond_9

    .line 2663
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/server/BluetoothService;->access$3202(Ljava/lang/String;)Ljava/lang/String;

    .line 2664
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$3302(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2666
    :cond_9
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "bluetooth_service_settings"

    iget-object v11, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2669
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dock_bluetooth_address"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/server/BluetoothService;->access$3200()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2670
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 2674
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #state:I
    :cond_a
    const-string v9, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2675
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$908(Landroid/server/BluetoothService;)I

    .line 2676
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACL connected, mAclLinkCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static {v11}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2678
    :cond_b
    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2679
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$910(Landroid/server/BluetoothService;)I

    .line 2680
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACL disconnected, mAclLinkCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static {v11}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForAclDisconnected:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static {v9}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)I

    move-result v9

    if-nez v9, :cond_0

    .line 2682
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2683
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0xc8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2687
    :cond_c
    const-string v9, "android.bluetooth.device.action.PROFILE_DISCONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 2688
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2689
    .restart local v3       #extras:Landroid/os/Bundle;
    const-string v9, "android.bluetooth.device.extra.PROFILE"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2690
    .local v5, profile:I
    const/4 v8, 0x0

    .line 2692
    .local v8, waitingForThisProfile:Z
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received profile "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " disconnected intent."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    packed-switch v5, :pswitch_data_0

    .line 2709
    :goto_4
    if-eqz v8, :cond_0

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static {v9}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)I

    move-result v9

    if-nez v9, :cond_0

    .line 2714
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2715
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mDisableSaveSetting:Z
    invoke-static {v10}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Z

    move-result v10

    #calls: Landroid/server/BluetoothService;->finishDisable(Z)V
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;Z)V

    goto/16 :goto_0

    .line 2696
    :pswitch_0
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Z

    move-result v8

    .line 2697
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$502(Landroid/server/BluetoothService;Z)Z

    goto :goto_4

    .line 2700
    :pswitch_1
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Z

    move-result v8

    .line 2701
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$602(Landroid/server/BluetoothService;Z)Z

    goto :goto_4

    .line 2704
    :pswitch_2
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Z

    move-result v8

    .line 2705
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$702(Landroid/server/BluetoothService;Z)Z

    goto :goto_4

    .line 2720
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v5           #profile:I
    .end local v8           #waitingForThisProfile:Z
    :cond_d
    const-string v9, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2721
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 2722
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/16 v10, 0x15

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto/16 :goto_0

    .line 2727
    :cond_e
    const-string v9, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 2728
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 2729
    .local v4, mDPM:Landroid/app/admin/DevicePolicyManager;
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Intent IT Policy"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v9

    if-nez v9, :cond_f

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 2731
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1002(I)I

    .line 2732
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/server/BluetoothService;->disable(Z)Z

    .line 2733
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2734
    :cond_f
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    .line 2735
    const/4 v9, 0x1

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1002(I)I

    .line 2736
    const-string/jumbo v9, "service.bt.security.policy.mode"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2737
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2738
    :cond_10
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 2739
    const/4 v9, 0x2

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1002(I)I

    .line 2740
    const-string/jumbo v9, "service.bt.security.policy.mode"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2744
    .end local v4           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_11
    const-string v9, "com.sktelecom.dmc.intent.action.DCMO_BT_SET"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_0

    .line 2694
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
