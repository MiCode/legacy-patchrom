.class Landroid/widget/ImageView$AnimatedGifDecoder;
.super Ljava/lang/Thread;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedGifDecoder"
.end annotation


# instance fields
.field private mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

.field private mDecoder:Landroid/widget/ImageDecoder;

.field private mIsCanceled:Z

.field final synthetic this$0:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->this$0:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    iput-object v0, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mIsCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ImageView$AnimatedGifDecoder;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mIsCanceled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    return-void
.end method

.method public init(Landroid/widget/ImageDecoder;Landroid/widget/ImageView$OnDecoderLoaded;)V
    .locals 0
    .parameter "decoder"
    .parameter "callback"

    .prologue
    iput-object p1, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    iput-object p2, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const-string v11, "ImageView"

    iget-object v5, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    invoke-virtual {v5}, Landroid/widget/ImageDecoder;->getNumberOfFrames()I

    move-result v4

    .local v4, numFrames:I
    const/4 v0, 0x0

    .local v0, currentFrame:I
    iget-object v5, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    invoke-virtual {v5}, Landroid/widget/ImageDecoder;->getOutputBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, mBitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    const-string v5, "ImageView"

    const-string v5, "Bitmap null"

    invoke-static {v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :goto_1
    iget-boolean v5, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mIsCanceled:Z

    if-nez v5, :cond_4

    const/4 v1, 0x0

    .local v1, delay:I
    iget-object v5, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    invoke-virtual {v5, v0}, Landroid/widget/ImageDecoder;->setFrameNumber(I)I

    move-result v1

    if-gtz v1, :cond_2

    const-string v5, "ImageView"

    const-string v5, "Reset delay"

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    :cond_2
    monitor-enter v3

    :try_start_0
    iget-object v5, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    invoke-virtual {v5}, Landroid/widget/ImageDecoder;->decode()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/widget/ImageView;->access$2100(Landroid/widget/ImageView;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroid/widget/ImageView$CallbackRunnable;

    iget-object v7, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->this$0:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    iget-object v9, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/widget/ImageView$CallbackRunnable;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageDecoder;Landroid/widget/ImageView$OnDecoderLoaded;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    int-to-long v5, v1

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v4, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/InterruptedException;
    const-string v5, "ImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Woken up "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mIsCanceled:Z

    goto :goto_2

    .end local v1           #delay:I
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_4
    iget-boolean v5, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mIsCanceled:Z

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    iput-object v10, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    iput-object v10, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    goto :goto_0
.end method
