.class Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;
.super Ljava/lang/Object;
.source "IInputMethodWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethod$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/IInputMethodWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputMethodSessionCallbackWrapper"
.end annotation


# instance fields
.field final mCb:Lcom/android/internal/view/IInputMethodCallback;

.field final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/view/IInputMethodCallback;)V
    .locals 0
    .parameter "context"
    .parameter "cb"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mCb:Lcom/android/internal/view/IInputMethodCallback;

    return-void
.end method


# virtual methods
.method public sessionCreated(Landroid/view/inputmethod/InputMethodSession;)V
    .locals 3
    .parameter "session"

    .prologue
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/inputmethodservice/IInputMethodSessionWrapper;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSession;)V

    .local v0, wrap:Landroid/inputmethodservice/IInputMethodSessionWrapper;
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mCb:Lcom/android/internal/view/IInputMethodCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/view/IInputMethodCallback;->sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V

    .end local v0           #wrap:Landroid/inputmethodservice/IInputMethodSessionWrapper;
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mCb:Lcom/android/internal/view/IInputMethodCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodCallback;->sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
