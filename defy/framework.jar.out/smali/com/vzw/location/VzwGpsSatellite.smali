.class public final Lcom/vzw/location/VzwGpsSatellite;
.super Ljava/lang/Object;
.source "VzwGpsSatellite.java"


# instance fields
.field mAzimuth:F

.field mElevation:F

.field mPrn:I

.field mSnr:F

.field mUsedInFix:Z

.field mValid:Z


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "prn"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    return-void
.end method


# virtual methods
.method public getAzimuth()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    return v0
.end method

.method public getPrn()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    return v0
.end method

.method public getSnr()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    return v0
.end method

.method public isUsedInFix()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    return v0
.end method

.method setStatus(Lcom/vzw/location/VzwGpsSatellite;)V
    .locals 1
    .parameter "sat"

    .prologue
    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    return-void
.end method
