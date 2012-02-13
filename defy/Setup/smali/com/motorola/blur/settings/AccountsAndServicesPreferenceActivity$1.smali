.class Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$1;
.super Ljava/lang/Object;
.source "AccountsAndServicesPreferenceActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$1;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 90
    :try_start_0
    invoke-static {p2}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    move-result-object v0

    .line 91
    .local v0, engine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->forceBlurSyncNow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0           #engine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 93
    .local v1, exception:Landroid/os/RemoteException;
    const-string v2, "BlurAASPA"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Couldn\'t force sync: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 99
    return-void
.end method
