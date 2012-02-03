.class public Lcom/android/server/location/MockProvider;
.super Ljava/lang/Object;
.source "MockProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "MockProvider"


# instance fields
.field private final mAccuracy:I

.field private mEnabled:Z

.field private final mExtras:Landroid/os/Bundle;

.field private mHasLocation:Z

.field private final mHasMonetaryCost:Z

.field private mHasStatus:Z

.field private final mLocation:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mName:Ljava/lang/String;

.field private final mPowerRequirement:I

.field private final mRequiresCell:Z

.field private final mRequiresNetwork:Z

.field private final mRequiresSatellite:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private final mSupportsAltitude:Z

.field private final mSupportsBearing:Z

.field private final mSupportsSpeed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V
    .locals 1
    .parameter "name"
    .parameter "locationManager"
    .parameter "requiresNetwork"
    .parameter "requiresSatellite"
    .parameter "requiresCell"
    .parameter "hasMonetaryCost"
    .parameter "supportsAltitude"
    .parameter "supportsSpeed"
    .parameter "supportsBearing"
    .parameter "powerRequirement"
    .parameter "accuracy"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    .line 63
    iput-object p1, p0, Lcom/android/server/location/MockProvider;->mName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/android/server/location/MockProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 65
    iput-boolean p3, p0, Lcom/android/server/location/MockProvider;->mRequiresNetwork:Z

    .line 66
    iput-boolean p4, p0, Lcom/android/server/location/MockProvider;->mRequiresSatellite:Z

    .line 67
    iput-boolean p5, p0, Lcom/android/server/location/MockProvider;->mRequiresCell:Z

    .line 68
    iput-boolean p6, p0, Lcom/android/server/location/MockProvider;->mHasMonetaryCost:Z

    .line 69
    iput-boolean p7, p0, Lcom/android/server/location/MockProvider;->mSupportsAltitude:Z

    .line 70
    iput-boolean p9, p0, Lcom/android/server/location/MockProvider;->mSupportsBearing:Z

    .line 71
    iput-boolean p8, p0, Lcom/android/server/location/MockProvider;->mSupportsSpeed:Z

    .line 72
    iput p10, p0, Lcom/android/server/location/MockProvider;->mPowerRequirement:I

    .line 73
    iput p11, p0, Lcom/android/server/location/MockProvider;->mAccuracy:I

    .line 74
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    .line 75
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 219
    return-void
.end method

.method public clearLocation()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasLocation:Z

    .line 177
    return-void
.end method

.method public clearStatus()V
    .locals 2

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    .line 192
    return-void
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    .line 83
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/location/MockProvider;->mHasLocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLocation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStatusUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    .line 87
    return-void
.end method

.method public enableLocationTracking(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 199
    return-void
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/location/MockProvider;->mAccuracy:I

    return v0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/location/MockProvider;->mPowerRequirement:I

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 1
    .parameter "extras"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 96
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 97
    iget v0, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasMonetaryCost:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 4
    .parameter "criteria"

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v1

    iget v2, p0, Lcom/android/server/location/MockProvider;->mAccuracy:I

    if-ge v1, v2, :cond_0

    move v1, v3

    .line 162
    :goto_0
    return v1

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    .line 149
    .local v0, criteriaPower:I
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/location/MockProvider;->mPowerRequirement:I

    if-ge v0, v1, :cond_1

    move v1, v3

    .line 151
    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p1}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/location/MockProvider;->mSupportsAltitude:Z

    if-nez v1, :cond_2

    move v1, v3

    .line 154
    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p1}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/location/MockProvider;->mSupportsSpeed:Z

    if-nez v1, :cond_3

    move v1, v3

    .line 157
    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p1}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/location/MockProvider;->mSupportsBearing:Z

    if-nez v1, :cond_4

    move v1, v3

    .line 160
    goto :goto_0

    .line 162
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeListener(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 222
    return-void
.end method

.method public requestSingleShotFix()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mRequiresCell:Z

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mRequiresNetwork:Z

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mRequiresSatellite:Z

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/MockProvider;->mHasLocation:Z

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v2, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 171
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MockProvider"

    const-string v2, "RemoteException calling reportLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .locals 0
    .parameter "minTime"
    .parameter "ws"

    .prologue
    .line 206
    return-void
.end method

.method public setStatus(ILandroid/os/Bundle;J)V
    .locals 1
    .parameter "status"
    .parameter "extras"
    .parameter "updateTime"

    .prologue
    .line 180
    iput p1, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    .line 181
    iput-wide p3, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    .line 182
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 183
    if-eqz p2, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 186
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    .line 187
    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mSupportsAltitude:Z

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mSupportsBearing:Z

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mSupportsSpeed:Z

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 212
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 0
    .parameter "state"
    .parameter "info"

    .prologue
    .line 209
    return-void
.end method
