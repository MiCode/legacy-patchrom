.class public Landroid/net/UrlQuerySanitizer;
.super Ljava/lang/Object;
.source "UrlQuerySanitizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;,
        Landroid/net/UrlQuerySanitizer$ValueSanitizer;,
        Landroid/net/UrlQuerySanitizer$ParameterValuePair;
    }
.end annotation


# static fields
.field private static final sAllButNulAndAngleBracketsLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sAllButNulLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sAllButWhitespaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sAllIllegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sAmpAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sAmpLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sURLLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sUrlAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;


# instance fields
.field private mAllowUnregisteredParamaters:Z

.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntriesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/UrlQuerySanitizer$ParameterValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferFirstRepeatedParameter:Z

.field private final mSanitizers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/UrlQuerySanitizer$ValueSanitizer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllIllegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x5ff

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x5fc

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllButWhitespaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x194

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sURLLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x195

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sUrlAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAmpLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAmpAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x59f

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulAndAngleBracketsLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllIllegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllIllegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->parseUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static final getAllButNulAndAngleBracketsLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulAndAngleBracketsLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getAllButNulLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getAllButWhitespaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllButWhitespaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getAllIllegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllIllegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getAmpAndSpaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAmpAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getAmpLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAmpLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getSpaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getUrlAndSpaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sUrlAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getUrlLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sURLLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method


# virtual methods
.method protected addSanitizedEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "parameter"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    new-instance v1, Landroid/net/UrlQuerySanitizer$ParameterValuePair;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/UrlQuerySanitizer$ParameterValuePair;-><init>(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Landroid/net/UrlQuerySanitizer;->mPreferFirstRepeatedParameter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected clear()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected decodeHexDigit(C)I
    .locals 4
    .parameter "c"

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    sub-int v0, p1, v1

    :goto_0
    return v0

    :cond_0
    if-lt p1, v2, :cond_1

    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    sub-int v0, p1, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    if-lt p1, v3, :cond_2

    const/16 v0, 0x66

    if-gt p1, v0, :cond_2

    sub-int v0, p1, v3

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAllowUnregisteredParamaters()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/UrlQuerySanitizer;->mAllowUnregisteredParamaters:Z

    return v0
.end method

.method public getEffectiveValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 2
    .parameter "parameter"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->getValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v0

    .local v0, sanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/net/UrlQuerySanitizer;->mAllowUnregisteredParamaters:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/UrlQuerySanitizer;->getUnregisteredParameterValueSanitizer()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParameterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/UrlQuerySanitizer$ParameterValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getParameterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPreferFirstRepeatedParameter()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/UrlQuerySanitizer;->mPreferFirstRepeatedParameter:Z

    return v0
.end method

.method public getUnregisteredParameterValueSanitizer()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "parameter"

    .prologue
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1
    .parameter "parameter"

    .prologue
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object p0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 1
    .parameter "parameter"

    .prologue
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isHexDigit(C)Z
    .locals 1
    .parameter "c"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->decodeHexDigit(C)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "parameter"
    .parameter "value"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, unescapedParameter:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/UrlQuerySanitizer;->getEffectiveValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v3

    .local v3, valueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroid/net/UrlQuerySanitizer;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, unescapedValue:Ljava/lang/String;
    invoke-interface {v3, v2}, Landroid/net/UrlQuerySanitizer$ValueSanitizer;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, sanitizedValue:Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Landroid/net/UrlQuerySanitizer;->addSanitizedEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parseQuery(Ljava/lang/String;)V
    .locals 5
    .parameter "query"

    .prologue
    invoke-virtual {p0}, Landroid/net/UrlQuerySanitizer;->clear()V

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "&"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .local v1, attributeValuePair:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, assignmentIndex:I
    if-gez v0, :cond_1

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Landroid/net/UrlQuerySanitizer;->parseEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/net/UrlQuerySanitizer;->parseEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #assignmentIndex:I
    .end local v1           #attributeValuePair:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public parseUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, queryIndex:I
    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, query:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/UrlQuerySanitizer;->parseQuery(Ljava/lang/String;)V

    return-void

    .end local v0           #query:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .restart local v0       #query:Ljava/lang/String;
    goto :goto_0
.end method

.method public registerParameter(Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V
    .locals 1
    .parameter "parameter"
    .parameter "valueSanitizer"

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerParameters([Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V
    .locals 4
    .parameter "parameters"
    .parameter "valueSanitizer"

    .prologue
    array-length v1, p1

    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAllowUnregisteredParamaters(Z)V
    .locals 0
    .parameter "allowUnregisteredParamaters"

    .prologue
    iput-boolean p1, p0, Landroid/net/UrlQuerySanitizer;->mAllowUnregisteredParamaters:Z

    return-void
.end method

.method public setPreferFirstRepeatedParameter(Z)V
    .locals 0
    .parameter "preferFirstRepeatedParameter"

    .prologue
    iput-boolean p1, p0, Landroid/net/UrlQuerySanitizer;->mPreferFirstRepeatedParameter:Z

    return-void
.end method

.method public setUnregisteredParameterValueSanitizer(Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V
    .locals 0
    .parameter "sanitizer"

    .prologue
    iput-object p1, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-void
.end method

.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "string"

    .prologue
    const/16 v10, 0x2b

    const/16 v9, 0x25

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .local v3, firstEscape:I
    if-gez v3, :cond_0

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    move-object v7, p1

    :goto_0
    return-object v7

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, length:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v6, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    if-ne v0, v10, :cond_2

    const/16 v0, 0x20

    :cond_1
    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, v9, :cond_1

    add-int/lit8 v7, v4, 0x2

    if-ge v7, v5, :cond_1

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, c1:C
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .local v2, c2:C
    invoke-virtual {p0, v1}, Landroid/net/UrlQuerySanitizer;->isHexDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v2}, Landroid/net/UrlQuerySanitizer;->isHexDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v1}, Landroid/net/UrlQuerySanitizer;->decodeHexDigit(C)I

    move-result v7

    mul-int/lit8 v7, v7, 0x10

    invoke-virtual {p0, v2}, Landroid/net/UrlQuerySanitizer;->decodeHexDigit(C)I

    move-result v8

    add-int/2addr v7, v8

    int-to-char v0, v7

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .end local v0           #c:C
    .end local v1           #c1:C
    .end local v2           #c2:C
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method
