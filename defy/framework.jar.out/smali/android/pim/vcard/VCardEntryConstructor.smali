.class public Landroid/pim/vcard/VCardEntryConstructor;
.super Ljava/lang/Object;
.source "VCardEntryConstructor.java"

# interfaces
.implements Landroid/pim/vcard/VCardInterpreter;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

.field private mCurrentVCardEntry:Landroid/pim/vcard/VCardEntry;

.field private final mEntryHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mParamType:Ljava/lang/String;

.field private final mSourceCharset:Ljava/lang/String;

.field private final mStrictLineBreaking:Z

.field private mTimePushIntoContentResolver:J

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "VCardEntryConstructor"

    sput-object v0, Landroid/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v0, -0x4000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/pim/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "vcardType"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Landroid/pim/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 2
    .parameter "vcardType"
    .parameter "account"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/pim/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .parameter "vcardType"
    .parameter "account"
    .parameter "inputCharset"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/pim/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 1
    .parameter "vcardType"
    .parameter "account"
    .parameter "inputCharset"
    .parameter "strictLineBreakParsing"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/pim/vcard/VCardEntry$Property;

    invoke-direct {v0}, Landroid/pim/vcard/VCardEntry$Property;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    if-eqz p3, :cond_0

    iput-object p3, p0, Landroid/pim/vcard/VCardEntryConstructor;->mSourceCharset:Ljava/lang/String;

    :goto_0
    iput-boolean p4, p0, Landroid/pim/vcard/VCardEntryConstructor;->mStrictLineBreaking:Z

    iput p1, p0, Landroid/pim/vcard/VCardEntryConstructor;->mVCardType:I

    iput-object p2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mAccount:Landroid/accounts/Account;

    return-void

    :cond_0
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mSourceCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleOneValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .parameter "sourceCharset"
    .parameter "targetCharset"
    .parameter "encoding"

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    if-eqz p4, :cond_4

    const-string v0, "BASE64"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "B"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardEntry$Property;->setPropertyBytes([B)V

    move-object v0, p1

    goto :goto_0

    :cond_2
    const-string v0, "QUOTED-PRINTABLE"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mStrictLineBreaking:Z

    invoke-static {p1, v0, p2, p3}, Landroid/pim/vcard/VCardUtils;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Unknown encoding. Fall back to default."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p1, p2, p3}, Landroid/pim/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addEntryHandler(Landroid/pim/vcard/VCardEntryHandler;)V
    .locals 1
    .parameter "entryHandler"

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Landroid/pim/vcard/VCardEntry;

    new-instance v0, Landroid/pim/vcard/VCardEntry$Property;

    invoke-direct {v0}, Landroid/pim/vcard/VCardEntry$Property;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntryHandler;

    .local v0, entryHandler:Landroid/pim/vcard/VCardEntryHandler;
    invoke-interface {v0}, Landroid/pim/vcard/VCardEntryHandler;->onEnd()V

    goto :goto_0

    .end local v0           #entryHandler:Landroid/pim/vcard/VCardEntryHandler;
    :cond_0
    return-void
.end method

.method public endEntry()V
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Landroid/pim/vcard/VCardEntry;

    invoke-virtual {v2}, Landroid/pim/vcard/VCardEntry;->consolidateFields()V

    iget-object v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntryHandler;

    .local v0, entryHandler:Landroid/pim/vcard/VCardEntryHandler;
    iget-object v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Landroid/pim/vcard/VCardEntry;

    invoke-interface {v0, v2}, Landroid/pim/vcard/VCardEntryHandler;->onEntryCreated(Landroid/pim/vcard/VCardEntry;)V

    goto :goto_0

    .end local v0           #entryHandler:Landroid/pim/vcard/VCardEntryHandler;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Landroid/pim/vcard/VCardEntry;

    return-void
.end method

.method public endProperty()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Landroid/pim/vcard/VCardEntry;

    iget-object v1, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardEntry;->addProperty(Landroid/pim/vcard/VCardEntry$Property;)V

    return-void
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "group"

    .prologue
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    invoke-virtual {v0, p1}, Landroid/pim/vcard/VCardEntry$Property;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "propertyParamType() is called more than once before propertyParamValue() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Landroid/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "TYPE"

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Landroid/pim/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mSourceCharset:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {p1, v0, v1}, Landroid/pim/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    iget-object v1, p0, Landroid/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/pim/vcard/VCardEntry$Property;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    return-void
.end method

.method public propertyValues(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    const-string v7, "CHARSET"

    invoke-virtual {v6, v7}, Landroid/pim/vcard/VCardEntry$Property;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .local v0, charsetCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    const-string v7, "ENCODING"

    invoke-virtual {v6, v7}, Landroid/pim/vcard/VCardEntry$Property;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .local v2, encodingCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v1, v6

    .local v1, encoding:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_1
    invoke-static {v6}, Landroid/util/CharsetUtils;->nameForDefaultVendor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, targetCharset:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "UTF-8"

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, value:Ljava/lang/String;
    iget-object v6, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    iget-object v7, p0, Landroid/pim/vcard/VCardEntryConstructor;->mSourceCharset:Ljava/lang/String;

    invoke-direct {p0, v5, v7, v4, v1}, Landroid/pim/vcard/VCardEntryConstructor;->handleOneValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/pim/vcard/VCardEntry$Property;->addToPropertyValueList(Ljava/lang/String;)V

    goto :goto_2

    .end local v1           #encoding:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #targetCharset:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_3
    move-object v1, v8

    goto :goto_0

    .restart local v1       #encoding:Ljava/lang/String;
    :cond_4
    move-object v6, v8

    goto :goto_1
.end method

.method public showPerformanceInfo()V
    .locals 4

    .prologue
    sget-object v0, Landroid/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time for insert ContactStruct to database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mTimePushIntoContentResolver:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntryHandler;

    .local v0, entryHandler:Landroid/pim/vcard/VCardEntryHandler;
    invoke-interface {v0}, Landroid/pim/vcard/VCardEntryHandler;->onStart()V

    goto :goto_0

    .end local v0           #entryHandler:Landroid/pim/vcard/VCardEntryHandler;
    :cond_0
    return-void
.end method

.method public startEntry()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Landroid/pim/vcard/VCardEntry;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Nested VCard code is not supported now."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/pim/vcard/VCardEntry;

    iget v1, p0, Landroid/pim/vcard/VCardEntryConstructor;->mVCardType:I

    iget-object v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mAccount:Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Landroid/pim/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Landroid/pim/vcard/VCardEntry;

    return-void
.end method

.method public startProperty()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    invoke-virtual {v0}, Landroid/pim/vcard/VCardEntry$Property;->clear()V

    return-void
.end method
