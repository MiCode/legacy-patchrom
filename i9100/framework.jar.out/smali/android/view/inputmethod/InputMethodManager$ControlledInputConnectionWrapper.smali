.class Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
.super Lcom/android/internal/view/IInputConnectionWrapper;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControlledInputConnectionWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .locals 0
    .parameter
    .parameter "mainLooper"
    .parameter "conn"

    .prologue
    .line 394
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 395
    invoke-direct {p0, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V

    .line 396
    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v0, v0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    return v0
.end method
