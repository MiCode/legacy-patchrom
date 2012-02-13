.class public Landroid/app/SearchDialog$SearchBar;
.super Landroid/widget/LinearLayout;
.source "SearchDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchBar"
.end annotation


# instance fields
.field private mSearchDialog:Landroid/app/SearchDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Landroid/app/SearchDialog$SearchBar;->mSearchDialog:Landroid/app/SearchDialog;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/app/SearchDialog$SearchBar;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .local v0, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    move v1, v3

    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    return v1

    .restart local v0       #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/SearchDialog$SearchBar;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v1}, Landroid/app/SearchDialog;->onBackPressed()V

    move v1, v3

    goto :goto_0

    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setSearchDialog(Landroid/app/SearchDialog;)V
    .locals 0
    .parameter "searchDialog"

    .prologue
    iput-object p1, p0, Landroid/app/SearchDialog$SearchBar;->mSearchDialog:Landroid/app/SearchDialog;

    return-void
.end method
