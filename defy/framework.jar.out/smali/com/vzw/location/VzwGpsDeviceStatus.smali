.class public final Lcom/vzw/location/VzwGpsDeviceStatus;
.super Ljava/lang/Object;
.source "VzwGpsDeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field public static final HW_STATE_IDLE:I = 0x2

.field public static final HW_STATE_ON:I = 0x1

.field public static final HW_STATE_UNKNOWN:I = 0x0

.field private static final MAX_VISIBLES:I = 0x30

.field private static final NUM_SATELLITES:I = 0xff

.field public static final VALID_ALM_SV_MASK:I = 0x4

.field public static final VALID_DEV_ERROR:I = 0x20

.field public static final VALID_EPH_SV_MASK:I = 0x2

.field public static final VALID_HW_STATE:I = 0x1

.field public static final VALID_SAT_IN_VIEW_CARRIER_TO_NOISE_RATIO:I = 0x10

.field public static final VALID_SAT_IN_VIEW_PRN:I = 0x8


# instance fields
.field private mHwState:I

.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatelliteStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

.field private mValidHwState:Z

.field private mValidSatInfo:Z


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    iput v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidHwState:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidSatInfo:Z

    const/16 v1, 0xff

    new-array v1, v1, [Lcom/vzw/location/VzwGpsSatelliteStatus;

    iput-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    new-instance v1, Lcom/vzw/location/VzwGpsDeviceStatus$1;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsDeviceStatus$1;-><init>(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteList:Ljava/lang/Iterable;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    new-instance v2, Lcom/vzw/location/VzwGpsSatelliteStatus;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Lcom/vzw/location/VzwGpsSatelliteStatus;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwGpsDeviceStatus;)[Lcom/vzw/location/VzwGpsSatelliteStatus;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    return-object v0
.end method


# virtual methods
.method public getHwState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    return v0
.end method

.method public getMaximumPossibleSatelliteCount()I
    .locals 1

    .prologue
    const/16 v0, 0x30

    return v0
.end method

.method public getValidFields()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, valid:I
    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidHwState:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidSatInfo:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x10

    :cond_1
    return v0
.end method

.method public satellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatelliteStatus;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method setHwState(I)V
    .locals 0
    .parameter "hwState"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    return-void
.end method

.method declared-synchronized setStatus(I[I[FII)V
    .locals 8
    .parameter "svCount"
    .parameter "prns"
    .parameter "snrs"
    .parameter "ephemerisMask"
    .parameter "almanacMask"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    aget v4, p2, v0

    sub-int v1, v4, v6

    .local v1, prn:I
    shl-int v2, v6, v1

    .local v2, prnShift:I
    iget-object v4, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v3, v4, v1

    .local v3, satellite:Lcom/vzw/location/VzwGpsSatelliteStatus;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    aget v4, p3, v0

    iput v4, v3, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    and-int v4, p4, v2

    if-eqz v4, :cond_1

    move v4, v6

    :goto_2
    iput-boolean v4, v3, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    and-int v4, p5, v2

    if-eqz v4, :cond_2

    move v4, v6

    :goto_3
    iput-boolean v4, v3, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v4, v7

    goto :goto_2

    :cond_2
    move v4, v7

    goto :goto_3

    .end local v1           #prn:I
    .end local v2           #prnShift:I
    .end local v3           #satellite:Lcom/vzw/location/VzwGpsSatelliteStatus;
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidSatInfo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method setStatus(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 4
    .parameter "status"

    .prologue
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsDeviceStatus;->getHwState()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsDeviceStatus;->getValidFields()I

    move-result v1

    .local v1, valid:I
    and-int/lit8 v2, v1, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidSatInfo:Z

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setStatus(Lcom/vzw/location/VzwGpsSatelliteStatus;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    return-void
.end method
