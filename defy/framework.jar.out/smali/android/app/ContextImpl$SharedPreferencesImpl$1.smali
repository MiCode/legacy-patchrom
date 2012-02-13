.class Landroid/app/ContextImpl$SharedPreferencesImpl$1;
.super Ljava/lang/Object;
.source "ContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ContextImpl$SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

.field final synthetic val$mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

.field final synthetic val$postWriteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/ContextImpl$SharedPreferencesImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    iput-object p2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->val$mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    iput-object p3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->val$postWriteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    #getter for: Landroid/app/ContextImpl$SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$700(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->val$mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    #calls: Landroid/app/ContextImpl$SharedPreferencesImpl;->writeToFile(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V
    invoke-static {v1, v2}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$800(Landroid/app/ContextImpl$SharedPreferencesImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v1}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$310(Landroid/app/ContextImpl$SharedPreferencesImpl;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->val$postWriteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->val$postWriteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
