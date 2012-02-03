.class Lcom/android/server/WifiService$10;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 2978
    iput-object p1, p0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 3143
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 5
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v4, 0x1

    .line 3112
    iget-object v1, p0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1000(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_sleep_policy"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3115
    .local v0, wifiSleepPolicy:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move v1, v4

    .line 3124
    :goto_0
    return v1

    .line 3118
    :cond_0
    if-ne v0, v4, :cond_1

    if-eqz p2, :cond_1

    move v1, v4

    .line 3121
    goto :goto_0

    .line 3124
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$10;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2981
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 2983
    .local v6, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1000(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_idle_ms"

    const-wide/32 v21, 0xdbba0

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 2986
    .local v8, idleMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1000(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "stay_on_while_plugged_in"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 2989
    .local v16, stayAwakeConditions:I
    const-string v19, "android.intent.action.SCREEN_ON"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 2993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/server/WifiService;->mDeviceIdle:Z
    invoke-static/range {v19 .. v20}, Lcom/android/server/WifiService;->access$1402(Lcom/android/server/WifiService;Z)Z

    .line 2995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v19 .. v20}, Lcom/android/server/WifiService;->access$1502(Lcom/android/server/WifiService;Z)Z

    .line 2998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #calls: Lcom/android/server/WifiService;->sendReportWorkSourceMessage()V
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)V

    .line 2999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Lcom/android/server/WifiService;->sendEnableRssiPollingMessage(Z)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;Z)V

    .line 3002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 3003
    .local v10, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v19

    sget-object v20, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 3004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v19

    const/16 v20, -0x63

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiStateTracker;->enableNetwork(IZ)Z

    move-result v13

    .line 3005
    .local v13, result:Z
    if-nez v13, :cond_0

    .line 3006
    const-string v19, "WifiService"

    const-string v20, "ENABLE ALL is fail"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    .end local v13           #result:Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiStateTracker;->isAnyNetworkDisabled()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 3013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #calls: Lcom/android/server/WifiService;->sendEnableNetworksMessage()V
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)V

    .line 3101
    .end local v10           #info:Landroid/net/wifi/WifiInfo;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$500(Lcom/android/server/WifiService;)V

    .line 3102
    :cond_2
    :goto_1
    return-void

    .line 3015
    :cond_3
    const-string v19, "android.intent.action.SCREEN_OFF"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 3019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v19 .. v20}, Lcom/android/server/WifiService;->access$1502(Lcom/android/server/WifiService;Z)Z

    .line 3020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/android/server/WifiService;->sendEnableRssiPollingMessage(Z)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;Z)V

    .line 3027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$10;->shouldWifiStayAwake(II)Z

    move-result v19

    if-nez v19, :cond_2

    .line 3028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 3029
    .restart local v10       #info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v19

    sget-object v20, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 3034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/32 v21, 0x1d4c0

    add-long v17, v19, v21

    .line 3038
    .local v17, triggerTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v21 .. v21}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v17

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 3043
    .end local v17           #triggerTime:J
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    add-long v17, v19, v8

    .line 3048
    .restart local v17       #triggerTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v21 .. v21}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v17

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 3053
    .end local v10           #info:Landroid/net/wifi/WifiInfo;
    .end local v17           #triggerTime:J
    :cond_5
    const-string v19, "com.android.server.WifiManager.action.DEVICE_IDLE"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 3057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/server/WifiService;->mDeviceIdle:Z
    invoke-static/range {v19 .. v20}, Lcom/android/server/WifiService;->access$1402(Lcom/android/server/WifiService;Z)Z

    .line 3058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #calls: Lcom/android/server/WifiService;->sendReportWorkSourceMessage()V
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 3059
    :cond_6
    const-string v19, "android.intent.action.BATTERY_CHANGED"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 3067
    const-string v19, "plugged"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 3071
    .local v12, pluggedType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$10;->shouldWifiStayAwake(II)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$10;->shouldWifiStayAwake(II)Z

    move-result v19

    if-nez v19, :cond_7

    .line 3073
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    add-long v17, v19, v8

    .line 3077
    .restart local v17       #triggerTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v21 .. v21}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v17

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v12

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$1902(Lcom/android/server/WifiService;I)I

    goto/16 :goto_1

    .line 3081
    .end local v17           #triggerTime:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v12

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$1902(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 3082
    .end local v12           #pluggedType:I
    :cond_8
    const-string v19, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 3083
    new-instance v5, Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1000(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v19

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 3084
    .local v5, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v15

    .line 3085
    .local v15, sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v11, 0x0

    .line 3086
    .local v11, isBluetoothPlaying:Z
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/bluetooth/BluetoothDevice;

    .line 3087
    .local v14, sink:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v5, v14}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 3088
    const/4 v11, 0x1

    goto :goto_2

    .line 3091
    .end local v14           #sink:Landroid/bluetooth/BluetoothDevice;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setBluetoothScanMode(Z)V

    goto/16 :goto_0

    .line 3093
    .end local v5           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #isBluetoothPlaying:Z
    .end local v15           #sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_b
    const-string v19, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 3094
    const-string v19, "WifiService"

    const-string v20, "Receive IP Policy Intent"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #calls: Lcom/android/server/WifiService;->handleSecurityPolicy()V
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)V

    goto/16 :goto_0
.end method
