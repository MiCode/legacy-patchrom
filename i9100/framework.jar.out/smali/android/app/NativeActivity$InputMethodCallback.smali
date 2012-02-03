.class Landroid/app/NativeActivity$InputMethodCallback;
.super Lcom/android/internal/view/IInputMethodCallback$Stub;
.source "NativeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NativeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputMethodCallback"
.end annotation


# instance fields
.field mNa:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/NativeActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/NativeActivity;)V
    .locals 1
    .parameter "na"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodCallback$Stub;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/NativeActivity$InputMethodCallback;->mNa:Ljava/lang/ref/WeakReference;

    .line 127
    return-void
.end method


# virtual methods
.method public finishedEvent(IZ)V
    .locals 2
    .parameter "seq"
    .parameter "handled"

    .prologue
    .line 131
    iget-object v1, p0, Landroid/app/NativeActivity$InputMethodCallback;->mNa:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NativeActivity;

    .line 132
    .local v0, na:Landroid/app/NativeActivity;
    if-eqz v0, :cond_0

    .line 133
    #getter for: Landroid/app/NativeActivity;->mNativeHandle:I
    invoke-static {v0}, Landroid/app/NativeActivity;->access$000(Landroid/app/NativeActivity;)I

    move-result v1

    #calls: Landroid/app/NativeActivity;->finishPreDispatchKeyEventNative(IIZ)V
    invoke-static {v0, v1, p1, p2}, Landroid/app/NativeActivity;->access$100(Landroid/app/NativeActivity;IIZ)V

    .line 135
    :cond_0
    return-void
.end method

.method public sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 140
    return-void
.end method
