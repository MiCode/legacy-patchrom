.class Lcom/motorola/blur/quickupload/OnlineAlbumUpload$1;
.super Ljava/lang/Object;
.source "OnlineAlbumUpload.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->createSetupDialog(Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

.field final synthetic val$videoFinal:Z


# direct methods
.method constructor <init>(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$1;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    iput-boolean p2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$1;->val$videoFinal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const-string v3, "uploadType"

    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$1;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    const-class v2, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 243
    iget-boolean v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$1;->val$videoFinal:Z

    if-eqz v1, :cond_0

    .line 244
    const-string v1, "uploadType"

    const-string v1, "video"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$1;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->startActivityForResult(Landroid/content/Intent;I)V

    .line 251
    iget-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$1;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mSetupDialogAlreadyDisplayed:Z
    invoke-static {v1, v2}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->access$002(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;Z)Z

    .line 252
    return-void

    .line 246
    :cond_0
    const-string v1, "uploadType"

    const-string v1, "image"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
