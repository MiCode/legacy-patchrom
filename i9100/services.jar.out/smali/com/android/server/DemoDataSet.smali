.class public Lcom/android/server/DemoDataSet;
.super Ljava/lang/Object;
.source "DemoDataSet.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DemoDataSet"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addDefaultData()V
    .locals 5

    .prologue
    .line 84
    const-string v1, "DemoDataSet"

    const-string v2, "Adding default data..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "1"

    invoke-direct {p0, v1, v0}, Lcom/android/server/DemoDataSet;->addShortcut(Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;

    .line 93
    return-void
.end method

.method private final addDefaultImages()V
    .locals 10

    .prologue
    const-string v9, "DemoDataSet"

    .line 59
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    .line 60
    .local v6, rootDirectory:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v8, "images"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, files:[Ljava/lang/String;
    array-length v0, v2

    .line 64
    .local v0, count:I
    if-nez v0, :cond_1

    .line 65
    const-string v7, "DemoDataSet"

    const-string v7, "addDefaultImages: no images found!"

    invoke-static {v9, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    return-void

    .line 69
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 71
    aget-object v4, v2, v3

    .line 72
    .local v4, name:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, path:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/DemoDataSet;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    invoke-static {v7, v5, v4, v8}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 77
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v7, "DemoDataSet"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to import image "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private final addImage(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12
    .parameter "name"
    .parameter "file"

    .prologue
    .line 97
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v4, imagev:Landroid/content/ContentValues;
    const-string v9, "name"

    invoke-virtual {v4, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v8, 0x0

    .line 102
    .local v8, url:Landroid/net/Uri;
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 103
    .local v0, ass:Landroid/content/res/AssetManager;
    const/4 v5, 0x0

    .line 104
    .local v5, in:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 108
    .local v6, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 110
    iget-object v9, p0, Lcom/android/server/DemoDataSet;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 111
    iget-object v9, p0, Lcom/android/server/DemoDataSet;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 113
    const/16 v7, 0x2000

    .line 114
    .local v7, size:I
    const/16 v9, 0x2000

    new-array v1, v9, [B

    .line 116
    .local v1, buf:[B
    const/4 v2, 0x0

    .line 119
    .local v2, count:I
    :cond_0
    const/4 v9, 0x0

    const/16 v10, 0x2000

    invoke-virtual {v5, v1, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 120
    if-lez v2, :cond_1

    .line 121
    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_1
    if-gtz v2, :cond_0

    .line 131
    .end local v1           #buf:[B
    .end local v2           #count:I
    .end local v7           #size:I
    :goto_0
    return-object v8

    .line 125
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 127
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "DemoDataSet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to insert image \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private final addShortcut(Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 6
    .parameter "shortcut"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/server/DemoDataSet;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v4, v1

    :goto_0
    move-object v1, p2

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Bookmarks;->add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public final add(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DemoDataSet;->mContentResolver:Landroid/content/ContentResolver;

    .line 48
    iget-object v0, p0, Lcom/android/server/DemoDataSet;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Lcom/android/server/DemoDataSet;->addDefaultData()V

    .line 54
    invoke-direct {p0}, Lcom/android/server/DemoDataSet;->addDefaultImages()V

    .line 55
    return-void
.end method
