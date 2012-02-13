.class public Landroid/graphics/Picture;
.super Ljava/lang/Object;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Picture$RecordingCanvas;
    }
.end annotation


# static fields
.field private static final WORKING_STREAM_STORAGE:I = 0x4000


# instance fields
.field private final mNativePicture:I

.field private mRecordingCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Picture;->nativeConstructor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/graphics/Picture;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter "nativePicture"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Landroid/graphics/Picture;->mNativePicture:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 1
    .parameter "src"

    .prologue
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/Picture;->mNativePicture:I

    :goto_0
    invoke-static {v0}, Landroid/graphics/Picture;->nativeConstructor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/graphics/Picture;-><init>(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;
    .locals 2
    .parameter "stream"

    .prologue
    new-instance v0, Landroid/graphics/Picture;

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-static {p0, v1}, Landroid/graphics/Picture;->nativeCreateFromStream(Ljava/io/InputStream;[B)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Picture;-><init>(I)V

    return-object v0
.end method

.method private static native nativeBeginRecording(III)I
.end method

.method private static native nativeConstructor(I)I
.end method

.method private static native nativeCreateFromStream(Ljava/io/InputStream;[B)I
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeDraw(II)V
.end method

.method private static native nativeEndRecording(I)V
.end method

.method private static native nativeWriteToStream(ILjava/io/OutputStream;[B)Z
.end method


# virtual methods
.method public beginRecording(II)Landroid/graphics/Canvas;
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    iget v1, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v1, p1, p2}, Landroid/graphics/Picture;->nativeBeginRecording(III)I

    move-result v0

    .local v0, ni:I
    new-instance v1, Landroid/graphics/Picture$RecordingCanvas;

    invoke-direct {v1, p0, v0}, Landroid/graphics/Picture$RecordingCanvas;-><init>(Landroid/graphics/Picture;I)V

    iput-object v1, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    return-object v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    :cond_0
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeDraw(II)V

    return-void
.end method

.method public endRecording()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v0}, Landroid/graphics/Picture;->nativeEndRecording(I)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v0}, Landroid/graphics/Picture;->nativeDestructor(I)V

    return-void
.end method

.method public native getHeight()I
.end method

.method public native getWidth()I
.end method

.method final ni()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    return v0
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-static {v0, p1, v1}, Landroid/graphics/Picture;->nativeWriteToStream(ILjava/io/OutputStream;[B)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method
