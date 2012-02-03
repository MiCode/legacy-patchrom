.class Landroid/net/http/CertificateValidatorCache$CacheEntry;
.super Ljava/lang/Object;
.source "CertificateValidatorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/CertificateValidatorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheEntry"
.end annotation


# instance fields
.field private mDomain:Ljava/lang/String;

.field private mHash:[B

.field public mSave:J

.field private mTime:J

.field final synthetic this$0:Landroid/net/http/CertificateValidatorCache;


# direct methods
.method public constructor <init>(Landroid/net/http/CertificateValidatorCache;Ljava/lang/String;[BJ)V
    .locals 2
    .parameter
    .parameter "domain"
    .parameter "secureHash"
    .parameter "save"

    .prologue
    .line 210
    iput-object p1, p0, Landroid/net/http/CertificateValidatorCache$CacheEntry;->this$0:Landroid/net/http/CertificateValidatorCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, Landroid/net/http/CertificateValidatorCache$CacheEntry;->mDomain:Ljava/lang/String;

    .line 212
    iput-object p3, p0, Landroid/net/http/CertificateValidatorCache$CacheEntry;->mHash:[B

    .line 214
    iput-wide p4, p0, Landroid/net/http/CertificateValidatorCache$CacheEntry;->mSave:J

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/http/CertificateValidatorCache$CacheEntry;->mTime:J

    .line 217
    return-void
.end method


# virtual methods
.method public expired()Z
    .locals 6

    .prologue
    .line 223
    const-wide/32 v0, 0x927c0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/http/CertificateValidatorCache$CacheEntry;->mTime:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public has(Ljava/lang/String;[B)Z
    .locals 5
    .parameter "domain"
    .parameter "secureHash"

    .prologue
    const/4 v4, 0x0

    .line 233
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 234
    iget-object v2, p0, Landroid/net/http/CertificateValidatorCache$CacheEntry;->mDomain:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 253
    :goto_0
    return v2

    .line 239
    :cond_0
    if-eqz p2, :cond_3

    .line 240
    array-length v0, p2

    .line 241
    .local v0, hashLength:I
    if-lez v0, :cond_3

    .line 242
    iget-object v2, p0, Landroid/net/http/CertificateValidatorCache$CacheEntry;->mHash:[B

    array-length v2, v2

    if-ne v0, v2, :cond_3

    .line 243
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 244
    aget-byte v2, p2, v1

    iget-object v3, p0, Landroid/net/http/CertificateValidatorCache$CacheEntry;->mHash:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_1

    move v2, v4

    .line 245
    goto :goto_0

    .line 243
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 248
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .end local v0           #hashLength:I
    .end local v1           #i:I
    :cond_3
    move v2, v4

    .line 253
    goto :goto_0
.end method
