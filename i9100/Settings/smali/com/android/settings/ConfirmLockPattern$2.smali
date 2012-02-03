.class Lcom/android/settings/ConfirmLockPattern$2;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPattern;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    #getter for: Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern;->access$000(Lcom/android/settings/ConfirmLockPattern;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    #getter for: Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern;->access$100(Lcom/android/settings/ConfirmLockPattern;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 228
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    #getter for: Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern;->access$200(Lcom/android/settings/ConfirmLockPattern;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/ConfirmLockPattern;->setResult(I)V

    .line 237
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-virtual {v2}, Lcom/android/settings/ConfirmLockPattern;->finish()V

    .line 248
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern;->access$304(Lcom/android/settings/ConfirmLockPattern;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 241
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    #getter for: Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern;->access$200(Lcom/android/settings/ConfirmLockPattern;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 242
    .local v0, deadline:J
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    #calls: Lcom/android/settings/ConfirmLockPattern;->handleAttemptLockout(J)V
    invoke-static {v2, v0, v1}, Lcom/android/settings/ConfirmLockPattern;->access$400(Lcom/android/settings/ConfirmLockPattern;J)V

    goto :goto_0

    .line 244
    .end local v0           #deadline:J
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    sget-object v3, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/ConfirmLockPattern$Stage;

    #calls: Lcom/android/settings/ConfirmLockPattern;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    invoke-static {v2, v3}, Lcom/android/settings/ConfirmLockPattern;->access$500(Lcom/android/settings/ConfirmLockPattern;Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 245
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    #calls: Lcom/android/settings/ConfirmLockPattern;->postClearPatternRunnable()V
    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern;->access$600(Lcom/android/settings/ConfirmLockPattern;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    #getter for: Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern;->access$000(Lcom/android/settings/ConfirmLockPattern;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    #getter for: Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern;->access$100(Lcom/android/settings/ConfirmLockPattern;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method
