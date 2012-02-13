.class public final enum Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;
.super Ljava/lang/Enum;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RdeRequestId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_GET_CDMA_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_GET_CDMA_VZW_SS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_GET_EMERGENCY_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_GET_HDR_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_GET_MIP_AAA_KEY:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_GET_MIP_HA_KEY:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_GET_MIP_SIP_CHAP_KEY:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_GET_PREF_ONLY_FLAG:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_GET_PUBLIC_USER_ID_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_GET_SMS_EVDO_P_CSCF_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_GET_SMS_EVDO_P_CSCF_PORT_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_GET_SMS_EVDO_RELEASE_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_GET_SMS_EVDO_STATUS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_GET_SMS_EVDO_T1_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_SET_CDMA_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_SET_CDMA_VZW_SS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_SET_EMERGENCY_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_SET_HDR_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_SET_PUBLIC_USER_ID_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_SET_SMS_EVDO_P_CSCF_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_SET_SMS_EVDO_P_CSCF_PORT_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_SET_SMS_EVDO_RELEASE_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_SET_SMS_EVDO_STATUS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

.field public static final enum RDEREQ_SET_SMS_EVDO_T1_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_GET_EMERGENCY_NUMBER"

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_EMERGENCY_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_SET_EMERGENCY_NUMBER"

    invoke-direct {v0, v1, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_EMERGENCY_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_GET_SMS_EVDO_STATUS"

    invoke-direct {v0, v1, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_STATUS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_SET_SMS_EVDO_STATUS"

    invoke-direct {v0, v1, v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_STATUS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_GET_SMS_EVDO_T1_TIMER"

    invoke-direct {v0, v1, v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_T1_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_SET_SMS_EVDO_T1_TIMER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_T1_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_GET_SMS_EVDO_RELEASE_TIMER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_RELEASE_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_SET_SMS_EVDO_RELEASE_TIMER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_RELEASE_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_GET_SMS_EVDO_P_CSCF_DOMAIN_NAME"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_P_CSCF_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_SET_SMS_EVDO_P_CSCF_DOMAIN_NAME"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_P_CSCF_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_GET_SMS_EVDO_P_CSCF_PORT_NUMBER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_P_CSCF_PORT_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_SET_SMS_EVDO_P_CSCF_PORT_NUMBER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_P_CSCF_PORT_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_GET_PUBLIC_USER_ID_DOMAIN_NAME"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_PUBLIC_USER_ID_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_SET_PUBLIC_USER_ID_DOMAIN_NAME"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_PUBLIC_USER_ID_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_GET_MIP_HA_KEY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_MIP_HA_KEY:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_GET_MIP_AAA_KEY"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_MIP_AAA_KEY:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_GET_MIP_SIP_CHAP_KEY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_MIP_SIP_CHAP_KEY:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_GET_CDMA_RX_DIVERSITY_CTRL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_CDMA_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_SET_CDMA_RX_DIVERSITY_CTRL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_CDMA_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_GET_HDR_RX_DIVERSITY_CTRL"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_HDR_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_SET_HDR_RX_DIVERSITY_CTRL"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_HDR_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_GET_PREF_ONLY_FLAG"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_PREF_ONLY_FLAG:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_GET_CDMA_VZW_SS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_CDMA_VZW_SS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const-string v1, "RDEREQ_SET_CDMA_VZW_SS"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_CDMA_VZW_SS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_EMERGENCY_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_EMERGENCY_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_STATUS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_STATUS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_T1_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_T1_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_RELEASE_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_RELEASE_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_P_CSCF_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_P_CSCF_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_P_CSCF_PORT_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_P_CSCF_PORT_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_PUBLIC_USER_ID_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_PUBLIC_USER_ID_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_MIP_HA_KEY:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_MIP_AAA_KEY:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_MIP_SIP_CHAP_KEY:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_CDMA_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_CDMA_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_HDR_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_HDR_RX_DIVERSITY_CTRL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_PREF_ONLY_FLAG:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_CDMA_VZW_SS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_CDMA_VZW_SS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->$VALUES:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    return-object p0
.end method

.method public static values()[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->$VALUES:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v0}, [Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    return-object v0
.end method
