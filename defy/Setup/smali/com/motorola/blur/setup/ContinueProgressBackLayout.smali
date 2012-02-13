.class public Lcom/motorola/blur/setup/ContinueProgressBackLayout;
.super Landroid/widget/LinearLayout;
.source "ContinueProgressBackLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v10, 0x4

    const/4 v9, -0x2

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const v7, 0x7f030019

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 26
    .local v4, layout:Landroid/widget/LinearLayout;
    sget-object v7, Lcom/motorola/blur/setup/R$styleable;->ContinueProgressBackLayout:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 28
    .local v6, styledAttrs:Landroid/content/res/TypedArray;
    if-eqz v6, :cond_2

    .line 38
    const v7, 0x7f0b0052

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 40
    .local v2, continueButton:Landroid/widget/Button;
    if-eqz v2, :cond_0

    .line 41
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, continueText:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .end local v3           #continueText:Ljava/lang/String;
    :cond_0
    const v7, 0x7f0b0051

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 48
    .local v0, backButton:Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 49
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, backText:Ljava/lang/String;
    if-eqz v1, :cond_3

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v6, v10, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .end local v1           #backText:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    .end local v0           #backButton:Landroid/widget/Button;
    .end local v2           #continueButton:Landroid/widget/Button;
    :cond_2
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p0, v4, v7}, Lcom/motorola/blur/setup/ContinueProgressBackLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void

    .line 51
    .end local v5           #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v0       #backButton:Landroid/widget/Button;
    .restart local v1       #backText:Ljava/lang/String;
    .restart local v2       #continueButton:Landroid/widget/Button;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method
