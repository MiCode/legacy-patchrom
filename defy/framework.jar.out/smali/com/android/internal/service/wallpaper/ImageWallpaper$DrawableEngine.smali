.class Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/service/wallpaper/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawableEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;
    }
.end annotation


# instance fields
.field mBackground:Landroid/graphics/drawable/Drawable;

.field private final mLock:Ljava/lang/Object;

.field private mReceiver:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

.field mXOffset:F

.field mYOffset:F

.field final synthetic this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;


# direct methods
.method constructor <init>(Lcom/android/internal/service/wallpaper/ImageWallpaper;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method drawFrame()V
    .locals 19

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    .local v15, sh:Landroid/view/SurfaceHolder;
    invoke-interface {v15}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .local v1, c:Landroid/graphics/Canvas;
    if-eqz v1, :cond_3

    invoke-interface {v15}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v14

    .local v14, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    .local v9, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v13

    .local v13, dw:I
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v12

    .local v12, dh:I
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    move v11, v2

    .local v11, bw:I
    :goto_0
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    move v10, v2

    .local v10, bh:I
    :goto_1
    sub-int v8, v13, v11

    .local v8, availw:I
    sub-int v7, v12, v10

    .local v7, availh:I
    if-gez v8, :cond_6

    int-to-float v2, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mXOffset:F

    move v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v16, v2

    .local v16, xPixels:I
    :goto_2
    if-gez v7, :cond_7

    int-to-float v2, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mYOffset:F

    move v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v17, v2

    .local v17, yPixels:I
    :goto_3
    move/from16 v0, v16

    int-to-float v0, v0

    move v2, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    if-ltz v8, :cond_0

    if-gez v7, :cond_1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->save(I)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v11

    int-to-float v5, v10

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v15, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .end local v7           #availh:I
    .end local v8           #availw:I
    .end local v9           #background:Landroid/graphics/drawable/Drawable;
    .end local v10           #bh:I
    .end local v11           #bw:I
    .end local v12           #dh:I
    .end local v13           #dw:I
    .end local v14           #frame:Landroid/graphics/Rect;
    .end local v16           #xPixels:I
    .end local v17           #yPixels:I
    :cond_3
    return-void

    .restart local v9       #background:Landroid/graphics/drawable/Drawable;
    .restart local v12       #dh:I
    .restart local v13       #dw:I
    .restart local v14       #frame:Landroid/graphics/Rect;
    :cond_4
    const/4 v2, 0x0

    move v11, v2

    goto :goto_0

    .restart local v11       #bw:I
    :cond_5
    const/4 v2, 0x0

    move v10, v2

    goto :goto_1

    .restart local v7       #availh:I
    .restart local v8       #availw:I
    .restart local v10       #bh:I
    :cond_6
    :try_start_1
    div-int/lit8 v2, v8, 0x2

    move/from16 v16, v2

    goto :goto_2

    .restart local v16       #xPixels:I
    :cond_7
    div-int/lit8 v2, v7, 0x2

    move/from16 v17, v2

    goto :goto_3

    .end local v7           #availh:I
    .end local v8           #availw:I
    .end local v9           #background:Landroid/graphics/drawable/Drawable;
    .end local v10           #bh:I
    .end local v11           #bw:I
    .end local v12           #dh:I
    .end local v13           #dw:I
    .end local v16           #xPixels:I
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceHolder"

    .prologue
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;-><init>(Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;)V

    iput-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    iget-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/service/wallpaper/ImageWallpaper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->updateWallpaper()V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/service/wallpaper/ImageWallpaper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xOffsetStep"
    .parameter "yOffsetStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    iput p1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mXOffset:F

    iput p2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mYOffset:F

    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->drawFrame()V

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->drawFrame()V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->drawFrame()V

    return-void
.end method

.method updateWallpaper()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    iget-object v2, v2, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "ImageWallpaper"

    const-string v3, "Unable to load wallpaper!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
