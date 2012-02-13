.class Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$3;
.super Ljava/lang/Object;
.source "OnlineAlbumUpload.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$3;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$3;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;

    #setter for: Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->startUpload:Z
    invoke-static {v0, v2}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->access$002(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;Z)Z

    .line 189
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$3;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->setResult(ILandroid/content/Intent;)V

    .line 190
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$3;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;

    invoke-virtual {v0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->finish()V

    .line 191
    return-void
.end method
