.class Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;
.super Landroid/os/Handler;
.source "SpellingCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->createSecondaryThreadAndHandlers(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;


# direct methods
.method constructor <init>(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget-object v5, v7, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mPlainString:Ljava/lang/String;

    .local v5, str:Ljava/lang/String;
    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget v3, v7, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEndIndex:I

    .local v3, len:I
    const/4 v4, -0x1

    .local v4, start:I
    const/4 v1, -0x1

    .local v1, end:I
    const/4 v6, 0x0

    .local v6, wordCount:I
    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget v2, v7, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mCurrentIndex:I

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_8

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget-object v7, v7, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    #calls: Lcom/motorola/spellchecker/SpellingCheckManager;->isWordSeparator(C)Z
    invoke-static {v7, v0}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$000(Lcom/motorola/spellchecker/SpellingCheckManager;C)Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v7, 0x30

    if-lt v0, v7, :cond_2

    const/16 v7, 0x39

    if-gt v0, v7, :cond_2

    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    const/4 v8, 0x1

    #calls: Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->skipSpecialString(IILjava/lang/String;)I
    invoke-static {v7, v8, v2, v5}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->access$100(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;IILjava/lang/String;)I

    move-result v2

    add-int/lit8 v6, v6, 0x1

    const/4 v4, -0x1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-ne v4, v10, :cond_1

    move v4, v2

    goto :goto_2

    :cond_3
    const/16 v7, 0x3a

    if-ne v0, v7, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v11

    if-ge v2, v7, :cond_4

    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v8, v2, 0x3

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "//"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    const/16 v7, 0x40

    if-ne v0, v7, :cond_6

    :cond_5
    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    #calls: Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->skipSpecialString(IILjava/lang/String;)I
    invoke-static {v7, v11, v2, v5}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->access$100(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;IILjava/lang/String;)I

    move-result v2

    add-int/lit8 v6, v6, 0x1

    const/4 v4, -0x1

    goto :goto_2

    :cond_6
    if-eq v4, v10, :cond_1

    move v1, v2

    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget-object v8, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget v8, v8, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mDictID:I

    invoke-virtual {v5, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->checkSingleWord(ILjava/lang/String;II)I
    invoke-static {v7, v8, v9, v4, v1}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->access$200(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;ILjava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    #getter for: Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->ASYNC_CHECK_TOLARENCE:I
    invoke-static {v7}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->access$300(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;)I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    :cond_7
    const/4 v4, -0x1

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    #getter for: Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->ASYNC_CHECK_TOLARENCE:I
    invoke-static {v7}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->access$300(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;)I

    move-result v7

    if-le v6, v7, :cond_1

    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    add-int/lit8 v8, v1, 0x1

    iput v8, v7, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mCurrentIndex:I

    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    #getter for: Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->access$400(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    #getter for: Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->access$500(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    #getter for: Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->access$500(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;)Landroid/app/ProgressDialog;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget v8, v8, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mStartIndex:I

    sub-int v8, v1, v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto/16 :goto_0

    .end local v0           #c:C
    :cond_8
    if-eq v4, v10, :cond_9

    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget-object v8, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget v8, v8, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mDictID:I

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->checkSingleWord(ILjava/lang/String;II)I
    invoke-static {v7, v8, v9, v4, v3}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->access$200(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;ILjava/lang/String;II)I

    :cond_9
    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    #getter for: Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->access$500(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    #getter for: Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->access$500(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_a
    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    invoke-virtual {v7}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->onAsyncCheckFinished()V

    goto/16 :goto_0

    .end local v1           #end:I
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #start:I
    .end local v5           #str:Ljava/lang/String;
    .end local v6           #wordCount:I
    :pswitch_1
    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget-object v8, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget v8, v8, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mDictID:I

    iget-object v9, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget-object v9, v9, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEditable:Landroid/text/Editable;

    iget-object v10, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget v10, v10, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mStartIndex:I

    iget-object v11, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget v11, v11, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEndIndex:I

    #calls: Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->checkEditable(ILandroid/text/Editable;II)V
    invoke-static {v7, v8, v9, v10, v11}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->access$600(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;ILandroid/text/Editable;II)V

    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    invoke-virtual {v7}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->onAsyncCheckFinished()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
