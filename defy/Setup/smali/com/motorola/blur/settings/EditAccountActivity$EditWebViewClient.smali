.class public Lcom/motorola/blur/settings/EditAccountActivity$EditWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "EditAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/EditAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditAccountActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$EditWebViewClient;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$EditWebViewClient;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->setupProgressDialog()V
    invoke-static {v0}, Lcom/motorola/blur/settings/EditAccountActivity;->access$100(Lcom/motorola/blur/settings/EditAccountActivity;)V

    .line 165
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$EditWebViewClient;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->interceptUrl(Ljava/lang/String;)Z
    invoke-static {v0, p2}, Lcom/motorola/blur/settings/EditAccountActivity;->access$000(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 172
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$EditWebViewClient;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/settings/EditAccountActivity;->processFrob()V

    .line 173
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$EditWebViewClient;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->setupProgressDialog()V
    invoke-static {v0}, Lcom/motorola/blur/settings/EditAccountActivity;->access$100(Lcom/motorola/blur/settings/EditAccountActivity;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 179
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const-string v0, "EAA"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Recieved error for loading url: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$EditWebViewClient;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->interceptUrl(Ljava/lang/String;)Z
    invoke-static {v0, p2}, Lcom/motorola/blur/settings/EditAccountActivity;->access$000(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
