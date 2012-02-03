.class Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;
.super Landroid/content/BroadcastReceiver;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;


# direct methods
.method constructor <init>(Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->updateWallpaper()V

    .line 81
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 84
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 85
    return-void
.end method
