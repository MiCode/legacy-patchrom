.class Lcom/motorola/CameraF/MultishotPostSelectSingleImage$3;
.super Ljava/lang/Object;
.source "MultishotPostSelectSingleImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/MultishotPostSelectSingleImage;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/MultishotPostSelectSingleImage;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$3;->this$0:Lcom/motorola/CameraF/MultishotPostSelectSingleImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 126
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "starting Upload activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.CameraF.ONLINE_ALBUM_UPLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$3;->this$0:Lcom/motorola/CameraF/MultishotPostSelectSingleImage;

    #getter for: Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mSelectedUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->access$000(Lcom/motorola/CameraF/MultishotPostSelectSingleImage;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$3;->this$0:Lcom/motorola/CameraF/MultishotPostSelectSingleImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    return-void
.end method
