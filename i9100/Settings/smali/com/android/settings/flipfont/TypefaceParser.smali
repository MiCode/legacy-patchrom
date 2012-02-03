.class public Lcom/android/settings/flipfont/TypefaceParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TypefaceParser.java"


# instance fields
.field private in_droidname:Z

.field private in_file:Z

.field private in_filename:Z

.field private in_font:Z

.field private in_monospace:Z

.field private in_sans:Z

.field private in_serif:Z

.field private mFont:Lcom/android/settings/flipfont/Typeface;

.field private mFontFile:Lcom/android/settings/flipfont/TypefaceFile;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_font:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_file:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    .line 61
    iput-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    .line 63
    iput-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/TypefaceFile;->setFileName(Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/TypefaceFile;->setDroidName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 80
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 117
    const-string v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_font:Z

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v0, "sans"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    goto :goto_0

    .line 121
    :cond_2
    const-string v0, "serif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    goto :goto_0

    .line 123
    :cond_3
    const-string v0, "monospace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    goto :goto_0

    .line 125
    :cond_4
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 126
    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_file:Z

    .line 127
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    if-eqz v0, :cond_0

    .line 128
    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    if-eqz v0, :cond_6

    .line 131
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSerifFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mMonospaceFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_7
    const-string v0, "filename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 137
    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    goto :goto_0

    .line 138
    :cond_8
    const-string v0, "droidname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    goto :goto_0
.end method

.method public getParsedData()Lcom/android/settings/flipfont/Typeface;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/android/settings/flipfont/Typeface;

    invoke-direct {v0}, Lcom/android/settings/flipfont/Typeface;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    .line 76
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 90
    const-string v1, "font"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_font:Z

    .line 92
    const-string v1, "displayname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, attrValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v1, v0}, Lcom/android/settings/flipfont/Typeface;->setName(Ljava/lang/String;)V

    .line 108
    .end local v0           #attrValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v1, "sans"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    goto :goto_0

    .line 96
    :cond_2
    const-string v1, "serif"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    goto :goto_0

    .line 98
    :cond_3
    const-string v1, "monospace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    goto :goto_0

    .line 100
    :cond_4
    const-string v1, "file"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 101
    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_file:Z

    .line 102
    new-instance v1, Lcom/android/settings/flipfont/TypefaceFile;

    invoke-direct {v1}, Lcom/android/settings/flipfont/TypefaceFile;-><init>()V

    iput-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    goto :goto_0

    .line 103
    :cond_5
    const-string v1, "filename"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 104
    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    goto :goto_0

    .line 105
    :cond_6
    const-string v1, "droidname"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    goto :goto_0
.end method
