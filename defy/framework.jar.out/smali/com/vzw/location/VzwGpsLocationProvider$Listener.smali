.class final Lcom/vzw/location/VzwGpsLocationProvider$Listener;
.super Ljava/lang/Object;
.source "VzwGpsLocationProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field final mListener:Lcom/vzw/location/IVzwGpsStatusListener;

.field final synthetic this$0:Lcom/vzw/location/VzwGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwGpsLocationProvider;Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsLocationProvider$Listener;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vzw/location/VzwGpsLocationProvider$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "GPS status listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider$Listener;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/VzwGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider$Listener;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/vzw/location/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/VzwGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
