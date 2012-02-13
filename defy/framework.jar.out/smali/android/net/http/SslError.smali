.class public Landroid/net/http/SslError;
.super Ljava/lang/Object;
.source "SslError.java"


# static fields
.field public static final SSL_EXPIRED:I = 0x1

.field public static final SSL_IDMISMATCH:I = 0x2

.field public static final SSL_MAX_ERROR:I = 0x4

.field public static final SSL_NOTYETVALID:I = 0x0

.field public static final SSL_UNTRUSTED:I = 0x3


# instance fields
.field mCertificate:Landroid/net/http/SslCertificate;

.field mErrors:I


# direct methods
.method public constructor <init>(ILandroid/net/http/SslCertificate;)V
    .locals 0
    .parameter "error"
    .parameter "certificate"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/net/http/SslError;->addError(I)Z

    iput-object p2, p0, Landroid/net/http/SslError;->mCertificate:Landroid/net/http/SslCertificate;

    return-void
.end method

.method public constructor <init>(ILjava/security/cert/X509Certificate;)V
    .locals 1
    .parameter "error"
    .parameter "certificate"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/net/http/SslError;->addError(I)Z

    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v0, p0, Landroid/net/http/SslError;->mCertificate:Landroid/net/http/SslCertificate;

    return-void
.end method


# virtual methods
.method public addError(I)Z
    .locals 3
    .parameter "error"

    .prologue
    const/4 v2, 0x1

    if-ltz p1, :cond_1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    move v0, v2

    .local v0, rval:Z
    :goto_0
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/net/http/SslError;->mErrors:I

    shl-int/2addr v2, p1

    or-int/2addr v1, v2

    iput v1, p0, Landroid/net/http/SslError;->mErrors:I

    :cond_0
    return v0

    .end local v0           #rval:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/SslError;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getPrimaryError()I
    .locals 3

    .prologue
    iget v1, p0, Landroid/net/http/SslError;->mErrors:I

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    .local v0, error:I
    :goto_0
    if-ltz v0, :cond_1

    iget v1, p0, Landroid/net/http/SslError;->mErrors:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    move v1, v0

    .end local v0           #error:I
    :goto_1
    return v1

    .restart local v0       #error:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #error:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasError(I)Z
    .locals 5
    .parameter "error"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ltz p1, :cond_1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    move v0, v3

    .local v0, rval:Z
    :goto_0
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/net/http/SslError;->mErrors:I

    shl-int v2, v3, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    move v0, v3

    :cond_0
    :goto_1
    return v0

    .end local v0           #rval:Z
    :cond_1
    move v0, v4

    goto :goto_0

    .restart local v0       #rval:Z
    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "primary error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
