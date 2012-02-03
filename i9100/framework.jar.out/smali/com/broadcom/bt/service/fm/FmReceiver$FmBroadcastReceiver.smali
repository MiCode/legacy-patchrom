.class Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiver;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v5, -0x1

    const-string v7, "RDS_TXT"

    const-string v4, "FREQ"

    const-string v3, "RSSI"

    .line 1389
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    .line 1390
    .local v0, handler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    if-nez v0, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1394
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;->abortBroadcast()V

    .line 1396
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 1397
    .local v9, action:Ljava/lang/String;
    const-string v1, "com.broadcom.bt.app.fm.action.ON_STATUS"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1398
    const-string v1, "FREQ"

    invoke-virtual {p2, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "RSSI"

    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "RADIO_ON"

    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "RDS_PRGM_TYPE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "RDS_PRGM_SVC"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "RDS_TXT"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "RDS_PRGM_TYPE_NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MUTED"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1406
    :cond_2
    const-string v1, "com.broadcom.bt.app.fm.action.ON_AUDIO_MODE"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1408
    const-string v1, "AUDIO_MODE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioModeEvent(I)V

    goto :goto_0

    .line 1410
    :cond_3
    const-string v1, "com.broadcom.bt.app.fm.action.ON_AUDIO_PATH"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$500(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1412
    const-string v1, "AUDIO_PATH"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioPathEvent(I)V

    goto :goto_0

    .line 1414
    :cond_4
    const-string v1, "com.broadcom.bt.app.fm.action.ON_AUDIO_QUAL"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$600(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1416
    const-string v1, "RSSI"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onLiveAudioQualityEvent(I)V

    goto/16 :goto_0

    .line 1418
    :cond_5
    const-string v1, "com.broadcom.bt.app.fm.action.ON_EST_NFL"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$700(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1420
    const-string v1, "NFL"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onEstimateNoiseFloorLevelEvent(I)V

    goto/16 :goto_0

    .line 1422
    :cond_6
    const-string v1, "com.broadcom.bt.app.fm.action.ON_RDS_DATA"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$800(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1424
    const-string v1, "RDS_DATA_TYPE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "RDS_IDX"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "RDS_TXT"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsDataEvent(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1427
    :cond_7
    const-string v1, "com.broadcom.bt.app.fm.action.ON_RDS_MODE"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$900(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1429
    const-string v1, "RDS_MODE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ALT_FREQ_MODE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsModeEvent(II)V

    goto/16 :goto_0

    .line 1431
    :cond_8
    const-string v1, "com.broadcom.bt.app.fm.action.ON_SEEK_CMPL"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$1000(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1433
    const-string v1, "FREQ"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "RSSI"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "RDS_SUCCESS"

    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onSeekCompleteEvent(IIZ)V

    goto/16 :goto_0

    .line 1436
    :cond_9
    const-string v1, "ON_VOL"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$1100(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1437
    const-string v1, "STATUS"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "VOL"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onVolumeEvent(II)V

    goto/16 :goto_0

    .line 1439
    :cond_a
    const-string v1, "com.broadcom.bt.app.fm.action.ON_WRLD_RGN"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$1200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1441
    const-string v1, "WRLD_RGN"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onWorldRegionEvent(I)V

    goto/16 :goto_0
.end method
