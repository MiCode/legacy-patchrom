.class public Lcom/motorola/overlay/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field protected static final DATABASE_NAME:Ljava/lang/String; = "settings.db"

.field protected static final DATABASE_TABLE:Ljava/lang/String; = "test"

.field protected static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OverlayDriver"


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 23
    const-string v0, "settings.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    iput-object p1, p0, Lcom/motorola/overlay/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public getDatabaseNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "test"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mkitso"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dm"

    aput-object v2, v0, v1

    .line 29
    .local v0, tables:[Ljava/lang/String;
    return-object v0
.end method

.method protected loadDefaults(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 85
    iget-object v3, p0, Lcom/motorola/overlay/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 90
    .local v2, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v3, "INSERT INTO test(name, value) values (?, ?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 92
    const/4 v3, 0x1

    const-string v4, "sensor_max_delay_double_tap"

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 93
    const/4 v3, 0x2

    const-string v4, "value"

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 104
    :cond_0
    return-void

    .line 97
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 98
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "OverlayDriver"

    const-string v4, "Error inserting into test"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "test"

    .line 34
    const-string v0, "CREATE TABLE %s ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT UNIQUE ON CONFLICT REPLACE, value TEXT);"

    .line 38
    .local v0, fmt:Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "test"

    aput-object v6, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/motorola/overlay/DatabaseHelper;->loadDefaults(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 43
    const-string v0, "CREATE TABLE mkitso (   _id INTEGER PRIMARY KEY AUTOINCREMENT,   name TEXT UNIQUE ON CONFLICT REPLACE,   value TEXT);"

    .line 47
    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "test"

    aput-object v6, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    const-string v0, "CREATE TABLE dm (    _id INTEGER PRIMARY KEY AUTOINCREMENT,    accName TEXT,    ServerID TEXT,    Addr TEXT,    AddrType TEXT,    PortNbr TEXT,    ConRef TEXT,    Name TEXT,    ServerPW TEXT,    ServerNonce TEXT,    UserName TEXT,    ClientPW TEXT,    ClientNonce TEXT);"

    .line 64
    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "test"

    aput-object v6, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcom/motorola/customization/OverlayHelper;

    iget-object v2, p0, Lcom/motorola/overlay/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/motorola/customization/OverlayHelper;-><init>(Landroid/content/Context;)V

    .line 70
    .local v1, xovl:Lcom/motorola/customization/OverlayHelper;
    const-string v2, "mkitso"

    invoke-virtual {v1, p1, v2}, Lcom/motorola/customization/OverlayHelper;->apply(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, p1}, Lcom/motorola/customization/OverlayHelper;->applyXml(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 72
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 77
    return-void
.end method
