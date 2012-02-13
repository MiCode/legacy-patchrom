.class public Lcom/motorola/blur/quickupload/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/quickupload/Utils$UriData;
    }
.end annotation


# static fields
.field public static final DSM_SETTING_NAME:Ljava/lang/String; = "data_saver_mode"

.field public static final MOTOROLA_SETTINGS_COL_ID:Ljava/lang/String; = "_id"

.field public static final MOTOROLA_SETTINGS_COL_NAME:Ljava/lang/String; = "name"

.field public static final MOTOROLA_SETTINGS_COL_VALUE:Ljava/lang/String; = "value"

.field public static final MOTOROLA_SETTINGS_CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = null

.field public static final WHERE_DSM_SETTING:Ljava/lang/String; = "name == \'data_saver_mode\'"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/motorola/blur/quickupload/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/quickupload/Utils;->TAG:Ljava/lang/String;

    .line 37
    const-string v0, "content://com.motorola.android.providers.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/quickupload/Utils;->MOTOROLA_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getMediaData(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/blur/quickupload/Utils$UriData;
    .locals 13
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 54
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    :cond_0
    const/4 p0, 0x0

    .line 116
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 61
    .restart local p0
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #mimeType:Ljava/lang/String;
    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 66
    .local v0, isVideo:Z
    :goto_1
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_size"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "title"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "description"

    aput-object v3, v2, v1

    .line 74
    .local v2, projection:[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 75
    const/4 v0, 0x4

    const-string v1, "description"

    .end local v0           #isVideo:Z
    aput-object v1, v2, v0

    .line 78
    :cond_2
    const-wide/16 v6, 0x0

    .line 79
    .local v6, nSize:J
    const/4 v9, 0x0

    .line 80
    .local v9, strDisplayName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 81
    .local v11, strTitle:Ljava/lang/String;
    const/4 v10, 0x0

    .line 82
    .local v10, strFilePath:Ljava/lang/String;
    const/4 v8, 0x0

    .line 85
    .local v8, strDescription:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 87
    .local p0, c:Landroid/database/Cursor;
    if-eqz p0, :cond_6

    .line 89
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_5

    .line 91
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    .line 92
    .end local v6           #nSize:J
    .local v0, nSize:J
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .end local v9           #strDisplayName:Ljava/lang/String;
    .local v2, strDisplayName:Ljava/lang/String;
    const/4 p1, 0x2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    .end local v11           #strTitle:Ljava/lang/String;
    .local v4, strTitle:Ljava/lang/String;
    const/4 p1, 0x3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    .end local v10           #strFilePath:Ljava/lang/String;
    .local v3, strFilePath:Ljava/lang/String;
    const/4 p1, 0x4

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 97
    .end local v8           #strDescription:Ljava/lang/String;
    .local p1, strDescription:Ljava/lang/String;
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-object v12, p1

    .end local p1           #strDescription:Ljava/lang/String;
    .local v12, strDescription:Ljava/lang/String;
    move-object p1, v3

    .end local v3           #strFilePath:Ljava/lang/String;
    .local p1, strFilePath:Ljava/lang/String;
    move-object v3, v2

    .end local v2           #strDisplayName:Ljava/lang/String;
    .local v3, strDisplayName:Ljava/lang/String;
    move-object v2, v12

    .line 101
    .end local v12           #strDescription:Ljava/lang/String;
    .local v2, strDescription:Ljava/lang/String;
    :goto_3
    const-wide/16 v5, 0x0

    cmp-long p0, v0, v5

    if-gtz p0, :cond_3

    .end local p0           #c:Landroid/database/Cursor;
    if-eqz p1, :cond_3

    .line 103
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local p0, file:Ljava/io/File;
    if-eqz p0, :cond_3

    .line 105
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    .end local p0           #file:Ljava/io/File;
    long-to-int p0, p0

    int-to-long p0, p0

    .end local v0           #nSize:J
    .end local p1           #strFilePath:Ljava/lang/String;
    .local p0, nSize:J
    move-wide v0, p0

    .line 110
    .end local p0           #nSize:J
    .restart local v0       #nSize:J
    :cond_3
    new-instance p0, Lcom/motorola/blur/quickupload/Utils$UriData;

    invoke-direct {p0}, Lcom/motorola/blur/quickupload/Utils$UriData;-><init>()V

    .line 111
    .local p0, data:Lcom/motorola/blur/quickupload/Utils$UriData;
    iput-wide v0, p0, Lcom/motorola/blur/quickupload/Utils$UriData;->m_nSize:J

    .line 112
    iput-object v3, p0, Lcom/motorola/blur/quickupload/Utils$UriData;->m_strFileName:Ljava/lang/String;

    .line 113
    iput-object v4, p0, Lcom/motorola/blur/quickupload/Utils$UriData;->m_strTitle:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lcom/motorola/blur/quickupload/Utils$UriData;->m_strCaption:Ljava/lang/String;

    goto/16 :goto_0

    .line 64
    .end local v0           #nSize:J
    .end local v2           #strDescription:Ljava/lang/String;
    .end local v3           #strDisplayName:Ljava/lang/String;
    .end local v4           #strTitle:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, uri:Landroid/net/Uri;
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .end local p1           #uri:Landroid/net/Uri;
    .local v0, cr:Landroid/content/ContentResolver;
    .local v2, projection:[Ljava/lang/String;
    .restart local v6       #nSize:J
    .restart local v8       #strDescription:Ljava/lang/String;
    .restart local v9       #strDisplayName:Ljava/lang/String;
    .restart local v10       #strFilePath:Ljava/lang/String;
    .restart local v11       #strTitle:Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    :cond_5
    move-object p1, v8

    .end local v8           #strDescription:Ljava/lang/String;
    .local p1, strDescription:Ljava/lang/String;
    move-object v3, v10

    .end local v10           #strFilePath:Ljava/lang/String;
    .local v3, strFilePath:Ljava/lang/String;
    move-object v4, v11

    .end local v11           #strTitle:Ljava/lang/String;
    .restart local v4       #strTitle:Ljava/lang/String;
    move-object v2, v9

    .end local v9           #strDisplayName:Ljava/lang/String;
    .local v2, strDisplayName:Ljava/lang/String;
    move-wide v0, v6

    .end local v6           #nSize:J
    .local v0, nSize:J
    goto :goto_2

    .end local v3           #strFilePath:Ljava/lang/String;
    .end local v4           #strTitle:Ljava/lang/String;
    .local v0, cr:Landroid/content/ContentResolver;
    .local v2, projection:[Ljava/lang/String;
    .restart local v6       #nSize:J
    .restart local v8       #strDescription:Ljava/lang/String;
    .restart local v9       #strDisplayName:Ljava/lang/String;
    .restart local v10       #strFilePath:Ljava/lang/String;
    .restart local v11       #strTitle:Ljava/lang/String;
    .local p1, uri:Landroid/net/Uri;
    :cond_6
    move-object v2, v8

    .end local v8           #strDescription:Ljava/lang/String;
    .local v2, strDescription:Ljava/lang/String;
    move-object p1, v10

    .end local v10           #strFilePath:Ljava/lang/String;
    .local p1, strFilePath:Ljava/lang/String;
    move-object v4, v11

    .end local v11           #strTitle:Ljava/lang/String;
    .restart local v4       #strTitle:Ljava/lang/String;
    move-object v3, v9

    .end local v9           #strDisplayName:Ljava/lang/String;
    .local v3, strDisplayName:Ljava/lang/String;
    move-wide v0, v6

    .end local v6           #nSize:J
    .local v0, nSize:J
    goto :goto_3
.end method

.method public static getUriData(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/blur/quickupload/Utils$UriData;
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    .line 124
    const/4 v0, 0x0

    .line 127
    .local v0, data:Lcom/motorola/blur/quickupload/Utils$UriData;
    invoke-static {p0, p1}, Lcom/motorola/blur/quickupload/Utils;->getMediaData(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/blur/quickupload/Utils$UriData;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    move-object v4, v0

    .line 147
    :goto_0
    return-object v4

    .line 134
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {p1, v4, p0, v5}, Lcom/motorola/blur/util/messaging/SendMetadata;->createFromUriOrThrow(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;Z)Lcom/motorola/blur/util/messaging/SendMetadata;

    move-result-object v3

    .line 135
    .local v3, metaData:Lcom/motorola/blur/util/messaging/SendMetadata;
    if-eqz v3, :cond_1

    .line 137
    new-instance v1, Lcom/motorola/blur/quickupload/Utils$UriData;

    invoke-direct {v1}, Lcom/motorola/blur/quickupload/Utils$UriData;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0           #data:Lcom/motorola/blur/quickupload/Utils$UriData;
    .local v1, data:Lcom/motorola/blur/quickupload/Utils$UriData;
    :try_start_1
    invoke-virtual {v3}, Lcom/motorola/blur/util/messaging/SendMetadata;->getSize()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/motorola/blur/quickupload/Utils$UriData;->m_nSize:J

    .line 139
    invoke-virtual {v3}, Lcom/motorola/blur/util/messaging/SendMetadata;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/motorola/blur/quickupload/Utils$UriData;->m_strFileName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .end local v1           #data:Lcom/motorola/blur/quickupload/Utils$UriData;
    .restart local v0       #data:Lcom/motorola/blur/quickupload/Utils$UriData;
    move-object v4, v1

    .line 140
    goto :goto_0

    .line 142
    .end local v3           #metaData:Lcom/motorola/blur/util/messaging/SendMetadata;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 143
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    sget-object v4, Lcom/motorola/blur/quickupload/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] caught when accessing uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_1
    move-object v4, v7

    .line 147
    goto :goto_0

    .line 142
    .end local v0           #data:Lcom/motorola/blur/quickupload/Utils$UriData;
    .restart local v1       #data:Lcom/motorola/blur/quickupload/Utils$UriData;
    .restart local v3       #metaData:Lcom/motorola/blur/util/messaging/SendMetadata;
    :catch_1
    move-exception v4

    move-object v2, v4

    move-object v0, v1

    .end local v1           #data:Lcom/motorola/blur/quickupload/Utils$UriData;
    .restart local v0       #data:Lcom/motorola/blur/quickupload/Utils$UriData;
    goto :goto_1
.end method

.method public static isDataSaverOn(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 161
    const/4 v8, 0x0

    .line 162
    .local v8, isDSMEnabled:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 163
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/motorola/blur/quickupload/Utils;->MOTOROLA_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "name == \'data_saver_mode\'"

    const-string v5, "_id"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 165
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 168
    .local v7, column:I
    sget-object v1, Lcom/motorola/blur/quickupload/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v9, :cond_2

    move v8, v9

    .line 171
    :goto_0
    sget-object v1, Lcom/motorola/blur/quickupload/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DSMStatus from provider : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v7           #column:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_1
    return v8

    .line 170
    .restart local v7       #column:I
    :cond_2
    const/4 v1, 0x0

    move v8, v1

    goto :goto_0
.end method

.method public static isWifiOn(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 153
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 154
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_0

    move v2, v4

    .line 157
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 155
    goto :goto_0

    :cond_1
    move v2, v3

    .line 157
    goto :goto_0
.end method
