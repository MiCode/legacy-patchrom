.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;
.super Landroid/os/Handler;
.source "PasswordUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "status"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, status:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, devTok:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 319
    .local v4, encryption:Z
    const/4 v3, 0x0

    .line 320
    .local v3, doUpdateText:Z
    const/4 v0, 0x0

    .line 322
    .local v0, batchFail:Z
    const-string v8, "PasswordUnlockScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PasswordUnlockScreen got: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v8, "batchfail"

    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 325
    const/4 v0, 0x1

    .line 329
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mBatchData:Z
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 330
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    const/4 v9, 0x1

    #setter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mBatchData:Z
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$402(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Z)Z

    .line 331
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->removePasswordUI()V
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    .line 332
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v8

    const v9, 0x124f80

    invoke-interface {v8, v9}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 333
    if-nez v0, :cond_1

    .line 334
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    new-instance v9, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct {v9, v10, v4}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Z)V

    #setter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImageSwapper:Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$702(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;)Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

    .line 335
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarLayout:Landroid/widget/RelativeLayout;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$800(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 336
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mFillView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$900(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :cond_1
    if-eqz v0, :cond_5

    .line 341
    const-string v8, "1"

    const/4 v9, 0x4

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 342
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImageSwapper:Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$700(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImageSwapper:Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$700(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->stop()V

    .line 343
    :cond_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarLayout:Landroid/widget/RelativeLayout;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$800(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 344
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mFillView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$900(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 345
    if-eqz v4, :cond_4

    .line 346
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v8

    const v9, 0x10404ad

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 351
    :goto_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mBatchData:Z
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$402(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Z)Z

    .line 352
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 403
    :goto_2
    return-void

    .line 326
    :cond_3
    const-string v8, "Encryption"

    const/4 v9, 0x3

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 327
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 348
    :cond_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v8

    const v9, 0x10404ae

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 356
    :cond_5
    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 357
    .local v5, progressCnt:I
    const/4 v8, 0x2

    aget-object v2, v1, v8

    .line 358
    .local v2, device:Ljava/lang/String;
    const/4 v7, 0x0

    .line 360
    .local v7, text:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDevice:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 361
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDevice:Ljava/lang/String;
    invoke-static {v8, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1002(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1108(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)I

    .line 363
    const/4 v3, 0x1

    .line 366
    :cond_6
    const/16 v8, 0x64

    if-ge v5, v8, :cond_a

    .line 367
    if-eqz v3, :cond_7

    .line 368
    if-eqz v4, :cond_9

    .line 369
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x10404a9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 386
    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    .line 387
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :cond_8
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1300(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/ProgressBar;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 392
    const-string v8, "data"

    iget-object v9, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDevice:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 393
    const/4 v8, 0x1

    const-string v9, "dbdata"

    invoke-static {v9}, Landroid/deviceencryption/DeviceEncryptionManager;->isTargetToEncrypt(Ljava/lang/String;)Z

    move-result v9

    if-ne v8, v9, :cond_d

    .line 394
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarText:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "% (1/2)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 371
    :cond_9
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x10404aa

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 374
    :cond_a
    const/16 v8, 0x64

    if-ne v5, v8, :cond_c

    .line 375
    const/4 v3, 0x1

    .line 376
    if-eqz v4, :cond_b

    .line 377
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x10404ab

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 379
    :cond_b
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x10404ac

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 382
    :cond_c
    const-string v8, "PasswordUnlockScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got invalid progressCnt: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 396
    :cond_d
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarText:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 398
    :cond_e
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDeviceCnt:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarText:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 399
    :cond_f
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarText:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "% (2/2)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
