.class Lcom/motorola/blur/setup/ServiceCredentialsActivity$1$1;
.super Ljava/lang/Object;
.source "ServiceCredentialsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1$1;->this$1:Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 196
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1$1;->this$1:Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;

    iget-object v1, v1, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;
    invoke-static {v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->access$300(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)Lcom/motorola/blur/util/cache/ProviderIconCache;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1$1;->this$1:Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;

    iget-object v2, v2, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;
    invoke-static {v2}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->access$200(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "_thumb.png"

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/blur/util/cache/ProviderIconCache;->getIcon(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 198
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1$1;->this$1:Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;

    iget-object v1, v1, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mIntroText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->access$400(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1$1;->this$1:Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;

    iget-object v3, v3, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    invoke-virtual {v3}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 208
    :cond_0
    return-void
.end method
