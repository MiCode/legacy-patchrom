.class public Landroid/content/SearchRecentSuggestionsProvider;
.super Landroid/content/ContentProvider;
.source "SearchRecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SearchRecentSuggestionsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final DATABASE_MODE_2LINES:I = 0x2

.field public static final DATABASE_MODE_QUERIES:I = 0x1

.field private static final DATABASE_VERSION:I = 0x200

.field private static final NULL_COLUMN:Ljava/lang/String; = "query"

.field private static final ORDER_BY:Ljava/lang/String; = "date DESC"

.field private static final TAG:Ljava/lang/String; = "SuggestionsProvider"

.field private static final URI_MATCH_SUGGEST:I = 0x1

.field private static final sDatabaseName:Ljava/lang/String; = "suggestions.db"

.field private static final sSuggestions:Ljava/lang/String; = "suggestions"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mMode:I

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSuggestSuggestionClause:Ljava/lang/String;

.field private mSuggestionProjection:[Ljava/lang/String;

.field private mSuggestionsUri:Landroid/net/Uri;

.field private mTwoLineDisplay:Z

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const-string v7, "suggestions"

    const-string v6, "Unknown Uri"

    iget-object v4, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, length:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown Uri"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, base:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, count:I
    const-string v4, "suggestions"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "suggestions"

    invoke-virtual {v2, v7, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v1

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown Uri"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    iget-object v2, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "vnd.android.cursor.dir/vnd.android.search.suggest"

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, length:I
    if-lt v1, v4, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, base:Ljava/lang/String;
    const-string v2, "suggestions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v1, v4, :cond_1

    const-string v2, "vnd.android.cursor.dir/suggestion"

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v2, "vnd.android.cursor.item/suggestion"

    goto :goto_0

    .end local v0           #base:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown Uri"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .parameter "uri"
    .parameter "values"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const-string v12, "suggestions"

    const-string v11, "Unknown Uri"

    iget-object v6, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .local v2, length:I
    if-ge v2, v8, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown Uri"

    invoke-direct {v6, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const-wide/16 v4, -0x1

    .local v4, rowID:J
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, base:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, newUri:Landroid/net/Uri;
    const-string v6, "suggestions"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-ne v2, v8, :cond_1

    const-string v6, "suggestions"

    const-string v6, "query"

    invoke-virtual {v1, v12, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v6, v4, v9

    if-lez v6, :cond_1

    iget-object v6, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionsUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_1
    cmp-long v6, v4, v9

    if-gez v6, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown Uri"

    invoke-direct {v6, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object v3
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mMode:I

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider not configured"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mMode:I

    add-int/lit16 v0, v1, 0x200

    .local v0, mWorkingDbVersion:I
    new-instance v1, Landroid/content/SearchRecentSuggestionsProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/SearchRecentSuggestionsProvider$DatabaseHelper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x0

    .local v8, suggestSelection:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, myArgs:[Ljava/lang/String;
    :goto_0
    const-string v6, "suggestions"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionProjection:[Ljava/lang/String;

    move-object v7, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "date DESC"

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .local v19, c:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .end local v8           #suggestSelection:Ljava/lang/String;
    .end local v9           #myArgs:[Ljava/lang/String;
    .end local p2
    :goto_1
    return-object v19

    .end local v19           #c:Landroid/database/Cursor;
    .restart local p2
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .local v21, like:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SearchRecentSuggestionsProvider;->mTwoLineDisplay:Z

    move v6, v0

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v21, v9, v6

    const/4 v6, 0x1

    aput-object v21, v9, v6

    .restart local v9       #myArgs:[Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestSuggestionClause:Ljava/lang/String;

    move-object v8, v0

    .restart local v8       #suggestSelection:Ljava/lang/String;
    goto :goto_0

    .end local v8           #suggestSelection:Ljava/lang/String;
    .end local v9           #myArgs:[Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v21, v9, v6

    .restart local v9       #myArgs:[Ljava/lang/String;
    goto :goto_2

    .end local v9           #myArgs:[Ljava/lang/String;
    .end local v21           #like:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v20

    .local v20, length:I
    const/4 v6, 0x1

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_3

    const/4 v6, 0x2

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_3

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown Uri"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .local v11, base:Ljava/lang/String;
    const-string v6, "suggestions"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown Uri"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    const/4 v12, 0x0

    .local v12, useProjection:[Ljava/lang/String;
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    if-lez v6, :cond_5

    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    new-array v12, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move v8, v0

    move-object/from16 v0, p2

    move v1, v6

    move-object v2, v12

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    const-string v7, "_id AS _id"

    aput-object v7, v12, v6

    :cond_5
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    move-object/from16 v0, v22

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v22, whereClause:Ljava/lang/StringBuilder;
    const/4 v6, 0x2

    move/from16 v0, v20

    move v1, v6

    if-ne v0, v1, :cond_6

    const-string v6, "(_id = "

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_7

    const-string v6, " AND "

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/16 v6, 0x28

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v10, v5

    move-object/from16 v14, p4

    move-object/from16 v17, p5

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .restart local v19       #c:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_1
.end method

.method protected setupSuggestions(Ljava/lang/String;I)V
    .locals 8
    .parameter "authority"
    .parameter "mode"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mTwoLineDisplay:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    iput p2, p0, Landroid/content/SearchRecentSuggestionsProvider;->mMode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/suggestions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionsUri:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-boolean v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mTwoLineDisplay:Z

    if-eqz v0, :cond_3

    const-string v0, "display1 LIKE ? OR display2 LIKE ?"

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestSuggestionClause:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0 AS suggest_format"

    aput-object v1, v0, v4

    const-string v1, "display1 AS suggest_text_1"

    aput-object v1, v0, v3

    const-string v1, "display2 AS suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "query AS suggest_intent_query"

    aput-object v1, v0, v6

    const-string v1, "_id"

    aput-object v1, v0, v7

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionProjection:[Ljava/lang/String;

    :goto_1
    return-void

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    const-string v0, "display1 LIKE ?"

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestSuggestionClause:Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "0 AS suggest_format"

    aput-object v1, v0, v4

    const-string v1, "display1 AS suggest_text_1"

    aput-object v1, v0, v3

    const-string v1, "query AS suggest_intent_query"

    aput-object v1, v0, v5

    const-string v1, "_id"

    aput-object v1, v0, v6

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionProjection:[Ljava/lang/String;

    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
