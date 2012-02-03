.class public Landroid/database/MatrixCursor;
.super Landroid/database/AbstractCursor;
.source "MatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/MatrixCursor$RowBuilder;
    }
.end annotation


# instance fields
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private data:[Ljava/lang/Object;

.field private rowCount:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "columnNames"

    .prologue
    .line 58
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1
    .parameter "columnNames"
    .parameter "initialCapacity"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    .line 41
    iput-object p1, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    .line 42
    array-length v0, p1

    iput v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    .line 44
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 45
    const/4 p2, 0x1

    .line 48
    :cond_0
    iget v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 49
    return-void
.end method

.method static synthetic access$000(Landroid/database/MatrixCursor;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    return-object v0
.end method

.method private addRow(Ljava/util/ArrayList;I)V
    .locals 6
    .parameter
    .parameter "start"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, columnValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 157
    .local v2, size:I
    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    if-eq v2, v3, :cond_0

    .line 158
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "columnNames.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", columnValues.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    :cond_0
    iget v3, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/database/MatrixCursor;->rowCount:I

    .line 163
    iget-object v1, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 164
    .local v1, localData:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 165
    add-int v3, p2, v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 5
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 171
    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    if-le p1, v2, :cond_1

    .line 172
    iget-object v1, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 173
    .local v1, oldData:[Ljava/lang/Object;
    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x2

    .line 174
    .local v0, newSize:I
    if-ge v0, p1, :cond_0

    .line 175
    move v0, p1

    .line 177
    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 178
    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    .end local v0           #newSize:I
    .end local v1           #oldData:[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .locals 3
    .parameter "column"

    .prologue
    .line 65
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    if-lt p1, v0, :cond_1

    .line 66
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    if-gez v0, :cond_2

    .line 70
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    if-lt v0, v1, :cond_3

    .line 73
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    iget-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public addRow(Ljava/lang/Iterable;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, columnValues:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    iget v7, p0, Landroid/database/MatrixCursor;->rowCount:I

    iget v8, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int v6, v7, v8

    .line 125
    .local v6, start:I
    iget v7, p0, Landroid/database/MatrixCursor;->columnCount:I

    add-int v3, v6, v7

    .line 126
    .local v3, end:I
    invoke-direct {p0, v3}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    .line 128
    instance-of v7, p1, Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 129
    check-cast p1, Ljava/util/ArrayList;

    .end local p1           #columnValues:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-direct {p0, p1, v6}, Landroid/database/MatrixCursor;->addRow(Ljava/util/ArrayList;I)V

    .line 152
    :goto_0
    return-void

    .line 133
    .restart local p1       #columnValues:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_0
    move v1, v6

    .line 134
    .local v1, current:I
    iget-object v5, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 135
    .local v5, localData:[Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 136
    .local v0, columnValue:Ljava/lang/Object;
    if-ne v1, v3, :cond_1

    .line 138
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "columnValues.size() > columnNames.length"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 141
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1           #current:I
    .local v2, current:I
    aput-object v0, v5, v1

    move v1, v2

    .end local v2           #current:I
    .restart local v1       #current:I
    goto :goto_1

    .line 144
    .end local v0           #columnValue:Ljava/lang/Object;
    :cond_2
    if-eq v1, v3, :cond_3

    .line 146
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "columnValues.size() < columnNames.length"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 151
    :cond_3
    iget v7, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/database/MatrixCursor;->rowCount:I

    goto :goto_0
.end method

.method public addRow([Ljava/lang/Object;)V
    .locals 4
    .parameter "columnValues"

    .prologue
    .line 103
    array-length v1, p1

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    if-eq v1, v2, :cond_0

    .line 104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "columnNames.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", columnValues.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/database/MatrixCursor;->rowCount:I

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int v0, v1, v2

    .line 110
    .local v0, start:I
    iget v1, p0, Landroid/database/MatrixCursor;->columnCount:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    .line 111
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    return v0
.end method

.method public getDouble(I)D
    .locals 3
    .parameter "column"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 271
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-wide v1

    .line 270
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    .line 271
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter "column"

    .prologue
    .line 260
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 261
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 263
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 262
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_0

    .line 263
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 244
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 247
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 246
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    .line 247
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 252
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 253
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 255
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-wide v1

    .line 254
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 255
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 236
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 237
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 239
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 238
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    goto :goto_0

    .line 239
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 230
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 231
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 276
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newRow()Landroid/database/MatrixCursor$RowBuilder;
    .locals 4

    .prologue
    .line 86
    iget v2, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/database/MatrixCursor;->rowCount:I

    .line 87
    iget v2, p0, Landroid/database/MatrixCursor;->rowCount:I

    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int v0, v2, v3

    .line 88
    .local v0, endIndex:I
    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    .line 89
    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    sub-int v1, v0, v2

    .line 90
    .local v1, start:I
    new-instance v2, Landroid/database/MatrixCursor$RowBuilder;

    invoke-direct {v2, p0, v1, v0}, Landroid/database/MatrixCursor$RowBuilder;-><init>(Landroid/database/MatrixCursor;II)V

    return-object v2
.end method
