.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# static fields
.field public static final TONE_BATTERY_LOW:I = 0x4

.field public static final TONE_BUSY:I = 0x2

.field public static final TONE_CALL_CONNECT:I = 0xd

.field public static final TONE_CALL_ENDED:I = 0x5

.field public static final TONE_CALL_WAITING:I = 0x1

.field public static final TONE_CDMA_DROP:I = 0x9

.field public static final TONE_CDMA_DROP_WHILE_DIALING:I = 0xe

.field public static final TONE_CONGESTION:I = 0x3

.field private static final TONE_FADEOUT_BUFFER:I = 0xc8

.field public static final TONE_INCOMING_CALL_IGNORE:I = 0xf

.field public static final TONE_INTERCEPT:I = 0x8

.field public static final TONE_NONE:I = 0x0

.field public static final TONE_OTA_CALL_END:I = 0xc

.field public static final TONE_OUT_OF_SERVICE:I = 0xa

.field public static final TONE_REDIAL:I = 0xb

.field private static final TONE_RELATIVE_VOLUME_HIPRI:I = 0x64

.field private static final TONE_RELATIVE_VOLUME_LOPRI:I = 0x32

.field public static final TONE_REORDER:I = 0x7

.field public static final TONE_SOFTERROR_LITE:I = 0x10

.field private static final TONE_TIMEOUT_BUFFER:I = 0x14

.field public static final TONE_UNOBTAINABLE_NUMBER:I = 0x11

.field public static final TONE_VOICE_PRIVACY:I = 0x6


# instance fields
.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 0
    .parameter
    .parameter "toneId"

    .prologue
    .line 2654
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 2655
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2656
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 2657
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 2661
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1300()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2663
    :cond_0
    const/4 v8, 0x0

    .line 2666
    .local v8, toneType:I
    const/4 v2, 0x1

    .line 2667
    .local v2, needToStopTone:Z
    const/4 v3, 0x0

    .line 2668
    .local v3, okToPlayTone:Z
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 2670
    .local v4, phoneType:I
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v10

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2672
    .local v0, audioManager:Landroid/media/AudioManager;
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v10, :pswitch_data_0

    .line 2774
    :pswitch_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad toneId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2674
    :pswitch_1
    const/16 v8, 0x16

    .line 2675
    const/16 v9, 0x64

    .line 2676
    .local v9, toneVolume:I
    const/16 v7, 0x1388

    .line 2677
    .local v7, toneLengthMillis:I
    const/4 v2, 0x0

    .line 2781
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 2782
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x6

    move v6, v10

    .line 2787
    .local v6, stream:I
    :goto_1
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mInCallToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 2788
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isTonePlaying()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2789
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->stopInCallTone()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)V

    .line 2791
    :cond_1
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mInCallToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/ToneGenerator;->release()V

    .line 2793
    :cond_2
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Landroid/media/ToneGenerator;

    invoke-direct {v11, v6, v9}, Landroid/media/ToneGenerator;-><init>(II)V

    #setter for: Lcom/android/phone/CallNotifier;->mInCallToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$1702(Lcom/android/phone/CallNotifier;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2816
    .end local v6           #stream:I
    :goto_2
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mInCallToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 2817
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1300()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v11, "Setting phoneapp TonePLaying flag to true"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2819
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v10, v11, v12}, Lcom/android/phone/PhoneApp;->setTonePlayingFlag(ZI)V

    .line 2821
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 2822
    .local v5, ringerMode:I
    const/4 v10, 0x2

    if-ne v4, v10, :cond_16

    .line 2823
    const/16 v10, 0x5d

    if-ne v8, v10, :cond_f

    .line 2824
    if-eqz v5, :cond_5

    const/4 v10, 0x1

    if-eq v5, v10, :cond_5

    .line 2826
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2827
    :cond_4
    const/4 v3, 0x1

    .line 2828
    const/4 v2, 0x1

    .line 2866
    :cond_5
    :goto_3
    if-eqz v3, :cond_7

    .line 2867
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1300()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v11, "Setting phoneapp TonePLaying flag to true"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2869
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v10, v11, v12}, Lcom/android/phone/PhoneApp;->setTonePlayingFlag(ZI)V

    .line 2872
    :try_start_1
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mInCallToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 2873
    if-eqz v2, :cond_7

    .line 2874
    add-int/lit8 v10, v7, 0x14

    int-to-long v10, v10

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 2875
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->stopInCallTone()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2896
    .end local v5           #ringerMode:I
    :cond_7
    :goto_4
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_8

    .line 2898
    const-wide/16 v10, 0xc8

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 2900
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1900(Lcom/android/phone/CallNotifier;)V

    .line 2902
    :cond_8
    return-void

    .line 2680
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_2
    const/4 v10, 0x2

    if-ne v4, v10, :cond_9

    .line 2681
    const/16 v8, 0x60

    .line 2682
    const/16 v9, 0x64

    .line 2683
    .restart local v9       #toneVolume:I
    const/16 v7, 0x3e8

    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2684
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_9
    const/4 v10, 0x1

    if-eq v4, v10, :cond_a

    const/4 v10, 0x3

    if-ne v4, v10, :cond_b

    .line 2686
    :cond_a
    const/16 v8, 0x11

    .line 2687
    const/16 v9, 0x64

    .line 2688
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2690
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_b
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2694
    :pswitch_3
    const/16 v8, 0x12

    .line 2695
    const/16 v9, 0x64

    .line 2696
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 2697
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2703
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_4
    const/16 v8, 0x19

    .line 2704
    const/16 v9, 0x64

    .line 2705
    .restart local v9       #toneVolume:I
    const/16 v7, 0x3e8

    .line 2706
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2708
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_5
    const/16 v8, 0x1b

    .line 2709
    const/16 v9, 0x64

    .line 2710
    .restart local v9       #toneVolume:I
    const/16 v7, 0xc8

    .line 2711
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2713
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_6
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    .line 2715
    const/16 v8, 0x5d

    .line 2716
    const/16 v9, 0x64

    .line 2717
    .restart local v9       #toneVolume:I
    const/16 v7, 0x2ee

    .line 2718
    .restart local v7       #toneLengthMillis:I
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v11, 0x1

    #setter for: Lcom/android/phone/CallNotifier;->mOtaCallToneStart:Z
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$1502(Lcom/android/phone/CallNotifier;Z)Z

    goto/16 :goto_0

    .line 2720
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_c
    const/16 v8, 0x1b

    .line 2721
    const/16 v9, 0x64

    .line 2722
    .restart local v9       #toneVolume:I
    const/16 v7, 0xc8

    .line 2724
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2726
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_7
    const/16 v8, 0x56

    .line 2727
    const/16 v9, 0x64

    .line 2728
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1388

    .line 2729
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2731
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_8
    const/16 v8, 0x27

    .line 2732
    const/16 v9, 0x64

    .line 2733
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 2734
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2736
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_9
    const/16 v8, 0x25

    .line 2737
    const/16 v9, 0x64

    .line 2738
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1f4

    .line 2739
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2742
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_a
    const/16 v8, 0x5f

    .line 2743
    const/16 v9, 0x64

    .line 2744
    .restart local v9       #toneVolume:I
    const/16 v7, 0x177

    .line 2745
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2748
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_b
    const/16 v8, 0x5b

    .line 2749
    const/16 v9, 0x64

    .line 2750
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1388

    .line 2751
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2754
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_c
    const/16 v8, 0x57

    .line 2755
    const/16 v9, 0x64

    .line 2756
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1388

    .line 2757
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2761
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_d
    const/16 v8, 0x16

    .line 2762
    const/16 v9, 0x64

    .line 2763
    .restart local v9       #toneVolume:I
    const/16 v7, 0x7d0

    .line 2764
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2768
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_e
    const/16 v8, 0x15

    .line 2769
    const/16 v9, 0x64

    .line 2770
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 2771
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2782
    :cond_d
    const/4 v10, 0x0

    move v6, v10

    goto/16 :goto_1

    .line 2785
    :cond_e
    const/4 v6, 0x0

    .restart local v6       #stream:I
    goto/16 :goto_1

    .line 2795
    .end local v6           #stream:I
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 2796
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v11, 0x0

    #setter for: Lcom/android/phone/CallNotifier;->mInCallToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$1702(Lcom/android/phone/CallNotifier;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    goto/16 :goto_2

    .line 2830
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v5       #ringerMode:I
    :cond_f
    const/16 v10, 0x60

    if-eq v8, v10, :cond_10

    const/16 v10, 0x27

    if-eq v8, v10, :cond_10

    const/16 v10, 0x25

    if-eq v8, v10, :cond_10

    const/16 v10, 0x5f

    if-ne v8, v10, :cond_12

    .line 2834
    :cond_10
    if-eqz v5, :cond_5

    .line 2835
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2836
    :cond_11
    const/4 v3, 0x1

    .line 2837
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 2839
    :cond_12
    const/16 v10, 0x57

    if-eq v8, v10, :cond_13

    const/16 v10, 0x56

    if-ne v8, v10, :cond_15

    .line 2841
    :cond_13
    if-eqz v5, :cond_5

    const/4 v10, 0x1

    if-eq v5, v10, :cond_5

    .line 2843
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2844
    :cond_14
    const/4 v3, 0x1

    .line 2845
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 2848
    :cond_15
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 2851
    :cond_16
    const/4 v10, 0x1

    if-ne v4, v10, :cond_19

    .line 2852
    const/16 v10, 0x5f

    if-ne v8, v10, :cond_18

    .line 2853
    if-eqz v5, :cond_5

    .line 2854
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v10

    if-eqz v10, :cond_17

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing call drop tone for UMTS rat: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2855
    :cond_17
    const/4 v3, 0x1

    .line 2856
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 2859
    :cond_18
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 2863
    :cond_19
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 2877
    :catch_1
    move-exception v10

    move-object v1, v10

    .line 2878
    .restart local v1       #e:Ljava/lang/RuntimeException;
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer: Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2672
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_6
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method
