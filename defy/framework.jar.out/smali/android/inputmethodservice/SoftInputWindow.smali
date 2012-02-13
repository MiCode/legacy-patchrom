.class Landroid/inputmethodservice/SoftInputWindow;
.super Landroid/app/Dialog;
.source "SoftInputWindow.java"


# instance fields
.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/KeyEvent$DispatcherState;)V
    .locals 0
    .parameter "context"
    .parameter "theme"
    .parameter "dispatcherState"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {p0}, Landroid/inputmethodservice/SoftInputWindow;->initDockWindow()V

    return-void
.end method

.method private initDockWindow()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7db

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "InputMethod"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x108

    const/16 v3, 0x10a

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return v1

    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    return-void
.end method

.method public setGravity(I)V
    .locals 9
    .parameter "gravity"

    .prologue
    const/16 v8, 0x50

    const/16 v7, 0x30

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v4, v7, :cond_0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v4, v8, :cond_3

    :cond_0
    move v2, v6

    .local v2, oldIsVertical:Z
    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v4, v7, :cond_1

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v4, v8, :cond_4

    :cond_1
    move v1, v6

    .local v1, newIsVertical:Z
    :goto_1
    if-eq v2, v1, :cond_2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .local v3, tmp:I
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .end local v3           #tmp:I
    :cond_2
    return-void

    .end local v1           #newIsVertical:Z
    .end local v2           #oldIsVertical:Z
    :cond_3
    move v2, v5

    goto :goto_0

    .restart local v2       #oldIsVertical:Z
    :cond_4
    move v1, v5

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 4
    .parameter "size"

    .prologue
    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    :cond_0
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_1
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setToken(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
