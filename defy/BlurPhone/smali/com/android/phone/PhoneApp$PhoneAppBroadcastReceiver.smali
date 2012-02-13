.class Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 2352
    iput-object p1, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2352
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2355
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 2356
    .local v4, action:Ljava/lang/String;
    const-string v21, "android.intent.action.AIRPLANE_MODE"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 2357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "airplane_mode_on"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-nez v21, :cond_1

    const/16 v21, 0x1

    move/from16 v10, v21

    .line 2359
    .local v10, enabled:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 2728
    .end local v10           #enabled:Z
    :cond_0
    :goto_1
    return-void

    .line 2357
    :cond_1
    const/16 v21, 0x0

    move/from16 v10, v21

    goto :goto_0

    .line 2362
    :cond_2
    const-string v21, "com.motorola.intent.action.DISPLAY_ROAMING_DIALOG"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 2363
    const-string v21, "PhoneApp"

    const-string v22, "Roaming dialog intent display"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mManualNetworkSelectionTime:J
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$1900(Lcom/android/phone/PhoneApp;)J

    move-result-wide v23

    sub-long v6, v21, v23

    .line 2366
    .local v6, delta:J
    const-wide/16 v21, 0x1388

    cmp-long v21, v6, v21

    if-lez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/PhoneApp;->display_managed_roaming_dialog:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$1800(Lcom/android/phone/PhoneApp;)Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/PhoneApp;->bIsTriggerbyUser:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$2000(Lcom/android/phone/PhoneApp;)Z

    move-result v21

    if-eqz v21, :cond_0

    goto :goto_1

    .line 2372
    .end local v6           #delta:J
    :cond_3
    const-string v21, "com.motorola.intent.action.GET_REJECT_CODE"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 2374
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "rejectCode"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2375
    .local v3, MMrejectCode:I
    const-string v21, "PhoneApp"

    const-string v22, "mReceiver: reject cause code"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPrevRejcause:I
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$2100(Lcom/android/phone/PhoneApp;)I

    move-result v21

    move/from16 v0, v21

    move v1, v3

    if-eq v0, v1, :cond_0

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v3

    #setter for: Lcom/android/phone/PhoneApp;->mPrevRejcause:I
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$2102(Lcom/android/phone/PhoneApp;I)I

    .line 2378
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    .line 2380
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const v22, 0x7f0b038a

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->viewRejCauseMessage(I)V

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->playRejCauseTone()V

    goto/16 :goto_1

    .line 2384
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const v22, 0x7f0b038b

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->viewRejCauseMessage(I)V

    .line 2385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->playRejCauseTone()V

    goto/16 :goto_1

    .line 2388
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const v22, 0x7f0b038c

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->viewRejCauseMessage(I)V

    goto/16 :goto_1

    .line 2391
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const v22, 0x7f0b038d

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->viewRejCauseMessage(I)V

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->playRejCauseTone()V

    goto/16 :goto_1

    .line 2395
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const v22, 0x7f0b038e

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->viewRejCauseMessage(I)V

    .line 2396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->playRejCauseTone()V

    goto/16 :goto_1

    .line 2399
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const v22, 0x7f0b038f

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->viewRejCauseMessage(I)V

    goto/16 :goto_1

    .line 2408
    .end local v3           #MMrejectCode:I
    :cond_4
    const-string v21, "android.intent.action.USER_PRESENT"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 2409
    sget-boolean v21, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v21, :cond_5

    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mReceiver: ACTION_USER_PRESENT, isCardAbsent = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    #calls: Lcom/android/phone/PhoneApp;->isCardAbsent(Landroid/content/Context;)Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$2200(Lcom/android/phone/PhoneApp;Landroid/content/Context;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; mShowNetwor="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mShowNetworkDialog:Z
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$2300(Lcom/android/phone/PhoneApp;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    #calls: Lcom/android/phone/PhoneApp;->isCardAbsent(Landroid/content/Context;)Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$2200(Lcom/android/phone/PhoneApp;Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/PhoneApp;->mShowNetworkDialog:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$2300(Lcom/android/phone/PhoneApp;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mShowNetworkDialog:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->access$2302(Lcom/android/phone/PhoneApp;Z)Z

    .line 2413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    #calls: Lcom/android/phone/PhoneApp;->networkTrafficAlert(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$2400(Lcom/android/phone/PhoneApp;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 2417
    :cond_6
    const-string v21, "android.bluetooth.headset.action.STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 2418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const-string v22, "android.bluetooth.headset.extra.STATE"

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 2420
    sget-boolean v21, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v21, :cond_7

    const-string v21, "PhoneApp"

    const-string v22, "mReceiver: HEADSET_STATE_CHANGED_ACTION"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    :cond_7
    sget-boolean v21, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v21, :cond_8

    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "==> new state: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 2425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/PhoneApp;->adjustSpeakerState()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$2500(Lcom/android/phone/PhoneApp;)V

    .line 2429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f09000f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 2432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->sendAudioRouteChange()V

    .line 2434
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    move/from16 v21, v0

    if-nez v21, :cond_0

    sget-boolean v21, Lcom/android/phone/PhoneApp;->mIsRotator:Z

    if-eqz v21, :cond_0

    .line 2435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v21

    if-nez v21, :cond_0

    .line 2441
    new-instance v17, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2442
    .local v17, new_intent:Landroid/content/Intent;
    const/high16 v21, 0x1000

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v21

    const-class v22, Lcom/android/phone/InCallScreen;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2449
    .end local v17           #new_intent:Landroid/content/Intent;
    :cond_a
    const-string v21, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 2450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const-string v22, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 2453
    sget-boolean v21, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v21, :cond_b

    const-string v21, "PhoneApp"

    const-string v22, "mReceiver: HEADSET_AUDIO_STATE_CHANGED_ACTION"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    :cond_b
    sget-boolean v21, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v21, :cond_c

    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "==> new state: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 2458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/PhoneApp;->adjustSpeakerState()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$2500(Lcom/android/phone/PhoneApp;)V

    .line 2462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f09000f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->sendAudioRouteChange()V

    goto/16 :goto_1

    .line 2467
    :cond_d
    const-string v21, "android.intent.action.ANY_DATA_STATE"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 2468
    sget-boolean v21, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v21, :cond_e

    const-string v21, "PhoneApp"

    const-string v22, "mReceiver: ACTION_ANY_DATA_CONNECTION_STATE_CHANGED"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :cond_e
    sget-boolean v21, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v21, :cond_f

    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "- state: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    :cond_f
    sget-boolean v21, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v21, :cond_10

    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "- reason: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    :cond_10
    const/4 v8, 0x0

    .line 2477
    .local v8, disconnectedDueToRoaming:Z
    const-string v21, "DISCONNECTED"

    const-string v22, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 2478
    const-string v21, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2479
    .local v19, reason:Ljava/lang/String;
    const-string v21, "roamingOn"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 2483
    const/4 v8, 0x1

    .line 2486
    .end local v19           #reason:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    if-eqz v8, :cond_12

    const/16 v22, 0xa

    :goto_2
    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_12
    const/16 v22, 0xb

    goto :goto_2

    .line 2489
    .end local v8           #disconnectedDueToRoaming:Z
    :cond_13
    const-string v21, "android.intent.action.HEADSET_PLUG"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 2490
    sget-boolean v21, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v21, :cond_14

    const-string v21, "PhoneApp"

    const-string v22, "mReceiver: ACTION_HEADSET_PLUG"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    :cond_14
    sget-boolean v21, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v21, :cond_15

    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "    state: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "state"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    :cond_15
    sget-boolean v21, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v21, :cond_16

    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "    name: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const-string v22, "state"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_17

    const/16 v22, 0x1

    :goto_3
    #setter for: Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->access$2602(Lcom/android/phone/PhoneApp;Z)Z

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const-string v22, "state"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    const/16 v22, 0x1

    :goto_4
    #setter for: Lcom/android/phone/PhoneApp;->mIsHeadsetWithMicPlugged:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->access$2702(Lcom/android/phone/PhoneApp;Z)Z

    .line 2495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x7

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2493
    :cond_17
    const/16 v22, 0x0

    goto :goto_3

    .line 2494
    :cond_18
    const/16 v22, 0x0

    goto :goto_4

    .line 2497
    :cond_19
    const-string v21, "com.motorola.hardware.TABLETOP_MODE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 2498
    sget-boolean v21, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v21, :cond_1a

    const-string v21, "PhoneApp"

    const-string v22, "mReceiver: TABLETOP_MODE_CHANGED"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const-string v22, "state"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    #setter for: Lcom/android/phone/PhoneApp;->mInTableTopMode:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->access$2802(Lcom/android/phone/PhoneApp;Z)Z

    .line 2500
    sget-boolean v21, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v21, :cond_0

    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "TABLETOP_MODE_CHANGED - new state = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInTableTopMode:Z
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$2800(Lcom/android/phone/PhoneApp;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2502
    :cond_1b
    const-string v21, "android.intent.action.BATTERY_LOW"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 2503
    sget-boolean v21, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v21, :cond_1c

    const-string v21, "PhoneApp"

    const-string v22, "mReceiver: ACTION_BATTERY_LOW"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->sendBatteryLow()V

    goto/16 :goto_1

    .line 2506
    :cond_1d
    const-string v21, "android.intent.action.SIM_STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 2512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    const-string v24, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2517
    :cond_1e
    const-string v21, "com.android.phone.ACTION_LAUNCH_SIM_UNLOCK_UI"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_22

    .line 2519
    const-string v21, "NETWORK_LOCKED_UI"

    const-string v22, "ui_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_20

    .line 2520
    sget-boolean v21, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v21, :cond_1f

    const-string v21, "PhoneApp"

    const-string v22, "Show Network unlock Panel"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2524
    :cond_20
    const-string v21, "PUK_LOCKED_UI"

    const-string v22, "ui_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/phone/PhoneApp;->mIsSimPinEnabled:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->access$2902(Lcom/android/phone/PhoneApp;Z)Z

    .line 2528
    sget-boolean v21, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v21, :cond_21

    const-string v21, "PhoneApp"

    const-string v22, "show sim PUK unlock panel"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    :cond_21
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 2530
    .local v15, newIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v21

    const-class v22, Lcom/android/phone/SimPinUnlockPanel;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    move-object v0, v15

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2531
    const/high16 v21, 0x1000

    move-object v0, v15

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2536
    .end local v15           #newIntent:Landroid/content/Intent;
    :cond_22
    const-string v21, "android.media.RINGER_MODE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_24

    .line 2537
    const-string v21, "PhoneApp"

    const-string v22, "mReceiver: AudioManager.RINGER_MODE_CHANGED_ACTION"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const-string v22, "android.media.EXTRA_RINGER_MODE"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/phone/PhoneApp;->mRingerMode:I

    .line 2539
    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ringer mode = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/phone/PhoneApp;->mRingerMode:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/phone/PhoneApp;->mRingerMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 2542
    sget-boolean v21, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v21, :cond_23

    const-string v21, "PhoneApp"

    const-string v22, "start ringer"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/Ringer;->ring()V

    goto/16 :goto_1

    .line 2545
    :cond_24
    const-string v21, "android.intent.action.RADIO_TECHNOLOGY"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_25

    .line 2546
    const-string v21, "phoneName"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2547
    .local v16, newPhone:Ljava/lang/String;
    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Radio technology switched. Now "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is active."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/PhoneApp;->initForNewRadioTechnology()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$3000(Lcom/android/phone/PhoneApp;)V

    goto/16 :goto_1

    .line 2549
    .end local v16           #newPhone:Ljava/lang/String;
    :cond_25
    const-string v21, "android.intent.action.SERVICE_STATE"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_26

    .line 2550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    #calls: Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$3100(Lcom/android/phone/PhoneApp;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2551
    :cond_26
    const-string v21, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_28

    .line 2552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_27

    .line 2553
    const-string v21, "PhoneApp"

    const-string v22, "Emergency Callback Mode arrived in PhoneApp."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    const-string v21, "phoneinECMState"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2556
    new-instance v21, Landroid/content/Intent;

    const-class v22, Lcom/android/phone/EmergencyCallbackModeService;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 2560
    :cond_27
    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error! Emergency Callback Mode not supported for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " phones"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2563
    :cond_28
    const-string v21, "android.intent.action.DOCK_EVENT"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_29

    .line 2565
    const/4 v12, 0x0

    .line 2566
    .local v12, handled:Z
    const-string v21, "android.intent.extra.DOCK_STATE"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2567
    .local v9, dock:I
    packed-switch v9, :pswitch_data_0

    .line 2579
    :goto_5
    if-eqz v12, :cond_0

    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x13

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2570
    :pswitch_0
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/phone/PhoneApp;->bInDockMode:Z

    .line 2571
    const/4 v12, 0x1

    .line 2572
    goto :goto_5

    .line 2574
    :pswitch_1
    const-string v21, "PhoneApp"

    const-string v22, "out of dock mode"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/phone/PhoneApp;->bInDockMode:Z

    .line 2576
    const/4 v12, 0x1

    goto :goto_5

    .line 2586
    .end local v9           #dock:I
    .end local v12           #handled:Z
    :cond_29
    const-string v21, "com.motorola.internal.intent.action.MOT_DOCK_EVENT"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2a

    .line 2587
    const/4 v12, 0x0

    .line 2588
    .restart local v12       #handled:Z
    const-string v21, "com.motorola.internal.intent.extra.DOCK_STATE"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 2589
    .local v20, state:I
    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ACTION_MOT_DOCK_EVENT state = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    packed-switch v20, :pswitch_data_1

    .line 2606
    :goto_6
    :pswitch_2
    if-eqz v12, :cond_0

    .line 2607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x13

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2594
    :pswitch_3
    const-string v21, "PhoneApp"

    const-string v22, "Now in dock mode"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/phone/PhoneApp;->bInDockMode:Z

    .line 2596
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/phone/PhoneApp;->bInMobileDockMode:Z

    .line 2597
    const/4 v12, 0x1

    .line 2598
    goto :goto_6

    .line 2600
    :pswitch_4
    const-string v21, "PhoneApp"

    const-string v22, "out of dock mode"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/phone/PhoneApp;->bInDockMode:Z

    .line 2602
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/phone/PhoneApp;->bInMobileDockMode:Z

    .line 2603
    const/4 v12, 0x1

    goto :goto_6

    .line 2614
    .end local v12           #handled:Z
    .end local v20           #state:I
    :cond_2a
    const-string v21, "android.intent.action.SCREEN_OFF"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2d

    .line 2615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mScreenOn:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->access$3202(Lcom/android/phone/PhoneApp;Z)Z

    .line 2617
    sget v21, Lcom/android/phone/PhoneApp;->mGlobalCallingControlsOn:I

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2b

    .line 2618
    new-instance v13, Landroid/content/Intent;

    const-string v21, "android.intent.action.STATUSBAR_ANIMATION"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2619
    .local v13, intentAnimation:Landroid/content/Intent;
    const-string v21, "android.intent.extra.statusbar_play_animation"

    const/16 v22, 0x0

    move-object v0, v13

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2624
    .end local v13           #intentAnimation:Landroid/content/Intent;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 2625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 2626
    sget-boolean v21, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v21, :cond_2c

    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "screen off, stop timer, cancel notification "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/InCallScreen;->stopTimer()V

    goto/16 :goto_1

    .line 2631
    :cond_2d
    const-string v21, "android.intent.action.SCREEN_ON"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_30

    .line 2632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/phone/PhoneApp;->mScreenOn:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->access$3202(Lcom/android/phone/PhoneApp;Z)Z

    .line 2634
    sget v21, Lcom/android/phone/PhoneApp;->mGlobalCallingControlsOn:I

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2e

    .line 2635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v18

    .line 2636
    .local v18, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v21, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v21

    if-nez v21, :cond_2e

    .line 2637
    new-instance v13, Landroid/content/Intent;

    const-string v21, "android.intent.action.STATUSBAR_ANIMATION"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2638
    .restart local v13       #intentAnimation:Landroid/content/Intent;
    const-string v21, "android.intent.extra.statusbar_play_animation"

    const/16 v22, 0x1

    move-object v0, v13

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2643
    .end local v13           #intentAnimation:Landroid/content/Intent;
    .end local v18           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 2644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 2645
    sget-boolean v21, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v21, :cond_2f

    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "screen on, start timer, restore notification "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/InCallScreen;->startTimer()V

    goto/16 :goto_1

    .line 2656
    :cond_30
    const-string v21, "com.motorola.internal.intent.action.ACTIVITY_LOCK_DEVICE_MODE"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_31

    .line 2657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const-string v22, "state"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mIsActivityLockDeviceMode:Z

    .line 2658
    sget-boolean v21, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v21, :cond_0

    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "receive ACTION_ACTIVITY_LOCK_DEVICE_MODE:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mIsActivityLockDeviceMode:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2663
    :cond_31
    const-string v21, "android.intent.action.BATTERY_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_32

    sget-boolean v21, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_32

    .line 2664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const-string v22, "plugged"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    #setter for: Lcom/android/phone/PhoneApp;->mPlugType:I
    invoke-static/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->access$3302(Lcom/android/phone/PhoneApp;I)I

    .line 2665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const-string v22, "level"

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    #setter for: Lcom/android/phone/PhoneApp;->mBatteryLevel:I
    invoke-static/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->access$3402(Lcom/android/phone/PhoneApp;I)I

    .line 2666
    sget-boolean v21, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v21, :cond_0

    const-string v21, "PhoneApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "FTR33129: Received ACTION_BATTERY CHANGED, mBatteryLevel="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mBatteryLevel:I
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$3400(Lcom/android/phone/PhoneApp;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",mPlugType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPlugType:I
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$3300(Lcom/android/phone/PhoneApp;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2668
    :cond_32
    const-string v21, "android.intent.action.ACTION_SHUTDOWN"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_35

    sget-boolean v21, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_35

    .line 2669
    sget-boolean v21, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v21, :cond_33

    const-string v21, "PhoneApp"

    const-string v22, "FTR33129: Received ACTION_SHUTDOWN"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/phone/PhoneApp;->m_phone_shutdown_indication:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/PhoneApp;->access$3502(Lcom/android/phone/PhoneApp;Z)Z

    .line 2673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/PhoneApp;->mEmergencySettings:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$3600(Lcom/android/phone/PhoneApp;)Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 2674
    sget-boolean v21, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v21, :cond_34

    const-string v21, "PhoneApp"

    const-string v22, "FTR33129: on device powerdown, restore user backlight settings "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "screen_off_timeout"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mUserScreenTimeOut:I
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$3700(Lcom/android/phone/PhoneApp;)I

    move-result v23

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "screen_brightness"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mUserScreenBrightness:I
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$3800(Lcom/android/phone/PhoneApp;)I

    move-result v23

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 2678
    :cond_35
    const-string v21, "com.motorola.blur.datamanager.app.ACTION_CHANGE_DATA_ROAMING"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_36

    .line 2679
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 2680
    .local v11, extras:Landroid/os/Bundle;
    if-eqz v11, :cond_0

    const-string v21, "com.motorola.blur.datamanager.app.Value"

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    const-string v22, "com.motorola.blur.datamanager.app.Value"

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto/16 :goto_1

    .line 2683
    .end local v11           #extras:Landroid/os/Bundle;
    :cond_36
    const-string v21, "android.intent.action.BATTERY_TEMP_COOLDOWN_MODE"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3a

    .line 2684
    const-string v21, "state"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 2685
    .local v14, isInCooldown:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mIsInBatteryCooldown:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move v1, v14

    if-eq v0, v1, :cond_0

    .line 2686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move v0, v14

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mIsInBatteryCooldown:Z

    .line 2689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "com.android.phone.PhoneAp.mIsInBatteryCooldown"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mIsInBatteryCooldown:Z

    move/from16 v23, v0

    if-eqz v23, :cond_37

    const/16 v23, 0x1

    :goto_7
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mIsInBatteryCooldown:Z

    move/from16 v21, v0

    if-eqz v21, :cond_39

    .line 2694
    invoke-static {}, Lcom/android/phone/PhoneUtils;->inEmergencyCall()Z

    move-result v21

    if-eqz v21, :cond_38

    .line 2695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mEmergencyCallDelayedRadioOff:Z

    goto/16 :goto_1

    .line 2689
    :cond_37
    const/16 v23, 0x0

    goto :goto_7

    .line 2697
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto/16 :goto_1

    .line 2699
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 2700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mEmergencyCallDelayedRadioOff:Z

    goto/16 :goto_1

    .line 2703
    .end local v14           #isInCooldown:Z
    :cond_3a
    const-string v21, "com.android.phone.action.CLEAR_MISSED_NOTIFICATION"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3b

    .line 2704
    invoke-static {}, Lcom/android/phone/PhoneUtils;->resetNewCallsFlag()V

    goto/16 :goto_1

    .line 2710
    :cond_3b
    const-string v21, "android.intent.action.GLOBAL_END_CALL"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3c

    sget v21, Lcom/android/phone/PhoneApp;->mGlobalCallingControlsOn:I

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3c

    .line 2711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_1

    .line 2715
    :cond_3c
    const-string v21, "android.mot.internal.intent.action.CALLING_MUTE"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3e

    .line 2716
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v21

    if-nez v21, :cond_3d

    const/16 v21, 0x1

    :goto_8
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/InCallScreen;->updateInCallScreen()V

    goto/16 :goto_1

    .line 2716
    :cond_3d
    const/16 v21, 0x0

    goto :goto_8

    .line 2722
    :cond_3e
    const-string v21, "com.android.mms.transaction.MESSAGE_FID_23103_REG"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2723
    const-string v21, "b23103RegFlag"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 2724
    .local v5, bFlag23130:Z
    const-string v21, "PhoneApp/AutoRegConfigMgr"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "bFlag23130 = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v5

    #calls: Lcom/android/phone/PhoneApp;->setFeature23103RegFlag(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$3900(Lcom/android/phone/PhoneApp;Z)V

    goto/16 :goto_1

    .line 2378
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0xff -> :sswitch_5
    .end sparse-switch

    .line 2567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2591
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
