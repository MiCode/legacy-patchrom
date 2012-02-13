.class public Landroid/net/VzwConnectivityManager;
.super Ljava/lang/Object;
.source "VzwConnectivityManager.java"


# instance fields
.field private mService:Landroid/net/IVzwConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/IVzwConnectivityManager;)V
    .locals 0
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/VzwConnectivityManager;->mService:Landroid/net/IVzwConnectivityManager;

    return-void
.end method


# virtual methods
.method public getNetworkInterface(I)Ljava/lang/String;
    .locals 2
    .parameter "networkType"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/VzwConnectivityManager;->mService:Landroid/net/IVzwConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IVzwConnectivityManager;->getNetworkInterface(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
