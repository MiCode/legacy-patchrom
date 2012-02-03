.class interface abstract Landroid/widget/TextView$CursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CursorController"
.end annotation


# virtual methods
.method public abstract doSwapCursorController()Z
.end method

.method public abstract endHandleVisible()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract hide()V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract offsetChanged(Landroid/widget/TextView$HandleView;)Z
.end method

.method public abstract onDetached()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract resetSwapCursorController()V
.end method

.method public abstract setPreviousOffset()V
.end method

.method public abstract show()V
.end method

.method public abstract updatePosition()V
.end method

.method public abstract updatePosition(Landroid/widget/TextView$HandleView;II)V
.end method
