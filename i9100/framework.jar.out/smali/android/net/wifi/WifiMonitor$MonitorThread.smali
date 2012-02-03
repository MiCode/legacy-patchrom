.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiMonitor;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiMonitor;)V
    .locals 1
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    .line 233
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method private connectToSupplicant()Z
    .locals 3

    .prologue
    .line 401
    const/4 v0, 0x0

    .line 404
    .local v0, connectTries:I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->connectToSupplicant()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    const/4 v2, 0x1

    .line 413
    :goto_1
    return v2

    .line 407
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0           #connectTries:I
    .local v1, connectTries:I
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 408
    const/4 v2, 0x5

    #calls: Landroid/net/wifi/WifiMonitor;->nap(I)V
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$400(I)V

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_0

    .line 413
    .end local v0           #connectTries:I
    .restart local v1       #connectTries:I
    :cond_1
    const/4 v2, 0x0

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_1
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 421
    if-nez p1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    const-string v0, "STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyDriverStopped()V

    goto :goto_0

    .line 426
    :cond_2
    const-string v0, "STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyDriverStarted()V

    goto :goto_0

    .line 428
    :cond_3
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyDriverHung()V

    goto :goto_0
.end method

.method private handlePasswordKeyMayBeIncorrect()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyPasswordKeyMayBeIncorrect()V

    .line 418
    return-void
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 18
    .parameter "dataString"

    .prologue
    .line 524
    const-string v15, " "

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, dataTokens:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 527
    .local v2, BSSID:Ljava/lang/String;
    const/4 v9, -0x1

    .line 528
    .local v9, networkId:I
    const/4 v10, -0x1

    .line 529
    .local v10, newState:I
    move-object v3, v4

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v13, v3, v6

    .line 530
    .local v13, token:Ljava/lang/String;
    const-string v15, "="

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 531
    .local v8, nameValue:[Ljava/lang/String;
    array-length v15, v8

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 529
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 535
    :cond_1
    const/4 v15, 0x0

    aget-object v15, v8, v15

    const-string v16, "BSSID"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 536
    const/4 v15, 0x1

    aget-object v2, v8, v15

    .line 537
    goto :goto_1

    .line 542
    :cond_2
    const/4 v15, 0x1

    :try_start_0
    aget-object v15, v8, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 548
    .local v14, value:I
    const/4 v15, 0x0

    aget-object v15, v8, v15

    const-string v16, "id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 549
    move v9, v14

    goto :goto_1

    .line 543
    .end local v14           #value:I
    :catch_0
    move-exception v15

    move-object v5, v15

    .line 544
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v15, "WifiMonitor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "STATE-CHANGE non-integer parameter: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 550
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v14       #value:I
    :cond_3
    const/4 v15, 0x0

    aget-object v15, v8, v15

    const-string/jumbo v16, "state"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 551
    move v10, v14

    goto :goto_1

    .line 555
    .end local v8           #nameValue:[Ljava/lang/String;
    .end local v13           #token:Ljava/lang/String;
    .end local v14           #value:I
    :cond_4
    const/4 v15, -0x1

    if-ne v10, v15, :cond_5

    .line 568
    .end local v3           #arr$:[Ljava/lang/String;
    :goto_2
    return-void

    .line 557
    .restart local v3       #arr$:[Ljava/lang/String;
    :cond_5
    sget-object v11, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 558
    .local v11, newSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .local v3, arr$:[Landroid/net/wifi/SupplicantState;
    array-length v7, v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_6

    aget-object v12, v3, v6

    .line 559
    .local v12, state:Landroid/net/wifi/SupplicantState;
    invoke-virtual {v12}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v15

    if-ne v15, v10, :cond_8

    .line 560
    move-object v11, v12

    .line 564
    .end local v12           #state:Landroid/net/wifi/SupplicantState;
    :cond_6
    sget-object v15, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v11, v15, :cond_7

    .line 565
    const-string v15, "WifiMonitor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid supplicant state: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    move-object v15, v0

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v15}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v15

    invoke-virtual {v15, v9, v2, v11}, Landroid/net/wifi/WifiStateTracker;->notifyStateChange(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_2

    .line 558
    .restart local v12       #state:Landroid/net/wifi/SupplicantState;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method


# virtual methods
.method handleEvent(ILjava/lang/String;)V
    .locals 2
    .parameter "event"
    .parameter "remainder"

    .prologue
    .line 440
    sparse-switch p1, :sswitch_data_0

    .line 470
    :goto_0
    return-void

    .line 442
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$500(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$500(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyScanResultsAvailable()V

    goto :goto_0

    .line 455
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyShowApListDialog()V

    goto :goto_0

    .line 440
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0xd -> :sswitch_3
    .end sparse-switch
.end method

.method handleWpsEvent(I)V
    .locals 5
    .parameter "event"

    .prologue
    const-string v4, ")"

    const-string v3, "WifiMonitor"

    .line 484
    const-string v1, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWpsEvent - event type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    packed-switch p1, :pswitch_data_0

    .line 507
    const-string v1, "WifiMonitor"

    const-string v1, "WPS undefined"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string/jumbo v0, "wps_not_defined"

    .line 509
    .local v0, wpsEvent:Ljava/lang/String;
    const-string v1, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWpsEvent -There is no this event type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateTracker;->notifyGetWpsEvent(Ljava/lang/String;)V

    .line 513
    return-void

    .line 487
    .end local v0           #wpsEvent:Ljava/lang/String;
    :pswitch_0
    const-string v1, "WifiMonitor"

    const-string v1, "WPS_SUCCESS"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string/jumbo v0, "wps_success"

    .line 489
    .restart local v0       #wpsEvent:Ljava/lang/String;
    goto :goto_0

    .line 492
    .end local v0           #wpsEvent:Ljava/lang/String;
    :pswitch_1
    const-string v1, "WifiMonitor"

    const-string v1, "WPS_FAIL"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string/jumbo v0, "wps_fail"

    .line 494
    .restart local v0       #wpsEvent:Ljava/lang/String;
    goto :goto_0

    .line 497
    .end local v0           #wpsEvent:Ljava/lang/String;
    :pswitch_2
    const-string v1, "WifiMonitor"

    const-string v1, "WPS_OVERLAP"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string/jumbo v0, "wps_overlap"

    .line 499
    .restart local v0       #wpsEvent:Ljava/lang/String;
    goto :goto_0

    .line 502
    .end local v0           #wpsEvent:Ljava/lang/String;
    :pswitch_3
    const-string v1, "WifiMonitor"

    const-string v1, "WPS_TIMEOUT"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string/jumbo v0, "wps_timeout"

    .line 504
    .restart local v0       #wpsEvent:Ljava/lang/String;
    goto :goto_0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/16 v10, 0xa

    const/4 v9, -0x1

    const-string v8, "WifiMonitor"

    .line 238
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->connectToSupplicant()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 241
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->notifySupplicantConnection()V

    .line 249
    :cond_0
    :goto_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, eventStr:Ljava/lang/String;
    const-string v6, "SCAN-RESULTS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 254
    const-string v6, "WifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_1
    const-string v6, "CTRL-EVENT-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "WPS-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 259
    const-string v6, "WPA:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "pre-shared key may be incorrect"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    .line 261
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handlePasswordKeyMayBeIncorrect()V

    goto :goto_0

    .line 243
    .end local v3           #eventStr:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->notifySupplicantLost()V

    .line 398
    :goto_2
    return-void

    .line 256
    .restart local v3       #eventStr:Ljava/lang/String;
    :cond_2
    const-string v6, "WifiMonitor"

    const-string v6, "Event [ SCAN-RESULTS ]"

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 266
    :cond_3
    const-string v6, "CTRL-EVENT-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 267
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$100()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, eventName:Ljava/lang/String;
    :goto_3
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 274
    .local v5, nameEnd:I
    if-eq v5, v9, :cond_4

    .line 275
    invoke-virtual {v2, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 276
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    .line 277
    const-string v6, "WifiMonitor"

    const-string v6, "Received wpa_supplicant event with empty event name"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    .end local v2           #eventName:Ljava/lang/String;
    .end local v5           #nameEnd:I
    :cond_5
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$200()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #eventName:Ljava/lang/String;
    goto :goto_3

    .line 284
    .restart local v5       #nameEnd:I
    :cond_6
    const-string v6, "CONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 285
    const/4 v0, 0x1

    .line 322
    .local v0, event:I
    :goto_4
    move-object v1, v3

    .line 323
    .local v1, eventData:Ljava/lang/String;
    const/4 v6, 0x7

    if-eq v0, v6, :cond_7

    const/4 v6, 0x5

    if-ne v0, v6, :cond_15

    .line 324
    :cond_7
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v1, v6, v7

    .line 355
    :cond_8
    :goto_5
    if-ne v0, v12, :cond_1a

    .line 356
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 396
    :goto_6
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #setter for: Landroid/net/wifi/WifiMonitor;->mRecvErrors:I
    invoke-static {v6, v11}, Landroid/net/wifi/WifiMonitor;->access$302(Landroid/net/wifi/WifiMonitor;I)I

    goto/16 :goto_0

    .line 286
    .end local v0           #event:I
    .end local v1           #eventData:Ljava/lang/String;
    :cond_9
    const-string v6, "DISCONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 287
    const/4 v0, 0x2

    .restart local v0       #event:I
    goto :goto_4

    .line 288
    .end local v0           #event:I
    :cond_a
    const-string v6, "STATE-CHANGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 289
    const/4 v0, 0x3

    .restart local v0       #event:I
    goto :goto_4

    .line 290
    .end local v0           #event:I
    :cond_b
    const-string v6, "SCAN-RESULTS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 291
    const/4 v0, 0x4

    .restart local v0       #event:I
    goto :goto_4

    .line 292
    .end local v0           #event:I
    :cond_c
    const-string v6, "LINK-SPEED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 293
    const/4 v0, 0x5

    .restart local v0       #event:I
    goto :goto_4

    .line 294
    .end local v0           #event:I
    :cond_d
    const-string v6, "TERMINATING"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 295
    const/4 v0, 0x6

    .restart local v0       #event:I
    goto :goto_4

    .line 296
    .end local v0           #event:I
    :cond_e
    const-string v6, "DRIVER-STATE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 297
    const/4 v0, 0x7

    .restart local v0       #event:I
    goto :goto_4

    .line 299
    .end local v0           #event:I
    :cond_f
    const-string v6, "SUCCESS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 300
    const/16 v0, 0x8

    .restart local v0       #event:I
    goto :goto_4

    .line 301
    .end local v0           #event:I
    :cond_10
    const-string v6, "FAIL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 302
    const/16 v0, 0x9

    .restart local v0       #event:I
    goto :goto_4

    .line 303
    .end local v0           #event:I
    :cond_11
    const-string v6, "OVERLAP-DETECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 304
    const/16 v0, 0xa

    .restart local v0       #event:I
    goto :goto_4

    .line 305
    .end local v0           #event:I
    :cond_12
    const-string v6, "TIMEOUT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 306
    const/16 v0, 0xb

    .restart local v0       #event:I
    goto/16 :goto_4

    .line 309
    .end local v0           #event:I
    :cond_13
    const-string v6, "NO-CONNECTION"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 310
    const/16 v0, 0xd

    .restart local v0       #event:I
    goto/16 :goto_4

    .line 313
    .end local v0           #event:I
    :cond_14
    const/16 v0, 0xc

    .restart local v0       #event:I
    goto/16 :goto_4

    .line 325
    .restart local v1       #eventData:Ljava/lang/String;
    :cond_15
    if-ne v0, v12, :cond_16

    .line 326
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 327
    .local v4, ind:I
    if-eq v4, v9, :cond_8

    .line 328
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 331
    .end local v4           #ind:I
    :cond_16
    const/16 v6, 0x8

    if-eq v0, v6, :cond_17

    if-eq v0, v10, :cond_17

    const/16 v6, 0xb

    if-eq v0, v6, :cond_17

    const/16 v6, 0x9

    if-ne v0, v6, :cond_18

    .line 333
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 336
    :cond_18
    const/16 v6, 0xd

    if-ne v0, v6, :cond_19

    .line 337
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 339
    :cond_19
    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 340
    .restart local v4       #ind:I
    if-eq v4, v9, :cond_8

    .line 341
    add-int/lit8 v6, v4, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 357
    .end local v4           #ind:I
    :cond_1a
    const/4 v6, 0x7

    if-ne v0, v6, :cond_1b

    .line 358
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 359
    :cond_1b
    const/4 v6, 0x6

    if-ne v0, v6, :cond_1e

    .line 364
    const-string v6, "connection closed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 366
    const-string v6, "WifiMonitor"

    const-string v6, "Monitor socket is closed, exiting thread"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 375
    :cond_1c
    const-string/jumbo v6, "recv error"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 376
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$304(Landroid/net/wifi/WifiMonitor;)I

    move-result v6

    if-le v6, v10, :cond_0

    .line 378
    const-string v6, "WifiMonitor"

    const-string/jumbo v6, "too many recv errors, closing connection"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_1d
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->notifySupplicantLost()V

    goto/16 :goto_2

    .line 389
    :cond_1e
    const/16 v6, 0x8

    if-eq v0, v6, :cond_1f

    if-eq v0, v10, :cond_1f

    const/16 v6, 0xb

    if-eq v0, v6, :cond_1f

    const/16 v6, 0x9

    if-ne v0, v6, :cond_20

    .line 391
    :cond_1f
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleWpsEvent(I)V

    goto/16 :goto_6

    .line 394
    :cond_20
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_6
.end method
