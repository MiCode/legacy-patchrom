.class Lcom/motorola/blur/setup/ServiceCredentialsActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "ServiceCredentialsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/ServiceCredentialsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$2;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 328
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 329
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "progress"

    .prologue
    const/16 v1, 0x64

    .line 320
    const/16 v0, 0x3c

    if-le p2, v0, :cond_1

    if-ge p2, v1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$2;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->onProgress()V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    if-ne p2, v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$2;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->dismissProgress()V

    goto :goto_0
.end method
