.class synthetic Lcom/android/phone/InVTCallScreen$51;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$Call$State:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

.field static final synthetic $SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

.field static final synthetic $SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7132
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    :try_start_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1b

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1a

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_19

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_18

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_17

    .line 6391
    :goto_4
    invoke-static {}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->values()[Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    :try_start_5
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_16

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->CALL_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_15

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_14

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_13

    :goto_8
    :try_start_9
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_12

    :goto_9
    :try_start_a
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_11

    :goto_a
    :try_start_b
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_10

    .line 5833
    :goto_b
    invoke-static {}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->values()[Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    :try_start_c
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_f

    :goto_c
    :try_start_d
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_e

    :goto_d
    :try_start_e
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_d

    :goto_e
    :try_start_f
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_c

    :goto_f
    :try_start_10
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_b

    :goto_10
    :try_start_11
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->DIALED_MMI:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_a

    :goto_11
    :try_start_12
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_9

    :goto_12
    :try_start_13
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_8

    .line 4532
    :goto_13
    invoke-static {}, Lcom/android/internal/telephony/Connection$PostDialState;->values()[Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    :try_start_14
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_7

    :goto_14
    :try_start_15
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_6

    :goto_15
    :try_start_16
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_5

    :goto_16
    :try_start_17
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_4

    :goto_17
    :try_start_18
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_3

    .line 3529
    :goto_18
    invoke-static {}, Lcom/android/internal/telephony/Phone$SuppService;->values()[Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    :try_start_19
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_2

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_0

    :goto_1b
    return-void

    :catch_0
    move-exception v0

    goto :goto_1b

    :catch_1
    move-exception v0

    goto :goto_1a

    :catch_2
    move-exception v0

    goto :goto_19

    .line 4532
    :catch_3
    move-exception v0

    goto :goto_18

    :catch_4
    move-exception v0

    goto :goto_17

    :catch_5
    move-exception v0

    goto :goto_16

    :catch_6
    move-exception v0

    goto :goto_15

    :catch_7
    move-exception v0

    goto :goto_14

    .line 5833
    :catch_8
    move-exception v0

    goto :goto_13

    :catch_9
    move-exception v0

    goto/16 :goto_12

    :catch_a
    move-exception v0

    goto/16 :goto_11

    :catch_b
    move-exception v0

    goto/16 :goto_10

    :catch_c
    move-exception v0

    goto/16 :goto_f

    :catch_d
    move-exception v0

    goto/16 :goto_e

    :catch_e
    move-exception v0

    goto/16 :goto_d

    :catch_f
    move-exception v0

    goto/16 :goto_c

    .line 6391
    :catch_10
    move-exception v0

    goto/16 :goto_b

    :catch_11
    move-exception v0

    goto/16 :goto_a

    :catch_12
    move-exception v0

    goto/16 :goto_9

    :catch_13
    move-exception v0

    goto/16 :goto_8

    :catch_14
    move-exception v0

    goto/16 :goto_7

    :catch_15
    move-exception v0

    goto/16 :goto_6

    :catch_16
    move-exception v0

    goto/16 :goto_5

    .line 7132
    :catch_17
    move-exception v0

    goto/16 :goto_4

    :catch_18
    move-exception v0

    goto/16 :goto_3

    :catch_19
    move-exception v0

    goto/16 :goto_2

    :catch_1a
    move-exception v0

    goto/16 :goto_1

    :catch_1b
    move-exception v0

    goto/16 :goto_0
.end method
