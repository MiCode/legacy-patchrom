.class Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
.super Ljava/lang/Object;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupplicantStateChangeResult"
.end annotation


# instance fields
.field BSSID:Ljava/lang/String;

.field networkId:I

.field state:Landroid/net/wifi/SupplicantState;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 0
    .parameter "networkId"
    .parameter "BSSID"
    .parameter "state"

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p3, p0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 431
    iput-object p2, p0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->BSSID:Ljava/lang/String;

    .line 432
    iput p1, p0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->networkId:I

    .line 433
    return-void
.end method
