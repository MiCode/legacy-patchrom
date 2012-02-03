.class Landroid/util/XmlPullAttributes;
.super Ljava/lang/Object;
.source "XmlPullAttributes.java"

# interfaces
.implements Landroid/util/AttributeSet;


# instance fields
.field private mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .parameter "parser"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 31
    return-void
.end method


# virtual methods
.method public getAttributeBooleanValue(IZ)Z
    .locals 1
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeFloatValue(IF)F
    .locals 2
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 125
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 127
    :goto_0
    return v1

    :cond_0
    move v1, p2

    goto :goto_0
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 91
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 93
    :goto_0
    return v1

    :cond_0
    move v1, p3

    goto :goto_0
.end method

.method public getAttributeIntValue(II)I
    .locals 1
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 1
    .parameter "index"
    .parameter "options"
    .parameter "defaultValue"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 1
    .parameter "namespace"
    .parameter "attribute"
    .parameter "options"
    .parameter "defaultValue"

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNameResource(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeResourceValue(II)I
    .locals 1
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .locals 1
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassAttribute()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    const-string v1, "class"

    invoke-virtual {p0, v0, v1}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p0, v0, v1}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdAttributeResourceValue(I)I
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 139
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/XmlPullAttributes;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyleAttribute()I
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x0

    const-string/jumbo v1, "style"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/XmlPullAttributes;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
