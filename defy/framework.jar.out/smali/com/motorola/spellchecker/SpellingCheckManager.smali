.class public Lcom/motorola/spellchecker/SpellingCheckManager;
.super Ljava/lang/Object;
.source "SpellingCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;,
        Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;,
        Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;,
        Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;,
        Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;,
        Lcom/motorola/spellchecker/SpellingCheckManager$OnConnectionEstablishedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final ENABLED:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "*** SpellingCheckManager ***"

.field static final MAX_WORD_LENGTH:I = 0x20

.field public static final WORD_HIGHLIGHT_AUTOCORRECTION:I = 0x2

.field public static final WORD_HIGHLIGHT_MISSPELLING:I = 0x1

.field public static final WORD_HIGHLIGHT_NONE:I

.field private static WORD_SEPARATORS:Ljava/lang/String;

.field private static mCommonInstance:Lcom/motorola/spellchecker/SpellingCheckManager;


# instance fields
.field private mClientCallback:Lcom/motorola/spellchecker/ISpellingCheckClient$Stub;

.field private mClientID:I

.field private mContext:Landroid/content/Context;

.field private mEditorChecker:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

.field private mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

.field private mOpenedDicts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/spellchecker/SpellingCheckManager$OnConnectionEstablishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRefCount:I

.field private mServiceEnabled:Z

.field private mSpellingCheckServiceConnection:Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, ". ,;:!?\n()[]*&@{}/<>_+=|\""

    sput-object v0, Lcom/motorola/spellchecker/SpellingCheckManager;->WORD_SEPARATORS:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/spellchecker/SpellingCheckManager;->mCommonInstance:Lcom/motorola/spellchecker/SpellingCheckManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mPendingListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mOpenedDicts:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    iput-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mSpellingCheckServiceConnection:Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;

    iput-boolean v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mServiceEnabled:Z

    iput v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mRefCount:I

    iput-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mEditorChecker:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    new-instance v0, Lcom/motorola/spellchecker/SpellingCheckManager$1;

    invoke-direct {v0, p0}, Lcom/motorola/spellchecker/SpellingCheckManager$1;-><init>(Lcom/motorola/spellchecker/SpellingCheckManager;)V

    iput-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mClientCallback:Lcom/motorola/spellchecker/ISpellingCheckClient$Stub;

    iput v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mClientID:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;-><init>(Lcom/motorola/spellchecker/SpellingCheckManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mEditorChecker:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/spellchecker/SpellingCheckManager;C)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/spellchecker/SpellingCheckManager;->isWordSeparator(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/motorola/spellchecker/SpellingCheckManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mPendingListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/spellchecker/SpellingCheckManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mOpenedDicts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/motorola/spellchecker/SpellingCheckManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mServiceEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/motorola/spellchecker/SpellingCheckManager;Landroid/widget/TextView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/spellchecker/SpellingCheckManager;->spell(Landroid/widget/TextView;II)V

    return-void
.end method

.method static synthetic access$1410(Lcom/motorola/spellchecker/SpellingCheckManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mRefCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mRefCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/motorola/spellchecker/SpellingCheckManager;)Lcom/motorola/spellchecker/ISpellingCheckService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/spellchecker/SpellingCheckManager;Lcom/motorola/spellchecker/ISpellingCheckService;)Lcom/motorola/spellchecker/ISpellingCheckService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    return-object p1
.end method

.method static synthetic access$802(Lcom/motorola/spellchecker/SpellingCheckManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mClientID:I

    return p1
.end method

.method static synthetic access$900(Lcom/motorola/spellchecker/SpellingCheckManager;)Lcom/motorola/spellchecker/ISpellingCheckClient$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mClientCallback:Lcom/motorola/spellchecker/ISpellingCheckClient$Stub;

    return-object v0
.end method

.method public static attachSpellCheckerFlags(Landroid/text/Spannable;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "sp"
    .parameter "start"
    .parameter "end"
    .parameter "anno_key"
    .parameter "anno_value"
    .parameter "highlight_type"

    .prologue
    const/16 v5, 0x21

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    .local v2, length:I
    if-ltz p1, :cond_0

    if-gt p2, v2, :cond_0

    if-ge p1, p2, :cond_0

    invoke-static {p0, p1, p2}, Lcom/motorola/spellchecker/SpellingCheckManager;->getSpellCheckerSpans(Landroid/text/Spanned;II)[Ljava/lang/Object;

    move-result-object v3

    .local v3, spans:[Ljava/lang/Object;
    array-length v0, v3

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v4, v3, v1

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    new-instance v4, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    invoke-direct {v4, p3, p4}, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v4, p1, p2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    if-eqz p5, :cond_0

    const-class v4, Landroid/text/style/ReplacementSpan;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    array-length v4, v4

    if-gtz v4, :cond_0

    new-instance v4, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    invoke-direct {v4, p5}, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;-><init>(I)V

    invoke-interface {p0, v4, p1, p2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static checkEditor(Landroid/widget/TextView;II)V
    .locals 3
    .parameter "editor"
    .parameter "start"
    .parameter "end"

    .prologue
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/motorola/spellchecker/SpellingCheckManager;->eligableForSpellingCheck(Landroid/widget/TextView;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/spellchecker/SpellingCheckManager;->getInstance(Landroid/content/Context;)Lcom/motorola/spellchecker/SpellingCheckManager;

    move-result-object v0

    .local v0, instance:Lcom/motorola/spellchecker/SpellingCheckManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/spellchecker/SpellingCheckManager;->isConnectionEstablished()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {v0, p0, p1, p2}, Lcom/motorola/spellchecker/SpellingCheckManager;->spell(Landroid/widget/TextView;II)V

    iget v1, v0, Lcom/motorola/spellchecker/SpellingCheckManager;->mRefCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/motorola/spellchecker/SpellingCheckManager;->mRefCount:I

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/motorola/spellchecker/SpellingCheckManager$2;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/motorola/spellchecker/SpellingCheckManager$2;-><init>(Lcom/motorola/spellchecker/SpellingCheckManager;Landroid/widget/TextView;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/spellchecker/SpellingCheckManager;->setOnConnectionEstablishedListener(Lcom/motorola/spellchecker/SpellingCheckManager$OnConnectionEstablishedListener;)V

    goto :goto_0
.end method

.method private checkSug(ILjava/lang/String;)[B
    .locals 5
    .parameter "dictID"
    .parameter "wd"

    .prologue
    const/4 v0, 0x0

    .local v0, bSuggestion:[B
    iget-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    if-eqz v3, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/motorola/spellchecker/SpellingCheckManager;->isValidDictID(I)I

    move-result v2

    .local v2, index:I
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mOpenedDicts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;

    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->dictEncoding:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/motorola/spellchecker/ISpellingCheckService;->checkSug(I[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v2           #index:I
    :cond_0
    :goto_0
    return-object v0

    .restart local v2       #index:I
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .end local v2           #index:I
    .end local p0
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static eligableForSpellingCheck(Landroid/widget/TextView;)Z
    .locals 5
    .parameter "editor"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .local v0, inputType:I
    and-int/lit8 v2, v0, 0xf

    if-ne v2, v4, :cond_2

    const/high16 v2, 0x8

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    const/high16 v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    and-int/lit16 v1, v0, 0xff0

    .local v1, variation:I
    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x80

    if-eq v1, v2, :cond_2

    const/16 v2, 0x90

    if-eq v1, v2, :cond_2

    const/16 v2, 0xb0

    if-eq v1, v2, :cond_2

    move v2, v4

    goto :goto_0

    .end local v1           #variation:I
    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/spellchecker/SpellingCheckManager;
    .locals 2
    .parameter "context"

    .prologue
    if-eqz p0, :cond_0

    sget-object v0, Lcom/motorola/spellchecker/SpellingCheckManager;->mCommonInstance:Lcom/motorola/spellchecker/SpellingCheckManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-direct {v0, p0}, Lcom/motorola/spellchecker/SpellingCheckManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/spellchecker/SpellingCheckManager;->mCommonInstance:Lcom/motorola/spellchecker/SpellingCheckManager;

    sget-object v0, Lcom/motorola/spellchecker/SpellingCheckManager;->mCommonInstance:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-direct {v0}, Lcom/motorola/spellchecker/SpellingCheckManager;->startSpellingCheckService()Z

    :cond_0
    :goto_0
    sget-object v0, Lcom/motorola/spellchecker/SpellingCheckManager;->mCommonInstance:Lcom/motorola/spellchecker/SpellingCheckManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/spellchecker/SpellingCheckManager;->mCommonInstance:Lcom/motorola/spellchecker/SpellingCheckManager;

    iget v1, v0, Lcom/motorola/spellchecker/SpellingCheckManager;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/motorola/spellchecker/SpellingCheckManager;->mRefCount:I

    :cond_1
    sget-object v0, Lcom/motorola/spellchecker/SpellingCheckManager;->mCommonInstance:Lcom/motorola/spellchecker/SpellingCheckManager;

    return-object v0

    :cond_2
    sget-object v0, Lcom/motorola/spellchecker/SpellingCheckManager;->mCommonInstance:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-virtual {v0}, Lcom/motorola/spellchecker/SpellingCheckManager;->isConnectionEstablished()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/spellchecker/SpellingCheckManager;->mCommonInstance:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-direct {v0, p0}, Lcom/motorola/spellchecker/SpellingCheckManager;->updateContext(Landroid/content/Context;)V

    sget-object v0, Lcom/motorola/spellchecker/SpellingCheckManager;->mCommonInstance:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-direct {v0}, Lcom/motorola/spellchecker/SpellingCheckManager;->startSpellingCheckService()Z

    goto :goto_0
.end method

.method public static getSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 11
    .parameter "sp"
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p3, kind:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v9, 0x0

    const-class v10, Landroid/text/style/CharacterStyle;

    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .local v5, spans:[Ljava/lang/Object;,"[TT;"
    const-class v8, Landroid/text/style/CharacterStyle;

    if-eq p3, v10, :cond_0

    const-class v8, Landroid/text/ParcelableSpan;

    if-eq p3, v8, :cond_0

    const-class v8, Ljava/lang/Object;

    if-ne p3, v8, :cond_5

    :cond_0
    const-class v8, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    invoke-interface {p0, p1, p2, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .local v7, spellCheckerMarkupSpans:[Ljava/lang/Object;,"[TT;"
    const/4 v6, 0x0

    .local v6, spellCheckerAnnotations:[Ljava/lang/Object;,"[TT;"
    array-length v3, v7

    .local v3, len_markup:I
    const/4 v2, 0x0

    .local v2, len_annotations:I
    const-class v8, Landroid/text/style/CharacterStyle;

    if-eq p3, v10, :cond_1

    const-class v8, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    invoke-interface {p0, p1, p2, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6           #spellCheckerAnnotations:[Ljava/lang/Object;,"[TT;"
    check-cast v6, [Ljava/lang/Object;

    .restart local v6       #spellCheckerAnnotations:[Ljava/lang/Object;,"[TT;"
    array-length v2, v6

    :cond_1
    if-gtz v3, :cond_2

    if-lez v2, :cond_5

    :cond_2
    array-length v4, v5

    .local v4, len_other:I
    add-int v8, v4, v3

    add-int/2addr v8, v2

    invoke-static {p3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .local v1, allSpans:[Ljava/lang/Object;,"[TT;"
    invoke-static {v5, v9, v1, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v3, :cond_3

    invoke-static {v7, v9, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    if-lez v2, :cond_4

    add-int v8, v4, v3

    invoke-static {v6, v9, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move-object v5, v1

    .end local v1           #allSpans:[Ljava/lang/Object;,"[TT;"
    .end local v2           #len_annotations:I
    .end local v3           #len_markup:I
    .end local v4           #len_other:I
    .end local v6           #spellCheckerAnnotations:[Ljava/lang/Object;,"[TT;"
    .end local v7           #spellCheckerMarkupSpans:[Ljava/lang/Object;,"[TT;"
    :cond_5
    return-object v5
.end method

.method public static getSpellCheckerSpans(Landroid/text/Spanned;II)[Ljava/lang/Object;
    .locals 9
    .parameter "sp"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v8, 0x0

    const-class v7, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    const-class v6, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    invoke-interface {p0, p1, p2, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    .local v5, spellCheckerMarkupSpans:[Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;
    if-eqz v5, :cond_3

    array-length v6, v5

    if-lez v6, :cond_3

    const-class v6, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    invoke-interface {p0, p1, p2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    .local v4, spellCheckerAnnotations:[Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;
    if-eqz v4, :cond_2

    array-length v6, v4

    if-lez v6, :cond_2

    array-length v2, v5

    .local v2, len_markup:I
    array-length v1, v4

    .local v1, len_annotations:I
    const-class v6, Ljava/lang/Object;

    add-int v7, v2, v1

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .local v3, spans:[Ljava/lang/Object;
    if-lez v2, :cond_0

    invoke-static {v5, v8, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-lez v1, :cond_1

    invoke-static {v4, v8, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move-object v6, v3

    .end local v1           #len_annotations:I
    .end local v2           #len_markup:I
    .end local v3           #spans:[Ljava/lang/Object;
    .end local v4           #spellCheckerAnnotations:[Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;
    :goto_0
    return-object v6

    .restart local v4       #spellCheckerAnnotations:[Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;
    .restart local p0
    :cond_2
    move-object v6, v5

    goto :goto_0

    .end local v4           #spellCheckerAnnotations:[Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;
    :cond_3
    const-class v6, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    invoke-interface {p0, p1, p2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    goto :goto_0
.end method

.method private isValidDictID(I)I
    .locals 4
    .parameter "ID"

    .prologue
    iget-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mOpenedDicts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    const/4 v1, 0x0

    .local v1, od:Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mOpenedDicts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #od:Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;
    check-cast v1, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;

    .restart local v1       #od:Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;
    iget v3, v1, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->id:I

    if-ne v3, p1, :cond_0

    move v3, v0

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private isWordSeparator(C)Z
    .locals 2
    .parameter "c"

    .prologue
    sget-object v0, Lcom/motorola/spellchecker/SpellingCheckManager;->WORD_SEPARATORS:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeSpellCheckerFlags(Ljava/lang/CharSequence;II)V
    .locals 6
    .parameter "content"
    .parameter "start"
    .parameter "end"

    .prologue
    if-eqz p0, :cond_1

    instance-of v4, p0, Landroid/text/Spannable;

    if-eqz v4, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v4, v0

    const-class v5, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    invoke-interface {v4, p1, p2, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    .local v3, spans:[Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;
    array-length v1, v3

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v3, v2

    invoke-virtual {v4}, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v4, v0

    aget-object v5, v3, v2

    invoke-interface {v4, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #spans:[Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;
    :cond_1
    return-void
.end method

.method public static replaceWithSpellCheckerSpans(IILandroid/text/Editable;Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 17
    .parameter "start"
    .parameter "end"
    .parameter "content"
    .parameter "replacer"

    .prologue
    const/16 v16, 0x0

    const/16 v15, 0x21

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    move/from16 v0, p0

    move/from16 v1, p1

    if-le v0, v1, :cond_1

    :cond_0
    return-object p2

    :cond_1
    if-gez p0, :cond_2

    const/16 p0, 0x0

    :cond_2
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v13

    move/from16 v0, p1

    move v1, v13

    if-le v0, v1, :cond_3

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result p1

    :cond_3
    move-object/from16 v0, p2

    move/from16 v1, p0

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/motorola/spellchecker/SpellingCheckManager;->getSpellCheckerSpans(Landroid/text/Spanned;II)[Ljava/lang/Object;

    move-result-object v6

    .local v6, existingSpellCheckerSpans:[Ljava/lang/Object;
    if-eqz v6, :cond_8

    array-length v13, v6

    if-lez v13, :cond_8

    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v13, v6

    if-ge v8, v13, :cond_8

    aget-object v13, v6, v8

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    move/from16 v0, v16

    move v1, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .local v12, st:I
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v13

    aget-object v14, v6, v8

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, en:I
    move v0, v12

    move/from16 v1, p0

    if-lt v0, v1, :cond_5

    move v0, v5

    move/from16 v1, p1

    if-gt v0, v1, :cond_5

    aget-object v13, v6, v8

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    move v0, v12

    move/from16 v1, p0

    if-ge v0, v1, :cond_6

    move v0, v5

    move/from16 v1, p1

    if-le v0, v1, :cond_6

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_4

    aget-object v13, v6, v8

    instance-of v13, v13, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    if-eqz v13, :cond_4

    aget-object v13, v6, v8

    move-object/from16 v0, p2

    move-object v1, v13

    move v2, v12

    move/from16 v3, p0

    move v4, v15

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    new-instance v9, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    const/4 v13, 0x1

    invoke-direct {v9, v13}, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;-><init>(I)V

    .local v9, scms:Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;
    move-object/from16 v0, p2

    move-object v1, v9

    move/from16 v2, p1

    move v3, v5

    move v4, v15

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .end local v9           #scms:Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;
    :cond_6
    move v0, v12

    move/from16 v1, p0

    if-ge v0, v1, :cond_7

    move v0, v5

    move/from16 v1, p0

    if-le v0, v1, :cond_7

    aget-object v13, v6, v8

    move-object/from16 v0, p2

    move-object v1, v13

    move v2, v12

    move/from16 v3, p0

    move v4, v15

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_7
    move v0, v5

    move/from16 v1, p1

    if-le v0, v1, :cond_4

    move v0, v12

    move/from16 v1, p1

    if-ge v0, v1, :cond_4

    aget-object v13, v6, v8

    move-object/from16 v0, p2

    move-object v1, v13

    move/from16 v2, p1

    move v3, v5

    move v4, v15

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .end local v5           #en:I
    .end local v8           #i:I
    .end local v12           #st:I
    :cond_8
    move-object/from16 v0, p2

    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move-object/from16 v0, p3

    instance-of v0, v0, Landroid/text/Spanned;

    move v13, v0

    if-eqz v13, :cond_0

    move-object/from16 v0, p3

    check-cast v0, Landroid/text/Spanned;

    move-object v10, v0

    .local v10, sp:Landroid/text/Spanned;
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v13

    move-object v0, v10

    move/from16 v1, v16

    move v2, v13

    invoke-static {v0, v1, v2}, Lcom/motorola/spellchecker/SpellingCheckManager;->getSpellCheckerSpans(Landroid/text/Spanned;II)[Ljava/lang/Object;

    move-result-object v11

    .local v11, spellCheckerSpans:[Ljava/lang/Object;
    if-eqz v11, :cond_0

    array-length v13, v11

    if-lez v13, :cond_0

    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    array-length v13, v11

    if-ge v8, v13, :cond_0

    aget-object v13, v11, v8

    invoke-interface {v10, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    move/from16 v0, v16

    move v1, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int v12, v13, p0

    .restart local v12       #st:I
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v13

    aget-object v14, v11, v8

    invoke-interface {v10, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int v5, v13, p0

    .restart local v5       #en:I
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v13

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    aget-object v13, v11, v8

    invoke-interface {v10, v13}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    .local v7, flags:I
    aget-object v13, v11, v8

    move-object/from16 v0, p2

    move-object v1, v13

    move v2, v12

    move v3, v5

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private spell(Landroid/widget/TextView;II)V
    .locals 6
    .parameter "editor"
    .parameter "start"
    .parameter "end"

    .prologue
    iget-boolean v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mServiceEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/spellchecker/SpellingCheckManager;->openDict(Ljava/lang/String;)I

    move-result v1

    .local v1, dict_id:I
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/spellchecker/SpellingCheckManager;->spell(ILandroid/widget/TextView;IIZ)V

    invoke-virtual {p0, v1}, Lcom/motorola/spellchecker/SpellingCheckManager;->closeDict(I)V

    .end local v1           #dict_id:I
    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/motorola/spellchecker/SpellingCheckManager;->removeSpellCheckerFlags(Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method private startSpellingCheckService()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mSpellingCheckServiceConnection:Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;

    invoke-direct {v0, p0}, Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;-><init>(Lcom/motorola/spellchecker/SpellingCheckManager;)V

    iput-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mSpellingCheckServiceConnection:Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;

    :cond_0
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.spellingcheckservice.SPELLINGCHECK_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mSpellingCheckServiceConnection:Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private updateContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;-><init>(Lcom/motorola/spellchecker/SpellingCheckManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mEditorChecker:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    :cond_0
    return-void
.end method


# virtual methods
.method public addWord(ILjava/lang/String;)V
    .locals 4
    .parameter "dictID"
    .parameter "word"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/spellchecker/SpellingCheckManager;->isValidDictID(I)I

    move-result v1

    .local v1, index:I
    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .end local p0
    :cond_0
    :goto_0
    return-void

    .restart local p0
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    iget-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mOpenedDicts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;

    iget-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->dictEncoding:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/motorola/spellchecker/ISpellingCheckService;->addWord(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "*** SpellingCheckManager ***"

    const-string v3, "error when adding word!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public afterImeAddWord()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    invoke-interface {v1}, Lcom/motorola/spellchecker/ISpellingCheckService;->afterImeAddWord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "*** SpellingCheckManager ***"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public attachSpellCheckerFlags(ILjava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 9
    .parameter "dictID"
    .parameter "cs"
    .parameter "suggestions"
    .parameter "highlight_type"

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/motorola/spellchecker/SpellingCheckManager;->isValidDictID(I)I

    move-result v5

    if-gez v5, :cond_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, str:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, spannable:Landroid/text/SpannableString;
    iget-boolean v5, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mServiceEnabled:Z

    if-eqz v5, :cond_4

    if-eqz p4, :cond_4

    const/4 v5, 0x1

    if-ne p4, v5, :cond_3

    invoke-direct {p0, p1}, Lcom/motorola/spellchecker/SpellingCheckManager;->isValidDictID(I)I

    move-result v5

    if-ltz v5, :cond_1

    invoke-virtual {p0, p1, v3}, Lcom/motorola/spellchecker/SpellingCheckManager;->spell(ILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    const/4 v4, 0x0

    .local v4, wordWithNumber:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_7

    const/16 v5, 0x39

    if-gt v0, v5, :cond_7

    const/4 v4, 0x1

    .end local v0           #c:C
    :cond_2
    if-eqz v4, :cond_3

    const/4 p4, 0x0

    .end local v1           #i:I
    .end local v4           #wordWithNumber:Z
    :cond_3
    if-eqz p4, :cond_4

    new-instance v2, Landroid/text/SpannableString;

    .end local v2           #spannable:Landroid/text/SpannableString;
    invoke-direct {v2, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v2       #spannable:Landroid/text/SpannableString;
    new-instance v5, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    invoke-direct {v5, p4}, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v7, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    if-nez v2, :cond_5

    new-instance v2, Landroid/text/SpannableString;

    .end local v2           #spannable:Landroid/text/SpannableString;
    invoke-direct {v2, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v2       #spannable:Landroid/text/SpannableString;
    :cond_5
    new-instance v5, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    invoke-direct {v5, v3, p3}, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v7, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-nez v2, :cond_8

    move-object v5, p2

    :goto_1
    return-object v5

    .restart local v0       #c:C
    .restart local v1       #i:I
    .restart local v4       #wordWithNumber:Z
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:C
    .end local v1           #i:I
    .end local v4           #wordWithNumber:Z
    :cond_8
    move-object v5, v2

    goto :goto_1
.end method

.method public beforeImeAddWord()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    invoke-interface {v1}, Lcom/motorola/spellchecker/ISpellingCheckService;->beforeImeAddWord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "*** SpellingCheckManager ***"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public closeDict(I)V
    .locals 5
    .parameter "dictID"

    .prologue
    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/motorola/spellchecker/SpellingCheckManager;->isValidDictID(I)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mOpenedDicts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;

    iget v2, v2, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->refCount:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mEditorChecker:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mEditorChecker:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget v2, v2, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mDictID:I

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mEditorChecker:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iput-boolean v4, v2, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mPendingCloseDictRequest:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mOpenedDicts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    invoke-interface {v2, p1}, Lcom/motorola/spellchecker/ISpellingCheckService;->closeDict(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "*** SpellingCheckManager ***"

    const-string v3, "error when try to close Dict!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mOpenedDicts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;

    iget v3, v2, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->refCount:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->refCount:I

    goto :goto_1
.end method

.method public getSpellCheckerAnnotations(Landroid/text/Spanned;)[Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v3

    const-class v4, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    invoke-interface {p1, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    .local v2, spans:[Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    aget-object v0, v2, v5

    .local v0, annotation:Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;->getKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .local v1, ret:[Ljava/lang/String;
    move-object v3, v1

    .end local v0           #annotation:Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;
    .end local v1           #ret:[Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasSpellCheckerFlags(Landroid/text/Spanned;)I
    .locals 5
    .parameter "text"

    .prologue
    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    invoke-interface {p1, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    .local v0, spans:[Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;
    const/4 v1, 0x0

    .local v1, type:I
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v2, v0, v4

    #getter for: Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;->mType:I
    invoke-static {v2}, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;->access$1500(Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;)I

    move-result v1

    :cond_0
    return v1
.end method

.method public isConnectionEstablished()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mServiceEnabled:Z

    return v0
.end method

.method public openDict(Ljava/lang/String;)I
    .locals 6
    .parameter "localeString"

    .prologue
    const/4 v0, 0x0

    .local v0, dictID:I
    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    if-eqz v4, :cond_1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "default"

    :cond_0
    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    invoke-interface {v4, p1}, Lcom/motorola/spellchecker/ISpellingCheckService;->openDict(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, v0}, Lcom/motorola/spellchecker/SpellingCheckManager;->isValidDictID(I)I

    move-result v3

    .local v3, index:I
    if-gez v3, :cond_2

    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    invoke-interface {v4, v0}, Lcom/motorola/spellchecker/ISpellingCheckService;->getDictEncoding(I)Ljava/lang/String;

    move-result-object v1

    .local v1, dict_encoding:Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mOpenedDicts:Ljava/util/ArrayList;

    new-instance v5, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;

    invoke-direct {v5, v0, v1}, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1           #dict_encoding:Ljava/lang/String;
    .end local v3           #index:I
    .end local p0
    :cond_1
    :goto_0
    return v0

    .restart local v3       #index:I
    .restart local p0
    :cond_2
    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mOpenedDicts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;

    iget v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->refCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->refCount:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3           #index:I
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Landroid/os/RemoteException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSpellCheckerFlags(Landroid/widget/TextView;)V
    .locals 3
    .parameter "editor"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/motorola/spellchecker/SpellingCheckManager;->removeSpellCheckerFlags(Ljava/lang/CharSequence;II)V

    :cond_0
    return-void
.end method

.method public setFlaggingEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    invoke-interface {v1, p1}, Lcom/motorola/spellchecker/ISpellingCheckService;->setFlaggingEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "*** SpellingCheckManager ***"

    const-string v2, "error when set flagging enabled!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setInputLanguage(Ljava/lang/String;)V
    .locals 3
    .parameter "language"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    invoke-interface {v1, p1}, Lcom/motorola/spellchecker/ISpellingCheckService;->setInputLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "*** SpellingCheckManager ***"

    const-string v2, "error when set input language!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnConnectionEstablishedListener(Lcom/motorola/spellchecker/SpellingCheckManager$OnConnectionEstablishedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/spellchecker/SpellingCheckManager;->isConnectionEstablished()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/motorola/spellchecker/SpellingCheckManager$OnConnectionEstablishedListener;->onConnectionEstablished()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mPendingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mPendingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSpellCheckerServiceEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    invoke-interface {v1, p1}, Lcom/motorola/spellchecker/ISpellingCheckService;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "*** SpellingCheckManager ***"

    const-string v2, "error when set service enabled!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public spell(ILjava/lang/String;)I
    .locals 5
    .parameter "dictID"
    .parameter "wd"

    .prologue
    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/motorola/spellchecker/SpellingCheckManager;->isValidDictID(I)I

    move-result v1

    .local v1, index:I
    if-ltz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v4, :cond_1

    :cond_0
    move v3, v4

    .end local p0
    :goto_0
    return v3

    .restart local p0
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    .local v2, wordNum:I
    iget-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    if-eqz v3, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mOpenedDicts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;

    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->dictEncoding:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/motorola/spellchecker/ISpellingCheckService;->checkWord(I[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_3
    :goto_1
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public spell(ILandroid/widget/TextView;)V
    .locals 6
    .parameter "dictID"
    .parameter "editor"

    .prologue
    const/4 v3, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/spellchecker/SpellingCheckManager;->spell(ILandroid/widget/TextView;IIZ)V

    goto :goto_0
.end method

.method public spell(ILandroid/widget/TextView;IIZ)V
    .locals 5
    .parameter "dictID"
    .parameter "editor"
    .parameter "start"
    .parameter "end"
    .parameter "extendBoundaries"

    .prologue
    iget-boolean v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mServiceEnabled:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/spellchecker/SpellingCheckManager;->isValidDictID(I)I

    move-result v3

    if-ltz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    move-result v1

    .local v1, length:I
    if-ltz p3, :cond_0

    if-ge p3, p4, :cond_0

    if-gt p3, v1, :cond_0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    if-eqz p5, :cond_5

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, str:Ljava/lang/String;
    if-lez p3, :cond_3

    const/4 v3, 0x1

    sub-int v0, p3, v3

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/motorola/spellchecker/SpellingCheckManager;->isWordSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    add-int/lit8 p3, v0, 0x1

    .end local v0           #i:I
    :cond_3
    if-ge p4, v1, :cond_5

    move v0, p4

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v1, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/motorola/spellchecker/SpellingCheckManager;->isWordSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    move p4, v0

    .end local v0           #i:I
    .end local v2           #str:Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Landroid/widget/TextView;->beginBatchEdit()V

    invoke-virtual {p2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3, p3, p4}, Lcom/motorola/spellchecker/SpellingCheckManager;->removeSpellCheckerFlags(Ljava/lang/CharSequence;II)V

    invoke-virtual {p2}, Landroid/widget/TextView;->endBatchEdit()V

    iget-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mEditorChecker:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mEditorChecker:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    iget-boolean v3, v3, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mAvailable:Z

    if-eqz v3, :cond_0

    sub-int v3, p4, p3

    const/16 v4, 0xfa0

    if-le v3, v4, :cond_8

    iget-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mEditorChecker:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->asyncCheckEditor(ILandroid/widget/TextView;II)V

    goto :goto_0

    .restart local v0       #i:I
    .restart local v2       #str:Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v2           #str:Ljava/lang/String;
    :cond_8
    invoke-virtual {p2}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mEditorChecker:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->checkEditor(ILandroid/widget/TextView;II)V

    invoke-virtual {p2}, Landroid/widget/TextView;->endBatchEdit()V

    goto :goto_0
.end method

.method public spellCheckDone()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mRefCount:I

    invoke-virtual {p0}, Lcom/motorola/spellchecker/SpellingCheckManager;->unbindServiceIfNecessary()V

    return-void
.end method

.method public suggest(ILjava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "dictID"
    .parameter "wd"

    .prologue
    const/4 v12, 0x0

    invoke-direct {p0, p1}, Lcom/motorola/spellchecker/SpellingCheckManager;->isValidDictID(I)I

    move-result v3

    .local v3, index:I
    if-ltz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x20

    if-le v10, v11, :cond_1

    :cond_0
    move-object v10, v12

    .end local p0
    :goto_0
    return-object v10

    .restart local p0
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/spellchecker/SpellingCheckManager;->spell(ILjava/lang/String;)I

    move-result v5

    .local v5, ret:I
    if-nez v5, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/motorola/spellchecker/SpellingCheckManager;->checkSug(ILjava/lang/String;)[B

    move-result-object v0

    .local v0, bSuggestion:[B
    if-nez v0, :cond_2

    move-object v10, v12

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, suggestionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, ""

    .local v9, suggests:Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/lang/String;

    .end local v9           #suggests:Ljava/lang/String;
    iget-object v10, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mOpenedDicts:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;

    iget-object v10, p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->dictEncoding:Ljava/lang/String;

    invoke-direct {v9, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v9       #suggests:Ljava/lang/String;
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, len:I
    const/4 v6, 0x0

    .local v6, start:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_4

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x24

    if-ne v10, v11, :cond_3

    invoke-virtual {v9, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v2, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2           #i:I
    .end local v4           #len:I
    .end local v6           #start:I
    .end local v9           #suggests:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v1, v10

    .local v1, e:Ljava/lang/Exception;
    const-string v10, "*** SpellingCheckManager ***"

    const-string v11, "Unsupported dictionary encoding!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v9       #suggests:Ljava/lang/String;
    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #i:I
    .restart local v4       #len:I
    .restart local v6       #start:I
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v7, v10, [Ljava/lang/String;

    .local v7, suggestionArray:[Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v10, p0

    goto :goto_0

    .end local v0           #bSuggestion:[B
    .end local v2           #i:I
    .end local v4           #len:I
    .end local v6           #start:I
    .end local v7           #suggestionArray:[Ljava/lang/String;
    .end local v8           #suggestionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #suggests:Ljava/lang/String;
    .restart local p0
    :cond_5
    move-object v10, v12

    goto :goto_0
.end method

.method public unbindServiceIfNecessary()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mRefCount:I

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mOpenedDicts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mSpellingCheckServiceConnection:Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mRefCount:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mRefCount:I

    :cond_0
    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mEditorChecker:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mEditorChecker:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    invoke-virtual {v1}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->onStop()V

    :cond_1
    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    iget v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mClientID:I

    invoke-interface {v1, v2}, Lcom/motorola/spellchecker/ISpellingCheckService;->deregisterClient(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mISpellingCheckService:Lcom/motorola/spellchecker/ISpellingCheckService;

    :cond_2
    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mSpellingCheckServiceConnection:Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager;->mSpellingCheckServiceConnection:Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;

    :cond_3
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "*** SpellingCheckManager ***"

    const-string v2, "Spell Client Register failed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
