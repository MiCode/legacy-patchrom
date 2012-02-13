.class public Lcom/motorola/flex/OverlayHelper;
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

    sput-object v0, Lcom/motorola/flex/OverlayHelper;->BASE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/motorola/flex/OverlayHelper;->BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%s/databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/flex/OverlayHelper;->OVL_PATH_FMT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/flex/OverlayHelper;->mPackageName:Ljava/lang/String;

    sget-object v0, Lcom/motorola/flex/OverlayHelper;->OVL_PATH_FMT:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/flex/OverlayHelper;->mPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/flex/OverlayHelper;->mOverlayPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/flex/OverlayHelper;->mPackageName:Ljava/lang/String;

    sget-object v0, Lcom/motorola/flex/OverlayHelper;->OVL_PATH_FMT:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/flex/OverlayHelper;->mPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/flex/OverlayHelper;->mOverlayPath:Ljava/lang/String;

    return-void
.end method

.method private applyOverlay(Landroid/database/sqlite/SQLiteDatabase;Lcom/motorola/flex/XmlOverlay;)V
    .locals 12
    .parameter "db"
    .parameter "ovl"

    .prologue
    const/4 v11, 0x0

    const-string v10, "OverlayHelper"

    const-string v7, "OverlayHelper"

    const-string v7, "applyOverlay called!"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/motorola/flex/XmlOverlay;->read()Ljava/util/List;

    move-result-object v2

    .local v2, list:Ljava/util/List;
    if-eqz v2, :cond_4

    new-instance v6, Lcom/motorola/flex/DatabaseTable;

    invoke-virtual {p2}, Lcom/motorola/flex/XmlOverlay;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/motorola/flex/DatabaseTable;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .local v6, tr:Lcom/motorola/flex/DatabaseTable;
    invoke-virtual {v6}, Lcom/motorola/flex/DatabaseTable;->valid()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, obj:Ljava/lang/Object;
    instance-of v7, v4, Ljava/util/HashMap;

    if-eqz v7, :cond_1

    const-string v7, "OverlayHelper"

    const-string v7, " - Map -"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    .local v3, map:Ljava/util/HashMap;
    invoke-virtual {v6, p1, v3}, Lcom/motorola/flex/DatabaseTable;->insertRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V

    goto :goto_0

    .end local v3           #map:Ljava/util/HashMap;
    :cond_1
    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_2

    const-string v7, "OverlayHelper"

    const-string v7, " - String in Map - "

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .local v5, string:Ljava/lang/String;
    const-string v7, "__overwrite_all__"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "DELETE FROM %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/motorola/flex/XmlOverlay;->getTableName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .end local v5           #string:Ljava/lang/String;
    :cond_2
    const-string v7, "OverlayHelper"

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #obj:Ljava/lang/Object;
    :cond_3
    const-string v7, "OverlayHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempt to flex invalid table "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/motorola/flex/XmlOverlay;->getTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #list:Ljava/util/List;
    .end local v6           #tr:Lcom/motorola/flex/DatabaseTable;
    :cond_4
    const-string v7, "OverlayHelper"

    const-string v7, "applyOverlay returning"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static readMapXml(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .parameter "ctx"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/flex/OverlayHelper;->readMapXml(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static readMapXml(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .parameter "packageName"

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "OverlayHelper"

    const/4 v1, 0x0

    .local v1, map:Ljava/util/Map;
    new-instance v2, Ljava/io/File;

    const-string v5, "%s/%s/defaults.xml"

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/motorola/flex/OverlayHelper;->BASE_PATH:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object p0, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, path:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "OverlayHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Applying overlays from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, stream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .end local v3           #stream:Ljava/io/FileInputStream;
    .local v4, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .end local v4           #stream:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v1

    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v5, "OverlayHelper"

    const-string v6, "File %s unexpectedly missing!"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    move-object v0, v5

    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_5
    const-string v5, "OverlayHelper"

    const-string v6, "Invalid format for file %s error is %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_0

    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v5, "OverlayHelper"

    const-string v6, "IOException reading file %s error is %"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_0

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    :catch_5
    move-exception v5

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_1

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :cond_1
    :goto_5
    throw v5

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v5

    goto :goto_0

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    goto :goto_5

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method


# virtual methods
.method public apply(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 19
    .parameter "db"
    .parameter "tableName"

    .prologue
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

    new-instance v8, Ljava/io/File;

    const-string v13, "%s/%s/%s%s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sget-object v16, Lcom/motorola/flex/OverlayHelper;->BASE_PATH:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/flex/OverlayHelper;->mPackageName:Ljava/lang/String;

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

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

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

    .local v11, stmt:Landroid/database/sqlite/SQLiteStatement;
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .local v10, p:Ljava/util/Properties;
    const/4 v4, 0x0

    .local v4, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .end local v4           #in:Ljava/io/InputStream;
    .local v5, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v10, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v13, "__overwrite_all__"

    invoke-virtual {v10, v13}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, overwrite:Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v13, "true"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

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

    .local v7, m:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, key:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, value:Ljava/lang/String;
    const/4 v13, 0x1

    invoke-virtual {v11, v13, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v13, 0x2

    invoke-virtual {v11, v13, v12}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->execute()V

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

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #m:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v9           #overwrite:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :catch_0
    move-exception v13

    move-object v2, v13

    move-object v4, v5

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

    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v4           #in:Ljava/io/InputStream;
    .end local v10           #p:Ljava/util/Properties;
    .end local v11           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_2
    return-void

    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v9       #overwrite:Ljava/lang/String;
    .restart local v10       #p:Ljava/util/Properties;
    .restart local v11       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_3
    if-eqz v5, :cond_5

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_2

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_1
    move-exception v2

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

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_2

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v9           #overwrite:Ljava/lang/String;
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

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

    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v13

    move-object v2, v13

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

    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v2

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

    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v13

    move-object v2, v13

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

    if-eqz v4, :cond_1

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v2

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

    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_5
    if-eqz v4, :cond_4

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_4
    :goto_6
    throw v13

    :catch_7
    move-exception v2

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

    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v13

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_5

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_8
    move-exception v13

    move-object v2, v13

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_9
    move-exception v13

    move-object v2, v13

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto/16 :goto_3

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

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/flex/OverlayHelper;->getOverlayPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-static {p1, v6, v7}, Lcom/motorola/flex/XmlOverlay;->getOverlays(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)[Lcom/motorola/flex/XmlOverlay;

    move-result-object v5

    .local v5, ovls:[Lcom/motorola/flex/XmlOverlay;
    if-eqz v5, :cond_0

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

    move-object v0, v5

    .local v0, arr$:[Lcom/motorola/flex/XmlOverlay;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .local v4, ovl:Lcom/motorola/flex/XmlOverlay;
    const-string v6, "OverlayHelper"

    const-string v7, " - overlay:  \'%s\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/motorola/flex/XmlOverlay;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v4}, Lcom/motorola/flex/OverlayHelper;->applyOverlay(Landroid/database/sqlite/SQLiteDatabase;Lcom/motorola/flex/XmlOverlay;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #arr$:[Lcom/motorola/flex/XmlOverlay;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #ovl:Lcom/motorola/flex/XmlOverlay;
    :cond_0
    const-string v6, "OverlayHelper"

    const-string v7, "No overlays found at %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/motorola/flex/OverlayHelper;->getOverlayPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #ovls:[Lcom/motorola/flex/XmlOverlay;
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v6

    move-object v1, v6

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
    iget-object v0, p0, Lcom/motorola/flex/OverlayHelper;->mOverlayPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/flex/OverlayHelper;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public readMapXml()Ljava/util/Map;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/flex/OverlayHelper;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/flex/OverlayHelper;->readMapXml(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
