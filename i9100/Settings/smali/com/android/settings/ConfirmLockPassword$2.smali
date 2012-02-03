.class Lcom/android/settings/ConfirmLockPassword$2;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPassword;->showError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPassword;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$2;->this$0:Lcom/android/settings/ConfirmLockPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$2;->this$0:Lcom/android/settings/ConfirmLockPassword;

    #getter for: Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/settings/ConfirmLockPassword;->access$000(Lcom/android/settings/ConfirmLockPassword;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 129
    .local v1, storedQuality:I
    const/high16 v2, 0x4

    if-eq v2, v1, :cond_0

    const/high16 v2, 0x5

    if-ne v2, v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .line 131
    .local v0, isAlpha:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$2;->this$0:Lcom/android/settings/ConfirmLockPassword;

    #getter for: Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/ConfirmLockPassword;->access$100(Lcom/android/settings/ConfirmLockPassword;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_2

    const v3, 0x7f080331

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 133
    return-void

    .line 129
    .end local v0           #isAlpha:Z
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 131
    .restart local v0       #isAlpha:Z
    :cond_2
    const v3, 0x7f080332

    goto :goto_1
.end method
