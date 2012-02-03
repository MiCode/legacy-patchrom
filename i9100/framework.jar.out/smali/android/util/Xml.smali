.class public Landroid/util/Xml;
.super Ljava/lang/Object;
.source "Xml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Xml$Encoding;,
        Landroid/util/Xml$XmlSerializerFactory;
    }
.end annotation


# static fields
.field public static FEATURE_RELAXED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    sput-object v0, Landroid/util/Xml;->FEATURE_RELAXED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method public static asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    .locals 1
    .parameter "parser"

    .prologue
    .line 181
    instance-of v0, p0, Landroid/util/AttributeSet;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/util/AttributeSet;

    .end local p0
    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    new-instance v0, Landroid/util/XmlPullAttributes;

    invoke-direct {v0, p0}, Landroid/util/XmlPullAttributes;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method public static findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;
    .locals 5
    .parameter "encodingName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 154
    sget-object v4, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    .line 159
    :goto_0
    return-object v4

    .line 157
    :cond_0
    invoke-static {}, Landroid/util/Xml$Encoding;->values()[Landroid/util/Xml$Encoding;

    move-result-object v0

    .local v0, arr$:[Landroid/util/Xml$Encoding;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 158
    .local v1, encoding:Landroid/util/Xml$Encoding;
    iget-object v4, v1, Landroid/util/Xml$Encoding;->expatName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 159
    goto :goto_0

    .line 157
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    .end local v1           #encoding:Landroid/util/Xml$Encoding;
    :cond_2
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v4, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lorg/apache/harmony/xml/ExpatPullParser;

    invoke-direct {v0}, Lorg/apache/harmony/xml/ExpatPullParser;-><init>()V

    .line 102
    .local v0, parser:Lorg/apache/harmony/xml/ExpatPullParser;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/ExpatPullParser;->setNamespaceProcessingEnabled(Z)V

    .line 103
    return-object v0
.end method

.method public static newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 2

    .prologue
    .line 111
    :try_start_0
    sget-object v1, Landroid/util/Xml$XmlSerializerFactory;->instance:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 112
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    .locals 4
    .parameter "in"
    .parameter "encoding"
    .parameter "contentHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    new-instance v1, Lorg/apache/harmony/xml/ExpatReader;

    invoke-direct {v1}, Lorg/apache/harmony/xml/ExpatReader;-><init>()V

    .line 84
    .local v1, reader:Lorg/xml/sax/XMLReader;
    invoke-interface {v1, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 85
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 86
    .local v2, source:Lorg/xml/sax/InputSource;
    iget-object v3, p1, Landroid/util/Xml$Encoding;->expatName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 87
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-void

    .line 88
    .end local v1           #reader:Lorg/xml/sax/XMLReader;
    .end local v2           #source:Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 89
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static parse(Ljava/io/Reader;Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .parameter "in"
    .parameter "contentHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lorg/apache/harmony/xml/ExpatReader;

    invoke-direct {v0}, Lorg/apache/harmony/xml/ExpatReader;-><init>()V

    .line 72
    .local v0, reader:Lorg/xml/sax/XMLReader;
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 73
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 74
    return-void
.end method

.method public static parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V
    .locals 4
    .parameter "xml"
    .parameter "contentHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    new-instance v1, Lorg/apache/harmony/xml/ExpatReader;

    invoke-direct {v1}, Lorg/apache/harmony/xml/ExpatReader;-><init>()V

    .line 57
    .local v1, reader:Lorg/xml/sax/XMLReader;
    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 58
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-void

    .line 60
    .end local v1           #reader:Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 61
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
