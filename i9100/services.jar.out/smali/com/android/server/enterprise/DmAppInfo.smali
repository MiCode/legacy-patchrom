.class public Lcom/android/server/enterprise/DmAppInfo;
.super Ljava/lang/Object;
.source "DmAppInfo.java"


# static fields
.field public static final APP_CONTROL_STATE_DISABLED:I = 0x1

.field public static final APP_CONTROL_STATE_INSTALLATION_DISABLED:I = 0x2

.field public static final APP_CONTROL_STATE_UNINSTALLATION_DISABLED:I = 0x4

.field public static final CONTROL_STATE:Ljava/lang/String; = "controlstate"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INSTALL_COUNT:Ljava/lang/String; = "installcount"

.field public static final PKG_NAME:Ljava/lang/String; = "pkgname"

.field public static final TABLE_NAME:Ljava/lang/String; = "DmAppInfo"

.field private static final TAG:Ljava/lang/String; = "DmAppInfo"

.field public static final UNINSTALL_COUNT:Ljava/lang/String; = "uninstallcount"


# instance fields
.field private mAppControlState:I

.field public mAppDisabled:I

.field public mAppInstallCount:I

.field public mAppInstallationDisabled:I

.field public mAppPkg:Ljava/lang/String;

.field public mAppUninstallCount:I

.field public mAppUninstallationDisabled:I

.field private mContext:Landroid/content/Context;

.field public mId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIII)V
    .locals 2
    .parameter "ctx"
    .parameter "appPkg"
    .parameter "appInstallCount"
    .parameter "appUninstallCount"
    .parameter "appDisabled"
    .parameter "appInstallationDisabled"
    .parameter "appUninstallationDisabled"

    .prologue
    const/4 v1, -0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mId:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    .line 44
    iput v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    .line 46
    iput v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I

    .line 48
    iput v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I

    .line 50
    iput v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I

    .line 52
    iput v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I

    .line 55
    iput v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 81
    iput-object p1, p0, Lcom/android/server/enterprise/DmAppInfo;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    .line 83
    iput p3, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    .line 84
    iput p4, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I

    .line 85
    iput p5, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I

    .line 86
    iput p6, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I

    .line 87
    iput p7, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I

    .line 88
    invoke-direct {p0}, Lcom/android/server/enterprise/DmAppInfo;->getAppControlState()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 89
    return-void
.end method

.method private static createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 271
    :try_start_0
    const-string v1, " (_id integer primary key autoincrement, pkgname text, installcount integer, uninstallcount integer, controlstate integer );"

    .line 273
    .local v1, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table DmAppInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 275
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteDmAppInfo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "ctx"
    .parameter "pkg"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v5, "DmAppInfo"

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, success:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v4, v3

    .line 215
    .end local v3           #success:Z
    .local v4, success:I
    :goto_0
    return v4

    .line 197
    .end local v4           #success:I
    .restart local v3       #success:Z
    :cond_1
    const/4 v0, 0x0

    .line 199
    .local v0, dmappmgrDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/DmAppInfo;->getDmAppMgrDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_2

    .line 201
    const-string v5, "DmAppInfo"

    const-string v6, "pkgname=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 204
    .local v2, rowCount:I
    const-string v5, "DmAppInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteDmAppInfo deleted row count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    if-lez v2, :cond_4

    move v3, v10

    .line 211
    .end local v2           #rowCount:I
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 212
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    move v4, v3

    .line 215
    .restart local v4       #success:I
    goto :goto_0

    .end local v4           #success:I
    .restart local v2       #rowCount:I
    :cond_4
    move v3, v9

    .line 205
    goto :goto_1

    .line 207
    .end local v2           #rowCount:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 208
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 209
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    if-eqz v0, :cond_3

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    .line 212
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 211
    :cond_5
    throw v5
.end method

.method private declared-synchronized getAppControlState()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 58
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 59
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I

    if-ne v1, v0, :cond_0

    .line 60
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 61
    :cond_0
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I

    if-ne v1, v0, :cond_1

    .line 62
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 63
    :cond_1
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I

    if-ne v1, v0, :cond_2

    .line 64
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 65
    :cond_2
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getApplicationsList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "ctx"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/DmAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v4, ""

    .line 222
    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 225
    :cond_0
    const/4 v10, 0x0

    .line 226
    .local v10, dmappmgrDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 227
    .local v8, cr:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v9, dmAppInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/DmAppInfo;>;"
    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/DmAppInfo;->getDmAppMgrDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 230
    if-eqz v10, :cond_7

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM DmAppInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " WHERE pkgname = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 232
    const-string v1, "DmAppInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApplicationsList found row counts : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " For Pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :cond_1
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 236
    new-instance v0, Lcom/android/server/enterprise/DmAppInfo;

    .end local v0           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/DmAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII)V

    .line 238
    .restart local v0       #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/DmAppInfo;->getAppInfoFromCursor(Landroid/database/Cursor;)V

    .line 239
    iget-object v1, v0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 240
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 243
    .end local v0           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :catch_0
    move-exception v1

    move-object v11, v1

    .line 244
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    if-eqz v8, :cond_2

    .line 247
    .end local v11           #e:Ljava/lang/Exception;
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_2
    if-eqz v10, :cond_3

    .line 250
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 252
    :cond_3
    return-object v9

    .line 231
    :cond_4
    :try_start_2
    const-string v2, ""

    move-object v2, v4

    goto :goto_0

    .line 232
    :cond_5
    const-string v3, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    goto :goto_1

    .line 246
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    .line 247
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_6
    throw v1

    :cond_7
    if-eqz v8, :cond_2

    goto :goto_3
.end method

.method private static getDmAppMgrDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5
    .parameter "ctx"

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, dmappmgrDB:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dmappmgr.db"

    .line 259
    .local v1, dmappmgrDBPath:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 263
    :goto_0
    if-eqz v0, :cond_0

    const-string v3, "DmAppInfo"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/DmAppInfo;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    invoke-static {v0}, Lcom/android/server/enterprise/DmAppInfo;->createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 266
    :cond_0
    return-object v0

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4
    .parameter "db"
    .parameter "table"

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, exists:Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 283
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    const/4 v1, 0x1

    .line 290
    :cond_0
    :goto_0
    return v1

    .line 285
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 286
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized setAppControlState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 69
    monitor-enter p0

    if-gez p1, :cond_0

    .line 76
    :goto_0
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_0
    iput p1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 73
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    and-int/lit8 v0, v0, 0x1

    if-ne v2, v0, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I

    .line 74
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_2

    move v0, v2

    :goto_2
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I

    .line 75
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    and-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_3

    move v0, v2

    :goto_3
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v3

    .line 73
    goto :goto_1

    :cond_2
    move v0, v3

    .line 74
    goto :goto_2

    :cond_3
    move v0, v3

    .line 75
    goto :goto_3
.end method


# virtual methods
.method fillAppInfoToContentValues(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 100
    const-string v0, "pkgname"

    iget-object v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "installcount"

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v0, "uninstallcount"

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v0, "controlstate"

    invoke-direct {p0}, Lcom/android/server/enterprise/DmAppInfo;->getAppControlState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    return-void
.end method

.method getAppInfoFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 92
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mId:I

    .line 93
    const-string v0, "pkgname"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    .line 94
    const-string v0, "installcount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    .line 95
    const-string v0, "uninstallcount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I

    .line 96
    const-string v0, "controlstate"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DmAppInfo;->setAppControlState(I)V

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,InstallCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", UninstallCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppInstallationDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppUninstallationDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAppManagerDB(IIIII)Z
    .locals 16
    .parameter "install"
    .parameter "resetCounter"
    .parameter "appDisabled"
    .parameter "appInstallationDisabled"
    .parameter "appUninstallationDisabled"

    .prologue
    .line 116
    const/4 v6, 0x0

    .line 117
    .local v6, success:Z
    const/4 v5, 0x0

    .line 118
    .local v5, isExistingPkg:Z
    const/4 v3, 0x0

    .line 119
    .local v3, dmappmgrDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 120
    .local v2, cr:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    move-object v11, v0

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    move v7, v6

    .line 184
    .end local v6           #success:Z
    .local v7, success:I
    :goto_0
    return v7

    .line 124
    .end local v7           #success:I
    .restart local v6       #success:Z
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/DmAppInfo;->mContext:Landroid/content/Context;

    move-object v11, v0

    invoke-static {v11}, Lcom/android/server/enterprise/DmAppInfo;->getDmAppMgrDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 125
    if-eqz v3, :cond_8

    .line 126
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT * FROM DmAppInfo WHERE pkgname = \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 127
    const-string v11, "DmAppInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAppManagerDB found row count : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for pkg : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_b

    const/4 v11, 0x1

    move v5, v11

    .line 130
    :goto_1
    if-eqz v5, :cond_2

    .line 131
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 133
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/DmAppInfo;->getAppInfoFromCursor(Landroid/database/Cursor;)V

    .line 135
    :cond_2
    const/4 v11, 0x1

    move v0, v11

    move/from16 v1, p2

    if-ne v0, v1, :cond_3

    .line 136
    const/4 v11, 0x0

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    .line 138
    :cond_3
    const/4 v11, 0x1

    move v0, v11

    move/from16 v1, p1

    if-ne v0, v1, :cond_c

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    move v11, v0

    add-int/lit8 v11, v11, 0x1

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    .line 143
    :cond_4
    :goto_2
    const/4 v11, 0x1

    move v0, v11

    move/from16 v1, p3

    if-ne v0, v1, :cond_d

    .line 144
    const/4 v11, 0x1

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I

    .line 148
    :cond_5
    :goto_3
    const/4 v11, 0x1

    move v0, v11

    move/from16 v1, p4

    if-ne v0, v1, :cond_f

    .line 149
    const/4 v11, 0x1

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I

    .line 153
    :cond_6
    :goto_4
    const/4 v11, 0x1

    move v0, v11

    move/from16 v1, p5

    if-ne v0, v1, :cond_10

    .line 154
    const/4 v11, 0x1

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I

    .line 159
    :cond_7
    :goto_5
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 160
    .local v10, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/DmAppInfo;->fillAppInfoToContentValues(Landroid/content/ContentValues;)V

    .line 162
    const-wide/16 v8, 0x0

    .line 163
    .local v8, value:J
    if-nez v5, :cond_12

    .line 164
    const-string v11, "DmAppInfo"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 165
    const-wide/16 v11, -0x1

    cmp-long v11, v11, v8

    if-eqz v11, :cond_11

    const/4 v11, 0x1

    move v6, v11

    .line 166
    :goto_6
    const-string v11, "DmAppInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAppManagerDB inserted row Id : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/DmAppInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v8           #value:J
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_8
    :goto_7
    if-eqz v2, :cond_9

    .line 179
    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_9
    if-eqz v3, :cond_a

    .line 182
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    move v7, v6

    .line 184
    .restart local v7       #success:I
    goto/16 :goto_0

    .line 128
    .end local v7           #success:I
    :cond_b
    const/4 v11, 0x0

    move v5, v11

    goto/16 :goto_1

    .line 140
    :cond_c
    if-nez p1, :cond_4

    .line 141
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I

    move v11, v0

    add-int/lit8 v11, v11, 0x1

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 175
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 176
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    if-eqz v2, :cond_9

    goto :goto_8

    .line 145
    .end local v4           #e:Ljava/lang/Exception;
    :cond_d
    if-nez p3, :cond_5

    .line 146
    const/4 v11, 0x0

    :try_start_3
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 178
    :catchall_0
    move-exception v11

    if-eqz v2, :cond_e

    .line 179
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_e
    throw v11

    .line 150
    :cond_f
    if-nez p4, :cond_6

    .line 151
    const/4 v11, 0x0

    :try_start_4
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I

    goto/16 :goto_4

    .line 155
    :cond_10
    if-nez p5, :cond_7

    .line 156
    const/4 v11, 0x0

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I

    goto/16 :goto_5

    .line 165
    .restart local v8       #value:J
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_11
    const/4 v11, 0x0

    move v6, v11

    goto :goto_6

    .line 168
    :cond_12
    const-string v11, "DmAppInfo"

    const-string v12, "_id=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/DmAppInfo;->mId:I

    move v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v3, v11, v10, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    int-to-long v8, v11

    .line 171
    const-wide/16 v11, 0x0

    cmp-long v11, v11, v8

    if-gez v11, :cond_13

    const/4 v11, 0x1

    move v6, v11

    .line 172
    :goto_9
    const-string v11, "DmAppInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAppManagerDB updated row count : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/DmAppInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_7

    .line 171
    :cond_13
    const/4 v11, 0x0

    move v6, v11

    goto :goto_9
.end method
