.class public Lcom/android/phone/DatabaseConfigMgr;
.super Ljava/lang/Object;
.source "DatabaseConfigMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Phone.DatabaseConfigMgr"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/phone/DatabaseConfigMgr;


# instance fields
.field private mDatabaseHelper:Lcom/android/phone/DatabaseHelper;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/android/phone/DatabaseConfigMgr;->mContext:Landroid/content/Context;

    .line 15
    sput-object v0, Lcom/android/phone/DatabaseConfigMgr;->sInstance:Lcom/android/phone/DatabaseConfigMgr;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/phone/DatabaseConfigMgr;->mDatabaseHelper:Lcom/android/phone/DatabaseHelper;

    .line 13
    iput-object v0, p0, Lcom/android/phone/DatabaseConfigMgr;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    sput-object p1, Lcom/android/phone/DatabaseConfigMgr;->mContext:Landroid/content/Context;

    .line 19
    new-instance v0, Lcom/android/phone/DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/phone/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/DatabaseConfigMgr;->mDatabaseHelper:Lcom/android/phone/DatabaseHelper;

    .line 20
    iget-object v0, p0, Lcom/android/phone/DatabaseConfigMgr;->mDatabaseHelper:Lcom/android/phone/DatabaseHelper;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/phone/DatabaseConfigMgr;->mDatabaseHelper:Lcom/android/phone/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/phone/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DatabaseConfigMgr;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    :cond_0
    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/android/phone/DatabaseConfigMgr;
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    sget-object v0, Lcom/android/phone/DatabaseConfigMgr;->sInstance:Lcom/android/phone/DatabaseConfigMgr;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/android/phone/DatabaseConfigMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/DatabaseConfigMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/DatabaseConfigMgr;->sInstance:Lcom/android/phone/DatabaseConfigMgr;

    .line 28
    const-string v0, "Phone.DatabaseConfigMgr"

    const-string v1, "DatabaseConfigMgr created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    sget-object v0, Lcom/android/phone/DatabaseConfigMgr;->sInstance:Lcom/android/phone/DatabaseConfigMgr;

    return-object v0
.end method


# virtual methods
.method public getIPPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "mccmnc"

    .prologue
    .line 34
    iget-object v3, p0, Lcom/android/phone/DatabaseConfigMgr;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 35
    :cond_0
    const-string v3, "Phone.DatabaseConfigMgr"

    const-string v4, "null, return here."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v3, 0x0

    .line 52
    :goto_0
    return-object v3

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    .local v1, cursor:Landroid/database/Cursor;
    const-string v2, ""

    .line 41
    .local v2, ipPrefix:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 42
    .local v0, args:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/DatabaseConfigMgr;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT ip_prefix FROM ip_prefix WHERE mccmnc = ?;"

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 43
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 48
    :cond_2
    if-eqz v1, :cond_3

    .line 49
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v3, v2

    .line 52
    goto :goto_0

    .line 48
    .end local v0           #args:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 49
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method public getIntlRoamCallbackPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "mccmnc"

    .prologue
    .line 56
    iget-object v3, p0, Lcom/android/phone/DatabaseConfigMgr;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 57
    :cond_0
    const-string v3, "Phone.DatabaseConfigMgr"

    const-string v4, "null, return here."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v3, 0x0

    .line 76
    :goto_0
    return-object v3

    .line 60
    :cond_1
    const/4 v1, 0x0

    .line 61
    .local v1, cursor:Landroid/database/Cursor;
    const-string v2, ""

    .line 64
    .local v2, intlRoamCBPrefix:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 65
    .local v0, args:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/DatabaseConfigMgr;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT intlroam_prefix FROM intlroam_prefix WHERE mccmnc = ?;"

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 66
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 71
    :cond_2
    if-eqz v1, :cond_3

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v3, v2

    .line 76
    goto :goto_0

    .line 71
    .end local v0           #args:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method
