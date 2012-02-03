.class public Landroid/widget/ImageSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "ImageSwitcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 55
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->showNext()V

    .line 57
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 41
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->showNext()V

    .line 43
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 49
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->showNext()V

    .line 50
    return-void
.end method
