.class public Lcom/android/internal/content/SelectionBuilder;
.super Ljava/lang/Object;
.source "SelectionBuilder.java"


# instance fields
.field private mSelection:Ljava/lang/StringBuilder;

.field private mSelectionArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/internal/content/SelectionBuilder;
    .locals 6
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    if-eqz p2, :cond_2

    array-length v4, p2

    if-lez v4, :cond_2

    .line 53
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Valid selection required when including arguments"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 61
    :cond_0
    iget-object v4, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 62
    iget-object v4, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_1
    iget-object v4, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    if-eqz p2, :cond_2

    .line 67
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/Object;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 70
    .local v0, arg:Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/internal/content/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v0           #arg:Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    return-object p0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 2
    .parameter "db"
    .parameter "table"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/content/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"
    .parameter "table"
    .parameter "columns"
    .parameter "orderBy"

    .prologue
    const/4 v4, 0x0

    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, p4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/content/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "table"
    .parameter "columns"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public reset()Lcom/android/internal/content/SelectionBuilder;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 42
    iget-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    return-object p0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 2
    .parameter "db"
    .parameter "table"
    .parameter "values"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
