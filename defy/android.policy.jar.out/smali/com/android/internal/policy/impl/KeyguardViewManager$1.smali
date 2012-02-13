.class Lcom/android/internal/policy/impl/KeyguardViewManager$1;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

.field final synthetic val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Lcom/android/internal/policy/impl/KeyguardViewBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->cleanUp()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
