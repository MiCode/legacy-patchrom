.class Lcom/motorola/blur/settings/EditAccountActivity$2$1;
.super Landroid/webkit/WebChromeClient;
.source "EditAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/EditAccountActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/blur/settings/EditAccountActivity$2;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$2$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$2;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "progress"

    .prologue
    const/16 v1, 0x64

    .line 514
    const/16 v0, 0x3c

    if-le p2, v0, :cond_1

    if-ge p2, v1, :cond_1

    .line 515
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$2$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$2;

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/settings/EditAccountActivity;->onProgress()V

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    if-ne p2, v1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$2$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$2;

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/motorola/blur/settings/EditAccountActivity;->access$800(Lcom/motorola/blur/settings/EditAccountActivity;)V

    goto :goto_0
.end method
