.class public Lcom/vzw/location/VzwLocationManagerService;
.super Lcom/vzw/location/IVzwLocationManager$Stub;
.source "VzwLocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;,
        Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACCESS_GPS_PERMISSION:Ljava/lang/String; = "com.vzw.location.ACCESS_GPS_PERMISSION"

.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field private static final DEBUG:Z = true

.field private static final MESSAGE_LOCATION_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VzwLocationMgrService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "VzwLocationMgrService"

.field private static sProvidersLoaded:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

.field private mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkState:I

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vzw/location/VzwLocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vzw/location/VzwLocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mPublicKey:Ljava/security/PublicKey;

.field private mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mVerifiedUids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vzw/location/VzwLocationManagerService;->sProvidersLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/vzw/location/IVzwLocationManager$Stub;-><init>()V

    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKey:Ljava/security/PublicKey;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I

    new-instance v0, Lcom/vzw/location/VzwLocationManagerService$1;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwLocationManagerService$1;-><init>(Lcom/vzw/location/VzwLocationManagerService;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v0, "VzwLocationMgrService"

    const-string v1, "Constructed VzwLocationManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private _getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "provider"

    .prologue
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationProviderProxy;

    .local v1, p:Lcom/vzw/location/VzwLocationProviderProxy;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v2, "network"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->requiresNetwork()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "satellite"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->requiresSatellite()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "cell"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->requiresCell()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "cost"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->hasMonetaryCost()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "altitude"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->supportsAltitude()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "speed"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->supportsSpeed()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "bearing"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->supportsBearing()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "power"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->getPowerRequirement()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "accuracy"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->getAccuracy()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    goto :goto_0
.end method

.method private _getProvidersLocked(Z)Ljava/util/List;
    .locals 6
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v4, "VzwLocationMgrService"

    const-string v5, "getProviders()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwLocationProviderProxy;

    .local v3, p:Lcom/vzw/location/VzwLocationProviderProxy;
    invoke-virtual {v3}, Lcom/vzw/location/VzwLocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, name:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #name:Ljava/lang/String;
    .end local v3           #p:Lcom/vzw/location/VzwLocationProviderProxy;
    :cond_2
    return-object v2
.end method

.method private _isProviderEnabledLocked(Ljava/lang/String;)Z
    .locals 4
    .parameter "provider"

    .prologue
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationProviderProxy;

    .local v0, p:Lcom/vzw/location/VzwLocationProviderProxy;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p==null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private _requestLocationUpdates(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V
    .locals 2
    .parameter "criteria"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v0, p1, p2}, Lcom/vzw/location/VzwGpsReqMgr;->addRequest(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "requestLocationUpdates(): no prior GPS_EVENT_INIT_PASS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/vzw/location/VzwLocationManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vzw/location/VzwLocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->updateProvidersLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/vzw/location/VzwLocationManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwGpsReqMgr;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vzw/location/VzwLocationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I

    return v0
.end method

.method static synthetic access$702(Lcom/vzw/location/VzwLocationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I

    return p1
.end method

.method static synthetic access$800(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addProvider(Lcom/vzw/location/VzwLocationProviderProxy;)V
    .locals 2
    .parameter "provider"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/vzw/location/VzwLocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private checkCerts([Ljava/security/cert/Certificate;Ljava/security/PublicKey;)Z
    .locals 4
    .parameter "certs"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    array-length v3, p1

    if-ge v2, v3, :cond_2

    :try_start_0
    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    goto :goto_2
.end method

.method private checkPermissionsSafe(Ljava/lang/String;)V
    .locals 9
    .parameter "provider"

    .prologue
    const-string v8, "Provider "

    const-string v7, ": permission denied!"

    const-string v6, "VzwLocationMgrService"

    const-string v5, "Error validating certificate"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, callingUID:I
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VzwLocationMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": permission denied!"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": permission denied!"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKey:Ljava/security/PublicKey;

    if-nez v2, :cond_1

    const-string v2, "/system/etc/vzwpubagps.cer"

    invoke-direct {p0, v2}, Lcom/vzw/location/VzwLocationManagerService;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKey:Ljava/security/PublicKey;

    :cond_1
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->getApplicationInfo()[Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, AppInfo:[Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKey:Ljava/security/PublicKey;

    invoke-direct {p0, v0, v2}, Lcom/vzw/location/VzwLocationManagerService;->verifyPackageCertificate([Landroid/content/pm/ApplicationInfo;Ljava/security/PublicKey;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "VzwLocationMgrService"

    const-string v2, "Error validating certificate"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Error validating certificate"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #AppInfo:[Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "VzwLocationMgrService"

    const-string v2, "Error validating certificate"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Error validating certificate"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "VzwLocationMgrService"

    const-string v2, "Application signature verified"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getApplicationInfo()[Landroid/content/pm/ApplicationInfo;
    .locals 10

    .prologue
    const-string v9, "VzwLocationMgrService"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, callingUid:I
    iget-object v6, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, mPackageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .local v5, packname:[Ljava/lang/String;
    array-length v6, v5

    new-array v0, v6, [Landroid/content/pm/ApplicationInfo;

    .local v0, AppInfo:[Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v5

    if-ge v3, v6, :cond_0

    :try_start_0
    const-string v6, "VzwLocationMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v6, v5, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    aput-object v6, v0, v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v2, v6

    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "VzwLocationMgrService"

    const-string v6, "PackageName not found! Exception"

    invoke-static {v9, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-object v0
.end method

.method private getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 11
    .parameter "certPath"

    .prologue
    const-string v10, "IOException, closing files "

    const-string v9, "VzwLocationMgrService"

    const/4 v6, 0x0

    .local v6, key:Ljava/security/PublicKey;
    const/4 v4, 0x0

    .local v4, input:Ljava/io/FileInputStream;
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, certFile:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .end local v4           #input:Ljava/io/FileInputStream;
    .local v5, input:Ljava/io/FileInputStream;
    :try_start_1
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .local v2, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .local v0, cert:Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v6

    move-object v4, v5

    .end local v0           #cert:Ljava/security/cert/Certificate;
    .end local v1           #certFile:Ljava/io/File;
    .end local v2           #cf:Ljava/security/cert/CertificateFactory;
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :cond_0
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_1
    :goto_0
    return-object v6

    :catch_0
    move-exception v7

    move-object v3, v7

    .local v3, e:Ljava/security/cert/CertificateException;
    :goto_1
    :try_start_3
    const-string v7, "VzwLocationMgrService"

    const-string v8, "CertificateException, Encoding errors"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    const-string v7, "VzwLocationMgrService"

    const-string v7, "IOException, closing files "

    :goto_2
    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v3, v7

    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v7, "VzwLocationMgrService"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    const-string v7, "VzwLocationMgrService"

    const-string v7, "IOException, closing files "

    goto :goto_2

    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    move-object v3, v7

    .restart local v3       #e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v7, "VzwLocationMgrService"

    const-string v8, "IOException, reading files "

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_1

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    :catch_5
    move-exception v3

    const-string v7, "VzwLocationMgrService"

    const-string v7, "IOException, closing files "

    goto :goto_2

    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v4, :cond_2

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_2
    :goto_6
    throw v7

    :catch_6
    move-exception v3

    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "VzwLocationMgrService"

    const-string v8, "IOException, closing files "

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .end local v3           #e:Ljava/io/IOException;
    :catch_7
    move-exception v3

    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "VzwLocationMgrService"

    const-string v7, "IOException, closing files "

    goto :goto_2

    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v1       #certFile:Ljava/io/File;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_8
    move-exception v7

    move-object v3, v7

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_9
    move-exception v7

    move-object v3, v7

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_a
    move-exception v7

    move-object v3, v7

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private initialize()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .local v8, powerManager:Landroid/os/PowerManager;
    const-string v1, "VzwLocationMgrService"

    invoke-virtual {v8, v12, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->loadProviders()V

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string v3, "vzw_lbs"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vzw/location/VzwLocationProviderProxy;

    .local v7, p:Lcom/vzw/location/VzwLocationProviderProxy;
    new-instance v1, Lcom/vzw/location/VzwGpsReqMgr;

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v1, v3, v7, v4}, Lcom/vzw/location/VzwGpsReqMgr;-><init>(Lcom/vzw/location/IVzwGpsStatusProvider;Lcom/vzw/location/VzwLocationProviderProxy;Landroid/os/PowerManager$WakeLock;)V

    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->updateProviders()V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v12, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "location_providers_allowed"

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, settingsCursor:Landroid/database/Cursor;
    if-nez v9, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "settingsCursor==null in initialize()"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    invoke-direct {v1, v9, v3, v12, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    new-instance v10, Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;

    invoke-direct {v10, p0, v2}, Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;-><init>(Lcom/vzw/location/VzwLocationManagerService;Lcom/vzw/location/VzwLocationManagerService$1;)V

    .local v10, settingsObserver:Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v10}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method private isAllowedBySettingsLocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "provider"

    .prologue
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isAllowedProviderSafe(Ljava/lang/String;)Z
    .locals 2
    .parameter "provider"

    .prologue
    const-string v0, "vzw_lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.vzw.location.ACCESS_GPS_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadProviders()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/vzw/location/VzwLocationManagerService;->sProvidersLoaded:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->loadProvidersLocked()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/vzw/location/VzwLocationManagerService;->sProvidersLoaded:Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadProvidersLocked()V
    .locals 5

    .prologue
    :try_start_0
    invoke-static {}, Lcom/vzw/location/VzwGpsLocationProvider;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/vzw/location/VzwGpsLocationProvider;

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/vzw/location/VzwGpsLocationProvider;-><init>(Landroid/content/Context;Lcom/vzw/location/IVzwLocationManager;)V

    .local v2, provider:Lcom/vzw/location/VzwGpsLocationProvider;
    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsLocationProvider;->getGpsStatusProvider()Lcom/vzw/location/IVzwGpsStatusProvider;

    move-result-object v3

    iput-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    new-instance v1, Lcom/vzw/location/VzwLocationProviderProxy;

    const-string v3, "vzw_lbs"

    invoke-direct {v1, v3, v2}, Lcom/vzw/location/VzwLocationProviderProxy;-><init>(Ljava/lang/String;Lcom/vzw/location/IVzwLocationProvider;)V

    .local v1, p:Lcom/vzw/location/VzwLocationProviderProxy;
    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocationManagerService;->addProvider(Lcom/vzw/location/VzwLocationProviderProxy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #p:Lcom/vzw/location/VzwLocationProviderProxy;
    .end local v2           #provider:Lcom/vzw/location/VzwGpsLocationProvider;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VzwLocationMgrService"

    const-string v4, "exception loading providers:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeProvider(Lcom/vzw/location/VzwLocationProviderProxy;)V
    .locals 2
    .parameter "provider"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/vzw/location/VzwLocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/vzw/location/VzwLocationProviderProxy;->unlinkProvider()V

    return-void
.end method

.method private updateProviderListenersLocked(Lcom/vzw/location/VzwLocationProviderProxy;Z)V
    .locals 2
    .parameter "p"
    .parameter "enabled"

    .prologue
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/vzw/location/VzwLocationProviderProxy;->enable()V

    :goto_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {p1}, Lcom/vzw/location/VzwLocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-virtual {p1, v0, v0}, Lcom/vzw/location/VzwLocationProviderProxy;->enableLocationTracking(ZZ)V

    invoke-virtual {p1}, Lcom/vzw/location/VzwLocationProviderProxy;->disable()V

    goto :goto_0
.end method

.method private updateProviders()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->updateProvidersLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateProvidersLocked()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const-string v9, "VzwLocationMgrService"

    :try_start_0
    iget-object v6, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v1, v6, v7

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    iget-object v6, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vzw/location/VzwLocationProviderProxy;

    .local v4, p:Lcom/vzw/location/VzwLocationProviderProxy;
    invoke-virtual {v4}, Lcom/vzw/location/VzwLocationProviderProxy;->isEnabled()Z

    move-result v2

    .local v2, isEnabled:Z
    invoke-virtual {v4}, Lcom/vzw/location/VzwLocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v3

    .local v3, name:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v5

    .local v5, shouldBeEnabled:Z
    if-eqz v2, :cond_1

    if-nez v5, :cond_1

    const-string v6, "VzwLocationMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateProvidersLocked() disable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lcom/vzw/location/VzwLocationManagerService;->updateProviderListenersLocked(Lcom/vzw/location/VzwLocationProviderProxy;Z)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_0

    if-eqz v5, :cond_0

    const-string v6, "VzwLocationMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateProvidersLocked() enable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/vzw/location/VzwLocationManagerService;->updateProviderListenersLocked(Lcom/vzw/location/VzwLocationProviderProxy;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #isEnabled:Z
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #p:Lcom/vzw/location/VzwLocationProviderProxy;
    .end local v5           #shouldBeEnabled:Z
    :catch_0
    move-exception v6

    move-object v0, v6

    .local v0, e:Ljava/lang/Exception;
    const-string v6, "VzwLocationMgrService"

    const-string v6, "exception updating providers:"

    invoke-static {v9, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private verifyPackageCertificate([Landroid/content/pm/ApplicationInfo;Ljava/security/PublicKey;)Z
    .locals 17
    .parameter "AppInfo"
    .parameter "key"

    .prologue
    const/4 v12, 0x0

    .local v12, packageVerified:Z
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    if-ge v7, v14, :cond_2

    const/4 v9, 0x0

    .local v9, jarFile:Ljava/util/jar/JarFile;
    const/4 v4, 0x0

    .local v4, certs:[Ljava/security/cert/Certificate;
    const/16 v14, 0x2000

    :try_start_0
    new-array v13, v14, [B

    .local v13, readBuffer:[B
    aget-object v14, p1, v7

    iget-object v6, v14, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .local v6, fName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, ApkName:Ljava/io/File;
    new-instance v10, Ljava/util/jar/JarFile;

    const/4 v14, 0x1

    invoke-direct {v10, v3, v14}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    .end local v9           #jarFile:Ljava/util/jar/JarFile;
    .local v10, jarFile:Ljava/util/jar/JarFile;
    :try_start_1
    const-string v14, "AndroidManifest.xml"

    invoke-virtual {v10, v14}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v11

    .local v11, je:Ljava/util/jar/JarEntry;
    if-eqz v11, :cond_4

    invoke-virtual {v10, v11}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f

    move-result-object v8

    .local v8, is:Ljava/io/InputStream;
    if-eqz v8, :cond_1

    :cond_0
    const/4 v14, 0x0

    :try_start_2
    array-length v15, v13

    invoke-virtual {v8, v13, v14, v15}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_0

    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/vzw/location/VzwLocationManagerService;->checkCerts([Ljava/security/cert/Certificate;Ljava/security/PublicKey;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v10, :cond_2

    :try_start_4
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d

    .end local v3           #ApkName:Ljava/io/File;
    .end local v4           #certs:[Ljava/security/cert/Certificate;
    .end local v6           #fName:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #is:Ljava/io/InputStream;
    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    .end local v11           #je:Ljava/util/jar/JarEntry;
    .end local v13           #readBuffer:[B
    :cond_2
    :goto_1
    return v12

    .restart local v3       #ApkName:Ljava/io/File;
    .restart local v4       #certs:[Ljava/security/cert/Certificate;
    .restart local v6       #fName:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v10       #jarFile:Ljava/util/jar/JarFile;
    .restart local v11       #je:Ljava/util/jar/JarEntry;
    .restart local v13       #readBuffer:[B
    :catchall_0
    move-exception v14

    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    throw v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/security/SignatureException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f

    .end local v8           #is:Ljava/io/InputStream;
    .end local v11           #je:Ljava/util/jar/JarEntry;
    :catch_0
    move-exception v14

    move-object v5, v14

    move-object v9, v10

    .end local v3           #ApkName:Ljava/io/File;
    .end local v6           #fName:Ljava/lang/String;
    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    .end local v13           #readBuffer:[B
    .local v5, e:Ljava/security/cert/CertificateException;
    .restart local v9       #jarFile:Ljava/util/jar/JarFile;
    :goto_2
    :try_start_6
    const-string v14, "VzwLocationMgrService"

    const-string v15, "CertificateException, encoding errors"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v9, :cond_3

    :try_start_7
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    .end local v5           #e:Ljava/security/cert/CertificateException;
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v9           #jarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ApkName:Ljava/io/File;
    .restart local v6       #fName:Ljava/lang/String;
    .restart local v10       #jarFile:Ljava/util/jar/JarFile;
    .restart local v11       #je:Ljava/util/jar/JarEntry;
    .restart local v13       #readBuffer:[B
    :cond_4
    if-eqz v10, :cond_5

    :try_start_8
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e

    :cond_5
    :goto_4
    move-object v9, v10

    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    .restart local v9       #jarFile:Ljava/util/jar/JarFile;
    goto :goto_3

    .end local v3           #ApkName:Ljava/io/File;
    .end local v6           #fName:Ljava/lang/String;
    .end local v11           #je:Ljava/util/jar/JarEntry;
    .end local v13           #readBuffer:[B
    :catch_1
    move-exception v14

    move-object v5, v14

    .local v5, e:Ljava/security/NoSuchAlgorithmException;
    :goto_5
    :try_start_9
    const-string v14, "VzwLocationMgrService"

    const-string v15, "NoSuchAlgorithmException, unsupported algorithm"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v9, :cond_3

    :try_start_a
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    :catch_2
    move-exception v5

    .local v5, e:Ljava/io/IOException;
    const-string v14, "VzwLocationMgrService"

    const-string v15, "IOException, closing files "

    :goto_6
    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v5           #e:Ljava/io/IOException;
    :catch_3
    move-exception v14

    move-object v5, v14

    .local v5, e:Ljava/security/InvalidKeyException;
    :goto_7
    :try_start_b
    const-string v14, "VzwLocationMgrService"

    const-string v15, "InvalidKeyException, InvalidKey is detected"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v9, :cond_3

    :try_start_c
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_3

    :catch_4
    move-exception v5

    .local v5, e:Ljava/io/IOException;
    const-string v14, "VzwLocationMgrService"

    const-string v15, "IOException, closing files "

    goto :goto_6

    .end local v5           #e:Ljava/io/IOException;
    :catch_5
    move-exception v14

    move-object v5, v14

    .local v5, e:Ljava/security/NoSuchProviderException;
    :goto_8
    :try_start_d
    const-string v14, "VzwLocationMgrService"

    const-string v15, "NoSuchProviderException, no default signature provider"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v9, :cond_3

    :try_start_e
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_3

    :catch_6
    move-exception v5

    .local v5, e:Ljava/io/IOException;
    const-string v14, "VzwLocationMgrService"

    const-string v15, "IOException, closing files "

    goto :goto_6

    .end local v5           #e:Ljava/io/IOException;
    :catch_7
    move-exception v14

    move-object v5, v14

    .local v5, e:Ljava/security/SignatureException;
    :goto_9
    :try_start_f
    const-string v14, "VzwLocationMgrService"

    const-string v15, "SignatureException, signature errors detected "

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v9, :cond_3

    :try_start_10
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_3

    :catch_8
    move-exception v5

    .local v5, e:Ljava/io/IOException;
    const-string v14, "VzwLocationMgrService"

    const-string v15, "IOException, closing files "

    goto :goto_6

    .end local v5           #e:Ljava/io/IOException;
    :catch_9
    move-exception v14

    move-object v5, v14

    .restart local v5       #e:Ljava/io/IOException;
    :goto_a
    :try_start_11
    const-string v14, "VzwLocationMgrService"

    const-string v15, "IOException, reading files "

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v9, :cond_3

    :try_start_12
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_3

    :catch_a
    move-exception v5

    const-string v14, "VzwLocationMgrService"

    const-string v15, "IOException, closing files "

    goto :goto_6

    .end local v5           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v14

    :goto_b
    if-eqz v9, :cond_6

    :try_start_13
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    :cond_6
    :goto_c
    throw v14

    :catch_b
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    const-string v15, "VzwLocationMgrService"

    const-string v16, "IOException, closing files "

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .local v5, e:Ljava/security/cert/CertificateException;
    :catch_c
    move-exception v5

    .local v5, e:Ljava/io/IOException;
    const-string v14, "VzwLocationMgrService"

    const-string v15, "IOException, closing files "

    goto :goto_6

    .end local v5           #e:Ljava/io/IOException;
    .end local v9           #jarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ApkName:Ljava/io/File;
    .restart local v6       #fName:Ljava/lang/String;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v10       #jarFile:Ljava/util/jar/JarFile;
    .restart local v11       #je:Ljava/util/jar/JarEntry;
    .restart local v13       #readBuffer:[B
    :catch_d
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    const-string v14, "VzwLocationMgrService"

    const-string v15, "IOException, closing files "

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v5           #e:Ljava/io/IOException;
    .end local v8           #is:Ljava/io/InputStream;
    :catch_e
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    const-string v14, "VzwLocationMgrService"

    const-string v15, "IOException, closing files "

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .end local v5           #e:Ljava/io/IOException;
    .end local v11           #je:Ljava/util/jar/JarEntry;
    :catchall_2
    move-exception v14

    move-object v9, v10

    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    .restart local v9       #jarFile:Ljava/util/jar/JarFile;
    goto :goto_b

    .end local v9           #jarFile:Ljava/util/jar/JarFile;
    .restart local v10       #jarFile:Ljava/util/jar/JarFile;
    :catch_f
    move-exception v14

    move-object v5, v14

    move-object v9, v10

    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    .restart local v9       #jarFile:Ljava/util/jar/JarFile;
    goto :goto_a

    .end local v9           #jarFile:Ljava/util/jar/JarFile;
    .restart local v10       #jarFile:Ljava/util/jar/JarFile;
    :catch_10
    move-exception v14

    move-object v5, v14

    move-object v9, v10

    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    .restart local v9       #jarFile:Ljava/util/jar/JarFile;
    goto :goto_9

    .end local v9           #jarFile:Ljava/util/jar/JarFile;
    .restart local v10       #jarFile:Ljava/util/jar/JarFile;
    :catch_11
    move-exception v14

    move-object v5, v14

    move-object v9, v10

    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    .restart local v9       #jarFile:Ljava/util/jar/JarFile;
    goto :goto_8

    .end local v9           #jarFile:Ljava/util/jar/JarFile;
    .restart local v10       #jarFile:Ljava/util/jar/JarFile;
    :catch_12
    move-exception v14

    move-object v5, v14

    move-object v9, v10

    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    .restart local v9       #jarFile:Ljava/util/jar/JarFile;
    goto/16 :goto_7

    .end local v9           #jarFile:Ljava/util/jar/JarFile;
    .restart local v10       #jarFile:Ljava/util/jar/JarFile;
    :catch_13
    move-exception v14

    move-object v5, v14

    move-object v9, v10

    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    .restart local v9       #jarFile:Ljava/util/jar/JarFile;
    goto/16 :goto_5

    .end local v3           #ApkName:Ljava/io/File;
    .end local v6           #fName:Ljava/lang/String;
    .end local v13           #readBuffer:[B
    :catch_14
    move-exception v14

    move-object v5, v14

    goto/16 :goto_2
.end method


# virtual methods
.method public addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)Z
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const-string v1, "VzwLocationMgrService"

    const-string v0, "VzwLocationMgrService"

    const-string v0, "addVzwGpsStatusListener()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    if-nez v0, :cond_0

    const-string v0, "VzwLocationMgrService"

    const-string v0, "startSession(): mGpsStatusProvider==null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addVzwGpsStatusListener(): listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v0, p1}, Lcom/vzw/location/VzwGpsReqMgr;->addStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VzwLocationMgrService"

    const-string v0, "addVzwGpsStatusListener(): mReqMgr.addStatusListener() failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getNumListeners()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsReqMgr;->getNumRequests()I

    move-result v0

    return v0
.end method

.method public getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "provider"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->_getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    monitor-exit v2

    move-object v2, v3

    :goto_0
    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VzwLocationMgrService"

    const-string v3, "getProviderInfo() exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 4
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->_getProvidersLocked(Z)Ljava/util/List;

    move-result-object v3

    monitor-exit v2

    move-object v2, v3

    :goto_0
    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VzwLocationMgrService"

    const-string v3, "getProviders() exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "provider"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->_isProviderEnabledLocked(Ljava/lang/String;)Z

    move-result v3

    monitor-exit v2

    move v2, v3

    :goto_0
    return v2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VzwLocationMgrService"

    const-string v3, "isProviderEnabled() exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public locationCallbackFinished(Lcom/vzw/location/IVzwLocationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    const-string v0, "VzwLocationMgrService"

    const-string v1, "locationCallbackFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsReqMgr;->locationCallbackFinished()V

    return-void
.end method

.method public removeUpdates(Lcom/vzw/location/IVzwLocationListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const-string v4, "VzwLocationMgrService"

    const-string v2, "VzwLocationMgrService"

    const-string v2, "removeUpdates()"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vzw/location/VzwGpsReqMgr;->removeRequest(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VzwLocationMgrService"

    const-string v2, "removeUpdates() exception: "

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    const-string v0, "VzwLocationMgrService"

    const-string v1, "removeVzwGpsStatusListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v0, p1}, Lcom/vzw/location/VzwGpsReqMgr;->removeStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V

    return-void
.end method

.method public reportLocation(Lcom/vzw/location/VzwLocation;)V
    .locals 6
    .parameter "location"

    .prologue
    const/4 v5, 0x1

    const-string v1, "VzwLocationMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportLocation(): time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v5, p1}, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    invoke-static {v1, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V
    .locals 7
    .parameter "provider"
    .parameter "criteria"
    .parameter "listener"

    .prologue
    const-string v6, "VzwLocationMgrService"

    const-string v2, "VzwLocationMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLocationUpdates(): listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "VzwLocationMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLocationUpdates(): fix mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsReqMgr;->getRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v1

    .local v1, oldReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "requestLocationUpdates(): no criteria set previously"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1           #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_1
    const-string v3, "null"

    goto :goto_0

    .restart local v1       #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_2
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object p2

    .end local v1           #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_3
    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v0

    .local v0, fixRate:Lcom/vzw/location/VzwGpsFixRate;
    if-nez v0, :cond_4

    const-string v2, "VzwLocationMgrService"

    const-string v2, "fixRate==null in requestLocationUpdates()"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    .end local v0           #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate;-><init>()V

    .restart local v0       #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vzw/location/VzwGpsFixRate;->setGpsFixRate(JJ)V

    invoke-virtual {p2, v0}, Lcom/vzw/location/VzwCriteria;->setFixRate(Lcom/vzw/location/VzwGpsFixRate;)V

    :cond_4
    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "VzwLocationMgrService"

    const-string v2, "perf==null in requestLocationUpdates()"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/vzw/location/VzwGpsPerformance;

    invoke-direct {v2}, Lcom/vzw/location/VzwGpsPerformance;-><init>()V

    invoke-virtual {p2, v2}, Lcom/vzw/location/VzwCriteria;->setPerformance(Lcom/vzw/location/VzwGpsPerformance;)V

    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/vzw/location/VzwLocationManagerService;->_requestLocationUpdates(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V

    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V
    .locals 8
    .parameter "provider"
    .parameter "criteria"
    .parameter "listener"

    .prologue
    const-wide/16 v6, 0x1

    const-string v5, "VzwLocationMgrService"

    const-string v2, "VzwLocationMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSingleLocationUpdate(): listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "VzwLocationMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSingleLocationUpdate(): fix mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsReqMgr;->getRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v1

    .local v1, oldReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "requestSingleLocationUpdate(): no criteria set previously"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1           #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_1
    const-string v3, "null"

    goto :goto_0

    .restart local v1       #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_2
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object p2

    .end local v1           #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_3
    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v0

    .local v0, fixRate:Lcom/vzw/location/VzwGpsFixRate;
    if-nez v0, :cond_4

    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    .end local v0           #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate;-><init>()V

    .restart local v0       #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-virtual {p2, v0}, Lcom/vzw/location/VzwCriteria;->setFixRate(Lcom/vzw/location/VzwGpsFixRate;)V

    :cond_4
    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    const-string v2, "VzwLocationMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSingleLocationUpdate() with numFixes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v6, v7, v2, v3}, Lcom/vzw/location/VzwGpsFixRate;->setGpsFixRate(JJ)V

    invoke-virtual {p2, v0}, Lcom/vzw/location/VzwCriteria;->setFixRate(Lcom/vzw/location/VzwGpsFixRate;)V

    :cond_5
    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, "VzwLocationMgrService"

    const-string v2, "perf==null in requestSingleLocationUpdate()"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/vzw/location/VzwGpsPerformance;

    invoke-direct {v2}, Lcom/vzw/location/VzwGpsPerformance;-><init>()V

    invoke-virtual {p2, v2}, Lcom/vzw/location/VzwCriteria;->setPerformance(Lcom/vzw/location/VzwGpsPerformance;)V

    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/vzw/location/VzwLocationManagerService;->_requestLocationUpdates(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V

    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;-><init>(Lcom/vzw/location/VzwLocationManagerService;Lcom/vzw/location/VzwLocationManagerService$1;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->initialize()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public startAuthentication(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)V
    .locals 2
    .parameter "provider"
    .parameter "configInit"

    .prologue
    const-string v0, "VzwLocationMgrService"

    const-string v1, "startAuthentication()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v0, p2}, Lcom/vzw/location/VzwGpsReqMgr;->startAuthentication(Lcom/vzw/location/VzwGpsConfigInit;)V

    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "VzwLocationManagerService"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
