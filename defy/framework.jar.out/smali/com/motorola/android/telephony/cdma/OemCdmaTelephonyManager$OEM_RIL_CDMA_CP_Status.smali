.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;
.super Ljava/lang/Object;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OEM_RIL_CDMA_CP_Status"
.end annotation


# static fields
.field public static final SIZE:I = 0x55


# instance fields
.field public activePilotCount:I

.field public band:I

.field public bestActivePilot:I

.field public bestActiveStrength:I

.field public bestNeighborPilot:I

.field public bestNeighborStrength:I

.field public callCounter:I

.field public candPilotCount:I

.field public channel:I

.field public cpState:I

.field public droppedCallCounter:I

.field public fer:I

.field public is2000System:B

.field public lastCallIndicator:I

.field public lnaStatus:I

.field public neighborPilotCount:I

.field public nid:I

.field public rssi:I

.field public sCallCounter:I

.field public serviceOption:I

.field public sid:I

.field public txPower:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
