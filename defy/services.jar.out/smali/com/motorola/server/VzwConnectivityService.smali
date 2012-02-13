.class public Lcom/motorola/server/VzwConnectivityService;
.super Landroid/net/IVzwConnectivityManager$Stub;
.source "VzwConnectivityService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwConnectivityService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0}, Landroid/net/IVzwConnectivityManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/motorola/server/VzwConnectivityService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getNetworkInterface(I)Ljava/lang/String;
    .locals 6
    .parameter "networkType"

    .prologue
    const-string v5, "VzwConnectivityService"

    :try_start_0
    iget-object v2, p0, Lcom/motorola/server/VzwConnectivityService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, mConnMgr:Landroid/net/ConnectivityManager;
    const-string v2, "VzwConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interface Name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInterface(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInterface(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1           #mConnMgr:Landroid/net/ConnectivityManager;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VzwConnectivityService"

    const-string v2, "Error Getting InterfaceName"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method
