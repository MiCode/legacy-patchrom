.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
.super Landroid/os/BatteryStats$Uid$Pkg;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Pkg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    }
.end annotation


# instance fields
.field mLastWakeups:I

.field mLoadedWakeups:I

.field final mServiceStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;",
            ">;"
        }
    .end annotation
.end field

.field mUnpluggedWakeups:I

.field mWakeups:I

.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Pkg;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method detach()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getServiceStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg$Serv;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWakeups(I)I
    .locals 2
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mLastWakeups:I

    .local v0, val:I
    :cond_0
    :goto_0
    return v0

    .end local v0           #val:I
    :cond_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    .restart local v0       #val:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mLoadedWakeups:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mUnpluggedWakeups:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public incWakeupsLocked()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    return-void
.end method

.method final newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;)V

    return-object v0
.end method

.method public plug(JJ)V
    .locals 0
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mLoadedWakeups:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mLastWakeups:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mUnpluggedWakeups:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, numServs:I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .local v0, m:I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, serviceName:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-direct {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;)V

    .local v2, serv:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->readFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #serv:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v3           #serviceName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public unplug(JJ)V
    .locals 1
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mUnpluggedWakeups:I

    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 4
    .parameter "out"

    .prologue
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mLoadedWakeups:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mUnpluggedWakeups:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, servEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .local v1, serv:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->writeToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_0

    .end local v1           #serv:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v2           #servEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    :cond_0
    return-void
.end method
