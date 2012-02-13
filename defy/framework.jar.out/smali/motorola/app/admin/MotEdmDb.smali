.class public Lmotorola/app/admin/MotEdmDb;
.super Ljava/lang/Object;
.source "MotEdmDb.java"


# static fields
.field private static final ADMIN_COLUMN_ID:Ljava/lang/String; = "admin_id"

.field private static final CERT_COLUMN_ID:Ljava/lang/String; = "cert_id"

.field private static final CONFIG_UUID_TABLE:Ljava/lang/String; = "UuidTable"

.field private static final DB_NAME:Ljava/lang/String; = "MotEDM.db"

.field private static final DB_PATH:Ljava/lang/String; = "/data/data/mot.app.admin/databases/"

.field private static final EMAIL_COLUMN_ID:Ljava/lang/String; = "email_id"

.field private static final TAG:Ljava/lang/String; = "Mot EDM DB"

.field private static final VPN_COLUMN_ID:Ljava/lang/String; = "vpn_id"

.field private static m_instance:Lmotorola/app/admin/MotEdmDb;

.field private static myDataBase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    sput-object v0, Lmotorola/app/admin/MotEdmDb;->m_instance:Lmotorola/app/admin/MotEdmDb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmotorola/app/admin/MotEdmDb;
    .locals 2

    .prologue
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->m_instance:Lmotorola/app/admin/MotEdmDb;

    if-nez v0, :cond_0

    new-instance v0, Lmotorola/app/admin/MotEdmDb;

    invoke-direct {v0}, Lmotorola/app/admin/MotEdmDb;-><init>()V

    sput-object v0, Lmotorola/app/admin/MotEdmDb;->m_instance:Lmotorola/app/admin/MotEdmDb;

    invoke-static {}, Lmotorola/app/admin/MotEdmDb;->init()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "Mot EDM DB"

    const-string v1, " Database Init failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->m_instance:Lmotorola/app/admin/MotEdmDb;

    goto :goto_0
.end method

.method private static init()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v6, "Mot EDM DB"

    const-string v4, "Mot EDM DB"

    const-string v4, " Database Init"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/data/data/mot.app.admin/databases/MotEDM.db"

    .local v0, dbFullPath:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sput-object v4, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    const/4 v4, 0x1

    .end local v2           #file:Ljava/io/File;
    :goto_1
    return v4

    .restart local v2       #file:Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .local v3, parent:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sput-object v4, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TABLE UuidTable (admin_id TEXT ,email_id TEXT , vpn_id TEXT , cert_id TEXT);"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "Mot EDM DB"

    const-string v5, " Database Created"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2           #file:Ljava/io/File;
    .end local v3           #parent:Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "Mot EDM DB"

    const-string v4, " Database Creation failure"

    invoke-static {v6, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v7, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    move v4, v8

    goto :goto_1

    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #parent:Ljava/io/File;
    :cond_2
    :try_start_1
    const-string v4, "Mot EDM DB"

    const-string v5, " Not able to create parent folder for Database"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public addUuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "admin"
    .parameter "emailUuid"
    .parameter "certUuid"
    .parameter "vpnUuid"

    .prologue
    sget-object v1, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "admin_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "email_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cert_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vpn_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UuidTable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, "Mot EDM DB"

    const-string v2, "Added new row to table"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .end local v0           #values:Landroid/content/ContentValues;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteAdmin(Ljava/lang/String;)Z
    .locals 6
    .parameter "admin"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v4

    .local v0, admin_id:[Ljava/lang/String;
    if-eqz p1, :cond_0

    sget-object v1, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    sget-object v1, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UuidTable"

    const-string v3, "admin_id=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Mot EDM DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is deleted from database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    :goto_0
    return v1

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method public deleteAll()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UuidTable"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mot EDM DB"

    const-string v1, "database deleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteCertUuid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "admin"
    .parameter "certUuid"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    aput-object p2, v0, v4

    aput-object p1, v0, v5

    .local v0, certId:[Ljava/lang/String;
    sget-object v1, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    sget-object v1, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UuidTable"

    const-string v3, "(cert_id =?) AND (admin_id=?)"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    :goto_0
    return v1

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method public deleteEmailUuid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "admin"
    .parameter "emailUuid"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    aput-object p2, v0, v4

    aput-object p1, v0, v5

    .local v0, emailId:[Ljava/lang/String;
    sget-object v1, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    sget-object v1, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UuidTable"

    const-string v3, "(email_id =?) AND (admin_id=?)"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    :goto_0
    return v1

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method public deleteVpnUuid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "admin"
    .parameter "vpnUuid"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    aput-object p2, v0, v4

    aput-object p1, v0, v5

    .local v0, vpnId:[Ljava/lang/String;
    sget-object v1, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    sget-object v1, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UuidTable"

    const-string v3, "(vpn_id =?) AND (admin_id=?)"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    :goto_0
    return v1

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method public display()V
    .locals 14

    .prologue
    const-string v0, ""

    const/4 v8, 0x0

    .local v8, c:Landroid/database/Cursor;
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UuidTable"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .local v13, totalRows:I
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v12

    .local v12, totalColumns:I
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rows =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Column = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v13, :cond_2

    if-lez v12, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v11, 0x0

    .local v11, row:I
    :goto_1
    if-ge v11, v13, :cond_3

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->Row No=  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    .local v10, k:I
    :goto_2
    if-ge v10, v12, :cond_1

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Column No= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v10           #k:I
    .end local v11           #row:I
    :cond_2
    const-string v0, "Mot EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Entries "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v12           #totalColumns:I
    .end local v13           #totalRows:I
    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "Not EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query exception  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-string v0, "Mot EDM DB"

    const-string v1, " closing Mot EDM DB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    sput-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getCertUuids(Ljava/lang/String;)Ljava/util/Vector;
    .locals 13
    .parameter "admin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .local v9, certId:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, c:Landroid/database/Cursor;
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UuidTable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "cert_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "admin_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .local v12, totalRows:I
    if-lez v12, :cond_4

    const/4 v11, 0x0

    .local v11, row:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    if-ge v11, v12, :cond_2

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v11, v11, 0x1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v11           #row:I
    .end local v12           #totalRows:I
    :catch_0
    move-exception v0

    move-object v10, v0

    .local v10, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "Not EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query exception  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    move-object v0, v9

    goto :goto_0

    .restart local v11       #row:I
    .restart local v12       #totalRows:I
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Ljava/util/Vector;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    const/4 v9, 0x0

    .end local v11           #row:I
    :cond_3
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :try_start_3
    const-string v0, "Mot EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No of Certificate Entries= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .end local v12           #totalRows:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getEmailUuids(Ljava/lang/String;)Ljava/util/Vector;
    .locals 14
    .parameter "admin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .local v10, emailId:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, c:Landroid/database/Cursor;
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UuidTable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "email_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "admin_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .local v13, totalRows:I
    if-lez v13, :cond_4

    const/4 v11, 0x0

    .local v11, i:I
    const/4 v12, 0x0

    .local v12, row:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    if-ge v12, v13, :cond_2

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v12, v12, 0x1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v11           #i:I
    .end local v12           #row:I
    .end local v13           #totalRows:I
    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "Not EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query exception  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    move-object v0, v10

    goto :goto_0

    .restart local v11       #i:I
    .restart local v12       #row:I
    .restart local v13       #totalRows:I
    :cond_2
    :try_start_2
    invoke-virtual {v10}, Ljava/util/Vector;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    const/4 v10, 0x0

    .end local v11           #i:I
    .end local v12           #row:I
    :cond_3
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :try_start_3
    const-string v0, "Mot EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No of Email Entries= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .end local v13           #totalRows:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getVpnUuids(Ljava/lang/String;)Ljava/util/Vector;
    .locals 14
    .parameter "admin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .local v13, vpnId:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, c:Landroid/database/Cursor;
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UuidTable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "vpn_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "admin_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .local v12, totalRows:I
    if-lez v12, :cond_4

    const/4 v10, 0x0

    .local v10, i:I
    const/4 v11, 0x0

    .local v11, row:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    if-ge v11, v12, :cond_2

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v11, v11, 0x1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v10           #i:I
    .end local v11           #row:I
    .end local v12           #totalRows:I
    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "Not EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query exception  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v13, 0x0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    move-object v0, v13

    goto :goto_0

    .restart local v10       #i:I
    .restart local v11       #row:I
    .restart local v12       #totalRows:I
    :cond_2
    :try_start_2
    invoke-virtual {v13}, Ljava/util/Vector;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    const/4 v13, 0x0

    .end local v10           #i:I
    .end local v11           #row:I
    :cond_3
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :try_start_3
    const-string v0, "Mot EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No of Vpn Entries= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .end local v12           #totalRows:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method
