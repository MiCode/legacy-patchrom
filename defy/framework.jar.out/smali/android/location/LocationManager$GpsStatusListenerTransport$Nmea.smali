.class Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GpsStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Nmea"
.end annotation


# instance fields
.field mNmea:Ljava/lang/String;

.field mTimestamp:J

.field final synthetic this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$GpsStatusListenerTransport;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "timestamp"
    .parameter "nmea"

    .prologue
    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;->mTimestamp:J

    iput-object p4, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;->mNmea:Ljava/lang/String;

    return-void
.end method
