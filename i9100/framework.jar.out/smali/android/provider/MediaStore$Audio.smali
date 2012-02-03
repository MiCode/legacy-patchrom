.class public final Landroid/provider/MediaStore$Audio;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$Audio$Albums;,
        Landroid/provider/MediaStore$Audio$AlbumColumns;,
        Landroid/provider/MediaStore$Audio$Artists;,
        Landroid/provider/MediaStore$Audio$ArtistColumns;,
        Landroid/provider/MediaStore$Audio$Playlists;,
        Landroid/provider/MediaStore$Audio$PlaylistsColumns;,
        Landroid/provider/MediaStore$Audio$Genres;,
        Landroid/provider/MediaStore$Audio$GenresColumns;,
        Landroid/provider/MediaStore$Audio$Media;,
        Landroid/provider/MediaStore$Audio$AudioColumns;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1854
    return-void
.end method

.method public static getCollationKeyForChn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 1346
    invoke-static {p0}, Landroid/provider/MediaStore$Audio;->getCollationKeyInStringForChn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCollationKeyInBytesForChn(Ljava/lang/String;)[B
    .locals 4
    .parameter "name"

    .prologue
    .line 1370
    const/4 v1, 0x0

    .line 1371
    .local v1, localColl:Ljava/text/Collator;
    const/4 v0, 0x0

    .line 1373
    .local v0, CHINA:Ljava/util/Locale;
    new-instance v0, Ljava/util/Locale;

    .end local v0           #CHINA:Ljava/util/Locale;
    const-string/jumbo v2, "zh"

    const-string v3, "CN"

    invoke-direct {v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    .restart local v0       #CHINA:Ljava/util/Locale;
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    .line 1376
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 1378
    invoke-virtual {v1, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private static getCollationKeyInStringForChn(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    .line 1358
    const/4 v1, 0x0

    .line 1359
    .local v1, localColl:Ljava/text/Collator;
    const/4 v0, 0x0

    .line 1361
    .local v0, CHINA:Ljava/util/Locale;
    new-instance v0, Ljava/util/Locale;

    .end local v0           #CHINA:Ljava/util/Locale;
    const-string/jumbo v2, "zh"

    const-string v3, "CN"

    invoke-direct {v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    .restart local v0       #CHINA:Ljava/util/Locale;
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    .line 1364
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 1366
    invoke-virtual {v1, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getKeyLenForChn([B)I
    .locals 2
    .parameter "arr"

    .prologue
    const/4 v1, 0x1

    .line 1382
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    .line 1383
    array-length v0, p0

    .line 1386
    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static keyFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "name"

    .prologue
    const/16 v8, 0x2e

    const-string v9, ""

    const-string v7, "\u0001"

    .line 1235
    if-eqz p0, :cond_a

    .line 1236
    const/4 v4, 0x0

    .line 1237
    .local v4, sortfirst:Z
    const-string v5, "<unknown>"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1238
    const-string v5, "\u0001"

    move-object v5, v7

    .line 1282
    .end local v4           #sortfirst:Z
    :goto_0
    return-object v5

    .line 1242
    .restart local v4       #sortfirst:Z
    :cond_0
    const-string v5, "\u0001"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1243
    const/4 v4, 0x1

    .line 1245
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1246
    const-string/jumbo v5, "the "

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1247
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1249
    :cond_2
    const-string v5, "an "

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1250
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1252
    :cond_3
    const-string v5, "a "

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1253
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1255
    :cond_4
    const-string v5, ", the"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, ",the"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, ", an"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, ",an"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, ", a"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, ",a"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1258
    :cond_5
    const/4 v5, 0x0

    const/16 v6, 0x2c

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1260
    :cond_6
    const-string v5, "[\\[\\]\\(\\)\"\'.,?!]"

    const-string v6, ""

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1261
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1266
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1267
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1268
    .local v3, nl:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_7

    .line 1269
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1270
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1268
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1272
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1273
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1274
    .local v2, key:Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 1275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0001"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    move-object v5, v2

    .line 1277
    goto/16 :goto_0

    .line 1279
    .end local v0           #b:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #nl:I
    :cond_9
    const-string v5, ""

    move-object v5, v9

    goto/16 :goto_0

    .line 1282
    .end local v4           #sortfirst:Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public static keyForChn(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"

    .prologue
    const-string v5, ""

    const-string v4, "\u0001"

    .line 1288
    if-eqz p0, :cond_9

    .line 1289
    const/4 v1, 0x0

    .line 1290
    .local v1, sortfirst:Z
    const-string v2, "<unknown>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1291
    const-string v2, "\u0001"

    move-object v2, v4

    .line 1341
    .end local v1           #sortfirst:Z
    :goto_0
    return-object v2

    .line 1295
    .restart local v1       #sortfirst:Z
    :cond_0
    const-string v2, "\u0001"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1296
    const/4 v1, 0x1

    .line 1298
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1299
    const-string/jumbo v2, "the "

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1300
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1302
    :cond_2
    const-string v2, "an "

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1303
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1305
    :cond_3
    const-string v2, "a "

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1306
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1308
    :cond_4
    const-string v2, ", the"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ",the"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ", an"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ",an"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ", a"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ",a"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1311
    :cond_5
    const/4 v2, 0x0

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1313
    :cond_6
    const-string v2, "[\\[\\]\\(\\)\"\'.,?!]"

    const-string v3, ""

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1314
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 1329
    const/4 v0, 0x0

    .line 1331
    .local v0, key:Ljava/lang/String;
    invoke-static {p0}, Landroid/provider/MediaStore$Audio;->getCollationKeyForChn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1333
    if-eqz v1, :cond_7

    .line 1334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0001"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    move-object v2, v0

    .line 1336
    goto/16 :goto_0

    .line 1338
    .end local v0           #key:Ljava/lang/String;
    :cond_8
    const-string v2, ""

    move-object v2, v5

    goto/16 :goto_0

    .line 1341
    .end local v1           #sortfirst:Z
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
