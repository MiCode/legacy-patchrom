.class public Lcom/motorola/blur/setup/ServiceButtonLayoutView;
.super Landroid/widget/LinearLayout;
.source "ServiceButtonLayoutView.java"


# instance fields
.field mImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v2, p0, Lcom/motorola/blur/setup/ServiceButtonLayoutView;->mImage:Landroid/widget/ImageView;

    .line 26
    const v1, 0x303001f

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/ServiceButtonLayoutView;->addView(Landroid/view/View;)V

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/ServiceButtonLayoutView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    return-void
.end method

.method private getButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceButtonLayoutView;->mImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 54
    const v0, 0x3090011

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/ServiceButtonLayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceButtonLayoutView;->mImage:Landroid/widget/ImageView;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceButtonLayoutView;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public setId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceButtonLayoutView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 44
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceButtonLayoutView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceButtonLayoutView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 32
    const v1, 0x3090012

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/ServiceButtonLayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    .local v0, text:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method
