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
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/EditStyledText;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText;->setHintMessage(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/EditStyledText;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText;->onShowForegroundColorAlert()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/EditStyledText;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText;->onShowSizeAlert()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/EditStyledText;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText;->onShowAlignAlert()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/widget/EditStyledText;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/EditStyledText;->notifyStateChanged(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/EditStyledText;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText;->onShowBackgroundColorAlert()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/widget/EditStyledText;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/EditStyledText;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/widget/EditStyledText;->mBackgroundColor:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/widget/EditStyledText;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/widget/EditStyledText;->mBackgroundColor:I

    return p1
.end method

.method private init()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/EditStyledText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/internal/widget/EditStyledText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    const v0, 0xffffff

    iput v0, p0, Lcom/android/internal/widget/EditStyledText;->mBackgroundColor:I

    new-instance v0, Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;-><init>(Lcom/android/internal/widget/EditStyledText;Lcom/android/internal/widget/EditStyledText;)V

    iput-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    new-instance v0, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;-><init>(Lcom/android/internal/widget/EditStyledText;Lcom/android/internal/widget/EditStyledText;)V

    iput-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mConverter:Lcom/android/internal/widget/EditStyledText$StyledTextConverter;

    new-instance v0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;-><init>(Lcom/android/internal/widget/EditStyledText;Lcom/android/internal/widget/EditStyledText;)V

    iput-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    new-instance v0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;-><init>(Lcom/android/internal/widget/EditStyledText;Lcom/android/internal/widget/EditStyledText$EditorManager;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/EditStyledText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    #calls: Lcom/android/internal/widget/EditStyledText$EditorManager;->blockSoftKey()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->access$000(Lcom/android/internal/widget/EditStyledText$EditorManager;)V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    #calls: Lcom/android/internal/widget/EditStyledText$EditorManager;->unblockSoftKey()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->access$100(Lcom/android/internal/widget/EditStyledText$EditorManager;)V

    return-void
.end method

.method private notifyStateChanged(II)V
    .locals 1
    .parameter "mode"
    .parameter "state"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mESTInterface:Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mESTInterface:Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;->notifyStateChanged(II)V

    :cond_0
    return-void
.end method

.method private onShowAlignAlert()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    #calls: Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->onShowAlignAlertDialog()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->access$500(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V

    return-void
.end method

.method private onShowBackgroundColorAlert()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    #calls: Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->onShowBackgroundColorAlertDialog()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->access$300(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V

    return-void
.end method

.method private onShowForegroundColorAlert()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    #calls: Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->onShowForegroundColorAlertDialog()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->access$200(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V

    return-void
.end method

.method private onShowSizeAlert()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    #calls: Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->onShowSizeAlertDialog()V
    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->access$400(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V

    return-void
.end method

.method private setHintMessage(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mESTInterface:Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mESTInterface:Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;->notifyHintMsg(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/EditStyledText;->mBackgroundColor:I

    return v0
.end method

.method public getEditMode()I
    .locals 1

    .prologue
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

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le p1, v1, :cond_1

    :cond_0
    const-string v1, "EditStyledText"

    const-string v2, "---getForeGroundColor: Illigal position."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-class v2, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v1, p1, p1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .local v0, spans:[Landroid/text/style/ForegroundColorSpan;
    array-length v1, v0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
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
    .local p1, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mConverter:Lcom/android/internal/widget/EditStyledText$StyledTextConverter;

    invoke-virtual {p0}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->getUriArray(Ljava/util/ArrayList;Landroid/text/Editable;)V

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mConverter:Lcom/android/internal/widget/EditStyledText$StyledTextConverter;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->getHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 3
    .parameter "create"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    const-string v1, "allowEmoji"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getSelectState()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->getSelectState()I

    move-result v0

    return v0
.end method

.method public isEditting()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isEditting()Z

    move-result v0

    return v0
.end method

.method public isSoftKeyBlocked()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isSoftKeyBlocked()Z

    move-result v0

    return v0
.end method

.method public isStyledText()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isStyledText()Z

    move-result v0

    return v0
.end method

.method public onClearStyles()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onClearStyles()V

    return-void
.end method

.method public onEndEdit()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onEndEdit()V

    return-void
.end method

.method public onFixSelectedItem()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onFixSelectedItem()V

    return-void
.end method

.method public onInsertHorizontalLine()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onInsertHorizontalLine()V

    return-void
.end method

.method public onInsertImage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onInsertImage(I)V

    return-void
.end method

.method public onInsertImage(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onInsertImage(Landroid/net/Uri;)V

    return-void
.end method

.method public onStartAlign()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartAlign()V

    return-void
.end method

.method public onStartBackgroundColor()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartBackgroundColor()V

    return-void
.end method

.method public onStartColor()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartColor()V

    return-void
.end method

.method public onStartCopy()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartCopy()V

    return-void
.end method

.method public onStartCut()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartCut()V

    return-void
.end method

.method public onStartEdit()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartEdit()V

    return-void
.end method

.method public onStartPaste()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartPaste()V

    return-void
.end method

.method public onStartSelect()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartSelect()V

    return-void
.end method

.method public onStartSelectAll()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartSelectAll()V

    return-void
.end method

.method public onStartSize()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onStartSize()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isSoftKeyBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/EditStyledText;->cancelLongPress()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, superResult:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onCursorMoved()V

    :cond_1
    return v0
.end method

.method public setAlignAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "aligntitle"
    .parameter "alignnames"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->setAlignAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1
    .parameter "align"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setAlignment(Landroid/text/Layout$Alignment;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    iput p1, p0, Lcom/android/internal/widget/EditStyledText;->mBackgroundColor:I

    return-void
.end method

.method public setBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->setBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public setColorAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "colortitle"
    .parameter "colornames"
    .parameter "colorints"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->setColorAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 1
    .parameter "html"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mConverter:Lcom/android/internal/widget/EditStyledText$StyledTextConverter;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->SetHtml(Ljava/lang/String;)V

    return-void
.end method

.method public setItemColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setItemColor(I)V

    return-void
.end method

.method public setItemSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setItemSize(I)V

    return-void
.end method

.method public setNotifier(Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;)V
    .locals 0
    .parameter "estInterface"

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText;->mESTInterface:Lcom/android/internal/widget/EditStyledText$EditStyledTextNotifier;

    return-void
.end method

.method public setSizeAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "sizetitle"
    .parameter "sizenames"
    .parameter "sizedisplayints"
    .parameter "sizesendints"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText;->mDialog:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->setSizeAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    return-void
.end method
