.class public Landroid/webkit/HtmlComposerInputConnection;
.super Ljava/lang/Object;
.source "HtmlComposerInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field private static final BACKGROUND_COLOR_BLUE:I = -0xf0001

.field private static final BACKGROUND_COLOR_GREEN:I = -0x993256

.field private static final BACKGROUND_COLOR_PURPLE:I = -0x777701

.field private static final BACKGROUND_COLOR_SKYBLUE:I = -0x604933

.field static final COMPOSING:Ljava/lang/Object; = null

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerInputConnection"


# instance fields
.field final MAX_SPANS:I

.field private bBeginBatchEdit:Z

.field bShadeColor:Z

.field composingEnd:I

.field composingStart:I

.field curSelEnd:I

.field curSelStart:I

.field currCompText:Ljava/lang/CharSequence;

.field delCount:I

.field isInComposingState:Z

.field private mBGColorSpans:[Landroid/text/style/BackgroundColorSpan;

.field private mBackGroundColorSpan:[I

.field private mColorSpans:[Landroid/text/style/ForegroundColorSpan;

.field private mCursorPosition:I

.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field mTargetView:Landroid/webkit/HtmlComposerView;

.field prevCommOff:I

.field prevEndOff:I

.field prevStartOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Landroid/webkit/ComposingText;

    invoke-direct {v0}, Landroid/webkit/ComposingText;-><init>()V

    sput-object v0, Landroid/webkit/HtmlComposerInputConnection;->COMPOSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 3
    .parameter "targetView"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->delCount:I

    .line 41
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->prevCommOff:I

    .line 42
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->prevStartOff:I

    .line 43
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->prevEndOff:I

    .line 44
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 45
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 46
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 47
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 48
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    .line 50
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    .line 60
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mCursorPosition:I

    .line 61
    const/16 v0, 0xff

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->MAX_SPANS:I

    .line 68
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 71
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 72
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    .line 73
    return-void
.end method

.method private getBGColorCodeFromSpannedText(Ljava/lang/CharSequence;)[I
    .locals 13
    .parameter "str"

    .prologue
    const/4 v10, -0x1

    const-class v12, Landroid/text/style/CharacterStyle;

    const-string v11, "HtmlComposerInputConnection"

    .line 651
    const-string v9, "HtmlComposerInputConnection"

    const-string v9, "getBGColorSpansPosition enter   "

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 653
    .local v1, BGColor:[I
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    .line 654
    .local v7, s:Landroid/text/Spanned;
    invoke-interface {v7}, Landroid/text/Spanned;->length()I

    move-result v5

    .line 656
    .local v5, length:I
    const/4 v4, 0x0

    .line 657
    .local v4, k:I
    const/4 v9, 0x0

    aput v10, v1, v9

    .line 658
    const/4 v9, 0x1

    aput v10, v1, v9

    .line 659
    const-string v9, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBGColorSpansPosition Spannable text  length =    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v3, 0x0

    .end local p0
    .local v3, iSpan:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 662
    const-class v9, Landroid/text/style/CharacterStyle;

    invoke-interface {v7, v3, v5, v12}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 663
    .local v6, next:I
    const-class v9, Landroid/text/style/CharacterStyle;

    invoke-interface {v7, v3, v6, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/CharacterStyle;

    .line 665
    .local v8, style:[Landroid/text/style/CharacterStyle;
    if-nez v8, :cond_1

    .line 667
    const-string v9, "HtmlComposerInputConnection"

    const-string v9, "getBGColorSpansPosition mBGColorSpans NULL    "

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local v6           #next:I
    .end local v8           #style:[Landroid/text/style/CharacterStyle;
    :cond_0
    return-object v1

    .line 670
    .restart local v6       #next:I
    .restart local v8       #style:[Landroid/text/style/CharacterStyle;
    :cond_1
    const-string v9, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBGColorSpansPosition Span index =    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v2, 0x0

    .local v2, iBGColorSpan:I
    :goto_1
    array-length v9, v8

    if-ge v2, v9, :cond_3

    const/16 v9, 0xff

    if-ge v2, v9, :cond_3

    .line 672
    aget-object v9, v8, v2

    instance-of v9, v9, Landroid/text/style/BackgroundColorSpan;

    if-eqz v9, :cond_2

    .line 673
    if-nez v2, :cond_2

    .line 676
    aget-object p0, v8, v2

    check-cast p0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p0}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v9

    aput v9, v1, v4

    .line 677
    const-string v9, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBGColorSpansPosition - BG COLOR code =     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v1, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    add-int/lit8 v4, v4, 0x1

    .line 671
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 660
    :cond_3
    move v3, v6

    goto :goto_0
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 16
    .parameter "text"
    .parameter "newCursorPosition"
    .parameter "composing"

    .prologue
    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v13, v0

    if-nez v13, :cond_0

    .line 542
    :goto_0
    return-void

    .line 413
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 415
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 416
    .local v11, theByteArray:[B
    const-string v13, "HtmlComposerInputConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "theByteArray.length "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .end local v11           #theByteArray:[B
    :cond_1
    const-string v13, "HtmlComposerInputConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "replaceText "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v8

    .line 422
    .local v8, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v13, v8, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 423
    iget v13, v8, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 426
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    move v3, v0

    .line 427
    .local v3, a:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    move v4, v0

    .line 429
    .local v4, b:I
    const-string v13, "HtmlComposerInputConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Composing span: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-ge v4, v3, :cond_2

    .line 432
    move v12, v3

    .line 433
    .local v12, tmp:I
    move v3, v4

    .line 434
    move v4, v12

    .line 437
    .end local v12           #tmp:I
    :cond_2
    const/4 v13, -0x1

    if-eq v3, v13, :cond_a

    const/4 v13, -0x1

    if-eq v4, v13, :cond_a

    .line 452
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->resetShadeSpan()V

    .line 454
    if-eqz p3, :cond_5

    .line 455
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    move v13, v0

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    move v13, v0

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    .line 456
    const-string v13, "HtmlComposerInputConnection"

    const-string v14, "Inside if(composingStart == -1 && composingEnd == -1)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move v13, v0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 458
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    move v13, v0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 460
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    move v13, v0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v14

    add-int/2addr v13, v14

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 467
    :cond_5
    const-string v13, "HtmlComposerInputConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " composingStart  composingEnd  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-lez p2, :cond_d

    .line 474
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    add-int/2addr v13, v3

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    add-int p2, p2, v13

    .line 478
    :goto_2
    if-gez p2, :cond_6

    const/16 p2, 0x0

    .line 480
    :cond_6
    const-string v13, "HtmlComposerInputConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Composing span: before selection"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v13, v0

    invoke-virtual {v13, v3, v4}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 483
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    if-eq v3, v4, :cond_e

    .line 485
    const-string v13, "HtmlComposerInputConnection"

    const-string v14, " text.toString().equals() && (a != b)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v13, v0

    const-string v14, ""

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 495
    :goto_3
    if-eqz p3, :cond_f

    .line 497
    const/4 v9, 0x0

    .line 498
    .local v9, sp:Landroid/text/Spannable;
    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 502
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v9, v0

    .line 503
    invoke-static {v9}, Landroid/webkit/HtmlComposerInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 504
    const/4 v10, 0x0

    .line 505
    .local v10, spstr:Landroid/text/SpannableString;
    move-object v0, v9

    check-cast v0, Landroid/text/SpannableString;

    move-object v10, v0

    .line 507
    invoke-virtual {v10}, Landroid/text/SpannableString;->getSpanData()[I

    move-result-object v7

    .line 508
    .local v7, mSpandata:[I
    invoke-virtual {v10}, Landroid/text/SpannableString;->getSpanCount()I

    move-result v6

    .line 510
    .local v6, mSpanCount:I
    const/4 v13, 0x4

    if-eq v6, v13, :cond_7

    const/4 v13, 0x5

    if-ne v6, v13, :cond_8

    .line 512
    :cond_7
    invoke-direct/range {p0 .. p1}, Landroid/webkit/HtmlComposerInputConnection;->getBGColorCodeFromSpannedText(Ljava/lang/CharSequence;)[I

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    .line 514
    :cond_8
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerInputConnection;->ShadeSpan([II)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v6           #mSpanCount:I
    .end local v7           #mSpandata:[I
    .end local v9           #sp:Landroid/text/Spannable;
    .end local v10           #spstr:Landroid/text/SpannableString;
    :cond_9
    :goto_4
    const-string v13, "HtmlComposerInputConnection"

    const-string v14, "Time check!!!!!!! "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v13, v0

    move-object v0, v13

    move/from16 v1, p2

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v8

    .line 535
    iget v13, v8, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 536
    iget v13, v8, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 538
    const-string v13, "HtmlComposerInputConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "newCursorPosition "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v13, "HtmlComposerInputConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "new selection "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_0

    .line 441
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move v3, v0

    .line 442
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    move v4, v0

    .line 443
    if-gez v3, :cond_b

    const/4 v3, 0x0

    .line 444
    :cond_b
    if-gez v4, :cond_c

    const/4 v4, 0x0

    .line 445
    :cond_c
    if-ge v4, v3, :cond_3

    .line 446
    move v12, v3

    .line 447
    .restart local v12       #tmp:I
    move v3, v4

    .line 448
    move v4, v12

    goto/16 :goto_1

    .line 476
    .end local v12           #tmp:I
    :cond_d
    add-int p2, p2, v3

    goto/16 :goto_2

    .line 491
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v13, v0

    const-string v14, "InsertText"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_3

    .line 516
    .restart local v9       #sp:Landroid/text/Spannable;
    :catch_0
    move-exception v13

    move-object v5, v13

    .line 518
    .local v5, e:Ljava/lang/ClassCastException;
    const-string v13, "HtmlComposerInputConnection"

    const-string v14, "Text is not spanned data - Prediction is enable in default  IME "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    move v15, v0

    invoke-virtual {v13, v14, v15}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v13, v0

    const-string v14, "Underline"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 527
    .end local v5           #e:Ljava/lang/ClassCastException;
    .end local v9           #sp:Landroid/text/Spannable;
    :cond_f
    const/4 v13, -0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 528
    const/4 v13, -0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    goto/16 :goto_4
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 643
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    .line 644
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x121

    .line 694
    const-class v4, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 695
    .local v3, sps:[Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 696
    array-length v4, v3

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 697
    aget-object v2, v3, v1

    .line 698
    .local v2, o:Ljava/lang/Object;
    sget-object v4, Landroid/webkit/HtmlComposerInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v2, v4, :cond_1

    .line 699
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 696
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 703
    :cond_1
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 704
    .local v0, fl:I
    and-int/lit16 v4, v0, 0x133

    if-eq v4, v7, :cond_0

    .line 706
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    and-int/lit8 v6, v0, -0x34

    or-int/lit16 v6, v6, 0x100

    or-int/lit8 v6, v6, 0x21

    invoke-interface {p0, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 714
    .end local v0           #fl:I
    .end local v1           #i:I
    .end local v2           #o:Ljava/lang/Object;
    :cond_2
    sget-object v4, Landroid/webkit/HtmlComposerInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v4, p1, p2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 716
    return-void
.end method

.method private syncInput(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->delCount:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateInputMethodSelection()V
    .locals 8

    .prologue
    const-string v7, "HtmlComposerInputConnection"

    const-string v6, " "

    .line 104
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 106
    const-string v1, "HtmlComposerInputConnection"

    const-string/jumbo v1, "return without updateInputMethodSelection as  bBeginBatchEdit is TRUE.........."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 110
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 112
    const-string v1, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInputMethodSelection curSelStart curSelEnd composingStart, composingEnd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public ShadeSpan([II)V
    .locals 8
    .parameter "Spandata"
    .parameter "SpanCount"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "Underline"

    const-string v6, "HtmlComposerInputConnection"

    .line 572
    const-string v0, "HtmlComposerInputConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShadeSpan  - SpanCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    packed-switch p2, :pswitch_data_0

    .line 633
    :pswitch_0
    const-string v0, "HtmlComposerInputConnection"

    const-string v0, "ShadeSpan  -- SpanCount is niether 1 nor 4  "

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 581
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 582
    const-string v0, "HtmlComposerInputConnection"

    const-string v0, "ShadeSpan  - Keep Adding  Underline when NO COLOR is present "

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "Underline"

    invoke-virtual {v0, v7, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "RemoveFormat"

    invoke-virtual {v0, v1, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    goto :goto_0

    .line 596
    :pswitch_2
    const-string v0, "HtmlComposerInputConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShadeSpan  - Hilite  color ---- SpanCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v0, "HtmlComposerInputConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShadeSpan  - Hilite  color ----composingStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "composingEnd ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Spandata[1] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Spandata[4] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    aget v0, v0, v3

    const v1, -0x993256

    if-ne v0, v1, :cond_2

    .line 601
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    aget v3, p1, v4

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 602
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "HiliteColor"

    const-string v2, "LightSeaGreen"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "Underline"

    invoke-virtual {v0, v7, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    aget v2, p1, v4

    add-int/2addr v1, v2

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    const/4 v3, 0x4

    aget v3, p1, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 622
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "HiliteColor"

    const-string v2, "LightCyan"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v0, "HtmlComposerInputConnection"

    const-string v0, "ShadeSpan  -Adding underline when  span has 2 COLORS "

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "Underline"

    invoke-virtual {v0, v7, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    goto/16 :goto_0

    .line 607
    :cond_2
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    aget v0, v0, v3

    const v1, -0x777701

    if-ne v0, v1, :cond_3

    .line 609
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    aget v3, p1, v4

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 610
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "HiliteColor"

    const-string v2, "SlateBlue"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "Underline"

    invoke-virtual {v0, v7, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 614
    :cond_3
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    aget v0, v0, v3

    const v1, -0x604933

    if-ne v0, v1, :cond_1

    .line 616
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    aget v3, p1, v4

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 617
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "HiliteColor"

    const-string v2, "CornflowerBlue"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "Underline"

    invoke-virtual {v0, v7, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 575
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public UpdatecomposingCursorPosition(Ljava/lang/CharSequence;)V
    .locals 9
    .parameter "text"

    .prologue
    const/4 v7, -0x1

    const-string v8, "HtmlComposerInputConnection"

    const-string v6, " "

    .line 368
    const/4 v3, -0x1

    .line 369
    .local v3, tmp:I
    const/4 v0, -0x1

    .line 370
    .local v0, endOff:I
    const/4 v2, -0x1

    .line 371
    .local v2, startOff:I
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v1

    .line 372
    .local v1, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->prevCommOff:I

    .line 373
    iget v0, v1, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    .line 374
    const-string v4, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdatecomposingCursorPosition off"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    if-le v2, v0, :cond_0

    .line 377
    move v3, v0

    .line 378
    move v0, v2

    .line 379
    move v2, v3

    .line 382
    :cond_0
    if-eq v2, v7, :cond_1

    if-eq v0, v7, :cond_1

    if-eqz p1, :cond_1

    .line 384
    const-string v4, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside startOff != -1 && endOff != -1 && text != null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4, v2, v0}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 386
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v5, "InsertText"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_1
    return-void
.end method

.method public beginBatchEdit()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 138
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 139
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v3
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 144
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "clearMetaKeyStates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 149
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "commitCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 4
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v3, 0x0

    .line 154
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    move v0, v3

    .line 158
    :goto_0
    return v0

    .line 156
    :cond_0
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    .line 157
    invoke-direct {p0, p1, p2, v3}, Landroid/webkit/HtmlComposerInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 158
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 3
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 162
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSurroundingText left "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rgh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HtmlComposerView;->deleteSurroundingText(II)V

    .line 166
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 171
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 176
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishComposingText  composingStart   composingEnd  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    if-ne v0, v4, :cond_0

    move v0, v5

    .line 191
    :goto_0
    return v0

    .line 179
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    .line 180
    :cond_1
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    .line 182
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 183
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeUnderLine()V

    .line 184
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "RemoveFormat"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    .line 189
    :cond_2
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 190
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    move v0, v5

    .line 191
    goto :goto_0
.end method

.method public getCursorCapsMode(I)I
    .locals 2
    .parameter "reqModes"

    .prologue
    .line 195
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "getCursorCapsMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 6
    .parameter "request"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v5, "HtmlComposerInputConnection"

    .line 202
    const-string v2, "HtmlComposerInputConnection"

    const-string v2, "getExtractedText"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v2, :cond_0

    move-object v2, v4

    .line 219
    :goto_0
    return-object v2

    .line 205
    :cond_0
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 207
    .local v0, outText:Landroid/view/inputmethod/ExtractedText;
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 208
    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    move-object v2, v4

    .line 209
    goto :goto_0

    .line 210
    :cond_1
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 211
    iput v3, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 213
    iput v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 214
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v1

    .line 215
    .local v1, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v2, v1, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 216
    iget v2, v1, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 217
    const-string v2, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtractedText outText.selectionStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " outText.selectionEnd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    .line 219
    goto :goto_0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "flags"

    .prologue
    .line 223
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "getSelectedText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 4
    .parameter "n"
    .parameter "flags"

    .prologue
    .line 229
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 232
    :goto_0
    return-object v1

    .line 230
    :cond_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/WebView$CursorDirection;->FORWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v1, p1, v2}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, retText:Ljava/lang/String;
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTextAfterCursor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flags "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-nez v0, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 8
    .parameter "n"
    .parameter "flags"

    .prologue
    .line 236
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 254
    :goto_0
    return-object v5

    .line 237
    :cond_0
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v6, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v5, p1, v6}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, retText:Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 239
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 240
    .local v0, arr:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 242
    aget-char v1, v0, v2

    .line 244
    .local v1, chrVal:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 246
    const/16 v5, 0x20

    aput-char v5, v0, v2

    .line 240
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 250
    .end local v1           #chrVal:C
    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 251
    .local v3, rText:Ljava/lang/String;
    move-object v4, v3

    .line 253
    .end local v0           #arr:[C
    .end local v2           #i:I
    .end local v3           #rText:Ljava/lang/String;
    :cond_4
    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTextBeforeCursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " flags "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    if-nez v4, :cond_5

    const-string v5, ""

    goto :goto_0

    :cond_5
    move-object v5, v4

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 258
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performContextMenuAction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, retVal:Z
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_0

    move v0, v4

    .line 261
    :goto_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_1

    .line 266
    :goto_1
    return v0

    .line 260
    :cond_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, p1}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 263
    :cond_1
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 264
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 265
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection(Z)V

    goto :goto_1
.end method

.method public performEditorAction(I)Z
    .locals 17
    .parameter "editorAction"

    .prologue
    .line 273
    const-string v2, "HtmlComposerInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performEditorAction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 289
    :goto_0
    return v2

    .line 276
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 277
    .local v3, eventTime:J
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 282
    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    const/16 v11, 0x42

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x16

    move-wide v8, v3

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 288
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection(Z)V

    .line 289
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "action"
    .parameter "data"

    .prologue
    .line 293
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v1, "performPrivateCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public removeComposingSpan()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 82
    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 83
    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 84
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v1, "removeComposingSpan called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public removeUnderLine()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const-string v2, "HtmlComposerInputConnection"

    .line 88
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v0, "removeUnderLine called"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    if-eq v0, v1, :cond_1

    .line 90
    const-string v0, "HtmlComposerInputConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " removeUnderLine composingStart  composingEnd  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 92
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "Underline"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "RemoveFormat"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 100
    :cond_1
    return-void
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public resetShadeSpan()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const-string v4, "HtmlComposerInputConnection"

    .line 547
    const-string v0, "HtmlComposerInputConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetShadeSpan  - Removing highlite color ---- composingStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "composingEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    if-eq v0, v1, :cond_0

    .line 550
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 551
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v0, "resetShadeSpan  - Removing Underline"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "Underline"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "RemoveFormat"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    .line 559
    :cond_0
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/16 v10, 0x16

    const/16 v9, 0x13

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v7, "HtmlComposerInputConnection"

    .line 302
    const-string v5, "HtmlComposerInputConnection"

    const-string/jumbo v5, "sendKeyEvent"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v5, :cond_0

    move v5, v6

    .line 362
    :goto_0
    return v5

    .line 305
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-eq v5, v8, :cond_2

    move v1, v8

    .line 306
    .local v1, down:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 307
    .local v3, keyCode:I
    const-string v5, "HtmlComposerInputConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendKeyEvent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-lt v3, v9, :cond_9

    if-gt v3, v10, :cond_9

    .line 311
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v4

    .line 312
    .local v4, selctionAtBoundry:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 313
    if-eqz v1, :cond_1

    .line 314
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5, v3}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_1
    move v5, v8

    .line 315
    goto :goto_0

    .end local v1           #down:Z
    .end local v3           #keyCode:I
    .end local v4           #selctionAtBoundry:I
    :cond_2
    move v1, v6

    .line 305
    goto :goto_1

    .line 317
    .restart local v1       #down:Z
    .restart local v3       #keyCode:I
    .restart local v4       #selctionAtBoundry:I
    :cond_3
    if-nez v4, :cond_6

    if-eq v3, v10, :cond_4

    const/16 v5, 0x14

    if-ne v3, v5, :cond_6

    .line 318
    :cond_4
    if-eqz v1, :cond_5

    .line 319
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5, v3}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_5
    move v5, v8

    .line 320
    goto :goto_0

    .line 322
    :cond_6
    if-ne v4, v8, :cond_e

    if-eq v3, v9, :cond_7

    const/16 v5, 0x15

    if-ne v3, v5, :cond_e

    .line 323
    :cond_7
    if-eqz v1, :cond_8

    .line 324
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5, v3}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_8
    move v5, v8

    .line 325
    goto :goto_0

    .line 329
    .end local v4           #selctionAtBoundry:I
    :cond_9
    const/16 v5, 0x3d

    if-ne v5, v3, :cond_b

    .line 330
    if-eqz v1, :cond_a

    .line 331
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v6, "InsertText"

    const-string v7, "    "

    invoke-virtual {v5, v6, v7}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move v5, v8

    .line 333
    goto :goto_0

    .line 335
    :cond_b
    const/16 v5, 0x42

    if-ne v3, v5, :cond_d

    .line 336
    if-eqz v1, :cond_c

    .line 337
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v6, "InsertText"

    const-string v7, "\n"

    invoke-virtual {v5, v6, v7}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    :cond_c
    move v5, v8

    .line 340
    goto/16 :goto_0

    .line 342
    :cond_d
    const/16 v5, 0x43

    if-ne v3, v5, :cond_e

    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_e

    .line 343
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, compstr:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v8, :cond_e

    .line 346
    const-string v5, "HtmlComposerInputConnection"

    const-string/jumbo v5, "sendKeyEvent   making currCompText to empty and reset underline state for MOA IME "

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeUnderLine()V

    .line 348
    const-string v5, ""

    iput-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 353
    .end local v0           #compstr:Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 354
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 355
    .local v2, h:Landroid/os/Handler;
    if-eqz v2, :cond_f

    .line 357
    const/16 v5, 0x3f3

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_f
    move v5, v8

    .line 362
    goto/16 :goto_0
.end method

.method public setComposingRegion(II)Z
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 719
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setComposingRegion start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 5
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const-string v4, "HtmlComposerInputConnection"

    .line 392
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 393
    const-string v0, "HtmlComposerInputConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setComposingText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 404
    :goto_0
    return v0

    .line 396
    :cond_1
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    if-ne v0, v3, :cond_2

    .line 397
    const-string v0, "HtmlComposerInputConnection"

    const-string v0, " Underline apply "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_2
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    .line 401
    invoke-direct {p0, p1, p2, v2}, Landroid/webkit/HtmlComposerInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 403
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    move v0, v2

    .line 404
    goto :goto_0
.end method

.method public setSelection(II)Z
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 724
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSelection start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 727
    :goto_0
    return v0

    .line 726
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 727
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTargetNull()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "HtmlComposerInputConnection setTargetNull()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 78
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 79
    return-void
.end method

.method public updateInputMethodSelection(Z)V
    .locals 4
    .parameter "isCandidate"

    .prologue
    const-string v3, "HtmlComposerInputConnection"

    .line 118
    const-string v1, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInputMethodSelection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    .line 121
    .local v0, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v1, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 122
    iget v1, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 123
    const-string v1, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInputMethodSelection curSelStart curSelEnd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 126
    return-void
.end method
