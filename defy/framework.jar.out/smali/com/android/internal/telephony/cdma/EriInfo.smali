.class public final Lcom/android/internal/telephony/cdma/EriInfo;
.super Ljava/lang/Object;
.source "EriInfo.java"


# static fields
.field public static final ROAMING_ICON_MODE_FLASH:I = 0x1

.field public static final ROAMING_ICON_MODE_NORMAL:I = 0x0

.field public static final ROAMING_INDICATOR_FLASH:I = 0x2

.field public static final ROAMING_INDICATOR_OFF:I = 0x1

.field public static final ROAMING_INDICATOR_ON:I


# instance fields
.field public mAlertId:I

.field public mCallPromptId:I

.field public mDataServiceSupport:I

.field public mEriText:Ljava/lang/String;

.field public mIconIndex:I

.field public mIconMode:I

.field public mRoamingIndicator:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;II)V
    .locals 0
    .parameter "roamingIndicator"
    .parameter "iconIndex"
    .parameter "iconMode"
    .parameter "eriText"
    .parameter "callPromptId"
    .parameter "alertId"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mRoamingIndicator:I

    iput p2, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iput p3, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iput-object p4, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    iput p5, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mCallPromptId:I

    iput p6, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mAlertId:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;III)V
    .locals 0
    .parameter "roamingIndicator"
    .parameter "iconIndex"
    .parameter "iconMode"
    .parameter "eriText"
    .parameter "callPromptId"
    .parameter "alertId"
    .parameter "dataServiceAllowed"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mRoamingIndicator:I

    iput p2, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iput p3, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iput-object p4, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    iput p5, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mCallPromptId:I

    iput p6, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mAlertId:I

    iput p7, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mDataServiceSupport:I

    return-void
.end method
