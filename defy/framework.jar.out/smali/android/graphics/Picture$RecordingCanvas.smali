.class Landroid/graphics/Picture$RecordingCanvas;
.super Landroid/graphics/Canvas;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Picture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingCanvas"
.end annotation


# instance fields
.field private final mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Landroid/graphics/Picture;I)V
    .locals 0
    .parameter "pict"
    .parameter "nativeCanvas"

    .prologue
    invoke-direct {p0, p2}, Landroid/graphics/Canvas;-><init>(I)V

    iput-object p1, p0, Landroid/graphics/Picture$RecordingCanvas;->mPicture:Landroid/graphics/Picture;

    return-void
.end method


# virtual methods
.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 2
    .parameter "picture"

    .prologue
    iget-object v0, p0, Landroid/graphics/Picture$RecordingCanvas;->mPicture:Landroid/graphics/Picture;

    if-ne v0, p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot draw a picture into its recording canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot call setBitmap on a picture canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
