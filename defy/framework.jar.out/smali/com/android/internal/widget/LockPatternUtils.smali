.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# static fields
.field private static final ALLOWED_CHARS:Ljava/lang/String; = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%&*-=+/?"

#the value of this static final field might be set in the static constructor
.field private static final ALLOWED_CHARS_STRING_LENGTH:I = 0x0

.field private static final ALLOWED_DIGITS_STRING_LENGTH:I = 0xa

.field private static final EMPTY_PASSWORD_STRING:Ljava/lang/String; = "071510"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field private static final LOCK_HISTORY_PASSWORD_FILE:Ljava/lang/String; = "/system/historypassword.key"

.field public static final LOCK_PASSWORD:I = 0x2

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field public static final LOCK_PATTERN:I = 0x1

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_RECOVERY_PASSWORD_FILE:Ljava/lang/String; = "/system/recoverypassword.key"

.field private static final MAX_HISTORY_PASSWORD_LENGTH:I = 0x32

.field private static final MAX_RECOVERY_PASSWORD_NUMBER:I = 0x5

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x3

.field public static final NO_LOCK:I = 0x0

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field private static final RANDOM_PASSWORD_LENGTH:I = 0xa

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static final sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLockHistoryPasswordFilename:Ljava/lang/String;

.field private static sLockPasswordFilename:Ljava/lang/String;

.field private static sLockPatternFilename:Ljava/lang/String;

.field private static sLockRecoveryPasswordFilename:Ljava/lang/String;

.field private static sPasswordObserver:Landroid/os/FileObserver;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mIsSwipeGood:Z

.field private mUpdateFingerprintCredentialThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%&*-=+/?"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/internal/widget/LockPatternUtils;->ALLOWED_CHARS_STRING_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mUpdateFingerprintCredentialThread:Ljava/lang/Thread;

    iput-boolean v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mIsSwipeGood:Z

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, dataSystemDirectory:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gesture.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "password.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system/historypassword.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockHistoryPasswordFilename:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system/recoverypassword.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_1

    move v3, v6

    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_2

    move v3, v6

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v1, 0x388

    .local v1, fileObserverMask:I
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)V

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .end local v0           #dataSystemDirectory:Ljava/lang/String;
    .end local v1           #fileObserverMask:I
    :cond_0
    return-void

    .restart local v0       #dataSystemDirectory:Ljava/lang/String;
    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/LockPatternUtils;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .parameter "sb"
    .parameter "b"

    .prologue
    const-string v2, "0123456789ABCDEF"

    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v1, p1, 0xf

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .locals 5
    .parameter "password"

    .prologue
    const/4 v0, 0x0

    .local v0, hasDigit:Z
    const/4 v1, 0x0

    .local v1, hasNonDigit:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/high16 v4, 0x5

    :goto_2
    return v4

    :cond_2
    if-eqz v1, :cond_3

    const/high16 v4, 0x4

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    const/high16 v4, 0x2

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .locals 3
    .parameter "secureSettingKey"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "secureSettingKey"
    .parameter "def"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPasswordHashString()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const-string v12, "IO Exception 2"

    const-string v11, "LockPatternUtils"

    const/4 v6, 0x0

    .local v6, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    sget-object v9, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v10, "r"

    invoke-direct {v7, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .local v7, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    long-to-int v9, v9

    new-array v8, v9, [B

    .local v8, stored:[B
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v3

    .local v3, got:I
    if-gtz v3, :cond_1

    if-eqz v7, :cond_0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v6, v7

    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    move-object v9, v13

    .end local v3           #got:I
    .end local v8           #stored:[B
    :goto_1
    return-object v9

    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #got:I
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #stored:[B
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    const-string v9, "LockPatternUtils"

    const-string v9, "IO Exception 2"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v9, v8

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v0, convertedStringBuffer:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v9, v8

    if-ge v4, v9, :cond_2

    aget-byte v9, v8, v4

    invoke-static {v0, v9}, Lcom/android/internal/widget/LockPatternUtils;->appendHex(Ljava/lang/StringBuffer;B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v9

    if-eqz v7, :cond_3

    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_3
    move-object v6, v7

    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "LockPatternUtils"

    const-string v10, "IO Exception 2"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0           #convertedStringBuffer:Ljava/lang/StringBuffer;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #got:I
    .end local v4           #i:I
    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .end local v8           #stored:[B
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v9

    move-object v2, v9

    .local v2, fnfe:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string v9, "LockPatternUtils"

    const-string v10, "file not found"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_4

    :try_start_6
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_5
    move-object v9, v13

    goto :goto_1

    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "LockPatternUtils"

    const-string v9, "IO Exception 2"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fnfe:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v9

    move-object v5, v9

    .local v5, ioe:Ljava/io/IOException;
    :goto_6
    :try_start_7
    const-string v9, "LockPatternUtils"

    const-string v10, "IO Exception 1"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v6, :cond_5

    :try_start_8
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_7
    move-object v9, v13

    goto :goto_1

    :catch_5
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "LockPatternUtils"

    const-string v9, "IO Exception 2"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v6, :cond_6

    :try_start_9
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_6
    :goto_9
    throw v9

    :catch_6
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "LockPatternUtils"

    const-string v10, "IO Exception 2"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    goto :goto_8

    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v9

    move-object v5, v9

    move-object v6, v7

    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    goto :goto_6

    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v9

    move-object v2, v9

    move-object v6, v7

    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4
.end method

.method private getSalt()Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const-string v6, "lockscreen.password_salt"

    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .local v1, salt:J
    cmp-long v3, v1, v4

    if-nez v3, :cond_0

    :try_start_0
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    const-string v3, "LockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static patternToHash(Ljava/util/List;)[B
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, patternSize:I
    new-array v6, v5, [B

    .local v6, res:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v3

    .local v3, md:Landroid/security/MessageDigest;
    invoke-virtual {v3, v6}, Landroid/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, hash:[B
    move-object v7, v1

    goto :goto_0

    .end local v1           #hash:[B
    .end local v3           #md:Landroid/security/MessageDigest;
    :catch_0
    move-exception v7

    move-object v4, v7

    .local v4, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v7, v6

    goto :goto_0
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, patternSize:I
    new-array v3, v2, [B

    .local v3, res:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 2
    .parameter "secureSettingKey"
    .parameter "enabled"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    aget-byte v0, v1, v2

    .local v0, b:B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #b:B
    :cond_0
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .parameter "ary"

    .prologue
    const-string v5, "0123456789ABCDEF"

    const-string v0, "0123456789ABCDEF"

    .local v0, hex:Ljava/lang/String;
    const-string v2, ""

    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private updateHistoryPassword(Ljava/lang/String;)V
    .locals 14
    .parameter "password"

    .prologue
    const/4 v12, 0x1

    const-string v13, "LockPatternUtils"

    if-eqz p1, :cond_0

    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v3

    .local v3, hash:[B
    :try_start_0
    new-instance v9, Ljava/io/RandomAccessFile;

    sget-object v10, Lcom/android/internal/widget/LockPatternUtils;->sLockHistoryPasswordFilename:Ljava/lang/String;

    const-string v11, "rw"

    invoke-direct {v9, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v9, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .local v0, fileLen:J
    const/4 v8, 0x0

    .local v8, num:I
    const-wide/16 v10, 0x4

    cmp-long v10, v0, v10

    if-lez v10, :cond_4

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    new-array v4, v8, [[B

    .local v4, historyPasswords:[[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v8, :cond_2

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    .local v7, len:I
    new-array v10, v7, [B

    aput-object v10, v4, v5

    aget-object v10, v4, v5

    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->read([B)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v7           #len:I
    :cond_2
    const/16 v10, 0x32

    if-ge v8, v10, :cond_3

    add-int/lit8 v8, v8, 0x1

    :cond_3
    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v9, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v9, v3}, Ljava/io/RandomAccessFile;->write([B)V

    const/4 v5, 0x0

    :goto_2
    sub-int v10, v8, v12

    if-ge v5, v10, :cond_5

    aget-object v10, v4, v5

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->writeInt(I)V

    aget-object v10, v4, v5

    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->write([B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v4           #historyPasswords:[[B
    .end local v5           #i:I
    :cond_4
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->writeInt(I)V

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v9, v3}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_5
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v0           #fileLen:J
    .end local v8           #num:I
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v10

    move-object v2, v10

    .local v2, fnfe:Ljava/io/FileNotFoundException;
    const-string v10, "LockPatternUtils"

    const-string v10, "FileNotFoundException in updateHistoryPassword"

    invoke-static {v13, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v10

    move-object v6, v10

    .local v6, ioe:Ljava/io/IOException;
    const-string v10, "LockPatternUtils"

    const-string v10, "IOException in updateHistoryPassword"

    invoke-static {v13, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public checkHistoryPassword(Ljava/lang/String;)Z
    .locals 13
    .parameter "password"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v3

    .local v3, hash:[B
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v4

    .local v4, historyLength:I
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    sget-object v11, Lcom/android/internal/widget/LockPatternUtils;->sLockHistoryPasswordFilename:Ljava/lang/String;

    const-string v12, "r"

    invoke-direct {v10, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v10, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    .local v9, num:I
    if-le v9, v4, :cond_0

    move v0, v4

    .local v0, compareNum:I
    :goto_0
    new-array v5, v0, [[B

    .local v5, historyPasswords:[[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v0, :cond_2

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    .local v8, len:I
    new-array v11, v8, [B

    aput-object v11, v5, v6

    aget-object v11, v5, v6

    invoke-virtual {v10, v11}, Ljava/io/RandomAccessFile;->read([B)I

    aget-object v11, v5, v6

    invoke-static {v11, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    .end local v0           #compareNum:I
    .end local v5           #historyPasswords:[[B
    .end local v6           #i:I
    .end local v8           #len:I
    .end local v9           #num:I
    .end local v10           #raf:Ljava/io/RandomAccessFile;
    :goto_2
    return v11

    .restart local v9       #num:I
    .restart local v10       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    move v0, v9

    goto :goto_0

    .restart local v0       #compareNum:I
    .restart local v5       #historyPasswords:[[B
    .restart local v6       #i:I
    .restart local v8       #len:I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v8           #len:I
    :cond_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x0

    goto :goto_2

    .end local v0           #compareNum:I
    .end local v5           #historyPasswords:[[B
    .end local v6           #i:I
    .end local v9           #num:I
    .end local v10           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v11

    move-object v2, v11

    .local v2, fnfe:Ljava/io/FileNotFoundException;
    const-string v11, "LockPatternUtils"

    const-string v12, "IOException in checkHistoryPassword"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_2

    .end local v2           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v11

    move-object v7, v11

    .local v7, ioe:Ljava/io/IOException;
    const-string v11, "LockPatternUtils"

    const-string v12, "IOException in checkHistoryPassword"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_2
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .locals 8
    .parameter "password"

    .prologue
    const/4 v7, 0x1

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v4, v5, [B

    .local v4, stored:[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    if-gtz v1, :cond_0

    move v5, v7

    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_0
    return v5

    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v5, v7

    goto :goto_0

    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .local v2, ioe:Ljava/io/IOException;
    move v5, v7

    goto :goto_0
.end method

.method public checkPattern(Ljava/util/List;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v7, 0x1

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v4, v5, [B

    .local v4, stored:[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    if-gtz v1, :cond_0

    move v5, v7

    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_0
    return v5

    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v5, v7

    goto :goto_0

    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .local v2, ioe:Ljava/io/IOException;
    move v5, v7

    goto :goto_0
.end method

.method public checkRecoveryPassword(Ljava/lang/String;)Z
    .locals 13
    .parameter "password"

    .prologue
    const/4 v8, 0x0

    .local v8, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v9, Ljava/io/RandomAccessFile;

    sget-object v11, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    const-string v12, "rw"

    invoke-direct {v9, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v8           #raf:Ljava/io/RandomAccessFile;
    .local v9, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .local v0, fileLen:J
    const-wide/16 v11, 0x4

    cmp-long v11, v0, v11

    if-gtz v11, :cond_0

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    const/4 v11, 0x0

    move-object v8, v9

    .end local v0           #fileLen:J
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #raf:Ljava/io/RandomAccessFile;
    :goto_0
    return v11

    .end local v8           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #fileLen:J
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    .local v7, num:I
    if-ltz v7, :cond_1

    const/4 v11, 0x5

    if-le v7, v11, :cond_2

    :cond_1
    const-string v11, "LockPatternUtils"

    const-string v12, "File has been corrupted"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v11, v12}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    const/4 v11, 0x0

    move-object v8, v9

    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .end local v8           #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v3

    .local v3, hash:[B
    const/4 v6, 0x0

    .local v6, len:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v7, :cond_4

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    new-array v10, v6, [B

    .local v10, recoveryPassword:[B
    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v10, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    const/4 v11, 0x1

    move-object v8, v9

    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .end local v8           #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v10           #recoveryPassword:[B
    :cond_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v11, 0x0

    move-object v8, v9

    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .end local v0           #fileLen:J
    .end local v3           #hash:[B
    .end local v4           #i:I
    .end local v6           #len:I
    .end local v7           #num:I
    :catch_0
    move-exception v11

    move-object v2, v11

    .local v2, fnfe:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v11, "LockPatternUtils"

    const-string v12, "FileNotFoundException in checkRecoveryPassword"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_0

    .end local v2           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v11

    move-object v5, v11

    .local v5, ioe:Ljava/io/IOException;
    :goto_3
    const-string v11, "LockPatternUtils"

    const-string v12, "FileNotFoundException in checkRecoveryPassword"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    const/4 v11, 0x0

    goto :goto_0

    :catch_2
    move-exception v11

    goto :goto_4

    .end local v5           #ioe:Ljava/io/IOException;
    .end local v8           #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v11

    move-object v5, v11

    move-object v8, v9

    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3

    .end local v8           #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v11

    move-object v2, v11

    move-object v8, v9

    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #raf:Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public clearLock()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(III)V

    const/high16 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setFingerprintEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_type"

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public clearLockoutAttemptDeadline()V
    .locals 3

    .prologue
    const-string v0, "lockscreen.lockoutattemptdeadline"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method public createRecoveryPassword(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 23
    .parameter "className"
    .parameter "create"

    .prologue
    if-nez p1, :cond_0

    const/16 v21, 0x0

    :goto_0
    return-object v21

    :cond_0
    const/16 v16, 0x0

    .local v16, password:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, hash:[B
    if-eqz p2, :cond_1

    const/16 v21, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->generateRandomPassword(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v10

    :cond_1
    const/16 v17, 0x0

    .local v17, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v18, Ljava/io/RandomAccessFile;

    sget-object v21, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    const-string v22, "rw"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .local v18, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    .local v5, fileLen:J
    const/4 v15, 0x0

    .local v15, num:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .local v3, classNameBytes:[B
    const-wide/16 v21, 0x4

    cmp-long v21, v5, v21

    if-lez v21, :cond_c

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v15

    if-ltz v15, :cond_2

    const/16 v21, 0x5

    move v0, v15

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    :cond_2
    const-string v21, "LockPatternUtils"

    const-string v22, "File has been corrupted"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v21, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    move-object v0, v3

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    move-object v0, v10

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v21

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_3
    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V

    move-object/from16 v21, v16

    goto/16 :goto_0

    :cond_4
    const-wide/16 v8, 0x4

    .local v8, foundPos:J
    const/4 v13, 0x0

    .local v13, len:I
    move v14, v15

    .local v14, newNum:I
    const/4 v11, 0x0

    .local v11, i:I
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v15, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v13

    new-array v4, v13, [B

    .local v4, clsName:[B
    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v13

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_7

    .end local v4           #clsName:[B
    :cond_5
    if-ne v11, v15, :cond_8

    if-eqz p2, :cond_6

    const/16 v21, 0x5

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    move-object v0, v3

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    move-object v0, v10

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v21

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    add-int/lit8 v14, v15, 0x1

    :cond_6
    :goto_3
    const-wide/16 v21, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v3           #classNameBytes:[B
    .end local v5           #fileLen:J
    .end local v8           #foundPos:J
    .end local v11           #i:I
    .end local v13           #len:I
    .end local v14           #newNum:I
    .end local v15           #num:I
    :catch_0
    move-exception v21

    move-object/from16 v7, v21

    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .local v7, fnfe:Ljava/io/FileNotFoundException;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    :goto_4
    const-string v21, "LockPatternUtils"

    const-string v22, "FileNotFoundException in createRecoveryPassword"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    goto/16 :goto_0

    .end local v7           #fnfe:Ljava/io/FileNotFoundException;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #classNameBytes:[B
    .restart local v4       #clsName:[B
    .restart local v5       #fileLen:J
    .restart local v8       #foundPos:J
    .restart local v11       #i:I
    .restart local v13       #len:I
    .restart local v14       #newNum:I
    .restart local v15       #num:I
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :cond_7
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v4           #clsName:[B
    :cond_8
    const/16 v19, 0x0

    .local v19, remainderBytes:[B
    const/16 v21, 0x1

    sub-int v21, v15, v21

    move v0, v11

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v21

    sub-long v21, v5, v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v20, v0

    .local v20, remainderLength:I
    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/RandomAccessFile;->read([B)I

    .end local v20           #remainderLength:I
    :cond_9
    move-object/from16 v0, v18

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    if-eqz p2, :cond_b

    move-object v0, v3

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    move-object v0, v10

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    :goto_5
    const/16 v21, 0x1

    sub-int v21, v15, v21

    move v0, v11

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual/range {v18 .. v19}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v21

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .end local v3           #classNameBytes:[B
    .end local v5           #fileLen:J
    .end local v8           #foundPos:J
    .end local v11           #i:I
    .end local v13           #len:I
    .end local v14           #newNum:I
    .end local v15           #num:I
    .end local v19           #remainderBytes:[B
    :catch_1
    move-exception v21

    move-object/from16 v12, v21

    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .local v12, ioe:Ljava/io/IOException;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    :goto_6
    const-string v21, "LockPatternUtils"

    const-string v22, "IOException in createRecoveryPassword"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_7
    const/16 v21, 0x0

    goto/16 :goto_0

    .end local v12           #ioe:Ljava/io/IOException;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #classNameBytes:[B
    .restart local v5       #fileLen:J
    .restart local v8       #foundPos:J
    .restart local v11       #i:I
    .restart local v13       #len:I
    .restart local v14       #newNum:I
    .restart local v15       #num:I
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    .restart local v19       #remainderBytes:[B
    :cond_b
    const/16 v21, 0x1

    sub-int v14, v15, v21

    goto :goto_5

    .end local v8           #foundPos:J
    .end local v11           #i:I
    .end local v13           #len:I
    .end local v14           #newNum:I
    .end local v19           #remainderBytes:[B
    :cond_c
    if-eqz p2, :cond_3

    const/16 v21, 0x1

    :try_start_4
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    move-object v0, v3

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    move-object v0, v10

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .end local v3           #classNameBytes:[B
    .end local v5           #fileLen:J
    .end local v15           #num:I
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v12       #ioe:Ljava/io/IOException;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v21

    goto :goto_7

    .end local v12           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v21

    move-object/from16 v12, v21

    goto :goto_6

    :catch_4
    move-exception v21

    move-object/from16 v7, v21

    goto/16 :goto_4
.end method

.method public fingerprintDeleteCredentialsUsingPassword()I
    .locals 13

    .prologue
    const/4 v3, -0x1

    .local v3, iResult:I
    const/4 v6, 0x0

    .local v6, passwordString:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHashString()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v8, "com.authentec.amjni.AuthentecMobile"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .local v4, mAuthentecMobile:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .local v0, contextConstructor:Ljava/lang/reflect/Constructor;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .local v5, myObject:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "AMApplication_Database_FactoryReset"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, factoryResetMethod:Ljava/lang/reflect/Method;
    if-eqz v6, :cond_0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v2, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .local v7, resultObject:Ljava/lang/Object;
    :goto_0
    check-cast v7, Ljava/lang/Integer;

    .end local v7           #resultObject:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .end local v0           #contextConstructor:Ljava/lang/reflect/Constructor;
    .end local v2           #factoryResetMethod:Ljava/lang/reflect/Method;
    .end local v4           #mAuthentecMobile:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #myObject:Ljava/lang/Object;
    :goto_1
    return v3

    .restart local v0       #contextConstructor:Ljava/lang/reflect/Constructor;
    .restart local v2       #factoryResetMethod:Ljava/lang/reflect/Method;
    .restart local v4       #mAuthentecMobile:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v5       #myObject:Ljava/lang/Object;
    :cond_0
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "EMPTY_PASSWORD_STRING"

    aput-object v10, v8, v9

    invoke-virtual {v2, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .restart local v7       #resultObject:Ljava/lang/Object;
    goto :goto_0

    .end local v0           #contextConstructor:Ljava/lang/reflect/Constructor;
    .end local v2           #factoryResetMethod:Ljava/lang/reflect/Method;
    .end local v4           #mAuthentecMobile:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #myObject:Ljava/lang/Object;
    .end local v7           #resultObject:Ljava/lang/Object;
    :catch_0
    move-exception v8

    move-object v1, v8

    .local v1, ex:Ljava/lang/Exception;
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public fingerprintEnrollWithPassword()I
    .locals 17

    .prologue
    const/4 v5, -0x1

    .local v5, iResult:I
    const/4 v8, 0x0

    .local v8, passwordString:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHashString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    .local v10, stPassObj:Ljava/lang/Object;
    :try_start_0
    const-string v12, "com.authentec.amjni.TSM"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .local v11, tsmClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v12, "LAP"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/content/Context;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .local v6, lapMethod:Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object v15, v0

    aput-object v15, v13, v14

    invoke-virtual {v6, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .local v7, lapObject:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "storingPasscode"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .local v9, stPassMethod:Ljava/lang/reflect/Method;
    if-nez v8, :cond_0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "071510"

    aput-object v14, v12, v13

    invoke-virtual {v9, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_0
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "enroll"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, enrollMethod:Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v1, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, enrollObject:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "exec"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .local v4, execMethod:Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1           #enrollMethod:Ljava/lang/reflect/Method;
    .end local v2           #enrollObject:Ljava/lang/Object;
    .end local v4           #execMethod:Ljava/lang/reflect/Method;
    .end local v6           #lapMethod:Ljava/lang/reflect/Method;
    .end local v7           #lapObject:Ljava/lang/Object;
    .end local v9           #stPassMethod:Ljava/lang/reflect/Method;
    .end local v10           #stPassObj:Ljava/lang/Object;
    .end local v11           #tsmClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    return v5

    .restart local v6       #lapMethod:Ljava/lang/reflect/Method;
    .restart local v7       #lapObject:Ljava/lang/Object;
    .restart local v9       #stPassMethod:Ljava/lang/reflect/Method;
    .restart local v10       #stPassObj:Ljava/lang/Object;
    .restart local v11       #tsmClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-virtual {v9, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_0

    .end local v6           #lapMethod:Ljava/lang/reflect/Method;
    .end local v7           #lapObject:Ljava/lang/Object;
    .end local v9           #stPassMethod:Ljava/lang/reflect/Method;
    .end local v10           #stPassObj:Ljava/lang/Object;
    .end local v11           #tsmClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v12

    move-object v3, v12

    .local v3, ex:Ljava/lang/Exception;
    const-string v12, "LockPatternUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public generateRandomPassword(I)Ljava/lang/String;
    .locals 6
    .parameter "length"

    .prologue
    const-string v5, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%&*-=+/?"

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, buf:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .local v3, random:Ljava/util/Random;
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v2

    .local v2, passwordQuality:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_1

    const/high16 v4, 0x2

    if-ne v2, v4, :cond_0

    const-string v4, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%&*-=+/?"

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%&*-=+/?"

    sget v4, Lcom/android/internal/widget/LockPatternUtils;->ALLOWED_CHARS_STRING_LENGTH:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getActivePasswordQuality()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, activePasswordQuality:I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x4

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x5

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_4
    .end sparse-switch
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 3

    .prologue
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLockoutAttemptDeadline()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-string v4, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .local v0, deadline:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .local v2, now:J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x7530

    add-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    :cond_0
    move-wide v4, v6

    :goto_0
    return-wide v4

    :cond_1
    move-wide v4, v0

    goto :goto_0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, nextAlarm:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getNumberOfSymbols(Ljava/lang/String;)I
    .locals 4
    .parameter "code"

    .prologue
    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v0, 0x0

    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSpecialSymbols()Ljava/lang/String;

    move-result-object v2

    .local v2, symbols:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v0

    goto :goto_0
.end method

.method public getRequestedMinimumPasswordComplexity()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getSpecialSymbols()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "! @ # $ % & * - = + / ?"

    return-object v0
.end method

.method public getSwipeGoodStatus()Z
    .locals 3

    .prologue
    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSwipeGoodStatus() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mIsSwipeGood:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mIsSwipeGood:Z

    return v0
.end method

.method public getUTCNextAlarm(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v2

    .local v2, nextAlarm:Ljava/lang/String;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "next_alarm_utc"

    invoke-static {v3, v4, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .local v0, alarm_utc:J
    cmp-long v3, v0, v5

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    const v3, 0x8003

    invoke-static {p1, v0, v1, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_0
.end method

.method public isFingerprintEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.motorola.hardware.fingerprint"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v5

    .local v1, fingerprintHWSupported:I
    :goto_0
    if-ne v1, v5, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "lock_fingerprint"

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, fingerprint:I
    if-ne v0, v5, :cond_1

    move v2, v5

    .end local v0           #fingerprint:I
    :goto_1
    return v2

    .end local v1           #fingerprintHWSupported:I
    :cond_0
    move v1, v4

    goto :goto_0

    .restart local v0       #fingerprint:I
    .restart local v1       #fingerprintHWSupported:I
    :cond_1
    move v2, v4

    goto :goto_1

    .end local v0           #fingerprint:I
    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method public isLockPasswordEnabled()Z
    .locals 5

    .prologue
    const-string v2, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .local v0, mode:J
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x40000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x20000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x50000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x30000

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLockPatternEnabled()Z
    .locals 4

    .prologue
    const-wide/32 v2, 0x10000

    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lockscreen.password_type"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPatternEverChosen()Z
    .locals 1

    .prologue
    const-string v0, "lockscreen.patterneverchosen"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked()Z
    .locals 1

    .prologue
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    int-to-long v2, v5

    .local v2, mode:J
    const-wide/32 v5, 0x10000

    cmp-long v5, v2, v5

    if-nez v5, :cond_4

    move v1, v8

    .local v1, isPattern:Z
    :goto_0
    const-wide/32 v5, 0x20000

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    const-wide/32 v5, 0x30000

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    const-wide/32 v5, 0x40000

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    const-wide/32 v5, 0x50000

    cmp-long v5, v2, v5

    if-nez v5, :cond_5

    :cond_0
    move v0, v8

    .local v0, isPassword:Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_3
    move v4, v8

    .local v4, secure:Z
    :goto_2
    return v4

    .end local v0           #isPassword:Z
    .end local v1           #isPattern:Z
    .end local v4           #secure:Z
    :cond_4
    move v1, v7

    goto :goto_0

    .restart local v1       #isPattern:Z
    :cond_5
    move v0, v7

    goto :goto_1

    .restart local v0       #isPassword:Z
    :cond_6
    move v4, v7

    goto :goto_2
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVisiblePatternEnabled()Z
    .locals 1

    .prologue
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .locals 9
    .parameter "password"

    .prologue
    if-nez p1, :cond_0

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_0
    const/4 v0, 0x0

    .local v0, algo:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, hashed:[B
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .local v4, saltedPassword:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .local v5, sha1:[B
    const-string v0, "MD5"

    invoke-static {v0}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .local v3, md5:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v3           #md5:[B
    .end local v4           #saltedPassword:[B
    .end local v5           #sha1:[B
    :goto_1
    move-object v6, v2

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v1, v6

    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public reportFailedPasswordAttempt()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt()V

    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt()V

    return-void
.end method

.method public resumeCall()Z
    .locals 2

    .prologue
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .locals 14
    .parameter "password"
    .parameter "quality"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHashString()Ljava/lang/String;

    move-result-object v9

    .local v9, oldPasswordString:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v4

    .local v4, hash:[B
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    sget-object v11, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v12, "rw"

    invoke-direct {v10, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v10, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_1

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_0
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    iget-object v11, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.motorola.hardware.fingerprint"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    move v2, v11

    .local v2, fingerprintHWSupported:I
    :goto_1
    const/4 v11, 0x1

    if-ne v2, v11, :cond_4

    iget-object v11, p0, Lcom/android/internal/widget/LockPatternUtils;->mUpdateFingerprintCredentialThread:Ljava/lang/Thread;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/internal/widget/LockPatternUtils;->mUpdateFingerprintCredentialThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v11, p0, Lcom/android/internal/widget/LockPatternUtils;->mUpdateFingerprintCredentialThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v11, 0x0

    :try_start_2
    iput-object v11, p0, Lcom/android/internal/widget/LockPatternUtils;->mUpdateFingerprintCredentialThread:Ljava/lang/Thread;

    :cond_0
    if-eqz p1, :cond_6

    new-instance v8, Ljava/lang/StringBuffer;

    array-length v11, v4

    mul-int/lit8 v11, v11, 0x2

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v8, newPasswordStringBuffer:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    array-length v11, v4

    if-ge v5, v11, :cond_3

    aget-byte v11, v4, v5

    invoke-static {v8, v11}, Lcom/android/internal/widget/LockPatternUtils;->appendHex(Ljava/lang/StringBuffer;B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v2           #fingerprintHWSupported:I
    .end local v5           #i:I
    .end local v8           #newPasswordStringBuffer:Ljava/lang/StringBuffer;
    :cond_1
    const/4 v11, 0x0

    array-length v12, v4

    invoke-virtual {v10, v4, v11, v12}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v10           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v11

    move-object v3, v11

    .local v3, fnfe:Ljava/io/FileNotFoundException;
    const-string v11, "LockPatternUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to save lock pattern to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #fnfe:Ljava/io/FileNotFoundException;
    :goto_4
    return-void

    .restart local v10       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    const/4 v11, 0x0

    move v2, v11

    goto :goto_1

    .restart local v2       #fingerprintHWSupported:I
    .restart local v5       #i:I
    .restart local v8       #newPasswordStringBuffer:Ljava/lang/StringBuffer;
    :cond_3
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, newPasswordString:Ljava/lang/String;
    if-eqz v9, :cond_5

    new-instance v11, Lcom/android/internal/widget/LockPatternUtils$2;

    invoke-direct {v11, p0, v9, v7}, Lcom/android/internal/widget/LockPatternUtils$2;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/internal/widget/LockPatternUtils;->mUpdateFingerprintCredentialThread:Ljava/lang/Thread;

    iget-object v11, p0, Lcom/android/internal/widget/LockPatternUtils;->mUpdateFingerprintCredentialThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .end local v5           #i:I
    .end local v7           #newPasswordString:Ljava/lang/String;
    .end local v8           #newPasswordStringBuffer:Ljava/lang/StringBuffer;
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_8

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->updateHistoryPassword(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged()V

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v0

    .local v0, computedQuality:I
    const-string v11, "lockscreen.password_type"

    int-to-long v12, v0

    invoke-direct {p0, v11, v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getNumberOfSymbols(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v1, v0, v11, v12}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(III)V

    .end local v0           #computedQuality:I
    :goto_6
    iget-object v11, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v12, "lock_type"

    const/4 v13, 0x2

    invoke-static {v11, v12, v13}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v2           #fingerprintHWSupported:I
    .end local v10           #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v11

    move-object v6, v11

    .local v6, ioe:Ljava/io/IOException;
    const-string v11, "LockPatternUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to save lock pattern to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v2       #fingerprintHWSupported:I
    .restart local v5       #i:I
    .restart local v7       #newPasswordString:Ljava/lang/String;
    .restart local v8       #newPasswordStringBuffer:Ljava/lang/StringBuffer;
    .restart local v10       #raf:Ljava/io/RandomAccessFile;
    :cond_5
    :try_start_4
    new-instance v11, Lcom/android/internal/widget/LockPatternUtils$3;

    invoke-direct {v11, p0, v7}, Lcom/android/internal/widget/LockPatternUtils$3;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/internal/widget/LockPatternUtils;->mUpdateFingerprintCredentialThread:Ljava/lang/Thread;

    iget-object v11, p0, Lcom/android/internal/widget/LockPatternUtils;->mUpdateFingerprintCredentialThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_5

    .end local v5           #i:I
    .end local v7           #newPasswordString:Ljava/lang/String;
    .end local v8           #newPasswordStringBuffer:Ljava/lang/StringBuffer;
    :cond_6
    if-eqz v9, :cond_4

    new-instance v11, Lcom/android/internal/widget/LockPatternUtils$4;

    invoke-direct {v11, p0, v9}, Lcom/android/internal/widget/LockPatternUtils$4;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/internal/widget/LockPatternUtils;->mUpdateFingerprintCredentialThread:Ljava/lang/Thread;

    iget-object v11, p0, Lcom/android/internal/widget/LockPatternUtils;->mUpdateFingerprintCredentialThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_5

    .restart local v0       #computedQuality:I
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_7
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(III)V

    goto :goto_6

    .end local v0           #computedQuality:I
    :cond_8
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(III)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catch_2
    move-exception v11

    goto/16 :goto_2
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v9, "Unable to save lock pattern to "

    const-string v8, "LockPatternUtils"

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    .local v2, hash:[B
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string v6, "rw"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_0

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_0
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_1

    const-string v5, "lockscreen.patterneverchosen"

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    const-string v5, "lockscreen.password_type"

    const-wide/32 v6, 0x10000

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    const/high16 v5, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(III)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/LockPatternUtils;->setFingerprintEnabled(Z)V

    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "lock_type"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    :goto_2
    return-void

    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const-string v5, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to save lock pattern to "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(III)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v5

    move-object v3, v5

    .local v3, ioe:Ljava/io/IOException;
    const-string v5, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to save lock pattern to "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public savedPasswordExists()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public savedPatternExists()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setFingerprintEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.motorola.hardware.fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v4

    .local v0, fingerprintHWSupported:I
    :goto_0
    if-ne v0, v4, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "lock_fingerprint"

    if-eqz p1, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "lock_timer"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    :cond_1
    return-void

    .end local v0           #fingerprintHWSupported:I
    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public setLockPatternEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLockoutAttemptDeadline()J
    .locals 6

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .local v0, deadline:J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    return-wide v0
.end method

.method public setPermanentlyLocked(Z)V
    .locals 1
    .parameter "locked"

    .prologue
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSwipeGoodStatus(Z)V
    .locals 3
    .parameter "swipeStatus"

    .prologue
    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwipeGoodStatus() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mIsSwipeGood:Z

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 6
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .local v1, newState:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const v3, 0x10402a3

    .local v3, textId:I
    const v2, 0x1080084

    .local v2, phoneCallIcon:I
    invoke-virtual {p1, v2, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .end local v2           #phoneCallIcon:I
    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    return-void

    .end local v3           #textId:I
    :cond_0
    const v3, 0x10402a2

    .restart local v3       #textId:I
    const v0, 0x10801c1

    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 5
    .parameter "textView"
    .parameter "imageView"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .local v1, newState:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    const v3, 0x10402a3

    .local v3, textId:I
    const v2, 0x1080084

    .local v2, phoneCallIcon:I
    if-eqz p2, :cond_0

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .end local v2           #phoneCallIcon:I
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void

    .end local v3           #textId:I
    :cond_2
    const v3, 0x10402a2

    .restart local v3       #textId:I
    const v0, 0x10801c1

    .local v0, emergencyIcon:I
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
