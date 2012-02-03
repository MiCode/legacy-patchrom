.class final Lcom/android/server/location/GpsLocationProvider$Listener;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field final mListener:Landroid/location/IGpsStatusListener;

.field mSensors:I

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/location/IGpsStatusListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    .line 878
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$Listener;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 876
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$Listener;->mSensors:I

    .line 879
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    .line 880
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 883
    const-string v0, "GpsLocationProvider"

    const-string v1, "GPS status listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$Listener;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 886
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$Listener;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 887
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v0}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 891
    :cond_0
    return-void

    .line 887
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
