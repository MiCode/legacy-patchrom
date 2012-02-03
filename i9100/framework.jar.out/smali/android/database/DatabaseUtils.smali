.class public Landroid/database/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/DatabaseUtils$InsertHelper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "DatabaseUtils"

.field private static final countProjection:[Ljava/lang/String;

.field private static mColl:Ljava/text/Collator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Landroid/database/DatabaseUtils;->countProjection:[Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    return-void
.end method

.method public static appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .parameter "sb"
    .parameter "sqlString"

    .prologue
    const/16 v5, 0x27

    .line 215
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 218
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 219
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 220
    .local v0, c:C
    if-ne v0, v5, :cond_0

    .line 221
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    return-void
.end method

.method public static final appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 3
    .parameter "sql"
    .parameter "value"

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    const-string v2, "NULL"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :goto_0
    return-void

    .line 247
    :cond_0
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 248
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    .line 249
    .local v1, bool:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    const/16 v2, 0x31

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 252
    :cond_1
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 255
    .end local v1           #bool:Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V
    .locals 4
    .parameter "prog"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 175
    if-nez p2, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 193
    .end local p2
    :goto_0
    return-void

    .line 177
    .restart local p2
    :cond_0
    instance-of v2, p2, Ljava/lang/Double;

    if-nez v2, :cond_1

    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_2

    .line 178
    :cond_1
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    goto :goto_0

    .line 179
    .restart local p2
    :cond_2
    instance-of v2, p2, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 180
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 181
    .restart local p2
    :cond_3
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 182
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    .line 183
    .local v1, bool:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    const-wide/16 v2, 0x1

    invoke-virtual {p0, p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 186
    :cond_4
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 188
    .end local v1           #bool:Ljava/lang/Boolean;
    :cond_5
    instance-of v2, p2, [B

    if-eqz v2, :cond_6

    .line 189
    check-cast p2, [B

    .end local p2
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_0

    .line 191
    .restart local p2
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 264
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 271
    :goto_0
    return-object v0

    .line 267
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 268
    goto :goto_0

    .line 271
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static createDbFromSqlStatements(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "dbName"
    .parameter "dbVersion"
    .parameter "sqlStatements"

    .prologue
    .line 1119
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1123
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, ";\n"

    invoke-static {p3, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1124
    .local v5, statements:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 1125
    .local v4, statement:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1124
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1126
    :cond_0
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 1128
    .end local v4           #statement:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1129
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1130
    return-void
.end method

.method public static cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .parameter "cursor"
    .parameter "field"
    .parameter "values"
    .parameter "key"

    .prologue
    .line 571
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 572
    .local v0, colIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 577
    .end local p0
    :goto_0
    return-void

    .line 575
    .restart local p0
    :cond_0
    const/4 p0, 0x0

    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0
.end method

.method public static cursorDoubleToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 763
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 764
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 765
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 767
    :cond_0
    return-void
.end method

.method public static cursorDoubleToCursorValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "cursor"
    .parameter "field"
    .parameter "values"

    .prologue
    .line 558
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public static cursorFloatToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 747
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 748
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 749
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 751
    :cond_0
    return-void
.end method

.method public static cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "cursor"
    .parameter "field"
    .parameter "values"

    .prologue
    .line 497
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public static cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "field"
    .parameter "values"
    .parameter "key"

    .prologue
    .line 510
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 511
    .local v0, colIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    .end local p0
    :goto_0
    return-void

    .line 514
    .restart local p0
    :cond_0
    const/4 p0, 0x0

    check-cast p0, Ljava/lang/Integer;

    .end local p0
    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 731
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 732
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 733
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 735
    :cond_0
    return-void
.end method

.method public static cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "cursor"
    .parameter "field"
    .parameter "values"

    .prologue
    .line 527
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public static cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .parameter "cursor"
    .parameter "field"
    .parameter "values"
    .parameter "key"

    .prologue
    .line 540
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 541
    .local v0, colIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 542
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 543
    .local v1, value:Ljava/lang/Long;
    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 547
    .end local v1           #value:Ljava/lang/Long;
    .end local p0
    :goto_0
    return-void

    .line 545
    .restart local p0
    :cond_0
    const/4 p0, 0x0

    check-cast p0, Ljava/lang/Long;

    .end local p0
    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 699
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 700
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 703
    :cond_0
    return-void
.end method

.method public static cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .locals 7
    .parameter "cursor"
    .parameter "values"

    .prologue
    .line 586
    instance-of v5, p0, Landroid/database/AbstractWindowedCursor;

    if-eqz v5, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/database/AbstractWindowedCursor;

    move-object v5, v0

    move-object v1, v5

    .line 589
    .local v1, awc:Landroid/database/AbstractWindowedCursor;
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, columns:[Ljava/lang/String;
    array-length v4, v2

    .line 591
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 592
    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/database/AbstractWindowedCursor;->isBlob(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 593
    aget-object v5, v2, v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 591
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 586
    .end local v1           #awc:Landroid/database/AbstractWindowedCursor;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #length:I
    :cond_0
    const/4 v5, 0x0

    move-object v1, v5

    goto :goto_0

    .line 595
    .restart local v1       #awc:Landroid/database/AbstractWindowedCursor;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #length:I
    :cond_1
    aget-object v5, v2, v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 598
    :cond_2
    return-void
.end method

.method public static cursorShortToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 715
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 716
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 717
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 719
    :cond_0
    return-void
.end method

.method public static cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "cursor"
    .parameter "field"
    .parameter "values"

    .prologue
    .line 460
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public static cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .parameter "cursor"
    .parameter "field"
    .parameter "values"
    .parameter "key"

    .prologue
    .line 486
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public static cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 683
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 684
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_0
    return-void
.end method

.method public static cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V
    .locals 1
    .parameter "cursor"
    .parameter "field"
    .parameter "inserter"
    .parameter "index"

    .prologue
    .line 473
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 474
    return-void
.end method

.method public static dumpCurrentRow(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 388
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 389
    return-void
.end method

.method public static dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .locals 7
    .parameter "cursor"
    .parameter "stream"

    .prologue
    .line 398
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, cols:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    array-length v3, v0

    .line 401
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 404
    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 410
    .local v4, value:Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    .end local v4           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 408
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "<unprintable>"

    .restart local v4       #value:Ljava/lang/String;
    goto :goto_1

    .line 412
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "}"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public static dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .locals 7
    .parameter "cursor"
    .parameter "sb"

    .prologue
    .line 422
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, cols:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " {\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    array-length v3, v0

    .line 425
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 428
    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 434
    .local v4, value:Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 429
    .end local v4           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 432
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "<unprintable>"

    .restart local v4       #value:Ljava/lang/String;
    goto :goto_1

    .line 436
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "}\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    return-void
.end method

.method public static dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dumpCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 324
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 325
    return-void
.end method

.method public static dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .locals 3
    .parameter "cursor"
    .parameter "stream"

    .prologue
    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> Dumping cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    if-eqz p0, :cond_1

    .line 337
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 339
    .local v0, startPos:I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 340
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 345
    .end local v0           #startPos:I
    :cond_1
    const-string v1, "<<<<<"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public static dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "cursor"
    .parameter "sb"

    .prologue
    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> Dumping cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    if-eqz p0, :cond_1

    .line 358
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 360
    .local v0, startPos:I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 361
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 366
    .end local v0           #startPos:I
    :cond_1
    const-string v1, "<<<<<\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    return-void
.end method

.method public static dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 379
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"

    .prologue
    .line 280
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 282
    .local v0, arr:[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    move-result v4

    const-string v5, "ISO8859_1"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-object v2

    .line 283
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 284
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method private static getCollationKeyInBytes(Ljava/lang/String;)[B
    .locals 2
    .parameter "name"

    .prologue
    .line 309
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    if-nez v0, :cond_0

    .line 310
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    .line 311
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 313
    :cond_0
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    invoke-virtual {v0, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"

    .prologue
    .line 294
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 295
    .local v0, arr:[B
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    .line 296
    .local v1, keys:[C
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method private static getKeyLen([B)I
    .locals 2
    .parameter "arr"

    .prologue
    const/4 v1, 0x1

    .line 300
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    .line 301
    array-length v0, p0

    .line 304
    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3
    .parameter "db"
    .parameter "query"
    .parameter "selectionArgs"

    .prologue
    .line 622
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 624
    .local v0, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 626
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public static longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J
    .locals 6
    .parameter "prog"
    .parameter "selectionArgs"

    .prologue
    .line 635
    if-eqz p1, :cond_0

    .line 636
    array-length v1, p1

    .line 637
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 638
    add-int/lit8 v4, v0, 0x1

    aget-object v5, p1, v0

    invoke-static {p0, v4, v5}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    .line 642
    .local v2, value:J
    return-wide v2
.end method

.method public static queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 9
    .parameter "db"
    .parameter "table"

    .prologue
    const/4 v3, 0x0

    .line 607
    sget-object v2, Landroid/database/DatabaseUtils;->countProjection:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 610
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 611
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 613
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static final readExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "reply"

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 112
    .local v0, code:I
    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, msg:Ljava/lang/String;
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static final readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V
    .locals 1
    .parameter "reply"
    .parameter "msg"
    .parameter "code"

    .prologue
    .line 142
    packed-switch p2, :pswitch_data_0

    .line 160
    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 162
    return-void

    .line 144
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :pswitch_2
    new-instance v0, Landroid/database/sqlite/SQLiteAbortException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteAbortException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :pswitch_3
    new-instance v0, Landroid/database/sqlite/SQLiteConstraintException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :pswitch_4
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :pswitch_5
    new-instance v0, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteFullException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :pswitch_6
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :pswitch_7
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 120
    .local v0, code:I
    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, msg:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 123
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_1
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 132
    .local v0, code:I
    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, msg:Ljava/lang/String;
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 135
    new-instance v2, Landroid/content/OperationApplicationException;

    invoke-direct {v2, v1}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_1
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v0, escaper:Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "db"
    .parameter "query"
    .parameter "selectionArgs"

    .prologue
    .line 650
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 652
    .local v0, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 654
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public static stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "prog"
    .parameter "selectionArgs"

    .prologue
    .line 663
    if-eqz p1, :cond_0

    .line 664
    array-length v1, p1

    .line 665
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 666
    add-int/lit8 v3, v0, 0x1

    aget-object v4, p1, v0

    invoke-static {p0, v3, v4}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, value:Ljava/lang/String;
    return-object v2
.end method

.method public static final writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V
    .locals 5
    .parameter "reply"
    .parameter "e"

    .prologue
    const-string v4, "Writing exception to parcel"

    const-string v3, "DatabaseUtils"

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, code:I
    const/4 v1, 0x1

    .line 67
    .local v1, logException:Z
    instance-of v2, p1, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_1

    .line 68
    const/4 v0, 0x1

    .line 69
    const/4 v1, 0x0

    .line 93
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    if-eqz v1, :cond_0

    .line 97
    const-string v2, "DatabaseUtils"

    const-string v2, "Writing exception to parcel"

    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :cond_0
    :goto_1
    return-void

    .line 70
    :cond_1
    instance-of v2, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_2

    .line 71
    const/4 v0, 0x2

    goto :goto_0

    .line 72
    :cond_2
    instance-of v2, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_3

    .line 73
    const/4 v0, 0x3

    goto :goto_0

    .line 74
    :cond_3
    instance-of v2, p1, Landroid/database/sqlite/SQLiteAbortException;

    if-eqz v2, :cond_4

    .line 75
    const/4 v0, 0x4

    goto :goto_0

    .line 76
    :cond_4
    instance-of v2, p1, Landroid/database/sqlite/SQLiteConstraintException;

    if-eqz v2, :cond_5

    .line 77
    const/4 v0, 0x5

    goto :goto_0

    .line 78
    :cond_5
    instance-of v2, p1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v2, :cond_6

    .line 79
    const/4 v0, 0x6

    goto :goto_0

    .line 80
    :cond_6
    instance-of v2, p1, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v2, :cond_7

    .line 81
    const/4 v0, 0x7

    goto :goto_0

    .line 82
    :cond_7
    instance-of v2, p1, Landroid/database/sqlite/SQLiteDiskIOException;

    if-eqz v2, :cond_8

    .line 83
    const/16 v0, 0x8

    goto :goto_0

    .line 84
    :cond_8
    instance-of v2, p1, Landroid/database/sqlite/SQLiteException;

    if-eqz v2, :cond_9

    .line 85
    const/16 v0, 0x9

    goto :goto_0

    .line 86
    :cond_9
    instance-of v2, p1, Landroid/content/OperationApplicationException;

    if-eqz v2, :cond_a

    .line 87
    const/16 v0, 0xa

    goto :goto_0

    .line 89
    :cond_a
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 90
    const-string v2, "DatabaseUtils"

    const-string v2, "Writing exception to parcel"

    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
