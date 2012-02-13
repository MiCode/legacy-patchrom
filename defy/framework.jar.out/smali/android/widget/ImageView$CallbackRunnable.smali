.class Landroid/widget/ImageView$CallbackRunnable;
.super Ljava/lang/Object;
.source "ImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackRunnable"
.end annotation


# instance fields
.field mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

.field mDecoder:Landroid/widget/ImageDecoder;

.field mEncodedImageUri:Landroid/net/Uri;

.field final synthetic this$0:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageDecoder;Landroid/widget/ImageView$OnDecoderLoaded;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter "decoder"
    .parameter "callback"
    .parameter "encodedImageUri"

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Landroid/widget/ImageView$CallbackRunnable;->this$0:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView$CallbackRunnable;->mDecoder:Landroid/widget/ImageDecoder;

    iput-object v0, p0, Landroid/widget/ImageView$CallbackRunnable;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    iput-object v0, p0, Landroid/widget/ImageView$CallbackRunnable;->mEncodedImageUri:Landroid/net/Uri;

    iput-object p2, p0, Landroid/widget/ImageView$CallbackRunnable;->mDecoder:Landroid/widget/ImageDecoder;

    iput-object p3, p0, Landroid/widget/ImageView$CallbackRunnable;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    iput-object p4, p0, Landroid/widget/ImageView$CallbackRunnable;->mEncodedImageUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/ImageView$CallbackRunnable;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView$CallbackRunnable;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    iget-object v1, p0, Landroid/widget/ImageView$CallbackRunnable;->mDecoder:Landroid/widget/ImageDecoder;

    iget-object v2, p0, Landroid/widget/ImageView$CallbackRunnable;->mEncodedImageUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/widget/ImageView$OnDecoderLoaded;->run(Landroid/widget/ImageDecoder;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
