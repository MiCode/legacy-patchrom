.class Lcom/motorola/blur/quickupload/OnlineAlbumUpload$6;
.super Ljava/lang/Object;
.source "OnlineAlbumUpload.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->createDlgLargeUpload()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;


# direct methods
.method constructor <init>(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$6;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$6;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    const/4 v1, 0x1

    #setter for: Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadOverWifiMode:I
    invoke-static {v0, v1}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->access$202(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;I)I

    .line 401
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$6;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    invoke-virtual {v0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->showToast()V

    .line 402
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$6;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    invoke-virtual {v0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->startUpload()V

    .line 403
    return-void
.end method
