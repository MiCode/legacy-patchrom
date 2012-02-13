.class public Lcom/motorola/internal/locale/LocaleMask;
.super Ljava/lang/Object;
.source "LocaleMask.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DMP_DBG:Z = false

.field private static final IGNORE_LOCALE_INFO_FILE:Ljava/lang/String; = "/data/ignorelocale.conf"

.field private static final LANG_CT_SEP:C = '_'

.field private static final SUPPORTED_LOCALE_INFO_FILE:Ljava/lang/String; = "/system/etc/supportedlocales.conf"

.field private static final TAG:Ljava/lang/String; = "LocaleMask"

.field private static localeConfFileIgnore:Z

.field private static localeConfNotFound:Z


# instance fields
.field private al:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private numSupportedLocales:I

.field private supportedLocales:[Ljava/lang/String;

.field private systemAssetLocales:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/motorola/internal/locale/LocaleMask;->DBG:Z

    const-string v0, "debug.locale"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/motorola/internal/locale/LocaleMask;->DMP_DBG:Z

    sput-boolean v1, Lcom/motorola/internal/locale/LocaleMask;->localeConfNotFound:Z

    sput-boolean v1, Lcom/motorola/internal/locale/LocaleMask;->localeConfFileIgnore:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "assetManagerLocales"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/internal/locale/LocaleMask;->al:Ljava/util/ArrayList;

    sget-boolean v0, Lcom/motorola/internal/locale/LocaleMask;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/internal/locale/LocaleMask;->ignoreLocaleInfoFile()Z

    move-result v0

    sput-boolean v0, Lcom/motorola/internal/locale/LocaleMask;->localeConfFileIgnore:Z

    :cond_0
    iput-object p1, p0, Lcom/motorola/internal/locale/LocaleMask;->systemAssetLocales:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/motorola/internal/locale/LocaleMask;->readFileAndInitialize()V

    invoke-direct {p0}, Lcom/motorola/internal/locale/LocaleMask;->createSupportedLocaleList()V

    return-void
.end method

.method private createSupportedLocaleList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-boolean v0, Lcom/motorola/internal/locale/LocaleMask;->localeConfNotFound:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/motorola/internal/locale/LocaleMask;->localeConfFileIgnore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/internal/locale/LocaleMask;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/internal/locale/LocaleMask;->systemAssetLocales:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/motorola/internal/locale/LocaleMask;->numSupportedLocales:I

    iget v0, p0, Lcom/motorola/internal/locale/LocaleMask;->numSupportedLocales:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/internal/locale/LocaleMask;->supportedLocales:[Ljava/lang/String;

    iget-object v0, p0, Lcom/motorola/internal/locale/LocaleMask;->systemAssetLocales:[Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/internal/locale/LocaleMask;->supportedLocales:[Ljava/lang/String;

    iget v2, p0, Lcom/motorola/internal/locale/LocaleMask;->numSupportedLocales:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/internal/locale/LocaleMask;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/motorola/internal/locale/LocaleMask;->numSupportedLocales:I

    iget v0, p0, Lcom/motorola/internal/locale/LocaleMask;->numSupportedLocales:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/internal/locale/LocaleMask;->supportedLocales:[Ljava/lang/String;

    iget-object v0, p0, Lcom/motorola/internal/locale/LocaleMask;->al:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/internal/locale/LocaleMask;->supportedLocales:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method private static dump(Ljava/lang/String;)V
    .locals 7
    .parameter "locale"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    const/4 v1, 0x0

    .local v1, l:Ljava/util/Locale;
    if-ne v3, v5, :cond_1

    new-instance v1, Ljava/util/Locale;

    .end local v1           #l:Ljava/util/Locale;
    invoke-direct {v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .restart local v1       #l:Ljava/util/Locale;
    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v3, v6, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, language:Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, country:Ljava/lang/String;
    new-instance v1, Ljava/util/Locale;

    .end local v1           #l:Ljava/util/Locale;
    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #l:Ljava/util/Locale;
    goto :goto_0
.end method

.method private static ignoreLocaleInfoFile()Z
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/ignorelocale.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readFileAndInitialize()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/system/etc/supportedlocales.conf"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, file:Ljava/io/File;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .local v4, line:Ljava/lang/String;
    const-wide/16 v5, 0x0

    .local v5, totalLinesProcessed:J
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0, v4}, Lcom/motorola/internal/locale/LocaleMask;->validateAndPopulateLocale(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v2, v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #totalLinesProcessed:J
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v2, e:Ljava/io/IOException;
    :goto_1
    const/4 v7, 0x1

    :try_start_2
    sput-boolean v7, Lcom/motorola/internal/locale/LocaleMask;->localeConfNotFound:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #totalLinesProcessed:J
    :cond_2
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_1
    move-exception v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v3           #file:Ljava/io/File;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #totalLinesProcessed:J
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    throw v7

    .restart local v2       #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_2

    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #totalLinesProcessed:J
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v3           #file:Ljava/io/File;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #totalLinesProcessed:J
    :catch_4
    move-exception v7

    move-object v2, v7

    goto :goto_1
.end method

.method private validateAndPopulateLocale(Ljava/lang/String;)V
    .locals 7
    .parameter "locale"

    .prologue
    const/4 v6, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    if-eq v3, v6, :cond_0

    const/4 v5, 0x5

    if-ne v3, v5, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/motorola/internal/locale/LocaleMask;->systemAssetLocales:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .local v0, a:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/motorola/internal/locale/LocaleMask;->al:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0           #a:Ljava/lang/String;
    :cond_1
    sget-boolean v5, Lcom/motorola/internal/locale/LocaleMask;->DMP_DBG:Z

    if-eqz v5, :cond_2

    invoke-static {p1}, Lcom/motorola/internal/locale/LocaleMask;->dump(Ljava/lang/String;)V

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_2
    return-void

    .restart local v0       #a:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getSupportedLocales()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/internal/locale/LocaleMask;->supportedLocales:[Ljava/lang/String;

    return-object v0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 2
    .parameter "locale"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/motorola/internal/locale/LocaleMask;->numSupportedLocales:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/motorola/internal/locale/LocaleMask;->supportedLocales:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
