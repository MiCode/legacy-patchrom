.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 935
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-string v1, "true"

    const-string v1, "LockPatternKeyguardView"

    .line 937
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->wipeDataDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 942
    :try_start_0
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "DEVENC: check point lock pattern"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "DEVENC:Request to delete edk_p"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const-string v1, "securewipedata"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 959
    :goto_1
    return-void

    .line 947
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 949
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "exception in securewipedata data"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 955
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 957
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "exception in wiping data"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method
