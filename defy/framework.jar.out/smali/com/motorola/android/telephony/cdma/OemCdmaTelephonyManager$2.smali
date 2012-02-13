.class synthetic Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;
.super Ljava/lang/Object;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$RdeRequestId:[I

.field static final synthetic $SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$TelephonyMgrState:[I

.field static final synthetic $SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$VZW_APN_MRU_Operation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->values()[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$RdeRequestId:[I

    :try_start_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$RdeRequestId:[I

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_CDMA_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$RdeRequestId:[I

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_HDR_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$RdeRequestId:[I

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_CDMA_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$RdeRequestId:[I

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_HDR_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->values()[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$VZW_APN_MRU_Operation:[I

    :try_start_4
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$VZW_APN_MRU_Operation:[I

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->EDIT_APN_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$VZW_APN_MRU_Operation:[I

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->QUERY_APN_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$VZW_APN_MRU_Operation:[I

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->EDIT_MRU_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$VZW_APN_MRU_Operation:[I

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->QUERY_MRU_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$VZW_APN_MRU_Operation:[I

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->CLEAR_MRU_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;->values()[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$TelephonyMgrState:[I

    :try_start_9
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$TelephonyMgrState:[I

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;->STATE_IDLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$TelephonyMgrState:[I

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;->STATE_WAITING_FOR_RESPONSE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method
