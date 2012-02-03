.class public Lcom/android/internal/widget/EditStyledText;
.super Landroid/widget/EditText;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;,
        Lcom/android/internal/widget/EditStyledText$HorizontalLineSpan;,
        Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;,
        Lcom/android/internal/widget/EditStyledText$StyledTextDialog;,
        Lcom/android/internal/widget/EditStyledText$StyledTextConverter;,
        Lcom/android/internal/widget/EditStyledText$EditorManager;,
        Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DEFAULT_BACKGROUND_COLOR:I = 0xffffff

.field public static final HINT_MSG_COPY_BUF_BLANK:I = 0x1

.field public static final HINT_MSG_NULL:I = 0x0

.field public static final HINT_MSG_PUSH_COMPETE:I = 0x4

.field public static final HINT_MSG_SELECT_END:I = 0x3

.field public static final HINT_MSG_SELECT_START:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "EditStyledText"

.field public static final MODE_ALIGN:I = 0x6

.field public static final MODE_COLOR:I = 0x4

.field public static final MODE_COPY:I = 0x1

.field public static final MODE_CUT:I = 0x7

.field public static final MODE_NOTHING:I = 0x0

.field public static final MODE_PASTE:I = 0x2

.field public static final MODE_SELECT:I = 0x5

.field public static final MODE_SIZE:I = 0x3

.field public static final STATE_SELECTED:I = 0x2

.field public static final STATE_SELECT_FIX:I = 0x3

.field public static final STATE_SELECT_OFF:I = 0x0

.field public static final STATE_SELECT_ON:I = 0x1


# instance fields
.field private mBackgroundColor:I

.field private mConverter:Lcom/android/internal/widget/EditStyledText$StyledTextConverter;

.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

.field private mESTInterface:Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;

.field private mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText;->init()V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText;->init()V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText;->init()V

    .line 141
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/EditStyledText;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText;->setHintMessage(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/EditStyledText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText;->onShowForegroundColorAlert()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/EditStyledText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText;->onShowSizeAlert()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/EditStyledText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText;->onShowAlignAlert()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/widget/EditStyledText;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/EditStyledText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText;->onShowBackgroundColorAlert()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/widget/EditStyledText;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/EditStyledText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/widget/EditStyledText;->mBackgroundColor:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/widget/EditStyledText;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/internal/widget/EditStyledText;->mBackgroundColor:I

    return p1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/android/internal/widget/EditStyledText;->requestFocus()Z

    .line 506
    invoke-virtual {p0}, Lcom/android/internal/widget/EditStyledText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 507
    const v0, 0xffffff

    iput v0, p0, Lcom/android/internal/widget/EditStyledText;->mBackgroundColor:I

    .line 508
    new-instance v0, Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;-><init>(Lcom/android/internal/widget/EditStyledText;Lcom/android/internal/widget/EditStyledText;)V

    iput-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    .line 509
    new-instance v0, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;-><init>(Lcom/android/internal/widget/EditStyledText;Lcom/android/internal/widget/EditStyledText;)V

    iput-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mConverter:Lcom/android/internal/widget/EditStyledText$StyledTextConverter;

    .line 510
    new-instance v0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;-><init>(Lcom/android/internal/widget/EditStyledText;Lcom/android/internal/widget/EditStyledText;)V

    iput-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    .line 511
    new-instance v0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;-><init>(Lcom/android/internal/widget/EditStyledText;Lcom/android/internal/widget/EditStyledText$EditorManager;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/EditStyledText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 512
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    #calls: Lcom/android/internal/widget/EditStyledText$EditorManager;->blockSoftKey()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->access$000(Lcom/android/internal/widget/EditStyledText$EditorManager;)V

    .line 513
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    #calls: Lcom/android/internal/widget/EditStyledText$EditorManager;->unblockSoftKey()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->access$100(Lcom/android/internal/widget/EditStyledText$EditorManager;)V

    .line 514
    return-void
.end method

.method private notifyStateChanged(II)V
    .locals 1
    .parameter "mode"
    .parameter "state"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mESTInterface:Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mESTInterface:Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;->notifyStateChanged(II)V

    .line 568
    :cond_0
    return-void
.end method

.method private onShowAlignAlert()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    #calls: Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->onShowAlignAlertDialog()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->access$500(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V

    .line 542
    return-void
.end method

.method private onShowBackgroundColorAlert()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    #calls: Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->onShowBackgroundColorAlertDialog()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->access$300(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V

    .line 528
    return-void
.end method

.method private onShowForegroundColorAlert()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    #calls: Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->onShowForegroundColorAlertDialog()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->access$200(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V

    .line 521
    return-void
.end method

.method private onShowSizeAlert()V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    #calls: Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->onShowSizeAlertDialog()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->access$400(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V

    .line 535
    return-void
.end method

.method private setHintMessage(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mESTInterface:Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mESTInterface:Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;->notifyHintMsg(I)V

    .line 554
    :cond_0
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/android/internal/widget/EditStyledText;->mBackgroundColor:I

    return v0
.end method

.method public getEditMode()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->getEditMode()I

    move-result v0

    return v0
.end method

.method public getForeGroundColor(I)I
    .locals 4
    .parameter "pos"

    .prologue
    const v3, 0xffffff

    .line 484
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 485
    :cond_0
    const-string v1, "EditStyledText"

    const-string v2, "---getForeGroundColor: Illigal position."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 493
    :goto_0
    return v1

    .line 488
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-class v2, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v1, p1, p1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 490
    .local v0, spans:[Landroid/text/style/ForegroundColorSpan;
    array-length v1, v0

    if-lez v1, :cond_2

    .line 491
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v3

    .line 493
    goto :goto_0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mConverter:Lcom/android/internal/widget/EditStyledText$StyledTextConverter;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->getHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtml(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mConverter:Lcom/android/internal/widget/EditStyledText$StyledTextConverter;

    invoke-virtual {p0}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->getUriArray(Ljava/util/ArrayList;Landroid/text/Editable;)V

    .line 463
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mConverter:Lcom/android/internal/widget/EditStyledText$StyledTextConverter;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->getHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 3
    .parameter "create"

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 438
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 441
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    const-string v1, "allowEmoji"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 442
    return-object v0
.end method

.method public getSelectState()I
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->getSelectState()I

    move-result v0

    return v0
.end method

.method public isEditting()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isEditting()Z

    move-result v0

    return v0
.end method

.method public isSoftKeyBlocked()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isSoftKeyBlocked()Z

    move-result v0

    return v0
.end method

.method public isStyledText()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isStyledText()Z

    move-result v0

    return v0
.end method

.method public onClearStyles()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onClearStyles()V

    .line 336
    return-void
.end method

.method public onEndEdit()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onEndEdit()V

    .line 238
    return-void
.end method

.method public onFixSelectedItem()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onFixSelectedItem()V

    .line 308
    return-void
.end method

.method public onInsertHorizontalLine()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onInsertHorizontalLine()V

    .line 332
    return-void
.end method

.method public onInsertImage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onInsertImage(I)V

    .line 328
    return-void
.end method

.method public onInsertImage(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onInsertImage(Landroid/net/Uri;)V

    .line 318
    return-void
.end method

.method public onStartAlign()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartAlign()V

    .line 287
    return-void
.end method

.method public onStartBackgroundColor()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartBackgroundColor()V

    .line 280
    return-void
.end method

.method public onStartColor()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartColor()V

    .line 273
    return-void
.end method

.method public onStartCopy()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartCopy()V

    .line 245
    return-void
.end method

.method public onStartCut()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartCut()V

    .line 252
    return-void
.end method

.method public onStartEdit()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartEdit()V

    .line 231
    return-void
.end method

.method public onStartPaste()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartPaste()V

    .line 259
    return-void
.end method

.method public onStartSelect()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartSelect()V

    .line 294
    return-void
.end method

.method public onStartSelectAll()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartSelectAll()V

    .line 301
    return-void
.end method

.method public onStartSize()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartSize()V

    .line 266
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 211
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isSoftKeyBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/widget/EditStyledText;->cancelLongPress()V

    .line 215
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 216
    .local v0, superResult:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onCursorMoved()V

    .line 222
    :cond_1
    return v0
.end method

.method public setAlignAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "aligntitle"
    .parameter "alignnames"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->setAlignAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 207
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1
    .parameter "align"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 365
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 375
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 376
    iput p1, p0, Lcom/android/internal/widget/EditStyledText;->mBackgroundColor:I

    .line 377
    return-void
.end method

.method public setBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->setBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 168
    return-void
.end method

.method public setColorAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "colortitle"
    .parameter "colornames"
    .parameter "colorints"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->setColorAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 1
    .parameter "html"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mConverter:Lcom/android/internal/widget/EditStyledText$StyledTextConverter;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->SetHtml(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public setItemColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setItemColor(I)V

    .line 355
    return-void
.end method

.method public setItemSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setItemSize(I)V

    .line 345
    return-void
.end method

.method public setNotifier(Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;)V
    .locals 0
    .parameter "estInterface"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText;->mESTInterface:Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;

    .line 158
    return-void
.end method

.method public setSizeAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "sizetitle"
    .parameter "sizenames"
    .parameter "sizedisplayints"
    .parameter "sizesendints"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->setSizeAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method
