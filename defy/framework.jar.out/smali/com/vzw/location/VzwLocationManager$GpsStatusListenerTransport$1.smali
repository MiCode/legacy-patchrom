.class Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport$1;
.super Landroid/os/Handler;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport$1;->this$1:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport$1;->this$1:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;

    iget-object v0, v0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    #getter for: Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$200(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport$1;->this$1:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;

    #getter for: Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->access$400(Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;)Lcom/vzw/location/VzwGpsStatus$Listener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lcom/vzw/location/VzwGpsStatus$Listener;->onGpsStatusChanged(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
