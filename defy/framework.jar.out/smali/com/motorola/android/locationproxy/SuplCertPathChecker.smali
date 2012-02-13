.class public Lcom/motorola/android/locationproxy/SuplCertPathChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "SuplCertPathChecker.java"


# static fields
.field private static final ANY_EXT_KEY_USAGE:Ljava/lang/String; = "2.5.29.37.0"

.field private static final CLIENT_AUTH:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final CODE_SIGNING:Ljava/lang/String; = "1.3.6.1.5.5.7.3.3"

.field static final DBG_TAG:Ljava/lang/String; = "SUPLJ"

.field private static final EMAIL_PROTECTION:Ljava/lang/String; = "1.3.6.1.5.5.7.3.4"

.field private static final EXTENDED_KEY_USAGE:Ljava/lang/String; = "2.5.29.37"

.field private static final OCSP_SIGNING:Ljava/lang/String; = "1.3.6.1.5.5.7.3.9"

.field private static final SERVER_AUTH:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final TIME_STAMPING:Ljava/lang/String; = "1.3.6.1.5.5.7.3.8"


# instance fields
.field mIsForward:Z

.field mSupportedExtension:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    iput-boolean v0, p0, Lcom/motorola/android/locationproxy/SuplCertPathChecker;->mIsForward:Z

    iput-boolean v0, p0, Lcom/motorola/android/locationproxy/SuplCertPathChecker;->mIsForward:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/SuplCertPathChecker;->mSupportedExtension:Ljava/util/Set;

    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplCertPathChecker;->mSupportedExtension:Ljava/util/Set;

    const-string v1, "2.5.29.37"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 7
    .parameter "cert"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .local p2, unresolvedCritExts:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v4, "Issue certificate extended key usage does not permit scerver authentication"

    const-string v6, "SUPLJ"

    const-string v4, "2.5.29.37"

    invoke-interface {p2, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "SUPLJ"

    const-string v4, "Handle Extended Key Usage"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    .local v3, x509Cert:Ljava/security/cert/X509Certificate;
    :try_start_0
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v2

    .local v2, extKeyUsage:Ljava/util/List;
    if-nez v2, :cond_0

    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Issue certificate extended key usage does not permit scerver authentication"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #extKeyUsage:Ljava/util/List;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/security/cert/CertificateParsingException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateParsingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/security/cert/CertificateParsingException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v1           #e:Ljava/security/cert/CertificateParsingException;
    .restart local v2       #extKeyUsage:Ljava/util/List;
    :cond_0
    :try_start_1
    const-string v4, "SUPLJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "length of extended key usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SUPLJ"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "2.5.29.37.0"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .end local v2           #extKeyUsage:Ljava/util/List;
    .end local v3           #x509Cert:Ljava/security/cert/X509Certificate;
    :cond_1
    return-void

    .restart local v2       #extKeyUsage:Ljava/util/List;
    .restart local v3       #x509Cert:Ljava/security/cert/X509Certificate;
    :cond_2
    const-string v4, "1.3.6.1.5.5.7.3.1"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Issue certificate extended key usage does not permit scerver authentication"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplCertPathChecker;->mSupportedExtension:Ljava/util/Set;

    return-object v0
.end method

.method public init(Z)V
    .locals 3
    .parameter "forward"

    .prologue
    const-string v0, "SUPLJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forward = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/motorola/android/locationproxy/SuplCertPathChecker;->mIsForward:Z

    return-void
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/locationproxy/SuplCertPathChecker;->mIsForward:Z

    return v0
.end method
