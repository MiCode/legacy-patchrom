.class Landroid/widget/ImageView$LoadImageDecoder;
.super Ljava/lang/Thread;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageDecoder"
.end annotation


# instance fields
.field private encodedImageUri:Landroid/net/Uri;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

.field private mDecoder:Landroid/widget/ImageDecoder;

.field private mHeight:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/ImageView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView$LoadImageDecoder;->encodedImageUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/widget/ImageView$LoadImageDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    iput-object v0, p0, Landroid/widget/ImageView$LoadImageDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    iput-object v0, p0, Landroid/widget/ImageView$LoadImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    iput v1, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ImageView$LoadImageDecoder;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/net/Uri;Landroid/widget/ImageView$OnDecoderLoaded;)V
    .locals 12
    .parameter "uri"
    .parameter "callback"

    .prologue
    const/4 v10, 0x0

    const-string v7, " H "

    const-string v11, "Unable to close stream. FATAL error"

    const-string v7, "ImageView"

    const/4 v6, 0x0

    .local v6, weight:F
    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v7}, Landroid/widget/ImageView;->access$1400(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v7}, Landroid/widget/ImageView;->access$1500(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_0
    iput-object p1, p0, Landroid/widget/ImageView$LoadImageDecoder;->encodedImageUri:Landroid/net/Uri;

    iput-object p2, p0, Landroid/widget/ImageView$LoadImageDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v7}, Landroid/widget/ImageView;->access$1600(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v7}, Landroid/widget/ImageView;->access$1700(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    const/4 v2, 0x0

    .local v2, input:Ljava/io/InputStream;
    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    if-ltz v7, :cond_2

    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    if-ltz v7, :cond_2

    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    if-nez v7, :cond_1

    cmpl-float v7, v6, v10

    if-gtz v7, :cond_2

    :cond_1
    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    if-nez v7, :cond_8

    cmpl-float v7, v6, v10

    if-lez v7, :cond_8

    :cond_2
    const/4 v5, 0x0

    .local v5, screenWidth:I
    const/4 v4, 0x0

    .local v4, screenHeight:I
    :try_start_0
    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/widget/ImageView;->access$1800(Landroid/widget/ImageView;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/widget/ImageView;->access$1900(Landroid/widget/ImageView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/ImageView$LoadImageDecoder;->encodedImageUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v7

    if-lez v7, :cond_7

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v3, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v7, 0x0

    invoke-static {v2, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const-string v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Image Size W "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " H "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    if-ltz v7, :cond_3

    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    if-nez v7, :cond_4

    cmpl-float v7, v6, v10

    if-lez v7, :cond_4

    :cond_3
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ge v7, v5, :cond_9

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    iput v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    :cond_4
    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    if-ltz v7, :cond_5

    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    if-nez v7, :cond_6

    cmpl-float v7, v6, v10

    if-lez v7, :cond_6

    :cond_5
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v7, v4, :cond_a

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_1
    iput v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    :cond_6
    const-string v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Revised W "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " H "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_7
    if-eqz v2, :cond_8

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v0           #display:Landroid/view/Display;
    .end local v4           #screenHeight:I
    .end local v5           #screenWidth:I
    :cond_8
    :goto_2
    return-void

    .restart local v0       #display:Landroid/view/Display;
    .restart local v3       #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #screenHeight:I
    .restart local v5       #screenWidth:I
    :cond_9
    move v7, v5

    goto :goto_0

    :cond_a
    move v7, v4

    goto :goto_1

    .end local v0           #display:Landroid/view/Display;
    .end local v3           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Specify dimensions for ImageView"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_8

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    const-string v7, "Unable to close stream. FATAL error"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-static {v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_b

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_b
    :goto_4
    throw v7

    :catch_2
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "Unable to close stream. FATAL error"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #display:Landroid/view/Display;
    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "Unable to close stream. FATAL error"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    goto :goto_3
.end method

.method public run()V
    .locals 12

    .prologue
    const-string v5, "ImageView"

    const-string v11, "ImageView unable to close stream"

    const/4 v2, 0x0

    .local v2, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/ImageView;->access$2000(Landroid/widget/ImageView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ImageView$LoadImageDecoder;->encodedImageUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .local v3, length:I
    const/4 v0, 0x0

    .local v0, bytes:[B
    if-lez v3, :cond_2

    new-array v0, v3, [B

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v5, Landroid/widget/ImageDecoder;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Landroid/widget/ImageDecoder;-><init>([BZ)V

    iput-object v5, p0, Landroid/widget/ImageView$LoadImageDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    iget v5, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    iget v6, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/ImageView$LoadImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Landroid/widget/ImageView$LoadImageDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    iget-object v6, p0, Landroid/widget/ImageView$LoadImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageDecoder;->setOutputBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Landroid/widget/ImageView$LoadImageDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    invoke-virtual {v5}, Landroid/widget/ImageDecoder;->decode()V

    iget-object v5, p0, Landroid/widget/ImageView$LoadImageDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    invoke-virtual {v5}, Landroid/widget/ImageDecoder;->getNumberOfFrames()I

    move-result v4

    .local v4, numFrames:I
    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    const-string v5, "ImageView"

    const-string v6, "Recycling an unwanted bitmap"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/widget/ImageView$LoadImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v5, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/widget/ImageView;->access$2100(Landroid/widget/ImageView;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroid/widget/ImageView$CallbackRunnable;

    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/widget/ImageView$LoadImageDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    iget-object v9, p0, Landroid/widget/ImageView$LoadImageDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    iget-object v10, p0, Landroid/widget/ImageView$LoadImageDecoder;->encodedImageUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/widget/ImageView$CallbackRunnable;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageDecoder;Landroid/widget/ImageView$OnDecoderLoaded;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .end local v0           #bytes:[B
    .end local v3           #length:I
    .end local v4           #numFrames:I
    :cond_1
    :goto_0
    return-void

    .restart local v0       #bytes:[B
    .restart local v3       #length:I
    :cond_2
    :try_start_2
    const-string v5, "ImageView"

    const-string v6, "No content in Uri"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/widget/ImageView;->access$2100(Landroid/widget/ImageView;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroid/widget/ImageView$CallbackRunnable;

    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/widget/ImageView$LoadImageDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    iget-object v10, p0, Landroid/widget/ImageView$LoadImageDecoder;->encodedImageUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/widget/ImageView$CallbackRunnable;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageDecoder;Landroid/widget/ImageView$OnDecoderLoaded;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageView unable to close stream"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .end local v0           #bytes:[B
    .end local v3           #length:I
    :goto_1
    invoke-static {v11, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v5, "ImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in ImageView"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v5, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/widget/ImageView;->access$2100(Landroid/widget/ImageView;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroid/widget/ImageView$CallbackRunnable;

    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/widget/ImageView$LoadImageDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    iget-object v10, p0, Landroid/widget/ImageView$LoadImageDecoder;->encodedImageUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/widget/ImageView$CallbackRunnable;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageDecoder;Landroid/widget/ImageView$OnDecoderLoaded;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageView unable to close stream"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_2
    throw v5

    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "ImageView unable to close stream"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bytes:[B
    .restart local v3       #length:I
    .restart local v4       #numFrames:I
    :catch_4
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "ImageView unable to close stream"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method
