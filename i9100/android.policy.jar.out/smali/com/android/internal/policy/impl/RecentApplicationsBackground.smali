.class public Lcom/android/internal/policy/impl/RecentApplicationsBackground;
.super Landroid/widget/LinearLayout;
.source "RecentApplicationsBackground.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentApplicationsBackground"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mTmp0:Landroid/graphics/Rect;

.field private mTmp1:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mTmp0:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mTmp1:Landroid/graphics/Rect;

    .line 50
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->init()V

    .line 51
    return-void
.end method

.method private getChildBounds(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 139
    const v3, 0x7fffffff

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 140
    const/high16 v3, -0x8000

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->getChildCount()I

    move-result v0

    .line 142
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 143
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 144
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 145
    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 146
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 147
    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 148
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 142
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->setPadding(IIII)V

    .line 57
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->setGravity(I)V

    .line 58
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 86
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 87
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackgroundSizeChanged:Z

    if-eqz v7, :cond_0

    .line 88
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackgroundSizeChanged:Z

    .line 89
    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mTmp0:Landroid/graphics/Rect;

    .line 90
    .local v3, chld:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mTmp1:Landroid/graphics/Rect;

    .line 91
    .local v1, bkg:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 92
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->getChildBounds(Landroid/graphics/Rect;)V

    .line 95
    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, v7, v8

    .line 96
    .local v6, top:I
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int v2, v7, v8

    .line 107
    .local v2, bottom:I
    const/4 v4, 0x0

    .line 108
    .local v4, left:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->getRight()I

    move-result v5

    .line 110
    .local v5, right:I
    invoke-virtual {v0, v4, v6, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    .end local v1           #bkg:Landroid/graphics/Rect;
    .end local v2           #bottom:I
    .end local v3           #chld:Landroid/graphics/Rect;
    .end local v4           #left:I
    .end local v5           #right:I
    .end local v6           #top:I
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    const/16 v7, 0xbf

    invoke-virtual {p1, v7, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 122
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 123
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 77
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 80
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 81
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->setWillNotDraw(Z)V

    .line 130
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 136
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->setWillNotDraw(Z)V

    .line 63
    iget v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBottom:I

    if-eq v0, p4, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackgroundSizeChanged:Z

    .line 66
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
