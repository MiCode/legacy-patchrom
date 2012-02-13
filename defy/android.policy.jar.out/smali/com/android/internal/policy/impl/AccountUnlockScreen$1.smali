.class Lcom/android/internal/policy/impl/AccountUnlockScreen$1;
.super Ljava/lang/Object;
.source "AccountUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AccountUnlockScreen;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/high16 v6, 0x1000

    const-string v7, "com.android.settings"

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->val$success:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    .local v2, patternEnabled:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    .local v1, passwordEnabled:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    .local v3, quality:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v4, "com.android.settings.ChooseLockPattern"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$100(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$300(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$300(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .end local v1           #passwordEnabled:Z
    .end local v2           #patternEnabled:Z
    .end local v3           #quality:I
    :goto_1
    return-void

    .restart local v1       #passwordEnabled:Z
    .restart local v2       #patternEnabled:Z
    .restart local v3       #quality:I
    :cond_1
    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "lockscreen.password_type"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "com.android.settings"

    const-string v4, "com.android.settings.ChooseLockPassword"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$200(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #passwordEnabled:Z
    .end local v2           #patternEnabled:Z
    .end local v3           #quality:I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mInstructions:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$400(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x10402bd

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPassword:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$500(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
