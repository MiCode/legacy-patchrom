.class Lcom/android/phone/MoodIconCache;
.super Lcom/android/phone/IconCache;
.source "MoodIconCache.java"


# static fields
.field private static final DBG:Z

.field private static final MOOD_ICON_PROJECTION:[Ljava/lang/String;

.field private static final MOOD_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/MoodIconCache;->DBG:Z

    .line 25
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "default_image"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/MoodIconCache;->MOOD_PROJECTION:[Ljava/lang/String;

    .line 27
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "image_bitmap"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/MoodIconCache;->MOOD_ICON_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/IconCache;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private getMoodIconId(J)J
    .locals 9
    .parameter "moodId"

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/phone/MoodIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/FriendFeed$StatusCannedText;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/MoodIconCache;->MOOD_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "text_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 67
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v7, 0x0

    .line 68
    .local v7, moodIconId:J
    if-eqz v6, :cond_1

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 72
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_1
    return-wide v7
.end method


# virtual methods
.method protected getOnCacheMiss(J)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "moodId"

    .prologue
    const/4 v3, 0x0

    const-string v11, "MoodIconCache"

    .line 35
    sget-boolean v0, Lcom/android/phone/MoodIconCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MoodIconCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MoodIconCache;->getMoodIconId(J)J

    move-result-wide v9

    .line 37
    .local v9, moodIconId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-gtz v0, :cond_1

    .line 38
    const-string v0, "MoodIconCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no mood icon for text_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 59
    :goto_0
    return-object v0

    .line 41
    :cond_1
    const/4 v8, 0x0

    .line 42
    .local v8, icon:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/phone/MoodIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/FriendFeed$StatusImages;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/MoodIconCache;->MOOD_ICON_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 47
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 48
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 50
    .local v7, data:[B
    if-eqz v7, :cond_2

    .line 51
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, v3, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 55
    .end local v7           #data:[B
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_3
    if-nez v8, :cond_4

    .line 58
    const-string v0, "MoodIconCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no mood icon for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, v8

    .line 59
    goto :goto_0
.end method
