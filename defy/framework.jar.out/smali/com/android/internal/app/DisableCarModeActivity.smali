.class public Lcom/android/internal/app/DisableCarModeActivity;
.super Landroid/app/Activity;
.source "DisableCarModeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisableCarModeActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    const-string v2, "uimode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v1

    .local v1, uiModeManager:Landroid/app/IUiModeManager;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/IUiModeManager;->disableCarMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #uiModeManager:Landroid/app/IUiModeManager;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/DisableCarModeActivity;->finish()V

    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DisableCarModeActivity"

    const-string v3, "Failed to disable car mode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
