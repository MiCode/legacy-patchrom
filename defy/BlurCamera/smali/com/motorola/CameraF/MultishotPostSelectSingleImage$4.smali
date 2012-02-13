.class Lcom/motorola/CameraF/MultishotPostSelectSingleImage$4;
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
    .line 136
    iput-object p1, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$4;->this$0:Lcom/motorola/CameraF/MultishotPostSelectSingleImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 138
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getting contentresolver to delelet Uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$4;->this$0:Lcom/motorola/CameraF/MultishotPostSelectSingleImage;

    #getter for: Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mSelectedUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->access$000(Lcom/motorola/CameraF/MultishotPostSelectSingleImage;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$4;->this$0:Lcom/motorola/CameraF/MultishotPostSelectSingleImage;

    invoke-virtual {v1}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$4;->this$0:Lcom/motorola/CameraF/MultishotPostSelectSingleImage;

    #getter for: Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mSelectedUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->access$000(Lcom/motorola/CameraF/MultishotPostSelectSingleImage;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "com.motorola.CameraF.Multishot"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity result com.motorola.CameraF.Multishot 8"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$4;->this$0:Lcom/motorola/CameraF/MultishotPostSelectSingleImage;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->setResult(ILandroid/content/Intent;)V

    .line 144
    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$4;->this$0:Lcom/motorola/CameraF/MultishotPostSelectSingleImage;

    invoke-virtual {v1}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->finish()V

    .line 146
    return-void
.end method
