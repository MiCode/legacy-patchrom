.class Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;
.super Ljava/lang/Object;
.source "GsmMultiDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 1227
    const-wide/16 v9, -0x1

    .local v9, preTxPkts:J
    const-wide/16 v7, -0x1

    .line 1229
    .local v7, preRxPkts:J
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1231
    .local v4, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v9

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v7

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v17

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v16 .. v18}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1502(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v17

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v16 .. v18}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1602(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z

    move-result v16

    if-eqz v16, :cond_1

    const-wide/16 v16, 0x0

    cmp-long v16, v9, v16

    if-gtz v16, :cond_0

    const-wide/16 v16, 0x0

    cmp-long v16, v7, v16

    if-lez v16, :cond_1

    .line 1240
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v16

    sub-long v13, v16, v9

    .line 1241
    .local v13, sent:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v16

    sub-long v11, v16, v7

    .line 1243
    .local v11, received:J
    const-wide/16 v16, 0x0

    cmp-long v16, v13, v16

    if-lez v16, :cond_4

    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    if-lez v16, :cond_4

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v16 .. v18}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2002(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1245
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I
    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    .line 1265
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v4

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2802(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2900(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1271
    .end local v11           #received:J
    .end local v13           #sent:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "pdp_watchdog_trigger_packet_count"

    const/16 v18, 0xa

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 1275
    .local v15, watchdogTrigger:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v16

    move v0, v15

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-ltz v16, :cond_a

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I

    move-result v16

    if-nez v16, :cond_2

    .line 1278
    const v16, 0xc3b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v17

    invoke-static/range {v16 .. v18}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1282
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "pdp_watchdog_error_poll_count"

    const/16 v18, 0x18

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1285
    .local v5, noRecvPollLimit:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I

    move-result v16

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_9

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    const-string/jumbo v17, "no DATAIN in a while; polling PDP"

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3608(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "pdp_watchdog_error_poll_interval_ms"

    const/16 v19, 0x1388

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3702(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    .line 1323
    .end local v5           #noRecvPollLimit:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4600(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1326
    :cond_3
    return-void

    .line 1247
    .end local v15           #watchdogTrigger:I
    .restart local v11       #received:J
    .restart local v13       #sent:J
    :cond_4
    const-wide/16 v16, 0x0

    cmp-long v16, v13, v16

    if-lez v16, :cond_6

    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    if-nez v16, :cond_6

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v16

    sget-object v17, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-wide v1, v13

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2314(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1253
    :goto_2
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto/16 :goto_0

    .line 1251
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v16 .. v18}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2402(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    goto :goto_2

    .line 1254
    :cond_6
    const-wide/16 v16, 0x0

    cmp-long v16, v13, v16

    if-nez v16, :cond_7

    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    if-lez v16, :cond_7

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v16 .. v18}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2502(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1256
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I
    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    goto/16 :goto_0

    .line 1258
    :cond_7
    const-wide/16 v16, 0x0

    cmp-long v16, v13, v16

    if-nez v16, :cond_8

    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    if-nez v16, :cond_8

    .line 1259
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto/16 :goto_0

    .line 1261
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v16 .. v18}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2602(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1262
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto/16 :goto_0

    .line 1298
    .end local v11           #received:J
    .end local v13           #sent:J
    .restart local v5       #noRecvPollLimit:I
    .restart local v15       #watchdogTrigger:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Sent "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3800(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " pkts since last received"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    .line 1303
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2$1;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2$1;-><init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;)V

    .line 1308
    .local v6, pingTest:Ljava/lang/Thread;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPingTestActive:Z
    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4002(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z

    .line 1309
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 1312
    .end local v5           #noRecvPollLimit:I
    .end local v6           #pingTest:Ljava/lang/Thread;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "pdp_watchdog_poll_interval_ms"

    const/16 v19, 0x3e8

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4202(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    goto/16 :goto_1

    .line 1317
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "pdp_watchdog_long_poll_interval_ms"

    const v19, 0x927c0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4302(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    goto/16 :goto_1
.end method
