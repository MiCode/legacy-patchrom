.class Lcom/android/server/am/AppWaitingForDebuggerDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppWaitingForDebuggerDialog.java"


# instance fields
.field private mAppName:Ljava/lang/CharSequence;

.field private final mHandler:Landroid/os/Handler;

.field final mProc:Lcom/android/server/am/ProcessRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .parameter "service"
    .parameter "context"
    .parameter "app"

    .prologue
    .line 30
    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v1, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;-><init>(Lcom/android/server/am/AppWaitingForDebuggerDialog;)V

    iput-object v1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 32
    iput-object p3, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 33
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mAppName:Ljava/lang/CharSequence;

    .line 35
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->setCancelable(Z)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v0, text:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mAppName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mAppName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 39
    const-string v1, "Application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mAppName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, " (process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :goto_0
    const-string v1, " is waiting for the debugger to attach."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 52
    const-string v1, "Force Close"

    iget-object v2, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V

    .line 53
    const-string v1, "Waiting For Debugger"

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting For Debugger: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    return-void

    .line 45
    :cond_0
    const-string v1, "Process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public onStop()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
