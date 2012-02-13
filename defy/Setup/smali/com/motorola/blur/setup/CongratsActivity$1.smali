.class Lcom/motorola/blur/setup/CongratsActivity$1;
.super Ljava/lang/Object;
.source "CongratsActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/CongratsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CongratsActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CongratsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/motorola/blur/setup/CongratsActivity$1;->this$0:Lcom/motorola/blur/setup/CongratsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    const-string v4, "SetupCA"

    .line 51
    const-string v2, "SetupCA"

    const-string v2, "Connected - going to force sync engine!"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :try_start_0
    invoke-static {p2}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    move-result-object v0

    .line 54
    .local v0, engine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;
    const-string v2, "BlurContactsSyncHandler"

    invoke-interface {v0, v2}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->forceSync(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0           #engine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 56
    .local v1, exception:Landroid/os/RemoteException;
    const-string v2, "SetupCA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t force sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 62
    return-void
.end method
