.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;
.super Ljava/lang/Object;
.source "GsmDataConnectionTrackerExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    const-wide/16 v10, -0x1

    .local v10, preTxPkts:J
    const-wide/16 v8, -0x1

    .local v8, preRxPkts:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)J

    move-result-wide v8

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->netstat:Landroid/os/INetStatService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/os/INetStatService;->getMobileTxPackets()J

    move-result-wide v18

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->netstat:Landroid/os/INetStatService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/os/INetStatService;->getMobileRxPackets()J

    move-result-wide v18

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$1200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-wide/16 v17, 0x0

    cmp-long v17, v10, v17

    if-gtz v17, :cond_0

    const-wide/16 v17, 0x0

    cmp-long v17, v8, v17

    if-lez v17, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$1300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)J

    move-result-wide v17

    sub-long v14, v17, v10

    .local v14, sent:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$1400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)J

    move-result-wide v17

    sub-long v12, v17, v8

    .local v12, received:J
    const-wide/16 v17, 0x0

    cmp-long v17, v14, v17

    if-lez v17, :cond_4

    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-lez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$1502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .local v5, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPdpResetCount:I
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$1602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;I)I

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$2200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsScreenOn:Z
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v5

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$2302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$2400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .end local v5           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v12           #received:J
    .end local v14           #sent:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "pdp_watchdog_trigger_packet_count"

    const/16 v19, 0xa

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .local v16, watchdogTrigger:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$2600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)J

    move-result-wide v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-ltz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$2700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)I

    move-result v17

    if-nez v17, :cond_2

    const v17, 0xc3b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$2800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Landroid/util/EventLog;->writeEvent(IJ)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "pdp_watchdog_error_poll_count"

    const/16 v19, 0x18

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .local v6, noRecvPollLimit:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$2900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)I

    move-result v17

    move/from16 v0, v17

    move v1, v6

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    const-string v18, "no DATAIN in a while; polling PDP"

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$3000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$3108(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "pdp_watchdog_error_poll_interval_ms"

    const/16 v20, 0x1388

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$3202(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;I)I

    .end local v6           #noRecvPollLimit:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$3900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$4100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$4000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    .end local v16           #watchdogTrigger:I
    :catch_0
    move-exception v17

    move-object/from16 v4, v17

    .local v4, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$1002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$1102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J

    goto/16 :goto_0

    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v12       #received:J
    .restart local v14       #sent:J
    :cond_4
    const-wide/16 v17, 0x0

    cmp-long v17, v14, v17

    if-lez v17, :cond_6

    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$1700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide v1, v14

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$1814(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J

    :goto_3
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v5       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_1

    .end local v5           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$1902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J

    goto :goto_3

    :cond_6
    const-wide/16 v17, 0x0

    cmp-long v17, v14, v17

    if-nez v17, :cond_7

    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-lez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$2002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v5       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPdpResetCount:I
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$1602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;I)I

    goto/16 :goto_1

    .end local v5           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_7
    const-wide/16 v17, 0x0

    cmp-long v17, v14, v17

    if-nez v17, :cond_8

    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-nez v17, :cond_8

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v5       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_1

    .end local v5           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$2102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v5       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_1

    .end local v5           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v12           #received:J
    .end local v14           #sent:J
    .restart local v6       #noRecvPollLimit:I
    .restart local v16       #watchdogTrigger:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Sent "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$3300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " pkts since last received"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->stopNetStatPoll()V

    new-instance v7, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2$1;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2$1;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;)V

    .local v7, pingTest:Ljava/lang/Thread;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPingTestActive:Z
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$3502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Z)Z

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .end local v6           #noRecvPollLimit:I
    .end local v7           #pingTest:Ljava/lang/Thread;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$3602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsScreenOn:Z
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "pdp_watchdog_poll_interval_ms"

    const/16 v20, 0x3e8

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$3702(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;I)I

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "pdp_watchdog_long_poll_interval_ms"

    const v20, 0x927c0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$3802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;I)I

    goto/16 :goto_2
.end method
