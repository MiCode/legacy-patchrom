.class Lcom/android/server/AccessibilityManagerService$1;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AccessibilityManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/AccessibilityManagerService$1;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/AccessibilityManagerService$Service;

    .local v2, service:Lcom/android/server/AccessibilityManagerService$Service;
    iget v0, p1, Landroid/os/Message;->arg1:I

    .local v0, eventType:I
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService$1;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v3, v3, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService$1;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->notifyEventListenerLocked(Lcom/android/server/AccessibilityManagerService$Service;I)V
    invoke-static {v4, v2, v0}, Lcom/android/server/AccessibilityManagerService;->access$000(Lcom/android/server/AccessibilityManagerService;Lcom/android/server/AccessibilityManagerService$Service;I)V

    iget-object v4, v2, Lcom/android/server/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .local v1, oldEvent:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v4, v2, Lcom/android/server/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService$1;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->tryRecycleLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    invoke-static {v4, v1}, Lcom/android/server/AccessibilityManagerService;->access$100(Lcom/android/server/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V

    monitor-exit v3

    return-void

    .end local v1           #oldEvent:Landroid/view/accessibility/AccessibilityEvent;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
