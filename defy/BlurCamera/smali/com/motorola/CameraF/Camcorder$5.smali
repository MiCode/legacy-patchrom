.class Lcom/motorola/CameraF/Camcorder$5;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/Camcorder;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camcorder;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 2182
    iput-object p1, p0, Lcom/motorola/CameraF/Camcorder$5;->this$0:Lcom/motorola/CameraF/Camcorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x0

    const-string v7, "MotoCamcorder"

    .line 2183
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$5;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mLastValidFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/CameraF/Camcorder;->access$4700(Lcom/motorola/CameraF/Camcorder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2186
    .local v1, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2195
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$5;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/motorola/CameraF/Camcorder;->access$4500(Lcom/motorola/CameraF/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder$5;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mLastValidUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$5000(Lcom/motorola/CameraF/Camcorder;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2201
    :goto_1
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$5;->this$0:Lcom/motorola/CameraF/Camcorder;

    const/4 v3, 0x1

    #calls: Lcom/motorola/CameraF/Camcorder;->hideVideoFrameAndStartPreview(Z)V
    invoke-static {v2, v3}, Lcom/motorola/CameraF/Camcorder;->access$1500(Lcom/motorola/CameraF/Camcorder;Z)V

    .line 2205
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$5;->this$0:Lcom/motorola/CameraF/Camcorder;

    #calls: Lcom/motorola/CameraF/Camcorder;->interruptThumbnailThread()V
    invoke-static {v2}, Lcom/motorola/CameraF/Camcorder;->access$4100(Lcom/motorola/CameraF/Camcorder;)V

    .line 2206
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$5;->this$0:Lcom/motorola/CameraF/Camcorder;

    new-instance v3, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder$5;->this$0:Lcom/motorola/CameraF/Camcorder;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v6, v5}, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;-><init>(Lcom/motorola/CameraF/Camcorder;Landroid/graphics/Bitmap;Z)V

    #setter for: Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;
    invoke-static {v2, v3}, Lcom/motorola/CameraF/Camcorder;->access$4202(Lcom/motorola/CameraF/Camcorder;Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;)Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    .line 2207
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$5;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;
    invoke-static {v2}, Lcom/motorola/CameraF/Camcorder;->access$4200(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->start()V

    .line 2208
    return-void

    .line 2188
    :catch_0
    move-exception v0

    .line 2190
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "MotoCamcorder"

    const-string v2, "SecurityException trying to delete file!"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2197
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 2199
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MotoCamcorder"

    const-string v2, "Camcorder:onClick discard: file Delete failed"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
