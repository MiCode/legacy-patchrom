.class Landroid/webkit/WebView$PostScale;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostScale"
.end annotation


# instance fields
.field final mUpdateTextWrap:Z

.field final mWebView:Landroid/webkit/WebView;

.field final mZoomMode:Landroid/webkit/WebView$ZoomMode;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;ZLandroid/webkit/WebView$ZoomMode;)V
    .locals 0
    .parameter "webView"
    .parameter "updateTextWrap"
    .parameter "mode"

    .prologue
    .line 6108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6109
    iput-object p3, p0, Landroid/webkit/WebView$PostScale;->mZoomMode:Landroid/webkit/WebView$ZoomMode;

    .line 6111
    iput-object p1, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    .line 6112
    iput-boolean p2, p0, Landroid/webkit/WebView$PostScale;->mUpdateTextWrap:Z

    .line 6113
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 6116
    iget-object v0, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6119
    iget-object v0, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v1}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v1

    iget-boolean v2, p0, Landroid/webkit/WebView$PostScale;->mUpdateTextWrap:Z

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/webkit/WebView$PostScale;->mZoomMode:Landroid/webkit/WebView$ZoomMode;

    const/4 v5, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static/range {v0 .. v5}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 6124
    iget-object v0, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6125
    iget-object v0, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Landroid/webkit/WebView;->access$200(Landroid/webkit/WebView;)V

    .line 6128
    :cond_0
    return-void
.end method
