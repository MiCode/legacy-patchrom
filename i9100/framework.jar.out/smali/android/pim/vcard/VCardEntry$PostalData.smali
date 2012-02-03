.class public Landroid/pim/vcard/VCardEntry$PostalData;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostalData"
.end annotation


# static fields
.field public static final ADDR_MAX_DATA_SIZE:I = 0x7


# instance fields
.field public final country:Ljava/lang/String;

.field private final dataArray:[Ljava/lang/String;

.field public final extendedAddress:Ljava/lang/String;

.field public isPrimary:Z

.field public final label:Ljava/lang/String;

.field public final localty:Ljava/lang/String;

.field public final pobox:Ljava/lang/String;

.field public final postalCode:Ljava/lang/String;

.field public final region:Ljava/lang/String;

.field public final street:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;Z)V
    .locals 8
    .parameter "type"
    .parameter
    .parameter "label"
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p2, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x7

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    .line 163
    new-array v5, v7, [Ljava/lang/String;

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    .line 165
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 166
    .local v4, size:I
    if-le v4, v7, :cond_0

    .line 167
    const/4 v4, 0x7

    .line 176
    :cond_0
    const/4 v1, 0x0

    .line 177
    .local v1, i:I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, addressElement:Ljava/lang/String;
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    aput-object v0, v5, v1

    .line 179
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_1

    move v2, v1

    .line 183
    .end local v0           #addressElement:Ljava/lang/String;
    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_2

    .line 184
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    const/4 v6, 0x0

    aput-object v6, v5, v2

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 187
    :cond_2
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->pobox:Ljava/lang/String;

    .line 188
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    .line 189
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->street:Ljava/lang/String;

    .line 190
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->localty:Ljava/lang/String;

    .line 191
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->region:Ljava/lang/String;

    .line 192
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->postalCode:Ljava/lang/String;

    .line 193
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->country:Ljava/lang/String;

    .line 194
    iput-object p3, p0, Landroid/pim/vcard/VCardEntry$PostalData;->label:Ljava/lang/String;

    .line 195
    iput-boolean p4, p0, Landroid/pim/vcard/VCardEntry$PostalData;->isPrimary:Z

    .line 196
    return-void

    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_3
    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method private static arePrintableAsciiOnly([Ljava/lang/String;)Z
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x1

    .line 255
    if-nez p0, :cond_0

    move v4, v5

    .line 266
    :goto_0
    return v4

    .line 258
    :cond_0
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 259
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 258
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 263
    const/4 v4, 0x0

    goto :goto_0

    .end local v3           #value:Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 266
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 200
    instance-of v2, p1, Landroid/pim/vcard/VCardEntry$PostalData;

    if-nez v2, :cond_0

    move v2, v4

    .line 204
    :goto_0
    return v2

    .line 203
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/pim/vcard/VCardEntry$PostalData;

    move-object v1, v0

    .line 204
    .local v1, postalData:Landroid/pim/vcard/VCardEntry$PostalData;
    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    iget-object v3, v1, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    iget v3, v1, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$PostalData;->label:Ljava/lang/String;

    iget-object v3, v1, Landroid/pim/vcard/VCardEntry$PostalData;->label:Ljava/lang/String;

    if-ne v2, v3, :cond_2

    :cond_1
    iget-boolean v2, p0, Landroid/pim/vcard/VCardEntry$PostalData;->isPrimary:Z

    iget-boolean v3, v1, Landroid/pim/vcard/VCardEntry$PostalData;->isPrimary:Z

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public getFormattedAddress(I)Ljava/lang/String;
    .locals 7
    .parameter "vcardType"

    .prologue
    const/16 v6, 0x20

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 214
    .local v2, empty:Z
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    invoke-static {v5}, Landroid/pim/vcard/VCardEntry$PostalData;->arePrintableAsciiOnly([Ljava/lang/String;)Z

    move-result v4

    .line 216
    .local v4, isAsciiOnly:Z
    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/high16 v5, -0x3bf0

    if-ne p1, v5, :cond_4

    .line 220
    :cond_1
    const/4 v3, 0x6

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_7

    .line 221
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    aget-object v0, v5, v3

    .line 222
    .local v0, addressPart:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 223
    if-nez v2, :cond_3

    .line 224
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 226
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 232
    .end local v0           #addressPart:Ljava/lang/String;
    .end local v3           #i:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    const/4 v5, 0x7

    if-ge v3, v5, :cond_7

    .line 233
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    aget-object v0, v5, v3

    .line 234
    .restart local v0       #addressPart:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 235
    if-nez v2, :cond_6

    .line 236
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 238
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 245
    .end local v0           #addressPart:Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 250
    const-string/jumbo v0, "type: %d, label: %s, isPrimary: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry$PostalData;->label:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Landroid/pim/vcard/VCardEntry$PostalData;->isPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
