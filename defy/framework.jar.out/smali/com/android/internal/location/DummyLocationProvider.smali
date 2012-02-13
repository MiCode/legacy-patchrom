.class public Lcom/android/internal/location/DummyLocationProvider;
.super Landroid/location/LocationProvider;
.source "DummyLocationProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DummyLocationProvider"


# instance fields
.field mAccuracy:I

.field mHasMonetaryCost:Z

.field mName:Ljava/lang/String;

.field mPowerRequirement:I

.field mRequiresCell:Z

.field mRequiresNetwork:Z

.field mRequiresSatellite:Z

.field mSupportsAltitude:Z

.field mSupportsBearing:Z

.field mSupportsSpeed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/ILocationManager;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/location/LocationProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;)V

    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mAccuracy:I

    return v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mPowerRequirement:I

    return v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mHasMonetaryCost:Z

    return v0
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mRequiresCell:Z

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mRequiresNetwork:Z

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mRequiresSatellite:Z

    return v0
.end method

.method public setAccuracy(I)V
    .locals 0
    .parameter "accuracy"

    .prologue
    iput p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mAccuracy:I

    return-void
.end method

.method public setHasMonetaryCost(Z)V
    .locals 0
    .parameter "hasMonetaryCost"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mHasMonetaryCost:Z

    return-void
.end method

.method public setPowerRequirement(I)V
    .locals 0
    .parameter "powerRequirement"

    .prologue
    iput p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mPowerRequirement:I

    return-void
.end method

.method public setRequiresCell(Z)V
    .locals 0
    .parameter "requiresCell"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mRequiresCell:Z

    return-void
.end method

.method public setRequiresNetwork(Z)V
    .locals 0
    .parameter "requiresNetwork"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mRequiresNetwork:Z

    return-void
.end method

.method public setRequiresSatellite(Z)V
    .locals 0
    .parameter "requiresSatellite"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mRequiresSatellite:Z

    return-void
.end method

.method public setSupportsAltitude(Z)V
    .locals 0
    .parameter "supportsAltitude"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mSupportsAltitude:Z

    return-void
.end method

.method public setSupportsBearing(Z)V
    .locals 0
    .parameter "supportsBearing"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mSupportsBearing:Z

    return-void
.end method

.method public setSupportsSpeed(Z)V
    .locals 0
    .parameter "supportsSpeed"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mSupportsSpeed:Z

    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mSupportsAltitude:Z

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mSupportsBearing:Z

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mSupportsSpeed:Z

    return v0
.end method
