.class Lcom/motorola/blur/quickupload/OnlineAlbumUpload$5;
.super Ljava/lang/Object;
.source "OnlineAlbumUpload.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->createDlgDataSaver()Landroid/app/Dialog;
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
    .line 368
    iput-object p1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$5;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 370
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.datamanager.app.START_DATA_SAVER_MODE_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$5;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    invoke-virtual {v1, v0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->startActivity(Landroid/content/Intent;)V

    .line 372
    return-void
.end method
