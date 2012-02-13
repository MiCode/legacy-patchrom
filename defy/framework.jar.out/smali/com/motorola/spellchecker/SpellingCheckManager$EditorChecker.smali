.class Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;
.super Ljava/lang/Object;
.source "SpellingCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/spellchecker/SpellingCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditorChecker"
.end annotation


# static fields
.field static final MAX_PROGRESS:I = 0x64

.field static final MSG_CHECK_ALL_WORDS:I = 0x1

.field static final MSG_CHECK_NEXT_WORD:I = 0x2

.field static final SKIP_WORD_URL:I = 0x2

.field static final SKIP_WORD_WITH_NUMBER:I = 0x1


# instance fields
.field private ASYNC_CHECK_TOLARENCE:I

.field mAvailable:Z

.field mCurrentIndex:I

.field mDictID:I

.field mEditable:Landroid/text/Editable;

.field mEditor:Landroid/widget/TextView;

.field mEndIndex:I

.field private mMainThreadHandler:Landroid/os/Handler;

.field mPendingCloseDictRequest:Z

.field mPlainString:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mStartIndex:I

.field final synthetic this$0:Lcom/motorola/spellchecker/SpellingCheckManager;


# direct methods
.method constructor <init>(Lcom/motorola/spellchecker/SpellingCheckManager;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->ASYNC_CHECK_TOLARENCE:I

    iput v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mDictID:I

    iput v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mStartIndex:I

    iput v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEndIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mCurrentIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mAvailable:Z

    iput-boolean v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mPendingCloseDictRequest:Z

    iput-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mMainThreadHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, p2}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->createSecondaryThreadAndHandlers(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;IILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->skipSpecialString(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;ILjava/lang/String;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->checkSingleWord(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->ASYNC_CHECK_TOLARENCE:I

    return v0
.end method

.method static synthetic access$400(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;ILandroid/text/Editable;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->checkEditable(ILandroid/text/Editable;II)V

    return-void
.end method

.method private asyncCheckEditable(ILandroid/text/Editable;II)V
    .locals 2
    .parameter "dictID"
    .parameter "editable"
    .parameter "start"
    .parameter "end"

    .prologue
    if-nez p2, :cond_0

    const-string v0, "*** SpellingCheckManager ***"

    const-string v1, "Invalid Editable!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mDictID:I

    iput-object p2, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEditable:Landroid/text/Editable;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mPlainString:Ljava/lang/String;

    iput p3, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mCurrentIndex:I

    iput p3, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mStartIndex:I

    iput p4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEndIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mAvailable:Z

    sub-int v0, p4, p3

    div-int/lit16 v0, v0, 0xc8

    iput v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->ASYNC_CHECK_TOLARENCE:I

    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private checkEditable(ILandroid/text/Editable;II)V
    .locals 11
    .parameter "dictID"
    .parameter "editable"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    if-nez p2, :cond_1

    const-string v7, "*** SpellingCheckManager ***"

    const-string v8, "Invalid Editable!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, str:Ljava/lang/String;
    move v5, p4

    .local v5, len:I
    const/4 v2, -0x1

    .local v2, WordStart:I
    const/4 v1, -0x1

    .local v1, WordEnd:I
    move v0, p3

    .local v0, StartIndex:I
    move v4, v0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_8

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .local v3, c:C
    iget-object v7, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    #calls: Lcom/motorola/spellchecker/SpellingCheckManager;->isWordSeparator(C)Z
    invoke-static {v7, v3}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$000(Lcom/motorola/spellchecker/SpellingCheckManager;C)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x30

    if-lt v3, v7, :cond_3

    const/16 v7, 0x39

    if-gt v3, v7, :cond_3

    const/4 v7, 0x1

    invoke-direct {p0, v7, v4, v6}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->skipSpecialString(IILjava/lang/String;)I

    move-result v4

    const/4 v2, -0x1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-ne v2, v9, :cond_2

    move v2, v4

    goto :goto_2

    :cond_4
    const/16 v7, 0x3a

    if-ne v3, v7, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v10

    if-ge v4, v7, :cond_5

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v4, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "//"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    const/16 v7, 0x40

    if-ne v3, v7, :cond_7

    :cond_6
    invoke-direct {p0, v10, v4, v6}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->skipSpecialString(IILjava/lang/String;)I

    move-result v4

    const/4 v2, -0x1

    goto :goto_2

    :cond_7
    if-eq v2, v9, :cond_2

    move v1, v4

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7, v2, v1}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->checkSingleWord(ILjava/lang/String;II)I

    add-int/lit8 v0, v1, 0x1

    const/4 v2, -0x1

    goto :goto_2

    .end local v3           #c:C
    :cond_8
    if-eq v2, v9, :cond_0

    invoke-virtual {v6, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7, v2, v5}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->checkSingleWord(ILjava/lang/String;II)I

    goto :goto_0
.end method

.method private checkSingleWord(ILjava/lang/String;II)I
    .locals 4
    .parameter "dictID"
    .parameter "word"
    .parameter "start"
    .parameter "end"

    .prologue
    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-virtual {v2, p1, p2}, Lcom/motorola/spellchecker/SpellingCheckManager;->spell(ILjava/lang/String;)I

    move-result v1

    .local v1, ret:I
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEditable:Landroid/text/Editable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEditable:Landroid/text/Editable;

    invoke-interface {v2, p3, p4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;-><init>(I)V

    .local v0, SPAN_EXACT_BGCOLOR_HL:Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;
    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEditor:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEditable:Landroid/text/Editable;

    const/16 v3, 0x21

    invoke-interface {v2, v0, p3, p4, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEditor:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->endBatchEdit()V

    .end local v0           #SPAN_EXACT_BGCOLOR_HL:Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;
    :cond_0
    return v1
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mDictID:I

    iput-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEditor:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEditable:Landroid/text/Editable;

    iput-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mPlainString:Ljava/lang/String;

    iput v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mCurrentIndex:I

    iput v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mStartIndex:I

    iput v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEndIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mAvailable:Z

    return-void
.end method

.method private createSecondaryThreadAndHandlers(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$1;-><init>(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mMainThreadHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private showProgressDialog(Landroid/widget/TextView;II)V
    .locals 6
    .parameter "editor"
    .parameter "start"
    .parameter "end"

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eq v4, v0, :cond_1

    :cond_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .local v2, pDialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104040a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    sub-int v4, p3, p2

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    new-instance v4, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$2;

    invoke-direct {v4, p0}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$2;-><init>(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;)V

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v4, 0x3eb

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    iput-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mProgressDialog:Landroid/app/ProgressDialog;

    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #pDialog:Landroid/app/ProgressDialog;
    .end local v3           #window:Landroid/view/Window;
    :cond_1
    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private skipSpecialString(IILjava/lang/String;)I
    .locals 5
    .parameter "type"
    .parameter "index"
    .parameter "content"

    .prologue
    const/16 v4, 0x20

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, len:I
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return p2

    :pswitch_0
    const/4 v3, 0x1

    sub-int v3, v1, v3

    if-ge p2, v3, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    :goto_1
    iget-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    #calls: Lcom/motorola/spellchecker/SpellingCheckManager;->isWordSeparator(C)Z
    invoke-static {v3, v0}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$000(Lcom/motorola/spellchecker/SpellingCheckManager;C)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 p2, p2, 0x1

    if-ge p2, v1, :cond_1

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v3, 0x3a

    if-eq v0, v3, :cond_2

    const/16 v3, 0x40

    if-ne v0, v3, :cond_0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .end local v0           #c:C
    :pswitch_1
    move v2, p2

    .local v2, urlStart:I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    :cond_4
    iget-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEditable:Landroid/text/Editable;

    invoke-static {v3, v2, p2}, Lcom/motorola/spellchecker/SpellingCheckManager;->removeSpellCheckerFlags(Ljava/lang/CharSequence;II)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    if-ge p2, v1, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method asyncCheckEditor(ILandroid/widget/TextView;II)V
    .locals 1
    .parameter "dictID"
    .parameter "editor"
    .parameter "start"
    .parameter "end"

    .prologue
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->showProgressDialog(Landroid/widget/TextView;II)V

    iput-object p2, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEditor:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->asyncCheckEditable(ILandroid/text/Editable;II)V

    :cond_0
    return-void
.end method

.method checkEditor(ILandroid/widget/TextView;II)V
    .locals 2
    .parameter "dictID"
    .parameter "editor"
    .parameter "start"
    .parameter "end"

    .prologue
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEditor:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iput-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEditable:Landroid/text/Editable;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iput p1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mDictID:I

    iput p3, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mStartIndex:I

    iput p4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEndIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mAvailable:Z

    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mEditable:Landroid/text/Editable;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->checkEditable(ILandroid/text/Editable;II)V

    invoke-direct {p0}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->clear()V

    goto :goto_0
.end method

.method onAsyncCheckFinished()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mDictID:I

    .local v0, dictID:I
    invoke-direct {p0}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->clear()V

    iget-boolean v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mPendingCloseDictRequest:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-virtual {v1, v0}, Lcom/motorola/spellchecker/SpellingCheckManager;->closeDict(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mPendingCloseDictRequest:Z

    :cond_0
    return-void
.end method

.method onStop()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mMainThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    invoke-direct {p0}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->clear()V

    return-void
.end method
