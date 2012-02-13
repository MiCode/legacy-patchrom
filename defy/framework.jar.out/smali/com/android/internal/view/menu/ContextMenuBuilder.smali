.class public Lcom/android/internal/view/menu/ContextMenuBuilder;
.super Lcom/android/internal/view/menu/MenuBuilder;
.source "ContextMenuBuilder.java"

# interfaces
.implements Landroid/view/ContextMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setHeaderIcon(I)Landroid/view/ContextMenu;
    .locals 0
    .parameter "iconRes"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ContextMenu;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/ContextMenu;
    .locals 0
    .parameter "icon"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ContextMenu;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/ContextMenu;
    .locals 0
    .parameter "titleRes"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ContextMenu;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    .locals 0
    .parameter "title"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ContextMenu;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;
    .locals 0
    .parameter "view"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ContextMenu;

    return-object p0
.end method

.method public show(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .locals 3
    .parameter "originalView"
    .parameter "token"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->createContextMenu(Landroid/view/ContextMenu;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const v1, 0xc351

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    .local v0, helper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    move-object v1, v0

    .end local v0           #helper:Lcom/android/internal/view/menu/MenuDialogHelper;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
