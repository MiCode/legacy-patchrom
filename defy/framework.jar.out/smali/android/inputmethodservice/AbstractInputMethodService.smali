.class public abstract Landroid/inputmethodservice/AbstractInputMethodService;
.super Landroid/app/Service;
.source "AbstractInputMethodService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;,
        Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    }
.end annotation


# instance fields
.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field private mInputMethod:Landroid/view/inputmethod/InputMethod;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    return-void
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    :cond_0
    new-instance v0, Landroid/inputmethodservice/IInputMethodWrapper;

    iget-object v1, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    invoke-direct {v0, p0, v1}, Landroid/inputmethodservice/IInputMethodWrapper;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;Landroid/view/inputmethod/InputMethod;)V

    return-object v0
.end method

.method public abstract onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
.end method

.method public abstract onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    return v0
.end method
