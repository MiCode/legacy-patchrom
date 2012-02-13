.class final Lcom/android/phone/LocationRemoteServiceManager$2;
.super Ljava/lang/Object;
.source "LocationRemoteServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LocationRemoteServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/LocationRemoteServiceManager;->access$102(Z)Z

    .line 48
    invoke-static {p2}, Lcom/hiapk/service/placeupdate/IRemoteFindPlace$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hiapk/service/placeupdate/IRemoteFindPlace;

    move-result-object v0

    sput-object v0, Lcom/android/phone/LocationRemoteServiceManager;->mService2:Lcom/hiapk/service/placeupdate/IRemoteFindPlace;

    .line 49
    const-string v0, "LocationRemoteServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onServiceConnected  service_update = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/LocationRemoteServiceManager;->mService2:Lcom/hiapk/service/placeupdate/IRemoteFindPlace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/LocationRemoteServiceManager;->mService2:Lcom/hiapk/service/placeupdate/IRemoteFindPlace;

    .line 55
    return-void
.end method
