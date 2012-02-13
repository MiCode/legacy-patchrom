.class Lcom/vzw/location/VzwGpsStatus$1;
.super Ljava/lang/Object;
.source "VzwGpsStatus.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsStatus;
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
        "Lcom/vzw/location/VzwGpsSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwGpsStatus;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwGpsStatus;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsStatus$1;->this$0:Lcom/vzw/location/VzwGpsStatus;

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
            "Lcom/vzw/location/VzwGpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus$1;->this$0:Lcom/vzw/location/VzwGpsStatus;

    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus$1;->this$0:Lcom/vzw/location/VzwGpsStatus;

    #getter for: Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;
    invoke-static {v2}, Lcom/vzw/location/VzwGpsStatus;->access$000(Lcom/vzw/location/VzwGpsStatus;)[Lcom/vzw/location/VzwGpsSatellite;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;-><init>(Lcom/vzw/location/VzwGpsStatus;[Lcom/vzw/location/VzwGpsSatellite;)V

    return-object v0
.end method
