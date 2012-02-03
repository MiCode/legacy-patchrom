.class public Landroid/webkit/HtmlComposerView;
.super Landroid/webkit/WebView;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtmlComposerView$1;,
        Landroid/webkit/HtmlComposerView$InsertionPosition;,
        Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;,
        Landroid/webkit/HtmlComposerView$MenuHandler;
    }
.end annotation


# static fields
.field public static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_ALL:I = 0x1020409

.field public static final ID_CUT:I = 0x1020020

.field private static final ID_CUT_ALL:I = 0x1020408

.field public static final ID_PASTE:I = 0x1020022

.field public static final ID_PASTE_CLIPBOARD:I = 0x102040a

.field private static final ID_REDO:I = 0x102002d

.field public static final ID_SELECT_ALL:I = 0x102001f

.field public static final ID_START_SELECTION:I = 0x1020028

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field private static final ID_UNDO:I = 0x102002c

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerView"


# instance fields
.field private defaultLoadString:Ljava/lang/String;

.field private ignoreMaxLength:Z

.field imeOptions:I

.field private isContextMenuVisible:Z

.field private isInComposingState:Z

.field private isViewInFocus:Z

.field mAccumlationLength:I

.field mCurHtmlLength:I

.field private mEmojiIsActive:Z

.field private mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

.field private mInput:Landroid/text/method/TextKeyListener;

.field private mIsTouchedCursor:Z

.field private mKeyIsLongPressed:Z

.field private mMaxHtmlLength:I

.field private mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

.field private mShiftKeyIsPressed:Z

.field private mSymKeyIsPressed:Z

.field private mViewWidth:I

.field private prevSpanComposerText:Ljava/lang/String;

.field private prevlen:I

.field private spanComposerText:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 62
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 63
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 64
    const v0, -0x7fffff01

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 65
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 66
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 67
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 68
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 69
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 72
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 73
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 74
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 75
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 76
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 77
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 78
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 80
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 84
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 85
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 97
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 63
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 64
    const v0, -0x7fffff01

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 65
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 66
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 67
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 68
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 69
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 72
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 73
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 74
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 75
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 76
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 77
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 78
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 80
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 84
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 85
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 102
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 63
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 64
    const v0, -0x7fffff01

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 65
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 66
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 67
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 68
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 69
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 72
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 73
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 74
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 75
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 76
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 77
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 78
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 80
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 84
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 85
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 107
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 62
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 63
    const-string v1, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 64
    const v1, -0x7fffff01

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 65
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 66
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 67
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 68
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 69
    const v1, 0x186a0

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 72
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 73
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 74
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 75
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 76
    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 77
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 78
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 79
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 80
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 84
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 85
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 112
    invoke-direct {p0, p2}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, data:Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "data"
    .parameter "mimeType"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 120
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 121
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 122
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 123
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->setSoundEffectsEnabled(Z)V

    .line 125
    new-instance v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 128
    const-string v1, "htmlcomposer"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HtmlComposerView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 131
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v6, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 132
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 133
    new-instance v0, Landroid/webkit/HtmlComposerInputConnection;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerInputConnection;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 134
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/HtmlComposerView;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "src"
    .parameter "dst"

    .prologue
    const/4 v6, 0x0

    .line 542
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 543
    .local v3, source:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 545
    .local v4, target:Ljava/io/FileOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 546
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 547
    .local v2, i:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 548
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 557
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 558
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v5, v6

    .line 562
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return v5

    .line 550
    .restart local v0       #buffer:[B
    .restart local v2       #i:I
    .restart local v3       #source:Ljava/io/FileInputStream;
    .restart local v4       #target:Ljava/io/FileOutputStream;
    :cond_0
    if-eqz v3, :cond_1

    .line 551
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 553
    :cond_1
    if-eqz v4, :cond_2

    .line 554
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 556
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 560
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 561
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v5, v6

    .line 562
    goto :goto_1
.end method

.method private getLoadableContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "filePath"

    .prologue
    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .local v1, bufer:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 588
    .local v4, fstream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 589
    .local v5, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 592
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, strLine:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 594
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v6           #strLine:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 609
    .local v3, ep:Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " HtmlComposerView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 610
    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .end local v3           #ep:Ljava/lang/Exception;
    :goto_1
    return-object v7

    .line 596
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #strLine:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, data:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 600
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 601
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 602
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 604
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v7, v2

    .line 606
    goto :goto_1
.end method

.method private isInsertionAllowed(I)Z
    .locals 5
    .parameter "insertionLength"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 615
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    if-eqz v1, :cond_0

    move v1, v3

    .line 631
    :goto_0
    return v1

    .line 619
    :cond_0
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x3

    .line 620
    .local v0, avoidLength:I
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 622
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    if-ge v1, v0, :cond_1

    move v1, v3

    .line 624
    goto :goto_0

    .line 628
    :cond_1
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 629
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->htmlLength()I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 631
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    if-gt v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0
.end method

.method private updateInputMethodExtractText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 753
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 754
    .local v1, outText:Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 755
    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 758
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 760
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 761
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v2

    .line 762
    .local v2, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 763
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 764
    const-string v3, "HtmlComposerView"

    const-string v4, "getExtractedText "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 766
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 767
    invoke-virtual {v0, p0, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 985
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 986
    return-void
.end method

.method public canCopy()Z
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isBodyEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCut()Z
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isBodyEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPaste()Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v0

    if-ltz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSelectAll()Z
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isBodyEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeFontColorForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontColor"

    .prologue
    .line 741
    const-string v0, "ForeColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public changeFontNameForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontName"

    .prologue
    .line 731
    const-string v0, "FontName"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public changeFontSizeForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 736
    const-string v0, "FontSize"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public cleanTempResources()V
    .locals 2

    .prologue
    .line 746
    const-string v0, "HtmlComposerView"

    const-string v1, "cleanTempResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->deleteTempDirectory()V

    .line 748
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 689
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAll()V

    .line 690
    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 691
    return-void
.end method

.method public copy()V
    .locals 2

    .prologue
    .line 676
    const-string v0, "Copy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public cut()V
    .locals 2

    .prologue
    .line 672
    const-string v0, "Cut"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const-string v1, "HtmlComposerView"

    .line 1003
    const-string v0, "HtmlComposerView"

    const-string v0, " htmlcomposer destroy() "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    const-string v0, "HtmlComposerView"

    const-string v0, "htmlcomposer destroy() hide "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 1009
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->setTargetNull()V

    .line 1011
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 1013
    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 1014
    return-void
.end method

.method public disableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 665
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 666
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 667
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 669
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/16 v10, 0x16

    const/16 v9, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1215
    const/4 v2, 0x0

    .line 1216
    .local v2, retVal:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eq v4, v7, :cond_1

    move v0, v7

    .line 1217
    .local v0, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1218
    .local v1, keyCode:I
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    if-lt v1, v9, :cond_8

    if-gt v1, v10, :cond_8

    .line 1220
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v3

    .line 1221
    .local v3, selctionAtBoundry:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1222
    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_0
    move v4, v7

    .line 1239
    .end local v3           #selctionAtBoundry:I
    :goto_1
    return v4

    .end local v0           #down:Z
    .end local v1           #keyCode:I
    :cond_1
    move v0, v8

    .line 1216
    goto :goto_0

    .line 1226
    .restart local v0       #down:Z
    .restart local v1       #keyCode:I
    .restart local v3       #selctionAtBoundry:I
    :cond_2
    if-nez v3, :cond_5

    if-eq v1, v10, :cond_3

    const/16 v4, 0x14

    if-ne v1, v4, :cond_5

    .line 1227
    :cond_3
    if-eqz v0, :cond_4

    .line 1228
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_4
    move v4, v7

    .line 1229
    goto :goto_1

    .line 1231
    :cond_5
    if-ne v3, v7, :cond_8

    if-eq v1, v9, :cond_6

    const/16 v4, 0x15

    if-ne v1, v4, :cond_8

    .line 1232
    :cond_6
    if-eqz v0, :cond_7

    .line 1233
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_7
    move v4, v7

    .line 1234
    goto :goto_1

    .line 1238
    .end local v3           #selctionAtBoundry:I
    :cond_8
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v4, v8

    .line 1239
    goto :goto_1
.end method

.method public enableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 660
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 661
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 662
    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "command"
    .parameter "value"

    .prologue
    .line 647
    const-string v1, "Insert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 650
    .local v0, length:I
    invoke-direct {p0, v0}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    .end local v0           #length:I
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method declared-synchronized getComposingState()Z
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConetextmenuVisibility()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    return v0
.end method

.method public getCursorPressed()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    return v0
.end method

.method public getHTML()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ""

    .line 953
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 955
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    move-object v1, v3

    .line 959
    :goto_0
    return-object v1

    .line 957
    :cond_0
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 959
    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 931
    iget v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    return v0
.end method

.method public getMailContent()Landroid/webkit/WebHTMLMarkupData;
    .locals 5

    .prologue
    const-string v4, ""

    .line 963
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 965
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    .line 967
    .local v0, data:Landroid/webkit/WebHTMLMarkupData;
    invoke-virtual {v0}, Landroid/webkit/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 972
    :goto_0
    return-object v0

    .line 969
    :cond_0
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 970
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Landroid/webkit/WebHTMLMarkupData;->setHTMLFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 998
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 995
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 939
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 940
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .line 941
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 942
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    aget-char v0, v2, v3

    .line 943
    .local v0, chrVal:I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const-string v1, ""

    .line 944
    :cond_1
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getText() Not Null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    .end local v0           #chrVal:I
    :cond_2
    return-object v1
.end method

.method public handleNavKeys(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    const/4 v1, 0x0

    .line 1180
    packed-switch p1, :pswitch_data_0

    .line 1211
    :goto_0
    return-void

    .line 1182
    :pswitch_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_0

    .line 1183
    const-string v0, "MoveLeftAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1185
    :cond_0
    const-string v0, "MoveLeft"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1190
    :pswitch_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_1

    .line 1191
    const-string v0, "MoveRightAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1193
    :cond_1
    const-string v0, "MoveRight"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1197
    :pswitch_2
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_2

    .line 1198
    const-string v0, "MoveUpAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1200
    :cond_2
    const-string v0, "MoveUp"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1204
    :pswitch_3
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_3

    .line 1205
    const-string v0, "MoveDownAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :cond_3
    const-string v0, "MoveDown"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1180
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public htmlLength()I
    .locals 1

    .prologue
    .line 950
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V
    .locals 2
    .parameter "contentFragment"
    .parameter "pos"

    .prologue
    const/4 v1, 0x0

    .line 637
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v0, :cond_1

    .line 638
    const-string v0, "MoveToBeginningOfDocument"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_0
    :goto_0
    const-string v0, "InsertHTML"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    return-void

    .line 640
    :cond_1
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v0, :cond_0

    .line 641
    const-string v0, "MoveToEndOfDocument"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertImage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 702
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 703
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v1, "InsertHTML"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .locals 3
    .parameter "url"
    .parameter "widthInPixel"
    .parameter "heightInPixel"

    .prologue
    .line 694
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 695
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v1, "InsertHTML"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 167
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 981
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public loadHtmlFile(Ljava/lang/String;)V
    .locals 2
    .parameter "htmlFilePath"

    .prologue
    .line 574
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, data:Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method public moveCursorBegining()V
    .locals 2

    .prologue
    .line 719
    const-string v0, "MoveToBeginningOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method public moveCursorEnd()V
    .locals 2

    .prologue
    .line 715
    const-string v0, "MoveToEndOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method public onContextMenuItem(I)Z
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 330
    iput-boolean v6, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 335
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 339
    .local v2, tmpBoolean:Ljava/lang/Boolean;
    sparse-switch p1, :sswitch_data_0

    move v3, v6

    .line 420
    :goto_0
    return v3

    .line 342
    :sswitch_0
    iput-boolean v5, p0, Landroid/webkit/WebView;->SimulateSelect:Z

    .line 345
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->AdvanceTextSelectionAll()Z

    .line 346
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v3, v5}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection(Z)V

    move v3, v5

    .line 347
    goto :goto_0

    .line 350
    :sswitch_1
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 351
    .local v0, cursurRect:Landroid/graphics/Rect;
    iput-boolean v5, p0, Landroid/webkit/WebView;->SimulateSelect:Z

    .line 352
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkit/HtmlComposerView;->setTextSelecitonManualAtContentPoint(II)Z

    .line 353
    invoke-virtual {p0, v6}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 354
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v3, v5}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection(Z)V

    move v3, v5

    .line 357
    goto :goto_0

    .line 360
    .end local v0           #cursurRect:Landroid/graphics/Rect;
    :sswitch_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 361
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v3, v5

    .line 362
    goto :goto_0

    .line 364
    :sswitch_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAll()V

    .line 365
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 366
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v3, v5

    .line 367
    goto :goto_0

    .line 369
    :sswitch_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->saveSelection()V

    .line 370
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 371
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->restoreSelection()V

    .line 372
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v3, v5

    .line 373
    goto :goto_0

    .line 378
    :sswitch_5
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->saveSelection()V

    .line 379
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAll()V

    .line 380
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 382
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->restoreSelection()V

    move v3, v5

    .line 384
    goto :goto_0

    .line 387
    :sswitch_6
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebClipboard;->getHTMLForCheckingSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    .line 389
    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->paste()V

    .line 392
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v3, v5

    .line 393
    goto :goto_0

    .line 396
    :sswitch_7
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebClipboard;->getHTMLForCheckingSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    .line 398
    goto/16 :goto_0

    .line 400
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebClipboard;->launchClipboardUI()V

    .line 401
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v3, v5

    .line 402
    goto/16 :goto_0

    .line 404
    :sswitch_8
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->undo()V

    move v3, v5

    .line 405
    goto/16 :goto_0

    .line 408
    :sswitch_9
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->redo()V

    move v3, v5

    .line 409
    goto/16 :goto_0

    .line 412
    :sswitch_a
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 413
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_2

    .line 414
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v3, v6}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection(Z)V

    .line 415
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_2
    move v3, v5

    .line 417
    goto/16 :goto_0

    .line 339
    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_6
        0x1020024 -> :sswitch_a
        0x1020028 -> :sswitch_1
        0x102002c -> :sswitch_8
        0x102002d -> :sswitch_9
        0x1020408 -> :sswitch_3
        0x1020409 -> :sswitch_5
        0x102040a -> :sswitch_7
    .end sparse-switch
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 249
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 250
    const/4 v0, 0x0

    .line 252
    .local v0, added:Z
    new-instance v1, Landroid/webkit/HtmlComposerView$MenuHandler;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/webkit/HtmlComposerView$MenuHandler;-><init>(Landroid/webkit/HtmlComposerView;Landroid/webkit/HtmlComposerView$1;)V

    .line 254
    .local v1, handler:Landroid/webkit/HtmlComposerView$MenuHandler;
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canSelectAll()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    const v4, 0x102001f

    const v5, 0x104000d

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x61

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 259
    const/4 v0, 0x1

    .line 262
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v4

    if-ne v4, v7, :cond_9

    move v3, v7

    .line 264
    .local v3, selection:Z
    :goto_0
    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isBodyEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 265
    const v4, 0x1020028

    const v5, 0x1040383

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 268
    const/4 v0, 0x1

    .line 271
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    if-eqz v3, :cond_a

    .line 274
    const v2, 0x1040003

    .line 275
    .local v2, name:I
    const v4, 0x1020020

    invoke-interface {p1, v6, v4, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 283
    :goto_1
    const/4 v0, 0x1

    .line 286
    .end local v2           #name:I
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 288
    if-eqz v3, :cond_b

    .line 289
    const v2, 0x1040001

    .line 290
    .restart local v2       #name:I
    const v4, 0x1020021

    invoke-interface {p1, v6, v4, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 298
    :goto_2
    const/4 v0, 0x1

    .line 301
    .end local v2           #name:I
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 302
    const v4, 0x1020022

    const v5, 0x104000b

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 304
    const/4 v0, 0x1

    .line 307
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canUndo()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 308
    const v4, 0x102002c

    const v5, 0x1040386

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 312
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canRedo()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 313
    const v4, 0x102002d

    const v5, 0x1040387

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 317
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isInputMethodTarget()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 318
    const v4, 0x1020024

    const v5, 0x1040388

    invoke-interface {p1, v7, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 320
    const/4 v0, 0x1

    .line 323
    :cond_7
    if-eqz v0, :cond_8

    .line 324
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 325
    const v4, 0x104038a

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 327
    :cond_8
    return-void

    .end local v3           #selection:Z
    :cond_9
    move v3, v6

    .line 262
    goto/16 :goto_0

    .line 277
    .restart local v3       #selection:Z
    :cond_a
    const v2, 0x1040384

    .line 278
    .restart local v2       #name:I
    const v4, 0x1020408

    invoke-interface {p1, v6, v4, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 292
    .end local v2           #name:I
    :cond_b
    const v2, 0x1040385

    .line 293
    .restart local v2       #name:I
    const v4, 0x1020409

    invoke-interface {p1, v6, v4, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .parameter "outAttrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "HtmlComposerView"

    .line 1245
    const-string v1, "HtmlComposerView"

    const-string/jumbo v1, "onCreateInputConnection"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    if-ne v3, v1, :cond_0

    .line 1249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1250
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "allowEmoji"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1251
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 1254
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/WebView;->isSelectionset:Z

    if-nez v1, :cond_1

    .line 1256
    const-string v1, "HtmlComposerView"

    const-string v1, "calling set Caret 0 0 "

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-virtual {p0, v2, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 1261
    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x4000

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1265
    iget v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1266
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    return-object v1
.end method

.method public onEditorAction(I)V
    .locals 3
    .parameter "actionCode"

    .prologue
    const/16 v2, 0x82

    .line 1022
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 1023
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 1024
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1025
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1026
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1033
    .end local v0           #v:Landroid/view/View;
    :cond_0
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 835
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 837
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 838
    if-nez p1, :cond_0

    .line 839
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->dismissClipboardUI()V

    .line 840
    :cond_0
    if-eqz p1, :cond_1

    .line 841
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 842
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->updateClipboardUI()V

    .line 843
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 846
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 847
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1038
    const-string v7, "HtmlComposerView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HtmlComposerView onKeyDown "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const/4 v7, 0x1

    iget-boolean v8, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 1047
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1055
    :cond_0
    const/16 v7, 0x3f

    if-eq p1, v7, :cond_1

    const/16 v7, 0x76

    if-ne p1, v7, :cond_2

    .line 1057
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 1063
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1065
    const/16 v7, 0x3b

    if-eq p1, v7, :cond_3

    const/16 v7, 0x3c

    if-ne p1, v7, :cond_4

    .line 1067
    :cond_3
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 1070
    :cond_4
    const/4 v6, -0x1

    .line 1071
    .local v6, startOff:I
    const/4 v1, -0x1

    .line 1072
    .local v1, endOff:I
    const/4 v2, 0x0

    .line 1074
    .local v2, prevSpanTextBeforeStartOffset:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v3

    .line 1075
    .local v3, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v6, v3, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    .line 1076
    iget v1, v3, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    .line 1078
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1079
    .local v5, spannableString:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 1081
    .local v4, spannableChar:[C
    if-lez v6, :cond_5

    if-lez v1, :cond_5

    .line 1083
    if-eqz v5, :cond_5

    const/4 v7, 0x1

    const/4 v8, 0x1

    sub-int v8, v6, v8

    aget-char v8, v4, v8

    invoke-static {v8}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v8

    if-ne v7, v8, :cond_5

    .line 1085
    const/4 v7, 0x1

    sub-int v7, v6, v7

    const/16 v8, 0x20

    aput-char v8, v4, v7

    .line 1086
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    .line 1090
    :cond_5
    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1092
    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1093
    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    iput v7, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 1095
    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    const/4 v7, -0x1

    if-eq v1, v7, :cond_6

    .line 1097
    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-static {v7, v6, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1101
    :cond_6
    const/4 v7, 0x1

    if-lt v6, v7, :cond_7

    .line 1103
    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    const/4 v8, 0x1

    sub-int v8, v6, v8

    invoke-virtual {v7, v8, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1106
    :cond_7
    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    if-eqz v7, :cond_c

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    iget-object v8, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, p0, v8, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1108
    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    iget v8, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    sub-int v0, v7, v8

    .line 1109
    .local v0, diff:I
    if-lez v0, :cond_b

    .line 1111
    if-eqz v2, :cond_a

    .line 1113
    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    const/4 v8, 0x1

    sub-int v8, v6, v8

    invoke-virtual {v7, v8, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_9

    .line 1115
    const-string v7, ""

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1116
    const-string v7, "InsertText"

    iget-object v8, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    const/4 v9, 0x1

    sub-int v9, v6, v9

    add-int v10, v6, v0

    invoke-virtual {v8, v9, v10}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1136
    :cond_8
    :goto_0
    const/4 v7, 0x1

    .line 1139
    .end local v0           #diff:I
    :goto_1
    return v7

    .line 1121
    .restart local v0       #diff:I
    :cond_9
    const-string v7, "InsertText"

    iget-object v8, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    add-int v9, v6, v0

    invoke-virtual {v8, v6, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_0

    .line 1127
    :cond_a
    const-string v7, "InsertText"

    iget-object v8, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    add-int v9, v6, v0

    invoke-virtual {v8, v6, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_0

    .line 1130
    :cond_b
    if-gez v0, :cond_8

    .line 1132
    neg-int v0, v0

    .line 1133
    const-string v7, ""

    invoke-virtual {p0, v7, v0}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    goto :goto_0

    .line 1139
    .end local v0           #diff:I
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    goto :goto_1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1172
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtmlComposerView onKeyLongPress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1176
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, -0x1

    .line 1144
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "htmlcompor onKeyUp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const/16 v3, 0x3b

    if-eq p1, v3, :cond_0

    const/16 v3, 0x3c

    if-ne p1, v3, :cond_1

    .line 1147
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 1150
    :cond_1
    const/4 v2, -0x1

    .line 1151
    .local v2, startOff:I
    const/4 v0, -0x1

    .line 1153
    .local v0, endOff:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v1

    .line 1154
    .local v1, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v2, v1, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    .line 1155
    iget v0, v1, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    .line 1156
    if-eq v2, v6, :cond_2

    if-eq v0, v6, :cond_2

    .line 1158
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-static {v3, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1161
    :cond_2
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    if-eqz v3, :cond_3

    .line 1163
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p0, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1164
    const/4 v3, 0x1

    .line 1166
    :goto_0
    return v3

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public onRecieveWebviewTouchUp()V
    .locals 4

    .prologue
    .line 773
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 776
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imm active  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection(Z)V

    .line 780
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "HtmlComposerView"

    .line 786
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 787
    .local v0, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 816
    :cond_0
    :goto_0
    return v0

    .line 789
    :pswitch_0
    const-string v1, "HtmlComposerView"

    const-string v1, "MotionEvent.ACTION_DOWN  html compopser"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iput-boolean v2, p0, Landroid/webkit/WebView;->mInActionMove:Z

    goto :goto_0

    .line 793
    :pswitch_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 794
    const-string v1, "HtmlComposerView"

    const-string/jumbo v1, "making selection set to true"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iput-boolean v3, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 796
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    if-nez v1, :cond_1

    .line 797
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 798
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 808
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 810
    :cond_1
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 812
    iput-boolean v2, p0, Landroid/webkit/WebView;->mInActionMove:Z

    goto :goto_0

    .line 787
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 11
    .parameter "hasWindowFocus"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v10, "InsertText"

    const-string v6, "HtmlComposerView"

    .line 852
    const-string v4, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onWindowFocusChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 854
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 855
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 856
    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 858
    :cond_0
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-nez v4, :cond_1

    .line 860
    invoke-virtual {p0, v8}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 862
    :cond_1
    if-nez p1, :cond_4

    .line 864
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v7, v4, :cond_2

    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v7, v4, :cond_3

    .line 866
    :cond_2
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 867
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 869
    const-string v4, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onWindowFocusChanged WindowFocus = false, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_3
    :goto_0
    return-void

    .line 873
    :cond_4
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v7, v4, :cond_5

    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v7, v4, :cond_9

    .line 875
    :cond_5
    const/4 v3, -0x1

    .line 876
    .local v3, startOff:I
    const/4 v1, -0x1

    .line 877
    .local v1, endOff:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v2

    .line 878
    .local v2, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    .line 879
    iget v1, v2, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    .line 881
    const-string v4, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onWindowFocusChanged WindowFocus = true, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    if-eq v3, v9, :cond_a

    if-eq v1, v9, :cond_a

    .line 885
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-static {v4, v3, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 893
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    sub-int v0, v4, v5

    .line 900
    .local v0, diff:I
    if-lez v0, :cond_b

    .line 902
    const-string v4, "InsertText"

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    add-int v5, v3, v0

    invoke-virtual {v4, v3, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v10, v4}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 916
    :cond_6
    :goto_1
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-ne v7, v4, :cond_7

    .line 917
    iput-boolean v8, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 918
    :cond_7
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v7, v4, :cond_8

    .line 919
    iput-boolean v8, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 921
    :cond_8
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 924
    .end local v0           #diff:I
    .end local v1           #endOff:I
    .end local v2           #selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    .end local v3           #startOff:I
    :cond_9
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v7, v4, :cond_3

    .line 925
    iput-boolean v8, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    goto :goto_0

    .line 889
    .restart local v1       #endOff:I
    .restart local v2       #selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    .restart local v3       #startOff:I
    :cond_a
    const-string v4, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onWindowFocusChanged startOffset= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", endOffset= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 905
    .restart local v0       #diff:I
    :cond_b
    if-nez v0, :cond_6

    .line 907
    if-lez v3, :cond_6

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    sub-int v5, v3, v7

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    sub-int v6, v3, v7

    invoke-virtual {v5, v6, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 910
    const-string v4, ""

    invoke-virtual {p0, v4, v7}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 911
    const-string v4, "InsertText"

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    sub-int v5, v3, v7

    add-int v6, v3, v0

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v10, v4}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_1
.end method

.method public paste()V
    .locals 2

    .prologue
    .line 681
    const-string v0, "Paste"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method public redo()V
    .locals 2

    .prologue
    .line 727
    const-string v0, "Redo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 685
    const-string v0, "SelectAll"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method declared-synchronized setComposingState(Z)V
    .locals 1
    .parameter "isInComposingState"

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCursorPressed(Z)V
    .locals 0
    .parameter "IsPressed"

    .prologue
    .line 145
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 146
    return-void
.end method

.method public setEditableSelection(II)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 708
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 709
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->setEditableSelection(II)V

    .line 712
    :cond_0
    return-void
.end method

.method public setEmoji(Z)V
    .locals 3
    .parameter "bIsActive"

    .prologue
    .line 990
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " htmlcomposer setEmoji() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 991
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 992
    return-void
.end method

.method public setImeOptions(I)V
    .locals 0
    .parameter "imeOption"

    .prologue
    .line 935
    iput p1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 936
    return-void
.end method

.method public setMaxHtmlLength(I)V
    .locals 1
    .parameter "maxHtmlLength"

    .prologue
    .line 158
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 160
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 977
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clear()V

    .line 978
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 979
    return-void
.end method

.method public setWidthForCopiedImage(I)V
    .locals 1
    .parameter "viewWidth"

    .prologue
    .line 138
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 139
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebClipboard;->setWidthForCopiedImage(I)V

    .line 140
    return-void
.end method

.method public undo()V
    .locals 2

    .prologue
    .line 723
    const-string v0, "Undo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    return-void
.end method
