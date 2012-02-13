.class public Lcom/motorola/android/locationproxy/LocationProxy;
.super Ljava/lang/Object;
.source "LocationProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;
    }
.end annotation


# static fields
.field public static final MTLR_CAUSE_MTLR_TIME_OUT:I = 0x1

.field public static final MTLR_CAUSE_NETWORK_CONNECTION_RELEASED:I = 0x0

.field public static final MTLR_CLIENT_ADDRESS:Ljava/lang/String; = "clientAddress"

.field public static final MTLR_CLIENT_NAME:Ljava/lang/String; = "clientName"

.field public static final MTLR_CURRENT_LOCATION:I = 0x0

.field public static final MTLR_CURRENT_OR_LAST_KNOWN_LOCATION:I = 0x1

.field public static final MTLR_ID:Ljava/lang/String; = "mtlrId"

.field public static final MTLR_INITIAL_LOCATION:I = 0x2

.field public static final MTLR_LOCATION_ESTIMATE_TYPE_INVALID:I = 0x3

.field public static final MTLR_LOCATION_TYPE:Ljava/lang/String; = "locationType"

.field public static final MTLR_NOTIFICATION_TYPE:Ljava/lang/String; = "notificationType"

.field public static final MTLR_NTFCTN_INVALID:I = 0x3

.field public static final MTLR_NTFCTN_LOCATION_ALLOWED:I = 0x0

.field public static final MTLR_NTFCTN_LOCATION_ALLOWED_IF_NO_RESPONSE:I = 0x1

.field public static final MTLR_NTFCTN_LOCATION_NOT_ALLOWED_IF_NO_RESPONSE:I = 0x2

.field public static final MTLR_RECEIVED_ACTION:Ljava/lang/String; = "com.motorola.android.locationproxy.MTLR_RECEIVED"

.field private static final TAG:Ljava/lang/String; = "LocationProxyService"


# instance fields
.field private mMtlrListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/android/locationproxy/MtlrListener;",
            "Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/motorola/android/locationproxy/ILocationProxy;


# direct methods
.method public constructor <init>(Lcom/motorola/android/locationproxy/ILocationProxy;)V
    .locals 3
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mMtlrListeners:Ljava/util/HashMap;

    const-string v0, "LocationProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    return-void
.end method


# virtual methods
.method public getDefaultSuplServer()Ljava/lang/String;
    .locals 4

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    invoke-interface {v2}, Lcom/motorola/android/locationproxy/ILocationProxy;->getDefaultSuplServer()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LocationProxyService"

    const-string v3, "getDefaultSuplServer: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSuplServer()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "LocationProxyService"

    const-string v2, "LocationProxyService"

    const-string v2, "getSUPLServer"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    invoke-interface {v2}, Lcom/motorola/android/locationproxy/ILocationProxy;->getSuplServer()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LocationProxyService"

    const-string v2, "getSuplServer: RemoteException"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerMtlrListener(Lcom/motorola/android/locationproxy/MtlrListener;)Z
    .locals 6
    .parameter "listener"

    .prologue
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "MtlrListener==null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mMtlrListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    :try_start_0
    new-instance v3, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;

    invoke-direct {v3, p0, p1}, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;-><init>(Lcom/motorola/android/locationproxy/LocationProxy;Lcom/motorola/android/locationproxy/MtlrListener;)V

    .local v3, transport:Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;
    iget-object v4, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    invoke-interface {v4, v3}, Lcom/motorola/android/locationproxy/ILocationProxy;->registerMtlrListener(Lcom/motorola/android/locationproxy/IMtlrListener;)Z

    move-result v1

    .local v1, result:Z
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mMtlrListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3           #transport:Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;
    :cond_2
    :goto_1
    move v4, v1

    goto :goto_0

    .end local v1           #result:Z
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "LocationProxyService"

    const-string v5, "RemoteException in registerMtlrListener: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_1
.end method

.method public resetSuplServer()Z
    .locals 4

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    invoke-interface {v2}, Lcom/motorola/android/locationproxy/ILocationProxy;->resetSuplServer()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LocationProxyService"

    const-string v3, "resetSuplServer: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public responseMtlr(ZI)Z
    .locals 4
    .parameter "allowedOrNot"
    .parameter "reqId"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    invoke-interface {v2, p1, p2}, Lcom/motorola/android/locationproxy/ILocationProxy;->responseMtlr(ZI)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LocationProxyService"

    const-string v3, "responseMtlr: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setSuplServer(Ljava/lang/String;)Z
    .locals 4
    .parameter "suplServer"

    .prologue
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "suplServer==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    invoke-interface {v2, p1}, Lcom/motorola/android/locationproxy/ILocationProxy;->setSuplServer(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LocationProxyService"

    const-string v3, "setSuplServer: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterMtlrListener(Lcom/motorola/android/locationproxy/MtlrListener;)Z
    .locals 6
    .parameter "listener"

    .prologue
    const-string v5, "LocationProxyService"

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "listener==null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string v3, "LocationProxyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterMtlrCallback: listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mMtlrListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;

    .local v2, transport:Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    invoke-interface {v3}, Lcom/motorola/android/locationproxy/ILocationProxy;->unregisterMtlrListener()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #transport:Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;
    :cond_1
    :goto_0
    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "LocationProxyService"

    const-string v3, "removeUpdates: DeadObjectException"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
