.class Lcom/android/server/am/StrictModeViolationDialog$1;
.super Landroid/os/Handler;
.source "StrictModeViolationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/StrictModeViolationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/StrictModeViolationDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/StrictModeViolationDialog;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    #getter for: Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/StrictModeViolationDialog;->access$000(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    #getter for: Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v1}, Lcom/android/server/am/StrictModeViolationDialog;->access$000(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    #getter for: Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v1}, Lcom/android/server/am/StrictModeViolationDialog;->access$000(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    #getter for: Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v1}, Lcom/android/server/am/StrictModeViolationDialog;->access$000(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    #getter for: Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v0}, Lcom/android/server/am/StrictModeViolationDialog;->access$100(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-virtual {v0}, Lcom/android/server/am/StrictModeViolationDialog;->dismiss()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
