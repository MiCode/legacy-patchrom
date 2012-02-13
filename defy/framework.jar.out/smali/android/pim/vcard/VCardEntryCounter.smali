.class public Landroid/pim/vcard/VCardEntryCounter;
.super Ljava/lang/Object;
.source "VCardEntryCounter.java"

# interfaces
.implements Landroid/pim/vcard/VCardInterpreter;


# instance fields
.field private mCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    return-void
.end method

.method public endEntry()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/pim/vcard/VCardEntryCounter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/pim/vcard/VCardEntryCounter;->mCount:I

    return-void
.end method

.method public endProperty()V
    .locals 0

    .prologue
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/pim/vcard/VCardEntryCounter;->mCount:I

    return v0
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "group"

    .prologue
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    return-void
.end method

.method public propertyValues(Ljava/util/List;)V
    .locals 0
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
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    return-void
.end method

.method public startEntry()V
    .locals 0

    .prologue
    return-void
.end method

.method public startProperty()V
    .locals 0

    .prologue
    return-void
.end method
