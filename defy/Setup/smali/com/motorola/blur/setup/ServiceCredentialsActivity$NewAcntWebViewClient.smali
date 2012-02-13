.class public Lcom/motorola/blur/setup/ServiceCredentialsActivity$NewAcntWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ServiceCredentialsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ServiceCredentialsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewAcntWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$NewAcntWebViewClient;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

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
    .line 166
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$NewAcntWebViewClient;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->setupProgressDialog()V

    .line 167
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$NewAcntWebViewClient;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    #calls: Lcom/motorola/blur/setup/ServiceCredentialsActivity;->interceptUrl(Ljava/lang/String;)Z
    invoke-static {v0, p2}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->access$000(Lcom/motorola/blur/setup/ServiceCredentialsActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 174
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$NewAcntWebViewClient;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->processFrob()V

    .line 175
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$NewAcntWebViewClient;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->setupProgressDialog()V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 181
    const-string v0, "SCA"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Recieved error for loading url: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    return-void
.end method
