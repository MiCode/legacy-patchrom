.class Lcom/android/internal/widget/EditStyledText$EditorManager;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditorManager"
.end annotation


# instance fields
.field private mCurEnd:I

.field private mCurStart:I

.field private mEST:Lcom/android/internal/widget/EditStyledText;

.field private mEditFlag:Z

.field private mMode:I

.field private mSoftKeyBlockFlag:Z

.field private mState:I

.field final synthetic this$0:Lcom/android/internal/widget/EditStyledText;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/EditStyledText;Lcom/android/internal/widget/EditStyledText;)V
    .locals 1
    .parameter
    .parameter "est"

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->this$0:Lcom/android/internal/widget/EditStyledText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    iput-object p2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/EditStyledText$EditorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->blockSoftKey()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/EditStyledText$EditorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->unblockSoftKey()V

    return-void
.end method

.method private blockSoftKey()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    new-instance v2, Lcom/android/internal/widget/EditStyledText$EditorManager$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/EditStyledText$EditorManager$1;-><init>(Lcom/android/internal/widget/EditStyledText$EditorManager;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/EditStyledText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    return-void
.end method

.method private changeAlign(Landroid/text/Layout$Alignment;)V
    .locals 4
    .parameter "align"

    .prologue
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v0, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->findLineStart(Landroid/text/Editable;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v2}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/EditStyledText$EditorManager;->findLineEnd(Landroid/text/Editable;I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    return-void
.end method

.method private changeColorSelectedText(I)V
    .locals 3
    .parameter "color"

    .prologue
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    return-void
.end method

.method private changeSizeSelectedText(I)V
    .locals 3
    .parameter "size"

    .prologue
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    return-void
.end method

.method private doNextHandle()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCopy()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCut()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handlePaste()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSize()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleColor()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleAlign()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private findLineEnd(Landroid/text/Editable;I)I
    .locals 3
    .parameter "text"
    .parameter "current"

    .prologue
    move v0, p2

    .local v0, pos:I
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findLineStart(Landroid/text/Editable;I)I
    .locals 3
    .parameter "text"
    .parameter "current"

    .prologue
    move v0, p2

    .local v0, pos:I
    :goto_0
    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private handleAlign()V
    .locals 1

    .prologue
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSetSpan(I)V

    return-void
.end method

.method private handleCancel()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    iput-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    const-string v0, "EditStyledText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- handleCancel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v2}, Lcom/android/internal/widget/EditStyledText;->getInputType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->unblockSoftKey()V

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->unsetSelect()V

    return-void
.end method

.method private handleColor()V
    .locals 1

    .prologue
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSetSpan(I)V

    return-void
.end method

.method private handleComplete()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->doNextHandle()V

    goto :goto_0
.end method

.method private handleCopy()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const v1, 0x1020021

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleTextViewFunc(II)V

    return-void
.end method

.method private handleCut()V
    .locals 2

    .prologue
    const/4 v0, 0x7

    const v1, 0x1020020

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleTextViewFunc(II)V

    return-void
.end method

.method private handlePaste()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/EditStyledText;->onTextContextMenuItem(I)Z

    goto :goto_0
.end method

.method private handleResetEdit()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->blockSoftKey()V

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCancel()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    const/4 v1, 0x2

    #calls: Lcom/android/internal/widget/EditStyledText;->setHintMessage(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/EditStyledText;->access$1000(Lcom/android/internal/widget/EditStyledText;I)V

    return-void
.end method

.method private handleSelect()V
    .locals 3

    .prologue
    const-string v2, "EditStyledText"

    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isTextSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EditStyledText"

    const-string v0, "Selection is off, but selected"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectStartPos()V

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->blockSoftKey()V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    const/4 v1, 0x3

    #calls: Lcom/android/internal/widget/EditStyledText;->setHintMessage(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/EditStyledText;->access$1000(Lcom/android/internal/widget/EditStyledText;I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isTextSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "EditStyledText"

    const-string v0, "Selection now start, but selected"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos()V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    const/4 v1, 0x4

    #calls: Lcom/android/internal/widget/EditStyledText;->setHintMessage(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/EditStyledText;->access$1000(Lcom/android/internal/widget/EditStyledText;I)V

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->doNextHandle()V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isTextSelected()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "EditStyledText"

    const-string v0, "Selection is done, but not selected"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos()V

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->doNextHandle()V

    goto :goto_0
.end method

.method private handleSelectAll()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText;->selectAll()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    goto :goto_0
.end method

.method private handleSetSpan(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x3

    const-string v2, "EditStyledText"

    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_0

    const-string v0, "EditStyledText"

    const-string v0, "--- handleSetSpan: Editing is not started."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_1
    iput p1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iput v3, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSetSpan(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSelect()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    if-eq v0, p1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCancel()V

    iput p1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSetSpan(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/widget/EditStyledText;->setHintMessage(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/EditStyledText;->access$1000(Lcom/android/internal/widget/EditStyledText;I)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "EditStyledText"

    const-string v0, "--- handleSetSpan: invalid mode."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    #calls: Lcom/android/internal/widget/EditStyledText;->onShowForegroundColorAlert()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText;->access$1100(Lcom/android/internal/widget/EditStyledText;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    #calls: Lcom/android/internal/widget/EditStyledText;->onShowSizeAlert()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText;->access$1200(Lcom/android/internal/widget/EditStyledText;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    #calls: Lcom/android/internal/widget/EditStyledText;->onShowAlignAlert()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText;->access$1300(Lcom/android/internal/widget/EditStyledText;)V

    goto :goto_0

    :cond_5
    const-string v0, "EditStyledText"

    const-string v0, "--- handleSetSpan: do nothing."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleSize()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSetSpan(I)V

    return-void
.end method

.method private handleTextViewFunc(II)V
    .locals 3
    .parameter "mode"
    .parameter "id"

    .prologue
    const/4 v2, 0x3

    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    :cond_2
    iput p1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iput v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleTextViewFunc(II)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSelect()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    if-eq v0, p1, :cond_5

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCancel()V

    iput p1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleTextViewFunc(II)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/EditStyledText;->onTextContextMenuItem(I)Z

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleResetEdit()V

    goto :goto_0
.end method

.method private insertImageSpan(Landroid/text/style/ImageSpan;)V
    .locals 5
    .parameter "span"

    .prologue
    const-string v4, "--- insertimagespan:"

    const-string v3, "EditStyledText"

    if-eqz p1, :cond_0

    const-string v1, "EditStyledText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- insertimagespan:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EditStyledText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- insertimagespan:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getSelectionStart()I

    move-result v0

    .local v0, curpos:I
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, "\ufffc"

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x21

    invoke-interface {v1, p1, v0, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v3, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .end local v0           #curpos:I
    :goto_0
    return-void

    :cond_0
    const-string v1, "EditStyledText"

    const-string v1, "--- insertImageSpan: null span was inserted"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isTextSelected()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSelectStartPos()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    return-void
.end method

.method private setSelectedEndPos()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText;->getSelectionStart()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos(I)V

    goto :goto_0
.end method

.method private setSelection()V
    .locals 4

    .prologue
    const-string v3, ","

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->setSelection(II)V

    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->setSelection(II)V

    goto :goto_0

    :cond_1
    const-string v0, "EditStyledText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select is on, but cursor positions are illigal.:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v2}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setStyledTextSpan(Ljava/lang/Object;II)V
    .locals 2
    .parameter "span"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v1, 0x21

    if-ge p2, p3, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1, p3, p2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private unblockSoftKey()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/EditStyledText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    return-void
.end method

.method private unsetSelect()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getSelectionStart()I

    move-result v0

    .local v0, currpos:I
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1, v0, v0}, Lcom/android/internal/widget/EditStyledText;->setSelection(II)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    return-void
.end method


# virtual methods
.method public getEditMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    return v0
.end method

.method public getSelectState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    return v0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    return v0
.end method

.method public isEditting()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    return v0
.end method

.method public isSoftKeyBlocked()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    return v0
.end method

.method public isStyledText()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v2}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    .local v1, txt:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .local v0, len:I
    sub-int v2, v0, v5

    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ParagraphStyle;

    array-length v2, v2

    if-gtz v2, :cond_0

    sub-int v2, v0, v5

    const-class v3, Landroid/text/style/QuoteSpan;

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/QuoteSpan;

    array-length v2, v2

    if-gtz v2, :cond_0

    sub-int v2, v0, v5

    const-class v3, Landroid/text/style/CharacterStyle;

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    array-length v2, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    #getter for: Lcom/android/internal/widget/EditStyledText;->mBackgroundColor:I
    invoke-static {v2}, Lcom/android/internal/widget/EditStyledText;->access$900(Lcom/android/internal/widget/EditStyledText;)I

    move-result v2

    const v3, 0xffffff

    if-eq v2, v3, :cond_1

    :cond_0
    move v2, v5

    :goto_0
    return v2

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public onClearStyles()V
    .locals 11

    .prologue
    iget-object v9, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v9}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v8

    .local v8, txt:Landroid/text/Editable;
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v3

    .local v3, len:I
    const/4 v9, 0x0

    const-class v10, Ljava/lang/Object;

    invoke-interface {v8, v9, v3, v10}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    .local v7, styles:[Ljava/lang/Object;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v6, v0, v2

    .local v6, style:Ljava/lang/Object;
    instance-of v9, v6, Landroid/text/style/ParagraphStyle;

    if-nez v9, :cond_0

    instance-of v9, v6, Landroid/text/style/QuoteSpan;

    if-nez v9, :cond_0

    instance-of v9, v6, Landroid/text/style/CharacterStyle;

    if-eqz v9, :cond_2

    :cond_0
    instance-of v9, v6, Landroid/text/style/ImageSpan;

    if-eqz v9, :cond_1

    invoke-interface {v8, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, start:I
    invoke-interface {v8, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .local v1, end:I
    const-string v9, ""

    invoke-interface {v8, v5, v1, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .end local v1           #end:I
    .end local v5           #start:I
    :cond_1
    invoke-interface {v8, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v6           #style:Ljava/lang/Object;
    :cond_3
    iget-object v9, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget-object v10, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    #getter for: Lcom/android/internal/widget/EditStyledText;->mDefaultBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v10}, Lcom/android/internal/widget/EditStyledText;->access$800(Lcom/android/internal/widget/EditStyledText;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/EditStyledText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    const v10, 0xffffff

    #setter for: Lcom/android/internal/widget/EditStyledText;->mBackgroundColor:I
    invoke-static {v9, v10}, Lcom/android/internal/widget/EditStyledText;->access$902(Lcom/android/internal/widget/EditStyledText;I)I

    return-void
.end method

.method public onCursorMoved()V
    .locals 3

    .prologue
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSelect()V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    :cond_1
    return-void
.end method

.method public onEndEdit()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCancel()V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    return-void
.end method

.method public onFixSelectedItem()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleComplete()V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    return-void
.end method

.method public onInsertHorizontalLine()V
    .locals 4

    .prologue
    new-instance v0, Lcom/android/internal/widget/EditStyledText$HorizontalLineSpan;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->this$0:Lcom/android/internal/widget/EditStyledText;

    const/high16 v2, -0x100

    iget-object v3, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/EditStyledText$HorizontalLineSpan;-><init>(Lcom/android/internal/widget/EditStyledText;ILandroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/ImageSpan;)V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    return-void
.end method

.method public onInsertImage(I)V
    .locals 3
    .parameter "resID"

    .prologue
    new-instance v0, Landroid/text/style/ImageSpan;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/ImageSpan;)V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    return-void
.end method

.method public onInsertImage(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    new-instance v0, Landroid/text/style/ImageSpan;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/ImageSpan;)V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    return-void
.end method

.method public onStartAlign()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleAlign()V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    return-void
.end method

.method public onStartBackgroundColor()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    #calls: Lcom/android/internal/widget/EditStyledText;->onShowBackgroundColorAlert()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText;->access$700(Lcom/android/internal/widget/EditStyledText;)V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    return-void
.end method

.method public onStartColor()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleColor()V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    return-void
.end method

.method public onStartCopy()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCopy()V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    return-void
.end method

.method public onStartCut()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCut()V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    return-void
.end method

.method public onStartEdit()V
    .locals 3

    .prologue
    const-string v0, "EditStyledText"

    const-string v1, "--- onstartedit:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleResetEdit()V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    return-void
.end method

.method public onStartPaste()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handlePaste()V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    return-void
.end method

.method public onStartSelect()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSelect()V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->unsetSelect()V

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSelect()V

    goto :goto_0
.end method

.method public onStartSelectAll()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSelectAll()V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    return-void
.end method

.method public onStartSize()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSize()V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 2
    .parameter "align"

    .prologue
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->changeAlign(Landroid/text/Layout$Alignment;)V

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleResetEdit()V

    :cond_1
    return-void
.end method

.method public setItemColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->changeColorSelectedText(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleResetEdit()V

    :cond_1
    return-void
.end method

.method public setItemSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->changeSizeSelectedText(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleResetEdit()V

    :cond_1
    return-void
.end method

.method public setSelectedEndPos(I)V
    .locals 0
    .parameter "pos"

    .prologue
    iput p1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelection()V

    return-void
.end method
