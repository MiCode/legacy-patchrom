.class Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;
.super Ljava/lang/Object;
.source "ConnectivityServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HostRouteInfo"
.end annotation


# instance fields
.field public addr:I

.field public ifName:Ljava/lang/String;

.field public pid:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityServiceExt$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;-><init>()V

    return-void
.end method
