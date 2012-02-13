.class public Lcom/android/phone/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field protected static final DATABASE_NAME:Ljava/lang/String; = "phone_settings.db"

.field protected static final DATABASE_TABLE_INTLROAM_PREFIX:Ljava/lang/String; = "intlroam_prefix"

.field protected static final DATABASE_TABLE_IP_PREFIX:Ljava/lang/String; = "ip_prefix"

.field protected static final DATABASE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Phone.DatabaseHelper"


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 22
    const-string v0, "phone_settings.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    iput-object p1, p0, Lcom/android/phone/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public getDatabaseTableNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ip_prefix"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "intlroam_prefix"

    aput-object v2, v0, v1

    .line 28
    .local v0, tables:[Ljava/lang/String;
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    const-string v5, "Phone.DatabaseHelper"

    .line 34
    :try_start_0
    const-string v1, "CREATE TABLE ip_prefix (    _id INTEGER PRIMARY KEY AUTOINCREMENT,    mccmnc TEXT,    ip_prefix TEXT,    groupid TEXT);"

    .line 39
    .local v1, fmt:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1           #fmt:Ljava/lang/String;
    :goto_0
    :try_start_1
    const-string v2, "CREATE TABLE intlroam_prefix (    _id INTEGER PRIMARY KEY AUTOINCREMENT,    mccmnc TEXT,    intlroam_prefix TEXT,    groupid TEXT);"

    .line 51
    .local v2, fmtRoam:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    .end local v2           #fmtRoam:Ljava/lang/String;
    :goto_1
    :try_start_2
    new-instance v3, Lcom/motorola/flex/OverlayHelper;

    iget-object v4, p0, Lcom/android/phone/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/motorola/flex/OverlayHelper;-><init>(Landroid/content/Context;)V

    .line 60
    .local v3, xovl:Lcom/motorola/flex/OverlayHelper;
    invoke-virtual {v3, p1}, Lcom/motorola/flex/OverlayHelper;->applyXml(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 64
    .end local v3           #xovl:Lcom/motorola/flex/OverlayHelper;
    :goto_2
    return-void

    .line 40
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 41
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Phone.DatabaseHelper"

    const-string v4, "create table ip_prefix failed"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 53
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "Phone.DatabaseHelper"

    const-string v4, "create table intlroam_prefix failed"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 61
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 62
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "Phone.DatabaseHelper"

    const-string v4, "overylay failed"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 70
    const/4 v2, 0x2

    if-ge p2, v2, :cond_0

    .line 71
    const-string v2, "DROP TABLE IF EXISTS intlroam_prefix"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    :try_start_0
    const-string v1, "CREATE TABLE intlroam_prefix (    _id INTEGER PRIMARY KEY AUTOINCREMENT,    mccmnc TEXT,    intlroam_prefix TEXT,    groupid TEXT);"

    .line 78
    .local v1, fmtRoam:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1           #fmtRoam:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 80
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Phone.DatabaseHelper"

    const-string v3, "create table intlroam_prefix failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
