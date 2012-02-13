.class public Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;
.super Ljava/lang/Object;
.source "ImageProcessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/internal/android/image/ImageProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenImpl"
.end annotation


# instance fields
.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCancelRenderScreen:Z

.field mConfig:Landroid/graphics/Bitmap$Config;

.field private mNativeScreen:I

.field private mNativeScreenBuffer:I

.field final synthetic this$0:Lcom/motorola/internal/android/image/ImageProcessorImpl;


# direct methods
.method constructor <init>(Lcom/motorola/internal/android/image/ImageProcessorImpl;IILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;Lcom/motorola/internal/android/image/ImageProcessorImpl;)V
    .locals 6
    .parameter
    .parameter "scrnWidth"
    .parameter "scrnHeight"
    .parameter "pixelFormat"
    .parameter "scrnBuf"
    .parameter "processor"

    .prologue
    iput-object p1, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->this$0:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->mConfig:Landroid/graphics/Bitmap$Config;

    iput-object p5, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->mCancelRenderScreen:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->native_setup(IILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;Lcom/motorola/internal/android/image/ImageProcessorImpl;)V

    return-void
.end method

.method private native native_release()V
.end method

.method private native native_setup(IILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;Lcom/motorola/internal/android/image/ImageProcessorImpl;)V
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->mCancelRenderScreen:Z

    return-void
.end method

.method public native getCanvasArea()Landroid/graphics/Rect;
.end method

.method public native getPanX()F
.end method

.method public native getPanY()F
.end method

.method public getScreenData()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->mBuffer:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public native getZoom()F
.end method

.method public native imageToScreenCoord(Landroid/graphics/Point;)Landroid/graphics/Point;
.end method

.method public native pan(FF)V
.end method

.method public release()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->this$0:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    #getter for: Lcom/motorola/internal/android/image/ImageProcessorImpl;->mScreens:Ljava/util/Vector;
    invoke-static {v1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->access$000(Lcom/motorola/internal/android/image/ImageProcessorImpl;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->this$0:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    #getter for: Lcom/motorola/internal/android/image/ImageProcessorImpl;->mScreens:Ljava/util/Vector;
    invoke-static {v1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->access$000(Lcom/motorola/internal/android/image/ImageProcessorImpl;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    .local v0, found:Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->native_release()V

    .end local v0           #found:Z
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "ImageProcessorImpl"

    const-string v2, "can\'t destroy screen as it is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public native renderScreen()V
.end method

.method public native screenToImageCoord(Landroid/graphics/Point;)Landroid/graphics/Point;
.end method

.method public native setScreenRotation(I)V
.end method

.method public native zoom(F)V
.end method

.method public native zoomPoint(FLandroid/graphics/Point;)Landroid/graphics/Point;
.end method

.method public native zoomRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method
