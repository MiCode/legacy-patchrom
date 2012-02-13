.class public abstract Landroid/location/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# static fields
.field public static final AVAILABLE:I = 0x2

.field static final BAD_CHARS_REGEX:Ljava/lang/String; = "[^a-zA-Z0-9]"

.field public static final OUT_OF_SERVICE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocationProvider"

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mService:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/ILocationManager;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[^a-zA-Z0-9]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains an illegal character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/location/LocationProvider;->mService:Landroid/location/ILocationManager;

    return-void
.end method


# virtual methods
.method public abstract getAccuracy()I
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPowerRequirement()I
.end method

.method public abstract hasMonetaryCost()Z
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 3
    .parameter "criteria"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationProvider;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/location/ILocationManager;->providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProvider"

    const-string v2, "meetsCriteria: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract requiresCell()Z
.end method

.method public abstract requiresNetwork()Z
.end method

.method public abstract requiresSatellite()Z
.end method

.method public abstract supportsAltitude()Z
.end method

.method public abstract supportsBearing()Z
.end method

.method public abstract supportsSpeed()Z
.end method
