.class public final Lcom/motorola/android/xmp/options/PropertyOptions;
.super Lcom/motorola/android/xmp/options/Options;
.source "PropertyOptions.java"


# static fields
.field public static final ARRAY:I = 0x200

.field public static final ARRAY_ALTERNATE:I = 0x800

.field public static final ARRAY_ALT_TEXT:I = 0x1000

.field public static final ARRAY_ORDERED:I = 0x400

.field public static final COMPACT:I = 0x2000

.field public static final DELETE_EXISTING:I = 0x20000000

.field public static final HAS_LANGUAGE:I = 0x40

.field public static final HAS_QUALIFIERS:I = 0x10

.field public static final HAS_TYPE:I = 0x80

.field public static final NO_OPTIONS:I = 0x0

.field public static final QUALIFIER:I = 0x20

.field public static final SCHEMA_NODE:I = -0x80000000

.field public static final STRUCT:I = 0x100

.field public static final URI:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/xmp/options/Options;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/xmp/options/Options;-><init>(I)V

    return-void
.end method


# virtual methods
.method public assertConsistency(I)V
    .locals 3
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x67

    and-int/lit16 v0, p1, 0x100

    if-lez v0, :cond_0

    and-int/lit16 v0, p1, 0x200

    if-lez v0, :cond_0

    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "IsStruct and IsArray options are mutually exclusive"

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    and-int/lit16 v0, p1, 0x300

    if-lez v0, :cond_1

    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "Structs and arrays can\'t have \"value\" options"

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    return-void
.end method

.method protected defineOptionName(I)Ljava/lang/String;
    .locals 1
    .parameter "option"

    .prologue
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "URI"

    goto :goto_0

    :sswitch_1
    const-string v0, "HAS_QUALIFIER"

    goto :goto_0

    :sswitch_2
    const-string v0, "QUALIFIER"

    goto :goto_0

    :sswitch_3
    const-string v0, "HAS_LANGUAGE"

    goto :goto_0

    :sswitch_4
    const-string v0, "HAS_TYPE"

    goto :goto_0

    :sswitch_5
    const-string v0, "STRUCT"

    goto :goto_0

    :sswitch_6
    const-string v0, "ARRAY"

    goto :goto_0

    :sswitch_7
    const-string v0, "ARRAY_ORDERED"

    goto :goto_0

    :sswitch_8
    const-string v0, "ARRAY_ALTERNATE"

    goto :goto_0

    :sswitch_9
    const-string v0, "ARRAY_ALT_TEXT"

    goto :goto_0

    :sswitch_a
    const-string v0, "COMPACT"

    goto :goto_0

    :sswitch_b
    const-string v0, "SCHEMA_NODE"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_b
        0x2 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
        0x100 -> :sswitch_5
        0x200 -> :sswitch_6
        0x400 -> :sswitch_7
        0x800 -> :sswitch_8
        0x1000 -> :sswitch_9
        0x2000 -> :sswitch_a
    .end sparse-switch
.end method

.method public equalArrayTypes(Lcom/motorola/android/xmp/options/PropertyOptions;)Z
    .locals 2
    .parameter "options"

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    invoke-virtual {p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->isArray()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result v0

    invoke-virtual {p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    invoke-virtual {p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    invoke-virtual {p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHasLanguage()Z
    .locals 1

    .prologue
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getHasQualifiers()Z
    .locals 1

    .prologue
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getHasType()Z
    .locals 1

    .prologue
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method protected getValidOptions()I
    .locals 1

    .prologue
    const v0, -0x7fffc00e

    return v0
.end method

.method public isArray()Z
    .locals 1

    .prologue
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayAltText()Z
    .locals 1

    .prologue
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayAlternate()Z
    .locals 1

    .prologue
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayOrdered()Z
    .locals 1

    .prologue
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isCompact()Z
    .locals 1

    .prologue
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isCompositeProperty()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    and-int/lit16 v0, v0, 0x300

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnlyArrayOptions()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    and-int/lit16 v0, v0, -0x1e01

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQualifier()Z
    .locals 1

    .prologue
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isSchemaNode()Z
    .locals 1

    .prologue
    const/high16 v0, -0x8000

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isSimple()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    and-int/lit16 v0, v0, 0x300

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStruct()Z
    .locals 1

    .prologue
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isURI()Z
    .locals 1

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public mergeWith(Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .locals 2
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    invoke-virtual {p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/PropertyOptions;->setOptions(I)V

    :cond_0
    return-void
.end method

.method public setArray(Z)Lcom/motorola/android/xmp/options/PropertyOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setArrayAltText(Z)Lcom/motorola/android/xmp/options/PropertyOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x1000

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setArrayAlternate(Z)Lcom/motorola/android/xmp/options/PropertyOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x800

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setArrayOrdered(Z)Lcom/motorola/android/xmp/options/PropertyOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x400

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setCompact(Z)Lcom/motorola/android/xmp/options/PropertyOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x2000

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setHasLanguage(Z)Lcom/motorola/android/xmp/options/PropertyOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setHasQualifiers(Z)Lcom/motorola/android/xmp/options/PropertyOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setHasType(Z)Lcom/motorola/android/xmp/options/PropertyOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setQualifier(Z)Lcom/motorola/android/xmp/options/PropertyOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setSchemaNode(Z)Lcom/motorola/android/xmp/options/PropertyOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/high16 v0, -0x8000

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setStruct(Z)Lcom/motorola/android/xmp/options/PropertyOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setURI(Z)Lcom/motorola/android/xmp/options/PropertyOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method
