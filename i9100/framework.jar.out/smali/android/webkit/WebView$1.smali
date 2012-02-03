.class Landroid/webkit/WebView$1;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Landroid/webkit/WebView$1;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .parameter "motionEvent"

    .prologue
    .line 359
    iget-object v0, p0, Landroid/webkit/WebView$1;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;
    invoke-static {v0}, Landroid/webkit/WebView;->access$000(Landroid/webkit/WebView;)Landroid/webkit/WebviewScaleGestureDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Landroid/webkit/WebView$1;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;
    invoke-static {v0}, Landroid/webkit/WebView;->access$000(Landroid/webkit/WebView;)Landroid/webkit/WebviewScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebviewScaleGestureDetector;->onMREvent(Landroid/hardware/motion/MREvent;)V

    .line 364
    :cond_0
    return-void
.end method
