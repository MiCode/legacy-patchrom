.class Lcom/motorola/blur/quickupload/OnlineAlbumUpload$3;
.super Ljava/lang/Object;
.source "OnlineAlbumUpload.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->createUploadDialog()Landroid/app/Dialog;
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
    .line 331
    iput-object p1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$3;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$3;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    #setter for: Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mStartUpload:Z
    invoke-static {v0, v2}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->access$102(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;Z)Z

    .line 336
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$3;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->setResult(ILandroid/content/Intent;)V

    .line 337
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$3;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    invoke-virtual {v0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->finish()V

    .line 338
    return-void
.end method
