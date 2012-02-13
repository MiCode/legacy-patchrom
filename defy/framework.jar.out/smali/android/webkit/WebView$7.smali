.class Landroid/webkit/WebView$7;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;

.field final synthetic val$copy:Landroid/os/Bundle;

.field final synthetic val$in:Ljava/io/FileInputStream;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/io/FileInputStream;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebView$7;->this$0:Landroid/webkit/WebView;

    iput-object p2, p0, Landroid/webkit/WebView$7;->val$in:Ljava/io/FileInputStream;

    iput-object p3, p0, Landroid/webkit/WebView$7;->val$copy:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/webkit/WebView$7;->val$in:Ljava/io/FileInputStream;

    invoke-static {v1}, Landroid/graphics/Picture;->createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;

    move-result-object v0

    .local v0, p:Landroid/graphics/Picture;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView$7;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v2, Landroid/webkit/WebView$7$1;

    invoke-direct {v2, p0, v0}, Landroid/webkit/WebView$7$1;-><init>(Landroid/webkit/WebView$7;Landroid/graphics/Picture;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/webkit/WebView$7;->val$in:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    .end local v0           #p:Landroid/graphics/Picture;
    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Landroid/webkit/WebView$7;->val$in:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v1

    .restart local v0       #p:Landroid/graphics/Picture;
    :catch_0
    move-exception v1

    goto :goto_0

    .end local v0           #p:Landroid/graphics/Picture;
    :catch_1
    move-exception v2

    goto :goto_1
.end method
