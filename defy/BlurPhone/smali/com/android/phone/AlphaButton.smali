.class public Lcom/android/phone/AlphaButton;
.super Landroid/widget/Button;
.source "AlphaButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const v5, 0x7f08000d

    const/16 v4, 0xff

    const/16 v3, 0x64

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0}, Lcom/android/phone/AlphaButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/phone/AlphaButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/phone/AlphaButton;->setTextColor(I)V

    .line 60
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 61
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/AlphaButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/phone/AlphaButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/AlphaButton;->setTextColor(I)V

    goto :goto_0

    .line 52
    :cond_1
    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/android/phone/AlphaButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 54
    invoke-virtual {p0, v2}, Lcom/android/phone/AlphaButton;->setTextColor(I)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/AlphaButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/phone/AlphaButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/AlphaButton;->setTextColor(I)V

    goto :goto_0
.end method
