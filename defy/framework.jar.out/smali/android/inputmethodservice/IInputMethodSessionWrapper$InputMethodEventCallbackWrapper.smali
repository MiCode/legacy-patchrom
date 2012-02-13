.class Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;
.super Ljava/lang/Object;
.source "IInputMethodSessionWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodSession$EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/IInputMethodSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputMethodEventCallbackWrapper"
.end annotation


# instance fields
.field final mCb:Lcom/android/internal/view/IInputMethodCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/view/IInputMethodCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;->mCb:Lcom/android/internal/view/IInputMethodCallback;

    return-void
.end method


# virtual methods
.method public finishedEvent(IZ)V
    .locals 1
    .parameter "seq"
    .parameter "handled"

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;->mCb:Lcom/android/internal/view/IInputMethodCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
