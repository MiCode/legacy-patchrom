.class Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyguardViewHost"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;)V
    .locals 0
    .parameter "context"
    .parameter "callback"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDoneDrawing()V

    return-void
.end method
