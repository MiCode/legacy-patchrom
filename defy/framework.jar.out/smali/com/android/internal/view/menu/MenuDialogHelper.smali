.class public Lcom/android/internal/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mDialog:Landroid/app/AlertDialog;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/view/menu/MenuItemImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x52

    if-eq p2, v3, :cond_0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .local v2, win:Landroid/view/Window;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, decor:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .local v1, ds:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    move v3, v4

    .end local v0           #decor:Landroid/view/View;
    .end local v1           #ds:Landroid/view/KeyEvent$DispatcherState;
    .end local v2           #win:Landroid/view/Window;
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .restart local v2       #win:Landroid/view/Window;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .restart local v0       #decor:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .restart local v1       #ds:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    move v3, v4

    goto :goto_0

    .end local v0           #decor:Landroid/view/View;
    .end local v1           #ds:Landroid/view/KeyEvent$DispatcherState;
    .end local v2           #win:Landroid/view/Window;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    goto :goto_0
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 6
    .parameter "windowToken"

    .prologue
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .local v3, menu:Lcom/android/internal/view/menu/MenuBuilder;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuAdapter(I)Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mAdapter:Landroid/widget/ListAdapter;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v1

    .local v1, headerView:Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setRecycleOnMeasureEnabled(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz p1, :cond_0

    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_0
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x2

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
