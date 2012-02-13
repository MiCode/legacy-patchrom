.class abstract Lcom/android/server/WifiService$DeathRecipient;
.super Ljava/lang/Object;
.source "WifiService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DeathRecipient"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mMode:I

.field mTag:Ljava/lang/String;

.field mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 3
    .parameter
    .parameter "mode"
    .parameter "tag"
    .parameter "binder"
    .parameter "ws"

    .prologue
    iput-object p1, p0, Lcom/android/server/WifiService$DeathRecipient;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/WifiService$DeathRecipient;->mTag:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    iput-object p4, p0, Lcom/android/server/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/WifiService$DeathRecipient;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method unlinkDeathRecipient()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
