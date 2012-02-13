.class public Lcom/motorola/overlay/Driver;
.super Landroid/app/Activity;
.source "Driver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OverlayDriver"


# instance fields
.field protected mDatabaseHelper:Lcom/motorola/overlay/DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/overlay/Driver;->mDatabaseHelper:Lcom/motorola/overlay/DatabaseHelper;

    return-void
.end method

.method private displayTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 17
    .parameter "db"
    .parameter "tableName"
    .parameter "sb"

    .prologue
    .line 66
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 68
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "****************************\n"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v3, "\n"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    move-object v0, v2

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 73
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 74
    .local v16, ret:Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getColumnCount()I

    move-result v11

    .line 75
    .local v11, colCnt:I
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v10

    .local v10, arr$:[Ljava/lang/String;
    array-length v15, v10

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    if-ge v14, v15, :cond_0

    aget-object v12, v10, v14

    .line 76
    .local v12, colName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 78
    .end local v12           #colName:Ljava/lang/String;
    :cond_0
    const-string v3, "\n"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    if-eqz v16, :cond_4

    .line 81
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    if-lez v11, :cond_1

    .line 83
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :cond_1
    const/4 v13, 0x1

    .local v13, colNdx:I
    :goto_2
    if-ge v13, v11, :cond_2

    .line 86
    const-string v3, ", "

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    move-object/from16 v0, v16

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 89
    :cond_2
    const-string v3, "\n"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 91
    .end local v13           #colNdx:I
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_4
    return-void
.end method


# virtual methods
.method display(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 52
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v6, "Starting here"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    iget-object v6, p0, Lcom/motorola/overlay/Driver;->mDatabaseHelper:Lcom/motorola/overlay/DatabaseHelper;

    invoke-virtual {v6}, Lcom/motorola/overlay/DatabaseHelper;->getDatabaseNames()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 57
    .local v4, tn:Ljava/lang/String;
    invoke-direct {p0, p1, v4, v3}, Lcom/motorola/overlay/Driver;->displayTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v4           #tn:Ljava/lang/String;
    :cond_0
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v5, tv:Landroid/widget/TextView;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0, v5}, Lcom/motorola/overlay/Driver;->setContentView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/motorola/overlay/Driver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    .local v0, ctx:Landroid/content/Context;
    iget-object v2, p0, Lcom/motorola/overlay/Driver;->mDatabaseHelper:Lcom/motorola/overlay/DatabaseHelper;

    if-nez v2, :cond_0

    .line 40
    new-instance v2, Lcom/motorola/overlay/DatabaseHelper;

    invoke-direct {v2, v0}, Lcom/motorola/overlay/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/overlay/Driver;->mDatabaseHelper:Lcom/motorola/overlay/DatabaseHelper;

    .line 41
    iget-object v2, p0, Lcom/motorola/overlay/Driver;->mDatabaseHelper:Lcom/motorola/overlay/DatabaseHelper;

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/motorola/overlay/Driver;->mDatabaseHelper:Lcom/motorola/overlay/DatabaseHelper;

    invoke-virtual {v2}, Lcom/motorola/overlay/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 45
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v1}, Lcom/motorola/overlay/Driver;->display(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void
.end method
