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


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .parameter
    .parameter "toneId"

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 1817
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1818
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 1819
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1820
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1824
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1826
    const/4 v9, 0x0

    .line 1830
    .local v9, toneType:I
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->getPartialWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 1831
    .local v3, partialWakeLock:Landroid/os/PowerManager$WakeLock;
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 1833
    .local v4, phoneType:I
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1834
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1837
    :cond_0
    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v11, :pswitch_data_0

    .line 1959
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad toneId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1839
    :pswitch_0
    const/16 v9, 0x16

    .line 1840
    const/16 v10, 0x50

    .line 1848
    .local v10, toneVolume:I
    const v8, 0x7fffffeb

    .line 1967
    .local v8, toneLengthMillis:I
    :cond_1
    :goto_0
    :try_start_0
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 1968
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1969
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x6

    move v6, v11

    .line 1971
    .local v6, stream:I
    :goto_1
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is not null and in Video Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :goto_2
    new-instance v7, Landroid/media/ToneGenerator;

    invoke-direct {v7, v6, v10}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2012
    .end local v6           #stream:I
    .local v7, toneGenerator:Landroid/media/ToneGenerator;
    :goto_3
    const/4 v1, 0x1

    .line 2013
    .local v1, needToStopTone:Z
    const/4 v2, 0x0

    .line 2015
    .local v2, okToPlayTone:Z
    if-eqz v7, :cond_5

    .line 2016
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 2017
    .local v5, ringerMode:I
    const/4 v11, 0x2

    if-ne v4, v11, :cond_18

    .line 2018
    const/16 v11, 0x5d

    if-ne v9, v11, :cond_11

    .line 2019
    if-eqz v5, :cond_3

    const/4 v11, 0x1

    if-eq v5, v11, :cond_3

    .line 2021
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2022
    :cond_2
    const/4 v2, 0x1

    .line 2023
    const/4 v1, 0x0

    .line 2049
    :cond_3
    :goto_4
    monitor-enter p0

    .line 2050
    if-eqz v2, :cond_4

    :try_start_1
    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_4

    .line 2051
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2066
    invoke-virtual {v7, v9}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2068
    add-int/lit8 v11, v8, 0x14

    int-to-long v11, v11

    :try_start_2
    invoke-virtual {p0, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2073
    :goto_5
    if-eqz v1, :cond_4

    .line 2074
    :try_start_3
    invoke-virtual {v7}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2078
    :cond_4
    invoke-virtual {v7}, Landroid/media/ToneGenerator;->release()V

    .line 2079
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2080
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2083
    .end local v5           #ringerMode:I
    :cond_5
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2084
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2100
    :cond_6
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v11, v12, :cond_7

    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/16 v12, 0xd

    if-eq v11, v12, :cond_7

    .line 2101
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:calling resetAudioStateAfterDisconnect  + "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2102
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v11}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 2104
    :cond_7
    return-void

    .line 1853
    .end local v1           #needToStopTone:Z
    .end local v2           #okToPlayTone:Z
    .end local v7           #toneGenerator:Landroid/media/ToneGenerator;
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_1
    const/4 v11, 0x2

    if-ne v4, v11, :cond_8

    .line 1854
    const/16 v9, 0x60

    .line 1855
    const/16 v10, 0x32

    .line 1856
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1857
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_8
    const/4 v11, 0x1

    if-eq v4, v11, :cond_9

    const/4 v11, 0x3

    if-ne v4, v11, :cond_a

    .line 1859
    :cond_9
    const/16 v9, 0x11

    .line 1860
    const/16 v10, 0x50

    .line 1861
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1194

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1866
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_a
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected phone type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1870
    :pswitch_2
    const/16 v9, 0x12

    .line 1871
    const/16 v10, 0x50

    .line 1872
    .restart local v10       #toneVolume:I
    const/16 v8, 0xfa0

    .line 1873
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1879
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_3
    const/16 v9, 0x19

    .line 1880
    const/16 v10, 0x50

    .line 1881
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .line 1882
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1884
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_4
    const/16 v9, 0x1b

    .line 1885
    const/16 v10, 0x50

    .line 1886
    .restart local v10       #toneVolume:I
    const/16 v8, 0xc8

    .line 1887
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1889
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_5
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v11, v11, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    .line 1891
    const/16 v9, 0x5d

    .line 1892
    const/16 v10, 0x50

    .line 1893
    .restart local v10       #toneVolume:I
    const/16 v8, 0x2ee

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1895
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_b
    const/16 v9, 0x1b

    .line 1896
    const/16 v10, 0x50

    .line 1897
    .restart local v10       #toneVolume:I
    const/16 v8, 0xc8

    .line 1899
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1901
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_6
    const/16 v9, 0x56

    .line 1902
    const/16 v10, 0x50

    .line 1903
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1388

    .line 1904
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1906
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_7
    const/16 v9, 0x27

    .line 1907
    const/16 v10, 0x32

    .line 1908
    .restart local v10       #toneVolume:I
    const/16 v8, 0xfa0

    .line 1909
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1911
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_8
    const/16 v9, 0x25

    .line 1912
    const/16 v10, 0x32

    .line 1913
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1f4

    .line 1914
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1917
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_9
    const/16 v9, 0x5f

    .line 1918
    const/16 v10, 0x32

    .line 1919
    .restart local v10       #toneVolume:I
    const/16 v8, 0x177

    .line 1920
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1922
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_a
    const/16 v9, 0x57

    .line 1923
    const/16 v10, 0x32

    .line 1924
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1388

    .line 1925
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1930
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_b
    const/16 v9, 0x17

    .line 1932
    const/16 v10, 0x50

    .line 1934
    .restart local v10       #toneVolume:I
    const v8, 0x7fffffeb

    .line 1935
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1937
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_c
    const/16 v9, 0x15

    .line 1938
    const/16 v10, 0x50

    .line 1939
    .restart local v10       #toneVolume:I
    const/16 v8, 0xfa0

    .line 1940
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1942
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_d
    const/16 v9, 0x19

    .line 1943
    const/16 v10, 0x32

    .line 1944
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .line 1945
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1947
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_e
    const/16 v9, 0x63

    .line 1948
    const/16 v10, 0x50

    .line 1949
    .restart local v10       #toneVolume:I
    const/16 v8, 0x258

    .line 1950
    .restart local v8       #toneLengthMillis:I
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v12, "play tone - SKT waiting call"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1953
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_f
    const/16 v9, 0x64

    .line 1954
    const/16 v10, 0x32

    .line 1955
    .restart local v10       #toneVolume:I
    const/16 v8, 0x154

    .line 1956
    .restart local v8       #toneLengthMillis:I
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v12, "play tone - SKT waiting call end"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1969
    :cond_c
    const/16 v11, 0xb

    move v6, v11

    goto/16 :goto_1

    .line 1974
    :cond_d
    :try_start_4
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is not null and in voice Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x6

    move v6, v11

    .restart local v6       #stream:I
    :goto_6
    goto/16 :goto_2

    .end local v6           #stream:I
    :cond_e
    const/4 v11, 0x0

    move v6, v11

    goto :goto_6

    .line 1980
    :cond_f
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1981
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is null and in Video Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    const/16 v6, 0xb

    .restart local v6       #stream:I
    goto/16 :goto_2

    .line 1985
    .end local v6           #stream:I
    :cond_10
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is null and in Voice Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1987
    const/4 v6, 0x0

    .restart local v6       #stream:I
    goto/16 :goto_2

    .line 1992
    .end local v6           #stream:I
    :catch_0
    move-exception v11

    move-object v0, v11

    .line 1993
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v11, "CallNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const/4 v7, 0x0

    .restart local v7       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_3

    .line 2025
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #needToStopTone:Z
    .restart local v2       #okToPlayTone:Z
    .restart local v5       #ringerMode:I
    :cond_11
    const/16 v11, 0x60

    if-eq v9, v11, :cond_12

    const/16 v11, 0x27

    if-eq v9, v11, :cond_12

    const/16 v11, 0x25

    if-eq v9, v11, :cond_12

    const/16 v11, 0x5f

    if-ne v9, v11, :cond_14

    .line 2029
    :cond_12
    if-eqz v5, :cond_3

    .line 2030
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v11

    if-eqz v11, :cond_13

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2031
    :cond_13
    const/4 v2, 0x1

    .line 2032
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 2034
    :cond_14
    const/16 v11, 0x57

    if-eq v9, v11, :cond_15

    const/16 v11, 0x56

    if-ne v9, v11, :cond_17

    .line 2036
    :cond_15
    if-eqz v5, :cond_3

    const/4 v11, 0x1

    if-eq v5, v11, :cond_3

    .line 2038
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v11

    if-eqz v11, :cond_16

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2039
    :cond_16
    const/4 v2, 0x1

    .line 2040
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 2043
    :cond_17
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 2046
    :cond_18
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 2069
    :catch_1
    move-exception v0

    .line 2070
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v11, "CallNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer stopped: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2080
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v11

    .line 1837
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 2107
    monitor-enter p0

    .line 2108
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2109
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2111
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2112
    monitor-exit p0

    .line 2113
    return-void

    .line 2112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
