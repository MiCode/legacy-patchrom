.class Landroid/webkit/WebView$9$1;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$9;

.field final synthetic val$p:Landroid/graphics/Picture;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$9;Landroid/graphics/Picture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2099
    iput-object p1, p0, Landroid/webkit/WebView$9$1;->this$1:Landroid/webkit/WebView$9;

    iput-object p2, p0, Landroid/webkit/WebView$9$1;->val$p:Landroid/graphics/Picture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2101
    iget-object v0, p0, Landroid/webkit/WebView$9$1;->this$1:Landroid/webkit/WebView$9;

    iget-object v0, v0, Landroid/webkit/WebView$9;->this$0:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebView$9$1;->val$p:Landroid/graphics/Picture;

    iget-object v2, p0, Landroid/webkit/WebView$9$1;->this$1:Landroid/webkit/WebView$9;

    iget-object v2, v2, Landroid/webkit/WebView$9;->val$copy:Landroid/os/Bundle;

    #calls: Landroid/webkit/WebView;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->access$400(Landroid/webkit/WebView;Landroid/graphics/Picture;Landroid/os/Bundle;)V

    .line 2102
    return-void
.end method
