.class Lcom/motorola/CameraF/MultishotPostSelectSingleImage$2;
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
    .line 98
    iput-object p1, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$2;->this$0:Lcom/motorola/CameraF/MultishotPostSelectSingleImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ATTACH_DATA"

    iget-object v2, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$2;->this$0:Lcom/motorola/CameraF/MultishotPostSelectSingleImage;

    #getter for: Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mSelectedUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->access$000(Lcom/motorola/CameraF/MultishotPostSelectSingleImage;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    .local v0, intent:Landroid/content/Intent;
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "starting setas activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$2;->this$0:Lcom/motorola/CameraF/MultishotPostSelectSingleImage;

    iget-object v2, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$2;->this$0:Lcom/motorola/CameraF/MultishotPostSelectSingleImage;

    const v3, 0x7f0b002c

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v1

    goto :goto_0
.end method
