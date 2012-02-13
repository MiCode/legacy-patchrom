.class Lcom/motorola/android/media/MediaScannerConnectionExt$1;
.super Landroid/media/IMediaScannerListener$Stub;
.source "MediaScannerConnectionExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/media/MediaScannerConnectionExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/media/MediaScannerConnectionExt;


# direct methods
.method constructor <init>(Lcom/motorola/android/media/MediaScannerConnectionExt;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt$1;->this$0:Lcom/motorola/android/media/MediaScannerConnectionExt;

    invoke-direct {p0}, Landroid/media/IMediaScannerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .parameter "path"
    .parameter "uri"

    .prologue
    iget-object v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt$1;->this$0:Lcom/motorola/android/media/MediaScannerConnectionExt;

    #getter for: Lcom/motorola/android/media/MediaScannerConnectionExt;->mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;
    invoke-static {v1}, Lcom/motorola/android/media/MediaScannerConnectionExt;->access$000(Lcom/motorola/android/media/MediaScannerConnectionExt;)Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

    move-result-object v0

    .local v0, client:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
