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
    .line 71
    iput-object p1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    .line 78
    return-void
.end method


# virtual methods
.method drawFrame()V
    .locals 19

    .prologue
    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    .line 141
    .local v15, sh:Landroid/view/SurfaceHolder;
    invoke-interface {v15}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 142
    .local v1, c:Landroid/graphics/Canvas;
    if-eqz v1, :cond_4

    .line 143
    invoke-interface {v15}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v14

    .line 144
    .local v14, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 145
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    .line 146
    .local v9, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 147
    .local v13, dw:I
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 148
    .local v12, dh:I
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    move v11, v2

    .line 149
    .local v11, bw:I
    :goto_0
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    move v10, v2

    .line 150
    .local v10, bh:I
    :goto_1
    sub-int v8, v13, v11

    .line 151
    .local v8, availw:I
    sub-int v7, v12, v10

    .line 152
    .local v7, availh:I
    if-gez v8, :cond_7

    int-to-float v2, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mXOffset:F

    move v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v16, v2

    .line 153
    .local v16, xPixels:I
    :goto_2
    if-gez v7, :cond_8

    int-to-float v2, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mYOffset:F

    move v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v17, v2

    .line 156
    .local v17, yPixels:I
    :goto_3
    if-lez v8, :cond_0

    if-lez v7, :cond_0

    .line 157
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 158
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v13, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 159
    add-int/lit8 v2, v16, 0x0

    int-to-float v2, v2

    add-int/lit8 v3, v17, 0x0

    int-to-float v3, v3

    add-int v4, v11, v16

    int-to-float v4, v4

    add-int v5, v10, v17

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 160
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 161
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 165
    :cond_0
    move/from16 v0, v16

    int-to-float v0, v0

    move v2, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    if-ltz v8, :cond_1

    if-gez v7, :cond_2

    .line 167
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 168
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v11

    int-to-float v5, v10

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 169
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 170
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 172
    :cond_2
    if-eqz v9, :cond_3

    .line 173
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 175
    :cond_3
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-interface {v15, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 178
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
    :cond_4
    return-void

    .line 148
    .restart local v9       #background:Landroid/graphics/drawable/Drawable;
    .restart local v12       #dh:I
    .restart local v13       #dw:I
    .restart local v14       #frame:Landroid/graphics/Rect;
    :cond_5
    const/4 v2, 0x0

    move v11, v2

    goto :goto_0

    .line 149
    .restart local v11       #bw:I
    :cond_6
    const/4 v2, 0x0

    move v10, v2

    goto :goto_1

    .line 152
    .restart local v7       #availh:I
    .restart local v8       #availw:I
    .restart local v10       #bh:I
    :cond_7
    :try_start_1
    div-int/lit8 v2, v8, 0x2

    move/from16 v16, v2

    goto :goto_2

    .line 153
    .restart local v16       #xPixels:I
    :cond_8
    div-int/lit8 v2, v7, 0x2

    move/from16 v17, v2

    goto :goto_3

    .line 175
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
    .line 90
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;-><init>(Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;)V

    iput-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    .line 93
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    iget-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/service/wallpaper/ImageWallpaper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->updateWallpaper()V

    .line 95
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 96
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 101
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/service/wallpaper/ImageWallpaper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
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
    .line 118
    iput p1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mXOffset:F

    .line 119
    iput p2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mYOffset:F

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 121
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 127
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 132
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 137
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 112
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 107
    return-void
.end method

.method updateWallpaper()V
    .locals 4

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    iget-object v2, v2, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 188
    return-void

    .line 184
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 185
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "ImageWallpaper"

    const-string v3, "Unable to load wallpaper!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 187
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
