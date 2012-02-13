.class Lcom/android/server/LocationManagerService$LpAccuracyComparator;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LpAccuracyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/location/LocationProviderInterface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LpAccuracyComparator;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LpAccuracyComparator;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/location/LocationProviderInterface;Lcom/android/server/location/LocationProviderInterface;)I
    .locals 2
    .parameter "l1"
    .parameter "l2"

    .prologue
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v0

    invoke-interface {p2}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Lcom/android/server/location/LocationProviderInterface;

    .end local p1
    check-cast p2, Lcom/android/server/location/LocationProviderInterface;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService$LpAccuracyComparator;->compare(Lcom/android/server/location/LocationProviderInterface;Lcom/android/server/location/LocationProviderInterface;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/android/server/location/LocationProviderInterface;Lcom/android/server/location/LocationProviderInterface;)Z
    .locals 2
    .parameter "l1"
    .parameter "l2"

    .prologue
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v0

    invoke-interface {p2}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
