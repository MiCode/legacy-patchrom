.class public final Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
.super Ljava/lang/Object;
.source "SmsEnvelope.java"


# static fields
.field public static final MESSAGE_TYPE_ACKNOWLEDGE:I = 0x2

.field public static final MESSAGE_TYPE_BROADCAST:I = 0x1

.field public static final MESSAGE_TYPE_POINT_TO_POINT:I = 0x0

.field public static final PARAM_BEARER_DATA:I = 0x8

.field public static final PARAM_BEARER_REPLY_OPTION:I = 0x6

.field public static final PARAM_CAUSE_CODES:I = 0x7

.field public static final PARAM_DESTINATION_ADDRESS:I = 0x4

.field public static final PARAM_DESTINATION_SUBADDRESS:I = 0x5

.field public static final PARAM_ORIGINATING_ADDRESS:I = 0x2

.field public static final PARAM_ORIGINATING_SUBADDRESS:I = 0x3

.field public static final PARAM_SERVICE_CATEGORY:I = 0x1

.field public static final PARAM_TELESERVICE_ID:I = 0x0

.field public static final SMS_BEARER_DATA_MAX:I = 0xff

.field public static final TELESERVICE_CATPT:I = 0x1007

.field public static final TELESERVICE_MWI:I = 0x40000

.field public static final TELESERVICE_NOT_SET:I = 0x0

.field public static final TELESERVICE_VMN:I = 0x1003

.field public static final TELESERVICE_WAP:I = 0x1004

.field public static final TELESERVICE_WEMT:I = 0x1005

.field public static final TELESERVICE_WMT:I = 0x1002


# instance fields
.field public bearerData:[B

.field public bearerReply:I

.field public causeCode:B

.field public destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public errorClass:B

.field public messageType:I

.field public origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public replySeqNo:B

.field public serviceCategory:I

.field public teleService:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return-void
.end method
