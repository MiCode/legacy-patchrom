.class Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;
.super Lcom/vzw/location/IVzwGpsStatusListener$Stub;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsStatusListenerTransport"
.end annotation


# instance fields
.field private final mGpsHandler:Landroid/os/Handler;

.field private final mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

.field final synthetic this$0:Lcom/vzw/location/VzwLocationManager;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManager;Lcom/vzw/location/VzwGpsStatus$Listener;)V
    .locals 2
    .parameter
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    invoke-direct {p0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;-><init>()V

    new-instance v0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport$1;-><init>(Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    const-string v0, "VzwLocationManager"

    const-string v1, "set status listener in transport obj"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    return-void
.end method

.method static synthetic access$400(Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;)Lcom/vzw/location/VzwGpsStatus$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    return-object v0
.end method


# virtual methods
.method public onAuthStatusChanged(II)V
    .locals 3
    .parameter "clientId"
    .parameter "authStatus"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    const-string v1, "VzwLocationManager"

    const-string v2, "AUTH STATUS"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDeviceStatusChanged(ZI[I[FII)V
    .locals 9
    .parameter "engineOn"
    .parameter "svCount"
    .parameter "prns"
    .parameter "snrs"
    .parameter "ephemerisMask"
    .parameter "almanacMask"

    .prologue
    const/16 v8, 0x19

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    move v6, v0

    .local v6, hwState:I
    :goto_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    #getter for: Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$300(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsDeviceStatus;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/vzw/location/VzwGpsDeviceStatus;->setHwState(I)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    #getter for: Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$300(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsDeviceStatus;

    move-result-object v0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/vzw/location/VzwGpsDeviceStatus;->setStatus(I[I[FII)V

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .local v7, msg:Landroid/os/Message;
    iput v8, v7, Landroid/os/Message;->what:I

    const-string v0, "VzwLocationManager"

    const-string v1, "GPS_EVENT_DEVICE_STATUS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .end local v6           #hwState:I
    .end local v7           #msg:Landroid/os/Message;
    :cond_1
    const/4 v0, 0x2

    move v6, v0

    goto :goto_0
.end method

.method public onFirstFix(I)V
    .locals 3
    .parameter "ttff"

    .prologue
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    #getter for: Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManager;->access$200(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vzw/location/VzwGpsStatus;->setTimeToFirstFix(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, "VzwLocationManager"

    const-string v2, "GPS_EVENT_FIRST_FIX"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGpsStarted()V
    .locals 5

    .prologue
    const-string v4, "VzwLocationManager"

    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    #getter for: Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;
    invoke-static {v2}, Lcom/vzw/location/VzwLocationManager;->access$100(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/IVzwLocationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/vzw/location/IVzwLocationManager;->getNumListeners()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const-string v2, "VzwLocationManager"

    const-string v3, "onGpsStarted() silenced"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string v2, "onGpsStarted: RemoteException"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x17

    iput v2, v1, Landroid/os/Message;->what:I

    const-string v2, "VzwLocationManager"

    const-string v2, "GPS_EVENT_STARTED"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGpsStopped()V
    .locals 5

    .prologue
    const-string v4, "VzwLocationManager"

    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    #getter for: Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;
    invoke-static {v2}, Lcom/vzw/location/VzwLocationManager;->access$100(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/IVzwLocationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/vzw/location/IVzwLocationManager;->getNumListeners()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const-string v2, "VzwLocationManager"

    const-string v3, "onGpsStopped() silenced"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string v2, "onGpsStopped: RemoteException"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x18

    iput v2, v1, Landroid/os/Message;->what:I

    const-string v2, "VzwLocationManager"

    const-string v2, "GPS_EVENT_STOPPED"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onSvStatusChanged(I[I[F[F[FI)V
    .locals 9
    .parameter "svCount"
    .parameter "prns"
    .parameter "snrs"
    .parameter "elevations"
    .parameter "azimuths"
    .parameter "usedInFixMask"

    .prologue
    const/16 v8, 0x11

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    #getter for: Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$200(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/vzw/location/VzwGpsStatus;->setStatus(I[I[F[F[FI)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .local v7, msg:Landroid/os/Message;
    iput v8, v7, Landroid/os/Message;->what:I

    const-string v0, "VzwLocationManager"

    const-string v1, "GPS_EVENT_SATELLITE_STATUS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
