.class public final Lcom/android/phone/LocationRemoteServiceManager;
.super Ljava/lang/Object;
.source "LocationRemoteServiceManager.java"


# static fields
.field static final EXTERN_NUM_ADDR_SERVICE_ID:Ljava/lang/String; = "com.hiapk.service.placeupdate"

.field private static final LOG_TAG:Ljava/lang/String; = "LocationRemoteServiceManager"

.field static final NUM_ADDR_SERVICE_ID:Ljava/lang/String; = "com.hiapk.service.place"

.field static final OVERRIDE_NUM_ADDR_SERVICE:Ljava/lang/String; = "use_updated_location_service"

.field static isUpdated:Z

.field private static mConnection:Landroid/content/ServiceConnection;

.field private static mConnectionUpdate:Landroid/content/ServiceConnection;

.field private static mContext:Landroid/content/Context;

.field public static final mGcPrefixs:[Ljava/lang/String;

.field static mLocationEnabled:Z

.field static mService:Lcom/hiapk/service/place/IRemoteFindPlace;

.field static mService2:Lcom/hiapk/service/placeupdate/IRemoteFindPlace;

.field private static serviceConnected:Z

.field private static serviceUpdateConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "+86"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "0086"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/LocationRemoteServiceManager;->mGcPrefixs:[Ljava/lang/String;

    .line 20
    sput-object v4, Lcom/android/phone/LocationRemoteServiceManager;->mService:Lcom/hiapk/service/place/IRemoteFindPlace;

    .line 21
    sput-object v4, Lcom/android/phone/LocationRemoteServiceManager;->mService2:Lcom/hiapk/service/placeupdate/IRemoteFindPlace;

    .line 25
    sput-boolean v3, Lcom/android/phone/LocationRemoteServiceManager;->isUpdated:Z

    .line 26
    sput-boolean v3, Lcom/android/phone/LocationRemoteServiceManager;->mLocationEnabled:Z

    .line 27
    sput-boolean v3, Lcom/android/phone/LocationRemoteServiceManager;->serviceConnected:Z

    .line 31
    new-instance v0, Lcom/android/phone/LocationRemoteServiceManager$1;

    invoke-direct {v0}, Lcom/android/phone/LocationRemoteServiceManager$1;-><init>()V

    sput-object v0, Lcom/android/phone/LocationRemoteServiceManager;->mConnection:Landroid/content/ServiceConnection;

    .line 44
    sput-boolean v3, Lcom/android/phone/LocationRemoteServiceManager;->serviceUpdateConnected:Z

    .line 45
    new-instance v0, Lcom/android/phone/LocationRemoteServiceManager$2;

    invoke-direct {v0}, Lcom/android/phone/LocationRemoteServiceManager$2;-><init>()V

    sput-object v0, Lcom/android/phone/LocationRemoteServiceManager;->mConnectionUpdate:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    sput-boolean p0, Lcom/android/phone/LocationRemoteServiceManager;->serviceConnected:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    sput-boolean p0, Lcom/android/phone/LocationRemoteServiceManager;->serviceUpdateConnected:Z

    return p0
.end method

.method public static destroy(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/phone/LocationRemoteServiceManager;->serviceConnected:Z

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/android/phone/LocationRemoteServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 100
    :cond_0
    sget-boolean v0, Lcom/android/phone/LocationRemoteServiceManager;->serviceUpdateConnected:Z

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Lcom/android/phone/LocationRemoteServiceManager;->mConnectionUpdate:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 103
    :cond_1
    return-void
.end method

.method private doNotify()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public static getLocInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNumber"

    .prologue
    const/4 v6, 0x1

    const-string v4, "$PL"

    const-string v4, " val return = "

    const-string v7, "LocationRemoteServiceManager"

    .line 113
    const-string v2, ""

    .line 115
    .local v2, val:Ljava/lang/String;
    sget-object v4, Lcom/android/phone/LocationRemoteServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_service_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 117
    .local v1, locationEnabled:I
    if-eq v1, v6, :cond_0

    .line 118
    const-string v4, "LocationRemoteServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getLocInfo locationEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 144
    .end local v2           #val:Ljava/lang/String;
    .local v3, val:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 121
    .end local v3           #val:Ljava/lang/String;
    .restart local v2       #val:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/android/phone/LocationRemoteServiceManager;->removeIpPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 122
    invoke-static {p0}, Lcom/android/phone/LocationRemoteServiceManager;->removeGcCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 123
    const-string v4, "LocationRemoteServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getLocInfo isUpdated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/phone/LocationRemoteServiceManager;->isUpdated:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " service1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/LocationRemoteServiceManager;->mService:Lcom/hiapk/service/place/IRemoteFindPlace;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mService2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/LocationRemoteServiceManager;->mService2:Lcom/hiapk/service/placeupdate/IRemoteFindPlace;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :try_start_0
    sget-boolean v4, Lcom/android/phone/LocationRemoteServiceManager;->isUpdated:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/phone/LocationRemoteServiceManager;->serviceConnected:Z

    if-eqz v4, :cond_2

    .line 126
    sget-object v4, Lcom/android/phone/LocationRemoteServiceManager;->mService:Lcom/hiapk/service/place/IRemoteFindPlace;

    const-string v5, "$PL"

    invoke-interface {v4, p0, v5}, Lcom/hiapk/service/place/IRemoteFindPlace;->findPlace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    if-nez v2, :cond_1

    .line 128
    const-string v4, "LocationRemoteServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " val return = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_1
    :goto_1
    const-string v4, "LocationRemoteServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getLocInfo val = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 144
    .end local v2           #val:Ljava/lang/String;
    .restart local v3       #val:Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v3           #val:Ljava/lang/String;
    .restart local v2       #val:Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-boolean v4, Lcom/android/phone/LocationRemoteServiceManager;->serviceUpdateConnected:Z

    if-eqz v4, :cond_3

    .line 132
    sget-object v4, Lcom/android/phone/LocationRemoteServiceManager;->mService2:Lcom/hiapk/service/placeupdate/IRemoteFindPlace;

    const-string v5, "$PL"

    invoke-interface {v4, p0, v5}, Lcom/hiapk/service/placeupdate/IRemoteFindPlace;->findPlace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    if-nez v2, :cond_1

    .line 134
    const-string v4, "LocationRemoteServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " val return = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v2, ""

    goto :goto_1

    .line 138
    :cond_3
    const-string v4, "LocationRemoteServiceManager"

    const-string v5, " Service is not connected yet!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 140
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 141
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "LocationRemoteServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>>>>>>>>>getLocInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getUpdateTag(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_updated_location_service"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static isAvailable(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 5
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 71
    sput-object p0, Lcom/android/phone/LocationRemoteServiceManager;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "use_updated_location_service"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, update:I
    if-ne v0, v3, :cond_0

    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/android/phone/LocationRemoteServiceManager;->isUpdated:Z

    .line 75
    sget-boolean v1, Lcom/android/phone/LocationRemoteServiceManager;->isUpdated:Z

    if-nez v1, :cond_2

    .line 76
    sget-boolean v1, Lcom/android/phone/LocationRemoteServiceManager;->serviceConnected:Z

    if-eqz v1, :cond_1

    move v1, v3

    .line 92
    :goto_1
    return v1

    :cond_0
    move v1, v4

    .line 74
    goto :goto_0

    .line 80
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.hiapk.service.place"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/LocationRemoteServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :goto_2
    move v1, v3

    .line 92
    goto :goto_1

    .line 84
    :cond_2
    sget-boolean v1, Lcom/android/phone/LocationRemoteServiceManager;->serviceUpdateConnected:Z

    if-eqz v1, :cond_3

    move v1, v3

    .line 85
    goto :goto_1

    .line 87
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.hiapk.service.placeupdate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/LocationRemoteServiceManager;->mConnectionUpdate:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_2
.end method

.method public static removeGcCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 148
    move-object v4, p0

    .line 149
    .local v4, removed:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 150
    sget-object v0, Lcom/android/phone/LocationRemoteServiceManager;->mGcPrefixs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 151
    .local v3, prefix:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 157
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #prefix:Ljava/lang/String;
    :cond_0
    return-object v4

    .line 150
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #prefix:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static removeIpPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "number"

    .prologue
    const-string v8, "LocationRemoteServiceManager"

    const-string v7, ""

    .line 162
    const-string v4, "LocationRemoteServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v1, ""

    .local v1, number_without_hyphen:Ljava/lang/String;
    const-string v2, ""

    .line 167
    .local v2, number_without_ip_prefix:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->RemoveHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    sget-object v4, Lcom/android/phone/LocationRemoteServiceManager;->mContext:Landroid/content/Context;

    const-string v5, "IP_PREFIX"

    sget-object v6, Lcom/android/phone/LocationRemoteServiceManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 171
    .local v3, shareddata:Landroid/content/SharedPreferences;
    const-string v4, "ip_prefix"

    const-string v5, ""

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, ip_prefix:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 173
    const-string v4, "LocationRemoteServiceManager"

    const-string v4, "no ip_prefix"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 185
    :goto_0
    return-object v4

    .line 177
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    const-string v4, ""

    invoke-virtual {v1, v0, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v4, v2

    .line 185
    goto :goto_0

    .line 182
    :cond_1
    move-object v2, v1

    goto :goto_1
.end method
