.class public Lcom/motorola/customization/OverlayHelper;
.super Ljava/lang/Object;
.source "OverlayHelper.java"


# static fields
.field protected static final BASE_PATH:Ljava/lang/String; = null

.field protected static final MKITSO_SUFFIX:Ljava/lang/String; = ".mkitso"

.field private static final OVERWRITE_ALL:Ljava/lang/String; = "__overwrite_all__"

.field protected static final OVL_PATH_FMT:Ljava/lang/String; = null

.field protected static final OVL_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final TAG:Ljava/lang/String; = "OverlayHelper"


# instance fields
.field private final mOverlayPath:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/motorola"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/customization/OverlayHelper;->BASE_PATH:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/motorola/customization/OverlayHelper;->BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%s/databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/customization/OverlayHelper;->OVL_PATH_FMT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/customization/OverlayHelper;->mPackageName:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/motorola/customization/OverlayHelper;->OVL_PATH_FMT:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/customization/OverlayHelper;->mPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/customization/OverlayHelper;->mOverlayPath:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/motorola/customization/OverlayHelper;->mPackageName:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/motorola/customization/OverlayHelper;->OVL_PATH_FMT:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/customization/OverlayHelper;->mPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/customization/OverlayHelper;->mOverlayPath:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private applyOverlay(Landroid/database/sqlite/SQLiteDatabase;Lcom/motorola/customization/XmlOverlay;)V
    .locals 9
    .parameter "db"
    .parameter "ovl"

    .prologue
    const-string v8, "OverlayHelper"

    .line 202
    const-string v6, "OverlayHelper"

    const-string v6, "applyOverlay called!"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz p2, :cond_2

    .line 204
    invoke-virtual {p2}, Lcom/motorola/customization/XmlOverlay;->read()Ljava/util/List;

    move-result-object v2

    .line 205
    .local v2, list:Ljava/util/List;
    if-eqz v2, :cond_2

    .line 206
    new-instance v5, Lcom/motorola/customization/DatabaseTable;

    invoke-virtual {p2}, Lcom/motorola/customization/XmlOverlay;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/motorola/customization/DatabaseTable;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 207
    .local v5, tr:Lcom/motorola/customization/DatabaseTable;
    invoke-virtual {v5}, Lcom/motorola/customization/DatabaseTable;->valid()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 209
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 210
    .local v4, obj:Ljava/lang/Object;
    instance-of v6, v4, Ljava/util/HashMap;

    if-eqz v6, :cond_0

    .line 211
    const-string v6, "OverlayHelper"

    const-string v6, " - Map -"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    move-object v0, v4

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    .line 213
    .local v3, map:Ljava/util/HashMap;
    invoke-virtual {v5, p1, v3}, Lcom/motorola/customization/DatabaseTable;->insertRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V

    goto :goto_0

    .line 216
    .end local v3           #map:Ljava/util/HashMap;
    :cond_0
    const-string v6, "OverlayHelper"

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #obj:Ljava/lang/Object;
    :cond_1
    const-string v6, "OverlayHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to flex invalid table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/motorola/customization/XmlOverlay;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v2           #list:Ljava/util/List;
    .end local v5           #tr:Lcom/motorola/customization/DatabaseTable;
    :cond_2
    const-string v6, "OverlayHelper"

    const-string v6, "applyOverlay returning"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method


# virtual methods
.method public apply(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 19
    .parameter "db"
    .parameter "tableName"

    .prologue
    .line 115
    const-string v13, "OverlayHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OverlayHelper applying overlays to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v8, Ljava/io/File;

    const-string v13, "%s/%s/%s%s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sget-object v16, Lcom/motorola/customization/OverlayHelper;->BASE_PATH:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/customization/OverlayHelper;->mPackageName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    aput-object p2, v14, v15

    const/4 v15, 0x3

    const-string v16, ".mkitso"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v8, mkitso:Ljava/io/File;
    const-string v13, "OverlayHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OverlayHelperoverlay from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 121
    const-string v13, "INSERT OR REPLACE INTO %s(name,value) VALUES(?,?);"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 124
    .local v11, stmt:Landroid/database/sqlite/SQLiteStatement;
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 125
    .local v10, p:Ljava/util/Properties;
    const/4 v4, 0x0

    .line 127
    .local v4, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 128
    .end local v4           #in:Ljava/io/InputStream;
    .local v5, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v10, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 132
    const-string v13, "__overwrite_all__"

    invoke-virtual {v10, v13}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 133
    .local v9, overwrite:Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v13, "true"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 134
    const-string v13, "DELETE FROM %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    :cond_0
    invoke-virtual {v10}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 137
    .local v7, m:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 138
    .local v6, key:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 139
    .local v12, value:Ljava/lang/String;
    const/4 v13, 0x1

    invoke-virtual {v11, v13, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 140
    const/4 v13, 0x2

    invoke-virtual {v11, v13, v12}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 141
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 142
    const-string v13, "OverlayHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OverlayHelper.apply set "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_0

    .line 144
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #m:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v9           #overwrite:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :catch_0
    move-exception v13

    move-object v2, v13

    move-object v4, v5

    .line 146
    .end local v5           #in:Ljava/io/InputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v4       #in:Ljava/io/InputStream;
    :goto_1
    :try_start_2
    const-string v13, "OverlayHelper"

    const-string v14, "File %s unexpectedly missing!"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    if-eqz v4, :cond_1

    .line 155
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 162
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 164
    .end local v4           #in:Ljava/io/InputStream;
    .end local v10           #p:Ljava/util/Properties;
    .end local v11           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_2
    return-void

    .line 153
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v9       #overwrite:Ljava/lang/String;
    .restart local v10       #p:Ljava/util/Properties;
    .restart local v11       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_3
    if-eqz v5, :cond_5

    .line 155
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v4, v5

    .line 159
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_2

    .line 156
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 158
    .local v2, e:Ljava/io/IOException;
    const-string v13, "OverlayHelper"

    const-string v14, "failed to close %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 159
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_2

    .line 156
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v9           #overwrite:Ljava/lang/String;
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 158
    .local v2, e:Ljava/io/IOException;
    const-string v13, "OverlayHelper"

    const-string v14, "failed to close %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 147
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v13

    move-object v2, v13

    .line 148
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v13, "OverlayHelper"

    const-string v14, "error parsing %s: %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    if-eqz v4, :cond_1

    .line 155
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 156
    :catch_4
    move-exception v2

    .line 158
    const-string v13, "OverlayHelper"

    const-string v14, "failed to close %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 149
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v13

    move-object v2, v13

    .line 150
    .local v2, e:Ljava/lang/Exception;
    :goto_4
    :try_start_7
    const-string v13, "OverlayHelper"

    const-string v14, "Unexpected exception for %s: %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 153
    if-eqz v4, :cond_1

    .line 155
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_2

    .line 156
    :catch_6
    move-exception v2

    .line 158
    .local v2, e:Ljava/io/IOException;
    const-string v13, "OverlayHelper"

    const-string v14, "failed to close %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 153
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_5
    if-eqz v4, :cond_4

    .line 155
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 159
    :cond_4
    :goto_6
    throw v13

    .line 156
    :catch_7
    move-exception v2

    .line 158
    .restart local v2       #e:Ljava/io/IOException;
    const-string v14, "OverlayHelper"

    const-string v15, "failed to close %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 153
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v13

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_5

    .line 149
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_8
    move-exception v13

    move-object v2, v13

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_4

    .line 147
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_9
    move-exception v13

    move-object v2, v13

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 144
    :catch_a
    move-exception v13

    move-object v2, v13

    goto/16 :goto_1

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v9       #overwrite:Ljava/lang/String;
    :cond_5
    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto/16 :goto_2
.end method

.method public applyXml(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter "db"

    .prologue
    const-string v11, "OverlayHelper"

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/customization/OverlayHelper;->getOverlayPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-static {p1, v6, v7}, Lcom/motorola/customization/XmlOverlay;->getOverlays(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)[Lcom/motorola/customization/XmlOverlay;

    move-result-object v5

    .line 178
    .local v5, ovls:[Lcom/motorola/customization/XmlOverlay;
    if-eqz v5, :cond_0

    .line 179
    const-string v6, "OverlayHelper"

    const-string v7, "Found %d overlay(s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    array-length v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    move-object v0, v5

    .local v0, arr$:[Lcom/motorola/customization/XmlOverlay;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 183
    .local v4, ovl:Lcom/motorola/customization/XmlOverlay;
    const-string v6, "OverlayHelper"

    const-string v7, " - overlay:  \'%s\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/motorola/customization/XmlOverlay;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0, p1, v4}, Lcom/motorola/customization/OverlayHelper;->applyOverlay(Landroid/database/sqlite/SQLiteDatabase;Lcom/motorola/customization/XmlOverlay;)V

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v0           #arr$:[Lcom/motorola/customization/XmlOverlay;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #ovl:Lcom/motorola/customization/XmlOverlay;
    :cond_0
    const-string v6, "OverlayHelper"

    const-string v7, "No overlays found at %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/motorola/customization/OverlayHelper;->getOverlayPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v5           #ovls:[Lcom/motorola/customization/XmlOverlay;
    :cond_1
    :goto_1
    return-void

    .line 189
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 190
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "OverlayHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Yikes! Runtime error in applyXml "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getOverlayPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/motorola/customization/OverlayHelper;->mOverlayPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/motorola/customization/OverlayHelper;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
