.class public Lcom/motorola/internal/android/image/ImageProcessorImpl;
.super Ljava/lang/Object;
.source "ImageProcessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;
    }
.end annotation


# static fields
.field public static final PARA_CACHE_SIZE:I = 0x1

.field public static final PARA_RENDER_MODE:I = 0x0

.field public static final RENDER_MODE_NORMAL:I = 0x1

.field public static final RENDER_MODE_QUALITY:I = 0x2

.field public static final RENDER_MODE_SPEED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageProcessorImpl"


# instance fields
.field final DEFAULT_CACHE_SIZE:I

.field private mCacheSize:I

.field private mCancelOperation:Z

.field private mInputStream:Ljava/io/InputStream;

.field private mNativeImageBuf:I

.field private mNativeInputStream:I

.field private mNativeOutputStream:I

.field private mNativeSession:I

.field private mNativeSpmo:I

.field private mOutputStream:Ljava/io/OutputStream;

.field private mRenderMode:I

.field private mScreens:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-string v4, "ImageProcessorImpl"

    const-string v1, "ImageProcessorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--prepare loadImageProcessorImpl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "image_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "ImageProcessorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--finish load lib "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ImageProcessorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .parameter "fileName"
    .parameter "speedData"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->DEFAULT_CACHE_SIZE:I

    const-string v0, "ImageProcessorImpl"

    const-string v1, "create ImageProcessorImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->init()V

    invoke-direct {p0, p1, p2}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->native_setup_file(Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 2
    .parameter "imgBbuffer"
    .parameter "speedData"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->DEFAULT_CACHE_SIZE:I

    const-string v0, "ImageProcessorImpl"

    const-string v1, "create ImageProcessorImpl from buf"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->init()V

    invoke-direct {p0, p1, p2}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->native_setup_buf([B[B)V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/internal/android/image/ImageProcessorImpl;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mScreens:Ljava/util/Vector;

    return-object v0
.end method

.method public static native createSpeedData(Ljava/lang/String;IIII)[B
.end method

.method public static createSpeedData([BIIII)[B
    .locals 1
    .parameter "image"
    .parameter "quality"
    .parameter "mode"
    .parameter "optimalWidth"
    .parameter "optimalHeight"

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->createSpeedDataBuf([BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method private static native createSpeedDataBuf([BIIII)[B
.end method

.method private destroyScreen()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mScreens:Ljava/util/Vector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mScreens:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mScreens:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mScreens:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    invoke-virtual {v1}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mScreens:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public static native extractSpeedData(Ljava/lang/String;)[B
.end method

.method public static extractSpeedData([B)[B
    .locals 1
    .parameter "image"

    .prologue
    invoke-static {p0}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->extractSpeedDataBuf([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static native extractSpeedDataBuf([B)[B
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mNativeSpmo:I

    iput-boolean v0, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mCancelOperation:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mCacheSize:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mRenderMode:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mScreens:Ljava/util/Vector;

    return-void
.end method

.method public static native insertSpeedData(Ljava/lang/String;[BLjava/lang/String;)V
.end method

.method public static insertSpeedData([B[B)[B
    .locals 1
    .parameter "inData"
    .parameter "speedData"

    .prologue
    invoke-static {p0, p1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->insertSpeedDataBuf([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static native insertSpeedDataBuf([B[B)[B
.end method

.method private native nativeSetAGIFFrame(I)I
.end method

.method private native nativeSetParameter(II)V
.end method

.method private native native_release()V
.end method

.method private native native_setup_buf([B[B)V
.end method

.method private native native_setup_file(Ljava/lang/String;[B)V
.end method

.method public static native squeezeJPEG([BILjava/lang/String;)Z
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mCancelOperation:Z

    return-void
.end method

.method public createScreen(IILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;
    .locals 7
    .parameter "scrnWidth"
    .parameter "scrnHeight"
    .parameter "pixelFormat"
    .parameter "scrnBuf"

    .prologue
    const/4 v0, 0x0

    .local v0, scrn:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne p2, v1, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-ne p3, v1, :cond_0

    new-instance v0, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    .end local v0           #scrn:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;-><init>(Lcom/motorola/internal/android/image/ImageProcessorImpl;IILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;Lcom/motorola/internal/android/image/ImageProcessorImpl;)V

    .restart local v0       #scrn:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;
    iget-object v1, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mScreens:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input Mismatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public native crop(IIII)V
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native getImageHeight()I
.end method

.method public native getImageWidth()I
.end method

.method public getParameter(I)I
    .locals 3
    .parameter "para"

    .prologue
    const/4 v0, -0x1

    .local v0, rel:I
    packed-switch p1, :pswitch_data_0

    const-string v1, "ImageProcessorImpl"

    const-string v2, "unexpected para"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid para"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget v0, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mCacheSize:I

    :goto_0
    return v0

    :pswitch_1
    iget v0, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mRenderMode:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public native nativeGetSourceAttributeInt(I)I
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->destroyScreen()V

    invoke-direct {p0}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->native_release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native rotate(I)V
.end method

.method public native saveAsBuffer(III)[B
.end method

.method public native saveAsRaw(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method public setAGIFFrame(I)I
    .locals 1
    .parameter "nthFrame"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->nativeSetAGIFFrame(I)I

    move-result v0

    return v0
.end method

.method public setParameter(II)V
    .locals 2
    .parameter "para"
    .parameter "value"

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid para"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->nativeSetParameter(II)V

    return-void

    :pswitch_0
    iput p2, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mCacheSize:I

    goto :goto_0

    :pswitch_1
    iput p2, p0, Lcom/motorola/internal/android/image/ImageProcessorImpl;->mRenderMode:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
