.class Lcom/android/server/am/StrictModeViolationDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "StrictModeViolationDialog.java"


# static fields
.field static final ACTION_OK:I = 0x0

.field static final ACTION_OK_AND_REPORT:I = 0x1

.field static final DISMISS_TIMEOUT:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "StrictModeViolationDialog"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .parameter "context"
    .parameter "result"
    .parameter "app"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v2, Lcom/android/server/am/StrictModeViolationDialog$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/StrictModeViolationDialog$1;-><init>(Lcom/android/server/am/StrictModeViolationDialog;)V

    iput-object v2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 47
    .local v1, res:Landroid/content/res/Resources;
    iput-object p3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 48
    iput-object p2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 50
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ne v2, v6, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, name:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 52
    const v2, 0x10403a3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/StrictModeViolationDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/server/am/StrictModeViolationDialog;->setCancelable(Z)V

    .line 64
    const/4 v2, -0x1

    const v3, 0x10403e0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/StrictModeViolationDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 68
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 69
    const/4 v2, -0x2

    const v3, 0x104039e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/StrictModeViolationDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 74
    :cond_0
    const v2, 0x1040395

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/StrictModeViolationDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/server/am/StrictModeViolationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/server/am/StrictModeViolationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Strict Mode Violation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 82
    return-void

    .line 56
    .end local v0           #name:Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 57
    .restart local v0       #name:Ljava/lang/CharSequence;
    const v2, 0x10403a4

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/StrictModeViolationDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method
