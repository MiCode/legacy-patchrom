.class public Landroid/app/UiModeManager;
.super Ljava/lang/Object;
.source "UiModeManager.java"


# static fields
.field public static ACTION_ENTER_CAR_MODE:Ljava/lang/String; = null

.field public static ACTION_ENTER_DESK_MODE:Ljava/lang/String; = null

.field public static ACTION_EXIT_CAR_MODE:Ljava/lang/String; = null

.field public static ACTION_EXIT_DESK_MODE:Ljava/lang/String; = null

.field public static final DISABLE_CAR_MODE_GO_HOME:I = 0x1

.field public static final ENABLE_CAR_MODE_GO_CAR_HOME:I = 0x1

.field public static final MODE_NIGHT_AUTO:I = 0x0

.field public static final MODE_NIGHT_NO:I = 0x1

.field public static final MODE_NIGHT_YES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UiModeManager"


# instance fields
.field private mService:Landroid/app/IUiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "android.app.action.ENTER_CAR_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    const-string v0, "android.app.action.EXIT_CAR_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    const-string v0, "android.app.action.ENTER_DESK_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    const-string v0, "android.app.action.EXIT_DESK_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    return-void
.end method


# virtual methods
.method public disableCarMode(I)V
    .locals 3
    .parameter "flags"

    .prologue
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->disableCarMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UiModeManager"

    const-string v2, "disableCarMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableCarMode(I)V
    .locals 3
    .parameter "flags"

    .prologue
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->enableCarMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UiModeManager"

    const-string v2, "disableCarMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCurrentModeType()I
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getCurrentModeType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UiModeManager"

    const-string v2, "getCurrentModeType: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getNightMode()I
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UiModeManager"

    const-string v2, "getNightMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setNightMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->setNightMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UiModeManager"

    const-string v2, "setNightMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
