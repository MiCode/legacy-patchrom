.class public Lcom/samsung/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# static fields
.field private static final DEBUG_THEME:Z = false

.field private static final TAG:Ljava/lang/String; = "ThemeManager"

.field public static final THEME_SERVICE:Ljava/lang/String; = "samsung.theme_service"


# instance fields
.field private mService:Lcom/samsung/ITheme;


# direct methods
.method public constructor <init>(Lcom/samsung/ITheme;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ThemeManager;->mService:Lcom/samsung/ITheme;

    .line 46
    iput-object p1, p0, Lcom/samsung/ThemeManager;->mService:Lcom/samsung/ITheme;

    .line 47
    return-void
.end method

.method public static getThemeManager()Lcom/samsung/ThemeManager;
    .locals 5

    .prologue
    .line 32
    const-string/jumbo v3, "samsung.theme_service"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 33
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 34
    const-string v3, "ThemeManager"

    const-string v4, "[Theme] Fail binding the service; theme service may not be running properly."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v3, 0x0

    .line 41
    :goto_0
    return-object v3

    .line 38
    :cond_0
    invoke-static {v0}, Lcom/samsung/ITheme$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/ITheme;

    move-result-object v1

    .line 39
    .local v1, service:Lcom/samsung/ITheme;
    new-instance v2, Lcom/samsung/ThemeManager;

    invoke-direct {v2, v1}, Lcom/samsung/ThemeManager;-><init>(Lcom/samsung/ITheme;)V

    .local v2, tm:Lcom/samsung/ThemeManager;
    move-object v3, v2

    .line 41
    goto :goto_0
.end method


# virtual methods
.method public getColorCache(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, resourcePackageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ThemeManager;->mService:Lcom/samsung/ITheme;

    invoke-interface {v1, p1, p2}, Lcom/samsung/ITheme;->getColorCache(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 86
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentThemePackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ThemeManager;->mService:Lcom/samsung/ITheme;

    invoke-interface {v1}, Lcom/samsung/ITheme;->getCurrentThemePackage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 94
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 96
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentThemePackagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ThemeManager;->mService:Lcom/samsung/ITheme;

    invoke-interface {v1, p1}, Lcom/samsung/ITheme;->getCurrentThemePackagePath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 116
    :goto_0
    return-object v1

    .line 113
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 116
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentThemeTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ThemeManager;->mService:Lcom/samsung/ITheme;

    invoke-interface {v1}, Lcom/samsung/ITheme;->getCurrentThemeTitle()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 104
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 106
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledThemePackageList()Ljava/util/List;
    .locals 2

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ThemeManager;->mService:Lcom/samsung/ITheme;

    invoke-interface {v1}, Lcom/samsung/ITheme;->getInstalledThemePackageList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 124
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 126
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSkinSettings(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter "skinPackageName"

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ThemeManager;->mService:Lcom/samsung/ITheme;

    invoke-interface {v1, p1}, Lcom/samsung/ITheme;->getSkinSettings(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 76
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 74
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 76
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isThemePackageCertified(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ThemeManager;->mService:Lcom/samsung/ITheme;

    invoke-interface {v1, p1}, Lcom/samsung/ITheme;->isThemePackageCertified(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 156
    :goto_0
    return v1

    .line 153
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 156
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportBadThemePackage(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ThemeManager;->mService:Lcom/samsung/ITheme;

    invoke-interface {v1, p1}, Lcom/samsung/ITheme;->reportBadThemePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 134
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCurrentThemePackage(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ThemeManager;->mService:Lcom/samsung/ITheme;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/samsung/ITheme;->setCurrentThemePackage(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 56
    :goto_0
    return v1

    .line 53
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 54
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 56
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCurrentThemePackage(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ThemeManager;->mService:Lcom/samsung/ITheme;

    invoke-interface {v1, p1, p2}, Lcom/samsung/ITheme;->setCurrentThemePackage(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 66
    :goto_0
    return v1

    .line 63
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 66
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultTheme(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ThemeManager;->mService:Lcom/samsung/ITheme;

    invoke-interface {v1, p1}, Lcom/samsung/ITheme;->setDefaultTheme(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 144
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
