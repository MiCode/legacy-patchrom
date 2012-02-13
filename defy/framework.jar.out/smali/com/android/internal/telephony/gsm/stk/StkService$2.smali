.class synthetic Lcom/android/internal/telephony/gsm/stk/StkService$2;
.super Ljava/lang/Object;
.source "StkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/stk/StkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->values()[Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_24

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_23

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_22

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_21

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_20

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1f

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1e

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1d

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1c

    :goto_8
    :try_start_9
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1b

    :goto_9
    :try_start_a
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1a

    :goto_a
    :try_start_b
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_19

    :goto_b
    :try_start_c
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_18

    :goto_c
    :try_start_d
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_17

    :goto_d
    :try_start_e
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_16

    :goto_e
    :try_start_f
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_15

    :goto_f
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    :try_start_10
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_14

    :goto_10
    :try_start_11
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_13

    :goto_11
    :try_start_12
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :goto_12
    :try_start_13
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_11

    :goto_13
    :try_start_14
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_10

    :goto_14
    :try_start_15
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_f

    :goto_15
    :try_start_16
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_e

    :goto_16
    :try_start_17
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_d

    :goto_17
    :try_start_18
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_c

    :goto_18
    :try_start_19
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_b

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_a

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_9

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_8

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_7

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_6

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_5

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_4

    :goto_20
    :try_start_21
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_3

    :goto_21
    :try_start_22
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_2

    :goto_22
    :try_start_23
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_1

    :goto_23
    :try_start_24
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PROVIDE_LOCAL_INFO:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_0

    :goto_24
    return-void

    :catch_0
    move-exception v0

    goto :goto_24

    :catch_1
    move-exception v0

    goto :goto_23

    :catch_2
    move-exception v0

    goto :goto_22

    :catch_3
    move-exception v0

    goto :goto_21

    :catch_4
    move-exception v0

    goto :goto_20

    :catch_5
    move-exception v0

    goto :goto_1f

    :catch_6
    move-exception v0

    goto :goto_1e

    :catch_7
    move-exception v0

    goto :goto_1d

    :catch_8
    move-exception v0

    goto :goto_1c

    :catch_9
    move-exception v0

    goto :goto_1b

    :catch_a
    move-exception v0

    goto/16 :goto_1a

    :catch_b
    move-exception v0

    goto/16 :goto_19

    :catch_c
    move-exception v0

    goto/16 :goto_18

    :catch_d
    move-exception v0

    goto/16 :goto_17

    :catch_e
    move-exception v0

    goto/16 :goto_16

    :catch_f
    move-exception v0

    goto/16 :goto_15

    :catch_10
    move-exception v0

    goto/16 :goto_14

    :catch_11
    move-exception v0

    goto/16 :goto_13

    :catch_12
    move-exception v0

    goto/16 :goto_12

    :catch_13
    move-exception v0

    goto/16 :goto_11

    :catch_14
    move-exception v0

    goto/16 :goto_10

    :catch_15
    move-exception v0

    goto/16 :goto_f

    :catch_16
    move-exception v0

    goto/16 :goto_e

    :catch_17
    move-exception v0

    goto/16 :goto_d

    :catch_18
    move-exception v0

    goto/16 :goto_c

    :catch_19
    move-exception v0

    goto/16 :goto_b

    :catch_1a
    move-exception v0

    goto/16 :goto_a

    :catch_1b
    move-exception v0

    goto/16 :goto_9

    :catch_1c
    move-exception v0

    goto/16 :goto_8

    :catch_1d
    move-exception v0

    goto/16 :goto_7

    :catch_1e
    move-exception v0

    goto/16 :goto_6

    :catch_1f
    move-exception v0

    goto/16 :goto_5

    :catch_20
    move-exception v0

    goto/16 :goto_4

    :catch_21
    move-exception v0

    goto/16 :goto_3

    :catch_22
    move-exception v0

    goto/16 :goto_2

    :catch_23
    move-exception v0

    goto/16 :goto_1

    :catch_24
    move-exception v0

    goto/16 :goto_0
.end method
