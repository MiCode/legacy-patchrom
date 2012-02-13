.class Lcom/android/phone/SNIconCache;
.super Lcom/android/phone/IconCache;
.source "SNIconCache.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final STATUS_IMAGE_PATH:Ljava/lang/String; = "image/_list.png"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/SNIconCache;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/phone/IconCache;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getOnCacheMiss(J)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "accountId"

    .prologue
    const-string v8, "SNIconCache"

    .line 32
    sget-boolean v5, Lcom/android/phone/SNIconCache;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "SNIconCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 35
    .local v1, icon:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/SNIconCache;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/motorola/blur/util/cache/BlurProviderCache;->singleton(Landroid/content/Context;)Lcom/motorola/blur/util/cache/BlurProviderCache;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/motorola/blur/util/cache/BlurProviderCache;->getProviderId(J)J

    move-result-wide v2

    .line 36
    .local v2, providerId:J
    sget-object v5, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 37
    .local v4, uri:Landroid/net/Uri;
    const-string v5, "image/_list.png"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 38
    iget-object v5, p0, Lcom/android/phone/SNIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    const-string v5, "SNIconCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sn icon missing for providerId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v2           #providerId:J
    .end local v4           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 43
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "SNIconCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not locate provider Image for account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
