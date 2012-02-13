.class Lcom/motorola/CameraF/LocUtility$LocationListener;
.super Ljava/lang/Object;
.source "LocUtility.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/LocUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/motorola/CameraF/LocUtility;


# direct methods
.method public constructor <init>(Lcom/motorola/CameraF/LocUtility;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "provider"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->this$0:Lcom/motorola/CameraF/LocUtility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->mValid:Z

    .line 43
    iput-object p2, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->mProvider:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 45
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 3

    .prologue
    .line 119
    const-string v0, "MotoLocManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================ inside LocUtility.LocationListener.current, mValid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->mValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-boolean v0, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 10
    .parameter "newLocation"

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const-string v9, "MotoLocManager"

    .line 49
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoLocManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged: lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    cmpl-double v1, v1, v5

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    cmpl-double v1, v1, v5

    if-nez v1, :cond_3

    .line 62
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setSearchingLoc(I)V

    .line 63
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentAddress(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->this$0:Lcom/motorola/CameraF/LocUtility;

    #getter for: Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/LocUtility;->access$000(Lcom/motorola/CameraF/LocUtility;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->this$0:Lcom/motorola/CameraF/LocUtility;

    #getter for: Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/LocUtility;->access$000(Lcom/motorola/CameraF/LocUtility;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 68
    :cond_3
    const-string v1, "MotoLocManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================ inside LocUtility.LocationListener.onLocationChanged, set mValid=true, newLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 71
    iput-boolean v7, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->mValid:Z

    .line 72
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getLocStatus()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    .line 73
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setSearchingLoc(I)V

    .line 74
    iget-object v1, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->this$0:Lcom/motorola/CameraF/LocUtility;

    #getter for: Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/LocUtility;->access$000(Lcom/motorola/CameraF/LocUtility;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->this$0:Lcom/motorola/CameraF/LocUtility;

    #getter for: Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/LocUtility;->access$000(Lcom/motorola/CameraF/LocUtility;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 77
    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/motorola/CameraF/LocUtility$LocationListener$1;

    invoke-direct {v1, p0, p1}, Lcom/motorola/CameraF/LocUtility$LocationListener$1;-><init>(Lcom/motorola/CameraF/LocUtility$LocationListener;Landroid/location/Location;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 88
    .local v0, addressT:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 99
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 95
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 7
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xf

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "MotoLocManager"

    .line 102
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoLocManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatusChanged: status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    if-ne p2, v4, :cond_2

    .line 104
    const-string v0, "MotoLocManager"

    const-string v0, "================ inside LocUtility.LocationListener.onStatusChanged, status=TEMPORARILY_UNAVAILABLE, set mValid=false and request location update"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-boolean v3, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->mValid:Z

    .line 106
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setSearchingLoc(I)V

    .line 107
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentAddress(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->this$0:Lcom/motorola/CameraF/LocUtility;

    #getter for: Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/CameraF/LocUtility;->access$000(Lcom/motorola/CameraF/LocUtility;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->this$0:Lcom/motorola/CameraF/LocUtility;

    #getter for: Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/CameraF/LocUtility;->access$000(Lcom/motorola/CameraF/LocUtility;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    if-nez p2, :cond_1

    .line 110
    const-string v0, "MotoLocManager"

    const-string v0, "================ inside LocUtility.LocationListener.onStatusChanged, status=OUT_OF_SERVICE, set mValid=false and request location update"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-boolean v3, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->mValid:Z

    .line 112
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setSearchingLoc(I)V

    .line 113
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentAddress(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->this$0:Lcom/motorola/CameraF/LocUtility;

    #getter for: Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/CameraF/LocUtility;->access$000(Lcom/motorola/CameraF/LocUtility;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility$LocationListener;->this$0:Lcom/motorola/CameraF/LocUtility;

    #getter for: Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/CameraF/LocUtility;->access$000(Lcom/motorola/CameraF/LocUtility;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
