.class public Lcom/motorola/internal/widget/LockPinUtils;
.super Lcom/android/internal/widget/LockPatternUtils;
.source "LockPinUtils.java"


# static fields
.field public static final ACTIVESYNC_ALPHA_NUM_LOCK_TYPE:I = 0x1

.field public static final ACTIVESYNC_NUMERIC_LOCK_TYPE:I = 0x0

.field public static final ACTIVESYNC_POLICY_NOT_ENABLED_VALUE:I = -0x1

.field private static final DEBUG:Z = true

.field public static final FALLBACK_LOCK_TIMER_MAX_VALUE:I = 0x124f80

.field public static FALLBACK_LOCK_TIMER_VALUE:I = 0x0

.field private static final LOCKPINUTILS_PERMISSION:Ljava/lang/String; = "android.permission.WRITE_SECURE_SETTINGS"

.field public static final LOCK_PATTERN:I = 0x1

.field public static final LOCK_PIN:I = 0x2

.field private static final LOCK_PIN_FILE:Ljava/lang/String; = "/system/lockpin.key"

.field public static final LOCK_PIN_SETUP_PREVERIFIED:I = 0x2

.field public static final LOCK_PIN_SETUP_REQUIRED:I = 0x1

.field public static final LOCK_TIMER_WHEN_DISPLAY_OFF_VALUE:I = -0x1

.field public static final MAX_COMPLEX_CHAR_ALLOWED:I = 0x4

.field public static final MAX_LOCK_PIN_SIZE:I = 0x10

.field public static final MIN_COMPLEX_CHAR_REQ:I = 0x0

.field public static final MIN_LOCK_PIN_SIZE:I = 0x4

.field public static final MIN_PIN_REGISTER_FAIL:I = 0x1

.field public static final NO_LOCK:I = 0x0

.field public static final PASSCODE_ALPHANUMERIC_REQUIRED:I = 0x2

.field public static final PASSCODE_ALPHA_NUM_REQUIRED:I = 0x0

.field public static final PASSCODE_INVALID_CHAR_FOUND:I = 0x8

.field public static final PASSCODE_MIN_COMPLEX_CHARS_REQUIRED:I = 0x7

.field public static final PASSCODE_OK:I = 0x0

.field public static final PASSCODE_SIMPLE_REQUIRED:I = 0x3

.field public static final PASSCODE_THREE_DIFFERENT_DIGIT_REQUIRED:I = 0x6

.field public static final PASSCODE_THREE_NEAREST_DIGITS_IN_A_ROW:I = 0x4

.field public static final PASSCODE_THREE_SAME_DIGITS_IN_A_ROW:I = 0x5

.field public static final PASSCODE_TOO_SHORT:I = 0x1

.field public static final SCREEN_OFF_NEVER_TIMEOUT_VALUE:I = -0x1

.field public static final SCREEN_OFF_TIMEOUT_VALUE:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "LockPinUtils"

.field private static sLockPinFilename:Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mLockoutDeadline:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const v0, 0x124f80

    sput v0, Lcom/motorola/internal/widget/LockPinUtils;->FALLBACK_LOCK_TIMER_VALUE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mLockoutDeadline:J

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/motorola/internal/widget/LockPinUtils;->sLockPinFilename:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/lockpin.key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/internal/widget/LockPinUtils;->sLockPinFilename:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getNumberOfSpecialChars(Ljava/lang/String;)I
    .locals 4
    .parameter "code"

    .prologue
    const-string v2, " ! @ # $ % & * - = + / ?"

    .local v2, validSymbols:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_1

    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static pinToHash(Ljava/lang/String;)[B
    .locals 5
    .parameter "pin"

    .prologue
    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .local v3, res:[B
    :try_start_0
    const-string v4, "SHA-1"

    invoke-static {v4}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v1

    .local v1, md:Landroid/security/MessageDigest;
    invoke-virtual {v1, v3}, Landroid/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, hash:[B
    move-object v4, v0

    goto :goto_0

    .end local v0           #hash:[B
    .end local v1           #md:Landroid/security/MessageDigest;
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v4, v3

    goto :goto_0
.end method

.method private verifyInvalidSymbol(Ljava/lang/String;)I
    .locals 6
    .parameter "code"

    .prologue
    const-string v2, "[^A-Za-z0-9\\!\\@\\#\\$%\\&\\*\\-\\=\\+\\/\\?]+"

    .local v2, validchars:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "LockPinUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid char found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkPin(Ljava/lang/String;)Z
    .locals 13
    .parameter "pin"

    .prologue
    const/4 v12, 0x1

    const-string v11, "Close failure"

    const-string v10, "LockPinUtils"

    const/4 v5, 0x0

    .local v5, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    sget-object v8, Lcom/motorola/internal/widget/LockPinUtils;->sLockPinFilename:Ljava/lang/String;

    const-string v9, "r"

    invoke-direct {v6, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .local v6, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    .local v3, len:I
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    const/4 v9, 0x4

    sub-int v4, v8, v9

    .local v4, malloc:I
    new-array v7, v4, [B

    .local v7, stored:[B
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .local v1, got:I
    if-gtz v1, :cond_1

    const-string v8, "LockPinUtils"

    const-string v9, "The pinlock file is zero lengthed so granting access..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v5, v6

    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    move v8, v12

    .end local v1           #got:I
    .end local v3           #len:I
    .end local v4           #malloc:I
    .end local v7           #stored:[B
    :goto_1
    return v8

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v1       #got:I
    .restart local v3       #len:I
    .restart local v4       #malloc:I
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #stored:[B
    :catch_0
    move-exception v2

    .local v2, ioe:Ljava/io/IOException;
    const-string v8, "LockPinUtils"

    const-string v8, "Close failure"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #ioe:Ljava/io/IOException;
    :cond_1
    :try_start_3
    invoke-static {p1}, Lcom/motorola/internal/widget/LockPinUtils;->pinToHash(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    move-result v8

    if-eqz v6, :cond_2

    :try_start_4
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    move-object v5, v6

    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    .restart local v2       #ioe:Ljava/io/IOException;
    const-string v9, "LockPinUtils"

    const-string v9, "Close failure"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1           #got:I
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v3           #len:I
    .end local v4           #malloc:I
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .end local v7           #stored:[B
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v8

    move-object v0, v8

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v8, "LockPinUtils"

    const-string v9, "file not found"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_4
    move v8, v12

    goto :goto_1

    :catch_3
    move-exception v2

    .restart local v2       #ioe:Ljava/io/IOException;
    const-string v8, "LockPinUtils"

    const-string v8, "Close failure"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_4
    move-exception v8

    move-object v2, v8

    .restart local v2       #ioe:Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v8, "LockPinUtils"

    const-string v9, "IO Exception"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_4

    :try_start_8
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_6
    move v8, v12

    goto :goto_1

    :catch_5
    move-exception v2

    const-string v8, "LockPinUtils"

    const-string v8, "Close failure"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_7
    if-eqz v5, :cond_5

    :try_start_9
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_8
    throw v8

    :catch_6
    move-exception v2

    .restart local v2       #ioe:Ljava/io/IOException;
    const-string v9, "LockPinUtils"

    const-string v9, "Close failure"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v2           #ioe:Ljava/io/IOException;
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    goto :goto_7

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v8

    move-object v2, v8

    move-object v5, v6

    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v8

    move-object v0, v8

    move-object v5, v6

    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method public clearPin()V
    .locals 0

    .prologue
    return-void
.end method

.method public getDevicePinMinComplexChars()I
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "activesync_policy_min_complex_chars"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, complexChars:I
    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getItEnforcedMinPinLen()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "activesync_policy_lock_pin_min_chars"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinPinLen()I
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/motorola/internal/widget/LockPinUtils;->getItEnforcedMinPinLen()I

    move-result v0

    .local v0, activesyncLockPinMinChars:I
    iget-object v2, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "lock_pin_min_chars"

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, defaultLockPinMinChars:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    if-le v1, v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method public getSavedPinLength()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-string v9, "Close failure"

    const-string v8, "LockPinUtils"

    const/4 v3, 0x0

    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/motorola/internal/widget/LockPinUtils;->sLockPinFilename:Ljava/lang/String;

    const-string v6, "r"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    .local v2, len:I
    const-string v5, "LockPinUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "savedPinLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    move v5, v2

    .end local v2           #len:I
    :goto_1
    return v5

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #len:I
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .local v1, ioe:Ljava/io/IOException;
    const-string v5, "LockPinUtils"

    const-string v5, "Close failure"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #ioe:Ljava/io/IOException;
    .end local v2           #len:I
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v5, "LockPinUtils"

    const-string v6, "file not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    move v5, v10

    goto :goto_1

    :catch_2
    move-exception v1

    .restart local v1       #ioe:Ljava/io/IOException;
    const-string v5, "LockPinUtils"

    const-string v5, "Close failure"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .restart local v1       #ioe:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v5, "LockPinUtils"

    const-string v6, "IO Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_2
    :goto_5
    move v5, v10

    goto :goto_1

    :catch_4
    move-exception v1

    const-string v5, "LockPinUtils"

    const-string v5, "Close failure"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_6
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_7
    throw v5

    :catch_5
    move-exception v1

    .restart local v1       #ioe:Ljava/io/IOException;
    const-string v6, "LockPinUtils"

    const-string v6, "Close failure"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v1           #ioe:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_6

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public isActiveSyncPolicyEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "activesync_policy_enabled"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isAlphaNumericLockEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "activesync_policy_lock_type"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isDevicePinAlphanumericRequired()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "activesync_policy_alphanumeric_required"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isNoLockEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_type"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isPatternEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_pattern_autolock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_type"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isPinEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_pattern_autolock"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "lock_type"

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public isScreenLockEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_lock"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public saveLockPin(Ljava/lang/String;)V
    .locals 10
    .parameter "pin"

    .prologue
    const-string v5, "Unable to save pin lock to "

    const-string v9, "Close failure"

    const-string v8, "LockPinUtils"

    invoke-static {p1}, Lcom/motorola/internal/widget/LockPinUtils;->pinToHash(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, hash:[B
    const/4 v3, 0x0

    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/motorola/internal/widget/LockPinUtils;->sLockPinFilename:Ljava/lang/String;

    const-string v6, "rw"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_2

    const-wide/16 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :goto_0
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return-void

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v5, 0x0

    array-length v6, v1

    invoke-virtual {v4, v1, v5, v6}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_4
    const-string v5, "LockPinUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save pin lock to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/motorola/internal/widget/LockPinUtils;->sLockPinFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": file not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .local v2, ioe:Ljava/io/IOException;
    const-string v5, "LockPinUtils"

    const-string v5, "Close failure"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .restart local v2       #ioe:Ljava/io/IOException;
    const-string v5, "LockPinUtils"

    const-string v5, "Close failure"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v2           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v5

    move-object v2, v5

    .restart local v2       #ioe:Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v5, "LockPinUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save pin lock to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/motorola/internal/widget/LockPinUtils;->sLockPinFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": I/O error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_1

    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    :catch_4
    move-exception v2

    const-string v5, "LockPinUtils"

    const-string v5, "Close failure"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_3
    :goto_5
    throw v5

    :catch_5
    move-exception v2

    .restart local v2       #ioe:Ljava/io/IOException;
    const-string v6, "LockPinUtils"

    const-string v6, "Close failure"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v2           #ioe:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v5

    move-object v2, v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3

    :catch_7
    move-exception v5

    move-object v0, v5

    goto/16 :goto_2
.end method

.method public savedPinExists()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-string v8, "LockPinUtils"

    const-string v7, "Close failure"

    const/4 v3, 0x0

    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/motorola/internal/widget/LockPinUtils;->sLockPinFilename:Ljava/lang/String;

    const-string v6, "r"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v2

    .local v2, len:I
    const/4 v5, 0x1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .end local v2           #len:I
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :goto_1
    return v5

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #len:I
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .local v1, ioe:Ljava/io/IOException;
    const-string v6, "LockPinUtils"

    const-string v6, "Close failure"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #ioe:Ljava/io/IOException;
    .end local v2           #len:I
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    :goto_2
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_3
    move v5, v9

    goto :goto_1

    :catch_2
    move-exception v1

    .restart local v1       #ioe:Ljava/io/IOException;
    const-string v5, "LockPinUtils"

    const-string v5, "Close failure"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .restart local v1       #ioe:Ljava/io/IOException;
    :goto_4
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_5
    move v5, v9

    goto :goto_1

    :catch_4
    move-exception v1

    const-string v5, "LockPinUtils"

    const-string v5, "Close failure"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_6
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_3
    :goto_7
    throw v5

    :catch_5
    move-exception v1

    .restart local v1       #ioe:Ljava/io/IOException;
    const-string v6, "LockPinUtils"

    const-string v6, "Close failure"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v1           #ioe:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_6

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public savedPinIsLongEnough(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.WRITE_SECURE_SETTINGS!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/internal/widget/LockPinUtils;->getSavedPinLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/internal/widget/LockPinUtils;->getItEnforcedMinPinLen()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public savedPinIsStrongEnough(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need android.permission.WRITE_SECURE_SETTINGS!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    .local v0, return_result:Z
    invoke-virtual {p0}, Lcom/motorola/internal/widget/LockPinUtils;->isDevicePinAlphanumericRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/internal/widget/LockPinUtils;->isAlphaNumericLockEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/internal/widget/LockPinUtils;->isDevicePinAlphanumericRequired()Z

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/motorola/internal/widget/LockPinUtils;->getSavedPinLength()I

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/internal/widget/LockPinUtils;->getItEnforcedMinPinLen()I

    move-result v2

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendAcknowledgementToActiveSync(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.email.provider.activesync.ActiveSyncEmailService.PIN_VERIFIED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public setAlphaNuricLockEnabled(I)V
    .locals 2
    .parameter "lock_type"

    .prologue
    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "activesync_policy_lock_type"

    invoke-static {v0, v1, p1}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setNoLockEnabled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/internal/widget/LockPinUtils;->saveLockPin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_pattern_autolock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_type"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setPatternEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_pattern_autolock"

    if-eqz p1, :cond_0

    move v2, v4

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_type"

    if-eqz p1, :cond_1

    move v2, v4

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public setPinEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_pattern_autolock"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_type"

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public setScreenLockEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_lock"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public verifyPassCodeSatisfyPolicy(Ljava/lang/String;)I
    .locals 5
    .parameter "code"

    .prologue
    const-string v4, "LockPinUtils"

    invoke-virtual {p0}, Lcom/motorola/internal/widget/LockPinUtils;->getMinPinLen()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/motorola/internal/widget/LockPinUtils;->getMinPinLen()I

    move-result v3

    if-lt v2, v3, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "LockPinUtils"

    const-string v2, "Passcode too short "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/internal/widget/LockPinUtils;->isDevicePinAlphanumericRequired()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ".*[a-zA-Z]+.*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ".*[0-9]+.*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "LockPinUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Passcode is not alpha num "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/internal/widget/LockPinUtils;->getDevicePinMinComplexChars()I

    move-result v1

    .local v1, minComplexChars:I
    if-lez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/motorola/internal/widget/LockPinUtils;->getNumberOfSpecialChars(Ljava/lang/String;)I

    move-result v0

    .local v0, count:I
    if-ge v0, v1, :cond_4

    const-string v2, "LockPinUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Passcode does not have min num of symbol symbol found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "LockPinUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Min Complex char require "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x7

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #minComplexChars:I
    :cond_4
    invoke-direct {p0, p1}, Lcom/motorola/internal/widget/LockPinUtils;->verifyInvalidSymbol(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method
