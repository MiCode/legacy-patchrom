.class Lcom/android/settings/ConfirmLockPattern$3;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPattern;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPattern;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I
    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPattern;->access$302(Lcom/android/settings/ConfirmLockPattern;I)I

    .line 271
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    #calls: Lcom/android/settings/ConfirmLockPattern;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPattern;->access$500(Lcom/android/settings/ConfirmLockPattern;Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 272
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    #getter for: Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern;->access$700(Lcom/android/settings/ConfirmLockPattern;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f080352

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 262
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 263
    .local v0, secondsCountdown:I
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    #getter for: Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern;->access$800(Lcom/android/settings/ConfirmLockPattern;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    const v3, 0x7f080353

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/ConfirmLockPattern;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    return-void
.end method
