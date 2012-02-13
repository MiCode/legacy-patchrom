.class Lcom/vzw/location/VzwGpsDeviceStatus$1;
.super Ljava/lang/Object;
.source "VzwGpsDeviceStatus.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsDeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/vzw/location/VzwGpsSatelliteStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwGpsDeviceStatus;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$1;->this$0:Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/vzw/location/VzwGpsSatelliteStatus;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$1;->this$0:Lcom/vzw/location/VzwGpsDeviceStatus;

    iget-object v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus$1;->this$0:Lcom/vzw/location/VzwGpsDeviceStatus;

    #getter for: Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;
    invoke-static {v2}, Lcom/vzw/location/VzwGpsDeviceStatus;->access$000(Lcom/vzw/location/VzwGpsDeviceStatus;)[Lcom/vzw/location/VzwGpsSatelliteStatus;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;-><init>(Lcom/vzw/location/VzwGpsDeviceStatus;[Lcom/vzw/location/VzwGpsSatelliteStatus;)V

    return-object v0
.end method
