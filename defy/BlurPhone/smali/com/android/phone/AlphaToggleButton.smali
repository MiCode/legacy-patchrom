.class public Lcom/android/phone/AlphaToggleButton;
.super Landroid/widget/ToggleButton;
.source "AlphaToggleButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/phone/AlphaToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 44
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/AlphaToggleButton;->setTextColor(I)V

    .line 49
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 50
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/AlphaToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/phone/AlphaToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/AlphaToggleButton;->setTextColor(I)V

    goto :goto_0
.end method
