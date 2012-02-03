.class public Lcom/android/settings/flipfont/TypefaceFinder;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public final mTypefaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/flipfont/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 103
    return-void
.end method


# virtual methods
.method public findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;
    .locals 3
    .parameter "typefaceFilename"

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, typeface:Lcom/android/settings/flipfont/Typeface;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #typeface:Lcom/android/settings/flipfont/Typeface;
    check-cast v1, Lcom/android/settings/flipfont/Typeface;

    .line 173
    .restart local v1       #typeface:Lcom/android/settings/flipfont/Typeface;
    invoke-virtual {v1}, Lcom/android/settings/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    :cond_0
    return-object v1

    .line 171
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 7
    .parameter "assetManager"
    .parameter "fontPackageName"

    .prologue
    .line 60
    const/4 v3, 0x0

    .line 62
    .local v3, xmlfiles:[Ljava/lang/String;
    :try_start_0
    const-string v4, "xml"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 70
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xml/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 71
    .local v2, in:Ljava/io/InputStream;
    aget-object v4, v3, v1

    invoke-virtual {p0, v4, v2, p2}, Lcom/android/settings/flipfont/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .end local v2           #in:Ljava/io/InputStream;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1           #i:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 64
    .local v0, ex:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 78
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_2
    return v4

    .line 72
    .restart local v1       #i:I
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 74
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v4, "TypefaceFinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not possible to open, continue to next file, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 78
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public getSansEntries(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 4
    .parameter "entries"
    .parameter "entryValues"
    .parameter "fontPackageName"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080534

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v2, "default"

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    new-instance v3, Lcom/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;

    invoke-direct {v3, p0}, Lcom/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;-><init>(Lcom/android/settings/flipfont/TypefaceFinder;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/Typeface;->getSansName()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 9
    .parameter "xmlFilename"
    .parameter "inStream"
    .parameter "fontPackageName"

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 87
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 88
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 89
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/android/settings/flipfont/TypefaceParser;

    invoke-direct {v1}, Lcom/android/settings/flipfont/TypefaceParser;-><init>()V

    .line 90
    .local v1, fontParser:Lcom/android/settings/flipfont/TypefaceParser;
    invoke-interface {v5, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 91
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 92
    invoke-virtual {v1}, Lcom/android/settings/flipfont/TypefaceParser;->getParsedData()Lcom/android/settings/flipfont/Typeface;

    move-result-object v2

    .line 93
    .local v2, newTypeface:Lcom/android/settings/flipfont/Typeface;
    invoke-virtual {v2, p1}, Lcom/android/settings/flipfont/Typeface;->setTypefaceFilename(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2, p3}, Lcom/android/settings/flipfont/Typeface;->setFontPackageName(Ljava/lang/String;)V

    .line 95
    iget-object v6, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1           #fontParser:Lcom/android/settings/flipfont/TypefaceParser;
    .end local v2           #newTypeface:Lcom/android/settings/flipfont/Typeface;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 98
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "TypefaceFinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File parsing is not possible, omit this typeface, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
