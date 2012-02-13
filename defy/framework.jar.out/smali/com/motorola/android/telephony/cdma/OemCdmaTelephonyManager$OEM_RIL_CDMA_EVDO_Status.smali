.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;
.super Ljava/lang/Object;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OEM_RIL_CDMA_EVDO_Status"
.end annotation


# static fields
.field public static final SIZE:I = 0x38


# instance fields
.field public atState:I

.field public errPkts:I

.field public hdrChanNum:I

.field public hdrRssi:I

.field public hybridMode:I

.field public ip:I

.field public measPkts:I

.field public pilotPn:I

.field public rxPwrRx0Dbm:I

.field public rxPwrRx1Dbm:I

.field public sessionState:I

.field public txUati:I

.field public uatiColorCode:I

.field public userCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
