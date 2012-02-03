.class public Lcom/android/internal/view/menu/SubMenuBuilder;
.super Lcom/android/internal/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 0
    .parameter "context"
    .parameter "parentMenu"
    .parameter "item"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 38
    iput-object p3, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 39
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 77
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0
    .parameter "iconRes"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0
    .parameter "icon"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0
    .parameter "titleRes"

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0
    .parameter "title"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0
    .parameter "view"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1
    .parameter "iconRes"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 91
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .parameter "icon"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 86
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .parameter "isQwerty"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 44
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .parameter "shortcutsVisible"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setShortcutsVisible(Z)V

    .line 54
    return-void
.end method
