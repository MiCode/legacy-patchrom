.class Lcom/motorola/blur/setup/AccountSuccessActivity$1$1;
.super Ljava/lang/Object;
.source "AccountSuccessActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/AccountSuccessActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/blur/setup/AccountSuccessActivity$1;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/AccountSuccessActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountSuccessActivity$1$1;->this$1:Lcom/motorola/blur/setup/AccountSuccessActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 62
    iget-object v1, p0, Lcom/motorola/blur/setup/AccountSuccessActivity$1$1;->this$1:Lcom/motorola/blur/setup/AccountSuccessActivity$1;

    iget-object v1, v1, Lcom/motorola/blur/setup/AccountSuccessActivity$1;->this$0:Lcom/motorola/blur/setup/AccountSuccessActivity;

    #getter for: Lcom/motorola/blur/setup/AccountSuccessActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;
    invoke-static {v1}, Lcom/motorola/blur/setup/AccountSuccessActivity;->access$100(Lcom/motorola/blur/setup/AccountSuccessActivity;)Lcom/motorola/blur/util/cache/ProviderIconCache;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/setup/AccountSuccessActivity$1$1;->this$1:Lcom/motorola/blur/setup/AccountSuccessActivity$1;

    iget-object v2, v2, Lcom/motorola/blur/setup/AccountSuccessActivity$1;->this$0:Lcom/motorola/blur/setup/AccountSuccessActivity;

    #getter for: Lcom/motorola/blur/setup/AccountSuccessActivity;->mProviderId:Ljava/lang/Long;
    invoke-static {v2}, Lcom/motorola/blur/setup/AccountSuccessActivity;->access$000(Lcom/motorola/blur/setup/AccountSuccessActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "_thumb.png"

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/blur/util/cache/ProviderIconCache;->getIcon(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/motorola/blur/setup/AccountSuccessActivity$1$1;->this$1:Lcom/motorola/blur/setup/AccountSuccessActivity$1;

    iget-object v1, v1, Lcom/motorola/blur/setup/AccountSuccessActivity$1;->this$0:Lcom/motorola/blur/setup/AccountSuccessActivity;

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    :cond_0
    return-void
.end method
