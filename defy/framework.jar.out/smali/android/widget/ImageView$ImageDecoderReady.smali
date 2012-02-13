.class Landroid/widget/ImageView$ImageDecoderReady;
.super Ljava/lang/Object;
.source "ImageView.java"

# interfaces
.implements Landroid/widget/ImageView$OnDecoderLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageDecoderReady"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ImageView$ImageDecoderReady;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public run(Landroid/widget/ImageDecoder;Landroid/net/Uri;)V
    .locals 13
    .parameter "decoder"
    .parameter "encodedImage"

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    const-string v11, "ImageView"

    iget-object v8, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mStopReceived:Z
    invoke-static {v8}, Landroid/widget/ImageView;->access$200(Landroid/widget/ImageView;)Z

    move-result v8

    if-ne v8, v9, :cond_1

    const-string v8, "ImageView"

    const-string v8, "Stop Received before starting animation"

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string v8, "ImageView"

    const-string v8, "Unable to get Decoder"

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mAlternateImage:Landroid/graphics/Bitmap;
    invoke-static {v8}, Landroid/widget/ImageView;->access$300(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "ImageView"

    const-string v8, "Using alternate image"

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    iget-object v9, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mAlternateImage:Landroid/graphics/Bitmap;
    invoke-static {v9}, Landroid/widget/ImageView;->access$300(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageDecoder;->getNumberOfFrames()I

    move-result v3

    .local v3, numFrames:I
    if-le v3, v9, :cond_3

    const/4 v0, 0x0

    .local v0, callback:Landroid/widget/ImageView$OnDecoderLoaded;
    new-instance v0, Landroid/widget/ImageView$GifFrameAvailable;

    .end local v0           #callback:Landroid/widget/ImageView$OnDecoderLoaded;
    iget-object v8, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    invoke-direct {v0, v8, v12}, Landroid/widget/ImageView$GifFrameAvailable;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView$1;)V

    .restart local v0       #callback:Landroid/widget/ImageView$OnDecoderLoaded;
    iget-object v8, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/ImageView$AnimatedGifDecoder;

    iget-object v10, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    invoke-direct {v9, v10, v12}, Landroid/widget/ImageView$AnimatedGifDecoder;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView$1;)V

    #setter for: Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;
    invoke-static {v8, v9}, Landroid/widget/ImageView;->access$502(Landroid/widget/ImageView;Landroid/widget/ImageView$AnimatedGifDecoder;)Landroid/widget/ImageView$AnimatedGifDecoder;

    iget-object v8, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;
    invoke-static {v8}, Landroid/widget/ImageView;->access$500(Landroid/widget/ImageView;)Landroid/widget/ImageView$AnimatedGifDecoder;

    move-result-object v8

    invoke-virtual {v8, p1, v0}, Landroid/widget/ImageView$AnimatedGifDecoder;->init(Landroid/widget/ImageDecoder;Landroid/widget/ImageView$OnDecoderLoaded;)V

    iget-object v8, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;
    invoke-static {v8}, Landroid/widget/ImageView;->access$500(Landroid/widget/ImageView;)Landroid/widget/ImageView$AnimatedGifDecoder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView$AnimatedGifDecoder;->start()V

    goto :goto_0

    .end local v0           #callback:Landroid/widget/ImageView$OnDecoderLoaded;
    :cond_3
    const/4 v6, 0x1

    .local v6, s:I
    const/16 v7, 0x1e0

    .local v7, thumbnailBoundsLimit:I
    :goto_1
    iget-object v8, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v8}, Landroid/widget/ImageView;->access$700(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/2addr v8, v6

    if-gt v8, v7, :cond_4

    iget-object v8, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v8}, Landroid/widget/ImageView;->access$800(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/2addr v8, v6

    if-le v8, v7, :cond_5

    :cond_4
    mul-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_5
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    .local v2, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v8, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/widget/ImageView;->access$900(Landroid/widget/ImageView;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v8, 0x0

    invoke-static {v2, v8, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, outBitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_7

    iget-object v8, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    :cond_6
    :goto_2
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    const-string v8, "ImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .end local v5           #outBitmap:Landroid/graphics/Bitmap;
    :goto_3
    invoke-static {v11, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #outBitmap:Landroid/graphics/Bitmap;
    :cond_7
    :try_start_2
    iget-object v8, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mAlternateImage:Landroid/graphics/Bitmap;
    invoke-static {v8}, Landroid/widget/ImageView;->access$300(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    iget-object v9, p0, Landroid/widget/ImageView$ImageDecoderReady;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mAlternateImage:Landroid/graphics/Bitmap;
    invoke-static {v9}, Landroid/widget/ImageView;->access$300(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .end local v5           #outBitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v8

    move-object v1, v8

    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v8, "ImageView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    const-string v8, "ImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_8

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    :goto_4
    throw v8

    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "ImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method
