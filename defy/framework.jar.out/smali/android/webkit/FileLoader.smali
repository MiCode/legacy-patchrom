.class Landroid/webkit/FileLoader;
.super Landroid/webkit/StreamLoader;
.source "FileLoader.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field static final TYPE_ASSET:I = 0x1

.field static final TYPE_FILE:I = 0x3

.field static final TYPE_RES:I = 0x2


# instance fields
.field private mAllowFileAccess:Z

.field private mPath:Ljava/lang/String;

.field private mType:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V
    .locals 6
    .parameter "url"
    .parameter "loadListener"
    .parameter "type"
    .parameter "allowFileAccess"

    .prologue
    const-string v5, "file:///android_res/"

    const-string v4, "file:///android_asset/"

    const-string v3, "file://"

    invoke-direct {p0, p2}, Landroid/webkit/StreamLoader;-><init>(Landroid/webkit/LoadListener;)V

    iput p3, p0, Landroid/webkit/FileLoader;->mType:I

    iput-boolean p4, p0, Landroid/webkit/FileLoader;->mAllowFileAccess:Z

    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, index:I
    iget v1, p0, Landroid/webkit/FileLoader;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-lez v0, :cond_0

    const-string v1, "file:///android_asset/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    const-string v1, "file:///android_asset/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/webkit/FileLoader;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    if-lez v0, :cond_2

    const-string v1, "file:///android_res/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, "file:///android_res/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    if-lez v0, :cond_4

    const-string v1, "file://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v1, "file://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private errString(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 4
    .parameter "ex"

    .prologue
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .local v1, exMessage:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    const v3, 0x104011f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, errString:Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected buildHeaders(Landroid/net/http/Headers;)V
    .locals 0
    .parameter "headers"

    .prologue
    return-void
.end method

.method protected setupStreamAndSendStatus()Z
    .locals 19

    .prologue
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/FileLoader;->mType:I

    move v14, v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    :cond_0
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    move-object v14, v0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0xc8

    const-string v18, "OK"

    invoke-virtual/range {v14 .. v18}, Landroid/webkit/LoadListener;->status(IIILjava/lang/String;)V

    const/4 v14, 0x1

    :goto_1
    return v14

    :catch_0
    move-exception v14

    move-object v7, v14

    .local v7, ex:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Landroid/content/res/AssetManager;->openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    .end local v7           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v14

    move-object v7, v14

    .restart local v7       #ex:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    move-object v14, v0

    const/16 v15, -0xe

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/webkit/FileLoader;->errString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    const/4 v14, 0x0

    goto :goto_1

    .end local v7           #ex:Ljava/io/FileNotFoundException;
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/FileLoader;->mType:I

    move v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_3

    :cond_2
    const-string v14, "webkit"

    const-string v15, "Need a path to resolve the res file"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    move-object v14, v0

    const/16 v15, -0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x104011f

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v14, v0

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .local v11, slash:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v14, v0

    const/16 v15, 0x2e

    invoke-virtual {v14, v15, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .local v4, dot:I
    const/4 v14, -0x1

    if-eq v11, v14, :cond_4

    const/4 v14, -0x1

    if-ne v4, v14, :cond_5

    :cond_4
    const-string v14, "webkit"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Incorrect res path: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    move-object v14, v0

    const/16 v15, -0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x104011f

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .local v12, subClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v11, 0x1

    invoke-virtual {v14, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v9

    .local v9, fieldName:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, errorMsg:Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".R$"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .local v3, d:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .local v8, field:Ljava/lang/reflect/Field;
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    .local v10, id:I
    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    .local v13, value:Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v10, v13, v15}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v14, v13, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    iget v15, v13, Landroid/util/TypedValue;->assetCookie:I

    move-object v0, v13

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .end local v3           #d:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v10           #id:I
    .end local v13           #value:Landroid/util/TypedValue;
    :goto_2
    if-eqz v6, :cond_0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    move-object v14, v0

    const/16 v15, -0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x104011f

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    const/4 v14, 0x0

    goto/16 :goto_1

    .restart local v3       #d:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v8       #field:Ljava/lang/reflect/Field;
    .restart local v10       #id:I
    .restart local v13       #value:Landroid/util/TypedValue;
    :cond_6
    :try_start_6
    const-string v6, "Only support TYPE_STRING for the res files"
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_2

    .end local v3           #d:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v10           #id:I
    .end local v13           #value:Landroid/util/TypedValue;
    :catch_2
    move-exception v14

    move-object v5, v14

    .local v5, e:Ljava/lang/ClassNotFoundException;
    :try_start_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t find class:  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".R$"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .end local v5           #e:Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v14

    move-object v5, v14

    .local v5, e:Ljava/lang/SecurityException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Caught SecurityException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .end local v5           #e:Ljava/lang/SecurityException;
    :catch_4
    move-exception v14

    move-object v5, v14

    .local v5, e:Ljava/lang/NoSuchFieldException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t find field:  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".R$"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .end local v5           #e:Ljava/lang/NoSuchFieldException;
    :catch_5
    move-exception v14

    move-object v5, v14

    .local v5, e:Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Caught IllegalArgumentException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v14

    move-object v5, v14

    .local v5, e:Ljava/lang/IllegalAccessException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Caught IllegalAccessException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .end local v4           #dot:I
    .end local v5           #e:Ljava/lang/IllegalAccessException;
    .end local v6           #errorMsg:Ljava/lang/String;
    .end local v9           #fieldName:Ljava/lang/String;
    .end local v11           #slash:I
    .end local v12           #subClassName:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/FileLoader;->mAllowFileAccess:Z

    move v14, v0

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    move-object v14, v0

    const/16 v15, -0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x104011f

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_8
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v15, v0

    invoke-direct {v14, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v15, v0

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v14

    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/StreamLoader;->mContentLength:J
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v14

    move-object v7, v14

    .local v7, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    move-object v14, v0

    const/16 v15, -0xd

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/webkit/FileLoader;->errString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    const/4 v14, 0x0

    goto/16 :goto_1
.end method
