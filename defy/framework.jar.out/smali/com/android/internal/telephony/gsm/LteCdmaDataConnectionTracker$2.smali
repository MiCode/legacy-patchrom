.class Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;
.super Ljava/lang/Object;
.source "LteCdmaDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    const-wide/16 v11, -0x1

    .local v11, preTxPkts:J
    const-wide/16 v9, -0x1

    .local v9, preRxPkts:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$900(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getActiveInternetInterfaceName()Ljava/lang/String;

    move-result-object v5

    .local v5, name:Ljava/lang/String;
    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v18 .. v20}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$1102(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v18 .. v20}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$1202(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->netstat:Landroid/os/INetStatService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/os/INetStatService;->getSpecifiedMobileTxPackets(Ljava/lang/String;)J

    move-result-wide v19

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v18 .. v20}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$1302(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->netstat:Landroid/os/INetStatService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/os/INetStatService;->getSpecifiedMobileRxPackets(Ljava/lang/String;)J

    move-result-wide v19

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v18 .. v20}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$1402(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Z

    move-result v18

    if-eqz v18, :cond_3

    const-wide/16 v18, 0x0

    cmp-long v18, v11, v18

    if-gtz v18, :cond_2

    const-wide/16 v18, 0x0

    cmp-long v18, v9, v18

    if-lez v18, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)J

    move-result-wide v18

    sub-long v15, v18, v11

    .local v15, sent:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)J

    move-result-wide v18

    sub-long v13, v18, v9

    .local v13, received:J
    const-wide/16 v18, 0x0

    cmp-long v18, v15, v18

    if-lez v18, :cond_5

    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v18 .. v20}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$2002(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .local v6, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPdpResetCount:I
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$2102(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;I)I

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v6

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$2802(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$2900(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .end local v6           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v13           #received:J
    .end local v15           #sent:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "pdp_watchdog_trigger_packet_count"

    const/16 v20, 0xa

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .local v17, watchdogTrigger:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$3100(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)J

    move-result-wide v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-ltz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$3200(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)I

    move-result v18

    if-nez v18, :cond_4

    const v18, 0xc3b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$3300(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)J

    move-result-wide v19

    invoke-static/range {v18 .. v20}, Landroid/util/EventLog;->writeEvent(IJ)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "pdp_watchdog_error_poll_count"

    const/16 v20, 0x18

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .local v7, noRecvPollLimit:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$3400(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)I

    move-result v18

    move/from16 v0, v18

    move v1, v7

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    const-string v19, "no DATAIN in a while; polling PDP"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$3500(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0xb

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$3608(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "pdp_watchdog_error_poll_interval_ms"

    const/16 v21, 0x1388

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$3702(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;I)I

    .end local v7           #noRecvPollLimit:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$4400(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$4600(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$4500(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .end local v17           #watchdogTrigger:I
    :catch_0
    move-exception v18

    move-object/from16 v4, v18

    .local v4, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v18 .. v20}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$1502(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v18 .. v20}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$1602(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J

    goto/16 :goto_1

    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v13       #received:J
    .restart local v15       #sent:J
    :cond_5
    const-wide/16 v18, 0x0

    cmp-long v18, v15, v18

    if-lez v18, :cond_7

    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$2200(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$2314(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J

    :goto_4
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v6       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_2

    .end local v6           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v18 .. v20}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$2402(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J

    goto :goto_4

    :cond_7
    const-wide/16 v18, 0x0

    cmp-long v18, v15, v18

    if-nez v18, :cond_8

    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v18 .. v20}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$2502(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v6       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPdpResetCount:I
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$2102(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;I)I

    goto/16 :goto_2

    .end local v6           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_8
    const-wide/16 v18, 0x0

    cmp-long v18, v15, v18

    if-nez v18, :cond_9

    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-nez v18, :cond_9

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v6       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_2

    .end local v6           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v18 .. v20}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$2602(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v6       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_2

    .end local v6           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v13           #received:J
    .end local v15           #sent:J
    .restart local v7       #noRecvPollLimit:I
    .restart local v17       #watchdogTrigger:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Sent "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$3800(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " pkts since last received"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->stopNetStatPoll()V

    new-instance v8, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2$1;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2$1;-><init>(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;)V

    .local v8, pingTest:Ljava/lang/Thread;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPingTestActive:Z
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$4002(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Z)Z

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3

    .end local v7           #noRecvPollLimit:I
    .end local v8           #pingTest:Ljava/lang/Thread;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$4102(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "pdp_watchdog_poll_interval_ms"

    const/16 v21, 0x3e8

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$4202(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;I)I

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "pdp_watchdog_long_poll_interval_ms"

    const v21, 0x927c0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$4302(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;I)I

    goto/16 :goto_3
.end method
