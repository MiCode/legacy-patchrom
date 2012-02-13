.class Lcom/motorola/android/locationproxy/AgpsNetworkManager$LookupHostThread;
.super Ljava/lang/Object;
.source "AgpsNetworkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/AgpsNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookupHostThread"
.end annotation


# instance fields
.field private mHost:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "host"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$LookupHostThread;->mHost:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v7, "Reset Agps PDP!"

    const-string v5, "SUPLJ"

    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$800()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .local v2, info:Landroid/net/NetworkInfo;
    if-nez v2, :cond_0

    const-string v3, "SUPLJ"

    const-string v3, "No Active data connection is available!"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SUPLJ"

    const-string v3, "Reset Agps PDP!"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$102(Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$LookupHostThread;->mHost:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-static {v3}, Landroid/net/NetworkUtils;->lookupHost(Ljava/lang/String;)I

    move-result v1

    .local v1, inetAddr:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configAgpsNetwork: Ip address of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$LookupHostThread;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "agps"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->int2IpString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$1000(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v6, v3}, Landroid/net/ConnectivityManager;->configureNetwork(I[Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string v3, "SUPLJ"

    const-string v3, "Reset Agps PDP!"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$102(Z)Z

    goto :goto_0
.end method
