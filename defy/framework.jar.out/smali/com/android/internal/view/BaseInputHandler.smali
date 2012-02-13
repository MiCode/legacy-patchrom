.class public abstract Lcom/android/internal/view/BaseInputHandler;
.super Ljava/lang/Object;
.source "BaseInputHandler.java"

# interfaces
.implements Landroid/view/InputHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleKey(Landroid/view/KeyEvent;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public handleMotion(Landroid/view/MotionEvent;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method
