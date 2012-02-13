.class public final Lcom/android/internal/view/menu/IconMenuItemView;
.super Landroid/widget/TextView;
.source "IconMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;


# static fields
.field private static final NO_ALPHA:I = 0xff

.field private static sPrependShortcutLabel:Ljava/lang/String;


# instance fields
.field private mDisabledAlpha:F

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mPositionIconAvailable:Landroid/graphics/Rect;

.field private mPositionIconOutput:Landroid/graphics/Rect;

.field private mShortcutCaption:Ljava/lang/String;

.field private mShortcutCaptionMode:Z

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/IconMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/internal/view/menu/IconMenuItemView;->sPrependShortcutLabel:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/view/menu/IconMenuItemView;->sPrependShortcutLabel:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->MenuView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    const v2, 0x3f4ccccd

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mDisabledAlpha:F

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearance:I

    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private positionIcon()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    .local v0, tmpRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v4, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->getLineBounds(ILandroid/graphics/Rect;)I

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getWidth()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .local v0, isInAlphaState:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mDisabledAlpha:F

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .end local v0           #isInAlphaState:Z
    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .restart local v0       #isInAlphaState:Z
    :cond_3
    const/16 v2, 0xff

    goto :goto_1
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
        retrieveReturn = true
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method getTextAppropriateLayoutParams()Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .local v0, lp:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .end local v0           #lp:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;-><init>(II)V

    .restart local v0       #lp:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->desiredWidth:I

    return-object v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 2
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setEnabled(Z)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "title"
    .parameter "icon"

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setFocusable(Z)V

    iget v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearance:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/IconMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->positionIcon()V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getTextAppropriateLayoutParams()Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuItemView;->playSoundEffect(I)V

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method setCaptionMode(Z)V
    .locals 2
    .parameter "shortcut"

    .prologue
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, text:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setCheckable(Z)V
    .locals 0
    .parameter "checkable"

    .prologue
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "icon"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v2, p1, v2, v2}, Lcom/android/internal/view/menu/IconMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->requestLayout()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/internal/view/menu/IconMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setGravity(I)V

    goto :goto_0
.end method

.method setIconMenuView(Lcom/android/internal/view/menu/IconMenuView;)V
    .locals 0
    .parameter "iconMenuView"

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

    return-void
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .parameter "itemInvoker"

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    return-void
.end method

.method public setShortcut(ZC)V
    .locals 1
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setCaptionMode(Z)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setCaptionMode(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "v"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/IconMenuView;->markStaleChildren()V

    :cond_0
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method
