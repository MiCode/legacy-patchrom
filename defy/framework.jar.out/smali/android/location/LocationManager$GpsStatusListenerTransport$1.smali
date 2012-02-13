.class Landroid/location/LocationManager$GpsStatusListenerTransport$1;
.super Landroid/os/Handler;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GpsStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$GpsStatusListenerTransport;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    #getter for: Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/location/LocationManager$GpsStatusListenerTransport;->access$300(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    #getter for: Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/location/LocationManager$GpsStatusListenerTransport;->access$300(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v4, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    #getter for: Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/location/LocationManager$GpsStatusListenerTransport;->access$300(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;

    .local v2, nmea:Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;
    iget-object v4, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    #getter for: Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;
    invoke-static {v4}, Landroid/location/LocationManager$GpsStatusListenerTransport;->access$400(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$NmeaListener;

    move-result-object v4

    iget-wide v5, v2, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;->mTimestamp:J

    iget-object v7, v2, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;->mNmea:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Landroid/location/GpsStatus$NmeaListener;->onNmeaReceived(JLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #nmea:Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;
    :cond_0
    iget-object v4, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    #getter for: Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/location/LocationManager$GpsStatusListenerTransport;->access$300(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    monitor-exit v3

    .end local v0           #i:I
    .end local v1           #length:I
    :goto_1
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    iget-object v3, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    iget-object v3, v3, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #getter for: Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;
    invoke-static {v3}, Landroid/location/LocationManager;->access$200(Landroid/location/LocationManager;)Landroid/location/GpsStatus;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    #getter for: Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;
    invoke-static {v4}, Landroid/location/LocationManager$GpsStatusListenerTransport;->access$500(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$Listener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-interface {v4, v5}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4
.end method
