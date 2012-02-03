.class public Lcom/android/internal/service/wallpaper/ImageWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;
    }
.end annotation


# instance fields
.field private mThread:Landroid/os/HandlerThread;

.field mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 47
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 48
    const-string/jumbo v1, "wallpaper"

    invoke-virtual {p0, v1}, Lcom/android/internal/service/wallpaper/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    iput-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 49
    invoke-static {}, Lcom/android/internal/view/WindowManagerPolicyThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 50
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/internal/service/wallpaper/ImageWallpaper;->setCallbackLooper(Landroid/os/Looper;)V

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Wallpaper"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mThread:Landroid/os/HandlerThread;

    .line 54
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 55
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/service/wallpaper/ImageWallpaper;->setCallbackLooper(Landroid/os/Looper;)V

    goto :goto_0
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;

    invoke-direct {v0, p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;-><init>(Lcom/android/internal/service/wallpaper/ImageWallpaper;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 66
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 69
    :cond_0
    return-void
.end method
