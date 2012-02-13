.class Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;
.super Ljava/lang/Object;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkStateChangeResult"
.end annotation


# instance fields
.field BSSID:Ljava/lang/String;

.field networkId:I

.field state:Landroid/net/NetworkInfo$DetailedState;


# direct methods
.method constructor <init>(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 0
    .parameter "state"
    .parameter "BSSID"
    .parameter "networkId"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    iput-object p2, p0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->BSSID:Ljava/lang/String;

    iput p3, p0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->networkId:I

    return-void
.end method
