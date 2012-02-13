.class Lcom/android/providers/telephony/DlutDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DlutDatabaseHelper.java"


# static fields
.field private static final DBG:Z = false

.field private static final DB_NAME:Ljava/lang/String; = "dlut.db"

.field private static final DB_ORIG:Ljava/lang/String; = "vzw_mcc_idd_lookup.db"

.field private static final DB_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DlutDatabaseHelper"


# instance fields
.field private dbPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 31
    const-string v0, "dlut.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    iput-object p1, p0, Lcom/android/providers/telephony/DlutDatabaseHelper;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/telephony/DlutDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/DlutDatabaseHelper;->dbPath:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private checkDatabase()Z
    .locals 5

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, checkDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 78
    .local v1, result:Z
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/providers/telephony/DlutDatabaseHelper;->dbPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dlut.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_0
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 85
    const/4 v1, 0x1

    .line 88
    :cond_0
    return v1

    .line 79
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private copyDatabase()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 96
    .local v1, fis:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/providers/telephony/DlutDatabaseHelper;->dbPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dlut.db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/providers/telephony/DlutDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "vzw_mcc_idd_lookup.db"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 98
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 101
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, length:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 102
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    .end local v0           #buffer:[B
    .end local v4           #length:I
    :catchall_0
    move-exception v5

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 109
    :cond_0
    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v5

    .line 104
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #length:I
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    if-eqz v3, :cond_3

    .line 107
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 109
    :cond_3
    if-eqz v1, :cond_4

    .line 110
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 113
    :cond_4
    return-void

    .line 106
    .end local v0           #buffer:[B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #length:I
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public createDataBase()V
    .locals 6

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/providers/telephony/DlutDatabaseHelper;->checkDatabase()Z

    move-result v1

    .line 44
    .local v1, dbExist:Z
    if-nez v1, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/android/providers/telephony/DlutDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 46
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/providers/telephony/DlutDatabaseHelper;->close()V

    .line 48
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 52
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/telephony/DlutDatabaseHelper;->copyDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_0
    return-void

    .line 53
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 54
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "DlutDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyDatabase throws "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 38
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/providers/telephony/DlutDatabaseHelper;->close()V

    .line 63
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 67
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/telephony/DlutDatabaseHelper;->copyDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DlutDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyDatabase throws "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
