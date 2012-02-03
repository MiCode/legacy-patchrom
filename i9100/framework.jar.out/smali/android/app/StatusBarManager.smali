.class public Landroid/app/StatusBarManager;
.super Ljava/lang/Object;
.source "StatusBarManager.java"


# static fields
.field public static final DISABLE_EXPAND:I = 0x1

.field public static final DISABLE_NONE:I = 0x0

.field public static final DISABLE_NOTIFICATION_ALERTS:I = 0x4

.field public static final DISABLE_NOTIFICATION_ICONS:I = 0x2

.field public static final DISABLE_NOTIFICATION_TICKER:I = 0x8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    .line 70
    iput-object p1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 71
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 73
    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 2

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapse()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-void

    .line 106
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 108
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disable(I)V
    .locals 4
    .parameter "what"

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-void

    .line 82
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public expand()V
    .locals 2

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expand()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 94
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 96
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public grabScreen(IIJ)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "timeout"

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->grabScreen(IIJ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 174
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 176
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hideCallView()V
    .locals 2

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideCallView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-void

    .line 163
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 165
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 2
    .parameter "slot"

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->removeIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    return-void

    .line 135
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIcon(Ljava/lang/String;II)V
    .locals 3
    .parameter "slot"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->setIcon(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    return-void

    .line 115
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 117
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 2
    .parameter "slot"
    .parameter "visible"

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    return-void

    .line 144
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 146
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIconWithVisible(Ljava/lang/String;IIZ)V
    .locals 7
    .parameter "slot"
    .parameter "iconId"
    .parameter "iconLevel"
    .parameter "visible"

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService;->setIconWithVisible(Ljava/lang/String;Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    return-void

    .line 125
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 127
    .local v6, ex:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public showCallView()V
    .locals 2

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->showCallView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return-void

    .line 154
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 156
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateTheme()V
    .locals 2

    .prologue
    .line 184
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->updateTheme()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-void

    .line 185
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 187
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
