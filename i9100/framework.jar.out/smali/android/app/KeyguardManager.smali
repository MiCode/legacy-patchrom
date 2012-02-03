.class public Landroid/app/KeyguardManager;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/KeyguardManager$OnKeyguardExitResult;,
        Landroid/app/KeyguardManager$KeyguardLock;
    }
.end annotation


# static fields
.field public static disablekeyguardStackTrace:Ljava/lang/String;

.field public static disablekeyguardtag:Ljava/lang/String;

.field public static disablekeyguardtoken:Landroid/os/IBinder;


# instance fields
.field private mWM:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 44
    const-string v0, ""

    sput-object v1, Landroid/app/KeyguardManager;->disablekeyguardStackTrace:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Landroid/app/KeyguardManager;->disablekeyguardtoken:Landroid/os/IBinder;

    .line 46
    const-string v0, ""

    sput-object v1, Landroid/app/KeyguardManager;->disablekeyguardtag:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    .line 122
    return-void
.end method

.method static synthetic access$000(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    return-object v0
.end method


# virtual methods
.method public exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 189
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    new-instance v1, Landroid/app/KeyguardManager$1;

    invoke-direct {v1, p0, p1}, Landroid/app/KeyguardManager$1;-><init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 2

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 169
    :goto_0
    return v1

    .line 168
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 169
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLockScreenViewMaking()Z
    .locals 2

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->isLockScreenViewMaking()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 152
    :goto_0
    return v1

    .line 151
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 152
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLockScreenViewShowing()Z
    .locals 2

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->isLockScreenViewShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 143
    :goto_0
    return v1

    .line 142
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 143
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;
    .locals 1
    .parameter "tag"

    .prologue
    .line 135
    new-instance v0, Landroid/app/KeyguardManager$KeyguardLock;

    invoke-direct {v0, p0, p1}, Landroid/app/KeyguardManager$KeyguardLock;-><init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V

    return-object v0
.end method
