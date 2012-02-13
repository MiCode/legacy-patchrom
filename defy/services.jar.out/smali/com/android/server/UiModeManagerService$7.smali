.class Lcom/android/server/UiModeManagerService$7;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasMoved(Landroid/location/Location;)Z
    .locals 8
    .parameter "location"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    move v2, v6

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;
    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .local v0, distance:F
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    add-float v1, v2, v3

    .local v1, totalAccuracy:F
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_3

    move v2, v7

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .parameter "location"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService$7;->hasMoved(Landroid/location/Location;)Z

    move-result v1

    .local v1, hasMoved:Z
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .local v0, hasBetterAccuracy:Z
    :goto_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    #setter for: Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;
    invoke-static {v3, p1}, Lcom/android/server/UiModeManagerService;->access$702(Lcom/android/server/UiModeManagerService;Landroid/location/Location;)Landroid/location/Location;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v3}, Lcom/android/server/UiModeManagerService;->isDoingNightMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    monitor-exit v2

    :cond_3
    return-void

    .end local v0           #hasBetterAccuracy:Z
    :cond_4
    move v0, v4

    goto :goto_0

    .restart local v0       #hasBetterAccuracy:Z
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    return-void
.end method
