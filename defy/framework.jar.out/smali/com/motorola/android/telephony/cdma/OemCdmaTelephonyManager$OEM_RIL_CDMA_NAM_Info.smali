.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;
.super Ljava/lang/Object;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OEM_RIL_CDMA_NAM_Info"
.end annotation


# static fields
.field private static final OEM_RIL_CDMA_IMSI_11_12_ALIGNED_LENGTH:I = 0x4

.field public static final OEM_RIL_CDMA_IMSI_11_12_LENGTH:I = 0x2

.field private static final OEM_RIL_CDMA_IMSI_MCC_ALIGNED_LENGTH:I = 0x4

.field public static final OEM_RIL_CDMA_IMSI_MCC_LENGTH:I = 0x3

.field private static final OEM_RIL_CDMA_IMSI_MCC_T_ALIGNED_LENGTH:I = 0x4

.field public static final OEM_RIL_CDMA_IMSI_MCC_T_LENGTH:I = 0x3

.field private static final OEM_RIL_CDMA_IMSI_T_ALIGNED_LENGTH:I = 0x10

.field public static final OEM_RIL_CDMA_IMSI_T_LENGTH:I = 0xf

.field private static final OEM_RIL_CDMA_MDN_ALIGNED_LENGTH:I = 0x10

.field public static final OEM_RIL_CDMA_MDN_LENGTH:I = 0xa

.field private static final OEM_RIL_CDMA_MIN_ALIGNED_LENGTH:I = 0x10

.field public static final OEM_RIL_CDMA_MIN_LENGTH:I = 0xa

.field public static final OEM_RIL_CDMA_SPC_LOCK_CODE_LENGTH:I = 0x6

.field public static final SIZE:I = 0x66


# instance fields
.field public accessOverloadClass:I

.field public h_nid:I

.field public h_sid:I

.field public imsi11_12:[B

.field public imsiMcc:[B

.field public imsiMccT:[B

.field public imsiT:[B

.field public mdn:[B

.field public min:[B

.field public newSpcCode:[B

.field public priCdmaA:I

.field public priCdmaB:I

.field public scm:I

.field public secCdmaA:I

.field public secCdmaB:I

.field public vocoderType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
