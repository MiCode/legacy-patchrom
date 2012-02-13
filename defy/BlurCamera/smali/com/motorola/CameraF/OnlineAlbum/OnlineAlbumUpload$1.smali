.class Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$1;
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
    .line 168
    iput-object p1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$1;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$1;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;

    const-class v2, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$1;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    return-void
.end method
