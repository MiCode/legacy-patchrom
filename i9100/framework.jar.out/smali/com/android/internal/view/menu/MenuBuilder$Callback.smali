.class public interface abstract Lcom/android/internal/view/menu/MenuBuilder$Callback;
.super Ljava/lang/Object;
.source "MenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
.end method

.method public abstract onCloseSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
.end method

.method public abstract onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
.end method

.method public abstract onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
.end method

.method public abstract onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
.end method
