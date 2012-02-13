.class Lcom/vzw/location/VzwGpsLocationProvider$AgpsEventThread;
.super Ljava/lang/Thread;
.source "VzwGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AgpsEventThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwGpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/vzw/location/VzwGpsLocationProvider;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsLocationProvider$AgpsEventThread;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    const-string v0, "AgpsEventThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v1, "VzwGpsLocationProvider"

    const-string v0, "VzwGpsLocationProvider"

    const-string v0, "AgpsEventThread starting"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider$AgpsEventThread;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/VzwGpsLocationProvider;->mEnabled:Z
    invoke-static {v0}, Lcom/vzw/location/VzwGpsLocationProvider;->access$500(Lcom/vzw/location/VzwGpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider$AgpsEventThread;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #calls: Lcom/vzw/location/VzwGpsLocationProvider;->native_wait_for_event()V
    invoke-static {v0}, Lcom/vzw/location/VzwGpsLocationProvider;->access$600(Lcom/vzw/location/VzwGpsLocationProvider;)V

    goto :goto_0

    :cond_0
    const-string v0, "VzwGpsLocationProvider"

    const-string v0, "AgpsEventThread exiting"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
