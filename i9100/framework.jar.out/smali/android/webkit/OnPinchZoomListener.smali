.class public interface abstract Landroid/webkit/OnPinchZoomListener;
.super Ljava/lang/Object;
.source "OnPinchZoomListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/OnPinchZoomListener$ZoomInfo;
    }
.end annotation


# static fields
.field public static final PLUGINMODE_OFF:I = 0x1

.field public static final PLUGINMODE_SCALE:I = 0x2

.field public static final STATUS_LOW_MEMORY:I = 0x3

.field public static final STATUS_OK:I = 0x1

.field public static final STATUS_QUEUE_FULL:I = 0x2


# virtual methods
.method public abstract alwaysAllowWebViewDraw()Z
.end method

.method public abstract doDoubleTap(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
.end method

.method public abstract doDrag(II)Z
.end method

.method public abstract doFling(II)Z
.end method

.method public abstract forceHighQualityImage()Z
.end method

.method public abstract getCacheBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getCacheBitmapOffsetX()I
.end method

.method public abstract getCacheBitmapOffsetY()I
.end method

.method public abstract getCenterX()F
.end method

.method public abstract getCenterY()F
.end method

.method public abstract getFlingFactor()F
.end method

.method public abstract getPluginMode()I
.end method

.method public abstract getScale()F
.end method

.method public abstract isDrawingWebView()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract onNewScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
.end method

.method public abstract onPageFinished(Ljava/lang/String;)V
.end method

.method public abstract onPageStarted(Ljava/lang/String;)V
.end method

.method public abstract onScale(Landroid/webkit/OnPinchZoomListener$ZoomInfo;)Z
.end method

.method public abstract onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
.end method

.method public abstract onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;FF)Z
.end method

.method public abstract onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
.end method

.method public abstract onScrollChanged(IIII)V
.end method

.method public abstract onUpdateContents(Landroid/graphics/Region;)V
.end method

.method public abstract onWebViewDrawFinished()V
.end method

.method public abstract onWebViewTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract overrideDoubleTap()Z
.end method

.method public abstract postCacheBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract startDrag()V
.end method

.method public abstract status()I
.end method
