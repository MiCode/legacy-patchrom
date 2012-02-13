.class Lcom/android/internal/policy/impl/MouseCursor$1;
.super Lcom/android/internal/view/BaseInputHandler;
.source "MouseCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MouseCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MouseCursor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MouseCursor;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MouseCursor$1;->this$0:Lcom/android/internal/policy/impl/MouseCursor;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MouseCursor$1;->this$0:Lcom/android/internal/policy/impl/MouseCursor;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MouseCursor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/MouseCursor;->access$000()Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/MouseCursor;->access$000()Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->addTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
