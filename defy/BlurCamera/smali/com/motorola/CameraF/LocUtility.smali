.class public Lcom/motorola/CameraF/LocUtility;
.super Ljava/lang/Object;
.source "LocUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/CameraF/LocUtility$LocationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoLocManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocationListeners:[Lcom/motorola/CameraF/LocUtility$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 4
    .parameter "tx"
    .parameter "lm"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcom/motorola/CameraF/LocUtility;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/motorola/CameraF/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/CameraF/LocUtility$LocationListener;

    const/4 v1, 0x0

    new-instance v2, Lcom/motorola/CameraF/LocUtility$LocationListener;

    const-string v3, "gps"

    invoke-direct {v2, p0, v3}, Lcom/motorola/CameraF/LocUtility$LocationListener;-><init>(Lcom/motorola/CameraF/LocUtility;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/motorola/CameraF/LocUtility$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/motorola/CameraF/LocUtility$LocationListener;-><init>(Lcom/motorola/CameraF/LocUtility;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/motorola/CameraF/LocUtility;->mLocationListeners:[Lcom/motorola/CameraF/LocUtility$LocationListener;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/CameraF/LocUtility;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/CameraF/LocUtility;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getAddressByLoc(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;
    .locals 12
    .parameter "tx"
    .parameter "newLocation"

    .prologue
    .line 208
    const/4 v9, 0x0

    .line 209
    .local v9, addressText:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 210
    new-instance v1, Landroid/location/Geocoder;

    invoke-direct {v1, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 212
    .local v1, geocoder:Landroid/location/Geocoder;
    const/4 v7, 0x0

    .line 214
    .local v7, a:Landroid/location/Address;
    if-eqz v1, :cond_0

    .line 215
    :try_start_0
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v8

    .line 217
    .local v8, address:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 218
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/location/Address;

    move-object v7, v0

    .line 219
    if-eqz v7, :cond_0

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 232
    .end local v1           #geocoder:Landroid/location/Geocoder;
    .end local v7           #a:Landroid/location/Address;
    .end local v8           #address:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoLocManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAddressByLoc: addressText="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    return-object v9

    .line 226
    .restart local v1       #geocoder:Landroid/location/Geocoder;
    .restart local v7       #a:Landroid/location/Address;
    :catch_0
    move-exception v2

    move-object v10, v2

    .line 228
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 6

    .prologue
    const-string v5, "MotoLocManager"

    .line 193
    const/4 v1, 0x0

    .line 196
    .local v1, l:Landroid/location/Location;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/motorola/CameraF/LocUtility;->mLocationListeners:[Lcom/motorola/CameraF/LocUtility$LocationListener;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/motorola/CameraF/LocUtility;->mLocationListeners:[Lcom/motorola/CameraF/LocUtility$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/motorola/CameraF/LocUtility$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 198
    const-string v2, "MotoLocManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "================ inside LocUtility.getCurrentLocation, location listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-eqz v1, :cond_1

    .line 200
    const-string v2, "MotoLocManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "================ inside LocUtility.getCurrentLocation, lat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", long="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    return-object v1

    .line 196
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public startReceivingLocationUpdates(Landroid/os/Handler;)V
    .locals 10
    .parameter "hdl"

    .prologue
    const/4 v3, 0x0

    const-string v2, "network"

    const-string v9, "gps"

    const-string v8, "MotoLocManager"

    .line 125
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoLocManager"

    const-string v0, "startReceivingLocationUpdates"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;

    .line 127
    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v9}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoLocManager"

    const-string v0, "Both providers are disabled"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setSearchingLoc(I)V

    .line 133
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentAddress(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    :cond_2
    :goto_0
    return-void

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    :try_start_0
    const-string v0, "MotoLocManager"

    const-string v1, "=============== Register NETWORK_PROVIDER location listener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/motorola/CameraF/LocUtility;->mLocationListeners:[Lcom/motorola/CameraF/LocUtility$LocationListener;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v9}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    :try_start_1
    const-string v0, "MotoLocManager"

    const-string v1, "=============== Register GPS_PROVIDER location listener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/motorola/CameraF/LocUtility;->mLocationListeners:[Lcom/motorola/CameraF/LocUtility$LocationListener;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 170
    :cond_5
    :goto_2
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    const-string v0, "MotoLocManager"

    const-string v0, "Atleast one provider are enabled, set status to searching"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_6
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setSearchingLoc(I)V

    .line 172
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentAddress(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 143
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v0, "MotoLocManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=============== Error registering NETWORK_PROVIDER location listener, ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, "MotoLocManager"

    const-string v0, "security fail to request location update, ignore"

    invoke-static {v8, v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 146
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 147
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "MotoLocManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=============== Error registering NETWORK_PROVIDER location listener, ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    .line 149
    const-string v0, "MotoLocManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocUtility:startReceivingLocationUpdates:provider does not exist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 159
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    move-object v7, v0

    .line 160
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v0, "MotoLocManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=============== Error registering GPS_PROVIDER location listener, ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "MotoLocManager"

    const-string v0, "security fail to request location update, ignore"

    invoke-static {v8, v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 163
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    move-object v7, v0

    .line 164
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "MotoLocManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=============== Error registering GPS_PROVIDER location listener, ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    .line 166
    const-string v0, "MotoLocManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocUtility:startReceivingLocationUpdates:provider does not exist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public stopReceivingLocationUpdates()V
    .locals 3

    .prologue
    .line 179
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;

    .line 180
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoLocManager"

    const-string v2, "stopReceivingLocationUpdates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/motorola/CameraF/LocUtility;->mLocationListeners:[Lcom/motorola/CameraF/LocUtility$LocationListener;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/motorola/CameraF/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/motorola/CameraF/LocUtility;->mLocationListeners:[Lcom/motorola/CameraF/LocUtility$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v0           #i:I
    :cond_1
    return-void

    .line 185
    .restart local v0       #i:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method
