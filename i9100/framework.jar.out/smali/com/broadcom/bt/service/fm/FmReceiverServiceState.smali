.class public Lcom/broadcom/bt/service/fm/FmReceiverServiceState;
.super Ljava/lang/Object;
.source "FmReceiverServiceState.java"


# static fields
.field static final AF_MODE_BITMASK:I = 0x1

.field static final AUDIO_MODE_BITMASK:I = 0x3

.field static final AUDIO_PATH_BITMASK:I = 0x3

.field static final BTA_FM_ERR:I = 0x5

.field static final BTA_FM_FLAG_TOUT_ERR:I = 0x7

.field static final BTA_FM_FREQ_ERR:I = 0x8

.field static final BTA_FM_OK:I = 0x0

.field static final BTA_FM_SCAN_ABORT:I = 0x3

.field static final BTA_FM_SCAN_FAIL:I = 0x2

.field static final BTA_FM_SCAN_NO_RES:I = 0x4

.field static final BTA_FM_SCAN_RSSI_LOW:I = 0x1

.field static final BTA_FM_UNSPT_ERR:I = 0x6

.field static final BTA_FM_VCMD_ERR:I = 0x9

.field static final FM_RECEIVER_PERM:Ljava/lang/String; = "android.permission.ACCESS_FM_RECEIVER"

.field static final FUNC_BITMASK:I = 0x73

.field static final FUNC_RDS_BITMASK:I = 0x70

.field static final FUNC_REGION_BITMASK:I = 0x3

.field static final MAX_ALLOWED_AF_JUMP_THRESHOLD:I = 0xff

.field static final MAX_ALLOWED_FREQUENCY_CODE:I = 0x1869f

.field static final MAX_ALLOWED_RDS_CONDITION_VALUE:I = 0xff

.field static final MAX_ALLOWED_SIGNAL_POLLING_TIME:I = 0x186a0

.field static final MAX_ALLOWED_SIGNAL_STRENGTH_NUMBER:I = 0xff

.field static final MIN_ALLOWED_AF_JUMP_THRESHOLD:I = 0x0

.field static final MIN_ALLOWED_FREQUENCY_CODE:I = 0x1

.field static final MIN_ALLOWED_RDS_CONDITION_VALUE:I = 0x0

.field static final MIN_ALLOWED_SIGNAL_POLLING_TIME:I = 0xa

.field static final MIN_ALLOWED_SIGNAL_STRENGTH_NUMBER:I = 0x0

.field static final OPERATION_DISABLE:I = 0x5

.field static final OPERATION_ENABLE:I = 0x4

.field static final OPERATION_GENERIC:I = 0x64

.field static final OPERATION_NFL:I = 0x63

.field static final OPERATION_SEARCH:I = 0xa

.field static final OPERATION_TIMEOUT:I = 0x1

.field static final OPERATION_TIMEOUT_GENERIC:I = 0x1388

.field static final OPERATION_TIMEOUT_NFL:I = 0x4e20

.field static final OPERATION_TIMEOUT_SEARCH:I = 0x4e20

.field static final OPERATION_TIMEOUT_SHUTDOWN:I = 0x2710

.field static final OPERATION_TIMEOUT_STARTUP:I = 0x2710

.field static final RADIO_OP_STATE_NONE:I = 0x0

.field static final RADIO_OP_STATE_STAGE_1:I = 0x1

.field static final RADIO_OP_STATE_STAGE_2:I = 0x2

.field static final RADIO_OP_STATE_STAGE_3:I = 0x3

.field static final RADIO_OP_STATE_STAGE_4:I = 0x4

.field static final RADIO_OP_STATE_STAGE_5:I = 0x5

.field static final RADIO_STATE_BUSY:I = 0x4

.field static final RADIO_STATE_OFF:I = 0x0

.field static final RADIO_STATE_READY_FOR_COMMAND:I = 0x2

.field static final RADIO_STATE_STARTING:I = 0x1

.field static final RADIO_STATE_STOPPING:I = 0x3

.field static final RBDS_MODE_NATIVE:I = 0x1

.field static final RDS_FEATURES_BITMASK:I = 0x7c

.field static final RDS_ID_PS_EVT:I = 0x7

.field static final RDS_ID_PTYN_EVT:I = 0x8

.field static final RDS_ID_PTY_EVT:I = 0x2

.field static final RDS_ID_RT_EVT:I = 0x9

.field static final RDS_MODE_BITMASK:I = 0x3

.field static final RDS_MODE_NATIVE:I = 0x0

.field static final RDS_RBDS_BITMASK:I = 0x1

.field static final SCAN_MODE_BITMASK:I = 0x82

.field static mAfOn:Z

.field static mAlternateFreqHopThreshold:I

.field static mAudioMode:I

.field static mAudioPath:I

.field static mDeemphasisTime:I

.field static mEstimatedNoiseFloorLevel:I

.field static mFreq:I

.field static mFuncMask:I

.field static mIsMute:Z

.field static mLiveAudioQuality:Z

.field static mRadioIsOn:Z

.field static mRdsOn:Z

.field static mRdsProgramService:Ljava/lang/String;

.field static mRdsProgramType:I

.field static mRdsProgramTypeName:Ljava/lang/String;

.field static mRdsRadioText:Ljava/lang/String;

.field static mRdsType:I

.field static mRssi:I

.field static mSeekSuccess:Z

.field static mSignalPollInterval:I

.field static mStepSize:I

.field static mWorldRegion:I

.field static radio_op_state:I

.field static radio_state:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    .line 139
    const/16 v0, 0x50

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFuncMask:I

    .line 140
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 141
    const/16 v0, 0x7f

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 142
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 143
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    .line 144
    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    .line 145
    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    .line 146
    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    .line 147
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    .line 148
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 149
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    .line 150
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    .line 151
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 152
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAlternateFreqHopThreshold:I

    .line 153
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 154
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    .line 155
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    .line 156
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mStepSize:I

    .line 157
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mLiveAudioQuality:Z

    .line 158
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    .line 159
    const/16 v0, 0x64

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSignalPollInterval:I

    .line 160
    const/16 v0, 0x40

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mDeemphasisTime:I

    .line 161
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 163
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
