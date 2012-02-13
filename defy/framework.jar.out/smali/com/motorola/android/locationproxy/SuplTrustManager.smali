.class public Lcom/motorola/android/locationproxy/SuplTrustManager;
.super Ljava/lang/Object;
.source "SuplTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private err:Ljava/lang/Exception;

.field private factory:Ljava/security/cert/CertificateFactory;

.field private params:Ljava/security/cert/PKIXParameters;

.field private serverParams:Ljava/security/cert/PKIXParameters;

.field private validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method public constructor <init>([Ljava/security/KeyStore;)V
    .locals 12
    .parameter "keyStores"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->err:Ljava/lang/Exception;

    :try_start_0
    const-string v10, "PKIX"

    invoke-static {v10}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v10

    iput-object v10, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->validator:Ljava/security/cert/CertPathValidator;

    const-string v10, "X509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v10

    iput-object v10, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->factory:Ljava/security/cert/CertificateFactory;

    const/4 v8, 0x0

    .local v8, nameConstrains:[B
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .local v9, trusted:Ljava/util/Set;
    move-object v1, p1

    .local v1, arr$:[Ljava/security/KeyStore;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v6, v1, v5

    .local v6, ks:Ljava/security/KeyStore;
    invoke-virtual {v6}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, en:Ljava/util/Enumeration;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, alias:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .local v2, cert:Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    new-instance v10, Ljava/security/cert/TrustAnchor;

    invoke-direct {v10, v2, v8}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/security/KeyStore;
    .end local v2           #cert:Ljava/security/cert/X509Certificate;
    .end local v4           #en:Ljava/util/Enumeration;
    .end local v5           #i$:I
    .end local v6           #ks:Ljava/security/KeyStore;
    .end local v7           #len$:I
    .end local v8           #nameConstrains:[B
    .end local v9           #trusted:Ljava/util/Set;
    :catch_0
    move-exception v10

    move-object v3, v10

    .local v3, e:Ljava/lang/Exception;
    iput-object v3, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->err:Ljava/lang/Exception;

    .end local v3           #e:Ljava/lang/Exception;
    :goto_2
    return-void

    .restart local v1       #arr$:[Ljava/security/KeyStore;
    .restart local v4       #en:Ljava/util/Enumeration;
    .restart local v5       #i$:I
    .restart local v6       #ks:Ljava/security/KeyStore;
    .restart local v7       #len$:I
    .restart local v8       #nameConstrains:[B
    .restart local v9       #trusted:Ljava/util/Set;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v4           #en:Ljava/util/Enumeration;
    .end local v6           #ks:Ljava/security/KeyStore;
    :cond_2
    :try_start_1
    new-instance v10, Ljava/security/cert/PKIXParameters;

    invoke-direct {v10, v9}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    iput-object v10, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->serverParams:Ljava/security/cert/PKIXParameters;

    iget-object v10, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->serverParams:Ljava/security/cert/PKIXParameters;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    iget-object v10, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->serverParams:Ljava/security/cert/PKIXParameters;

    new-instance v11, Lcom/motorola/android/locationproxy/SuplCertPathChecker;

    invoke-direct {v11}, Lcom/motorola/android/locationproxy/SuplCertPathChecker;-><init>()V

    invoke-virtual {v10, v11}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    new-instance v10, Ljava/security/cert/PKIXParameters;

    invoke-direct {v10, v9}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    iput-object v10, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->params:Ljava/security/cert/PKIXParameters;

    iget-object v10, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->params:Ljava/security/cert/PKIXParameters;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private isDirectlyTrustedCert([Ljava/security/cert/X509Certificate;)Z
    .locals 8
    .parameter "chain"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    array-length v5, p1

    if-ne v5, v7, :cond_1

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .local v2, questionable:[B
    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    .local v0, anchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .local v3, trustAnchor:Ljava/security/cert/TrustAnchor;
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    .local v4, trusted:[B
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    .end local v0           #anchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #questionable:[B
    .end local v3           #trustAnchor:Ljava/security/cert/TrustAnchor;
    .end local v4           #trusted:[B
    :goto_0
    return v5

    :catch_0
    move-exception v5

    :cond_1
    move v5, v6

    goto :goto_0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 5
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    array-length v2, p1

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null or zero-length parameter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->err:Ljava/lang/Exception;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/security/cert/CertificateException;

    iget-object v3, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->err:Ljava/lang/Exception;

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/SuplTrustManager;->isDirectlyTrustedCert([Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    return-void

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->factory:Ljava/security/cert/CertificateFactory;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .local v0, certPath:Ljava/security/cert/CertPath;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Certificate chain error"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0           #certPath:Ljava/security/cert/CertPath;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    .restart local v0       #certPath:Ljava/security/cert/CertPath;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->validator:Ljava/security/cert/CertPathValidator;

    iget-object v3, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2, v0, v3}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v0           #certPath:Ljava/security/cert/CertPath;
    :catch_1
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 5
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    array-length v2, p1

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null or zero-length parameter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->err:Ljava/lang/Exception;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/security/cert/CertificateException;

    iget-object v3, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->err:Ljava/lang/Exception;

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/SuplTrustManager;->isDirectlyTrustedCert([Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    return-void

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->factory:Ljava/security/cert/CertificateFactory;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .local v0, certPath:Ljava/security/cert/CertPath;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Certificate chain error"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0           #certPath:Ljava/security/cert/CertPath;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    .restart local v0       #certPath:Ljava/security/cert/CertPath;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->validator:Ljava/security/cert/CertPathValidator;

    iget-object v3, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->serverParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2, v0, v3}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v0           #certPath:Ljava/security/cert/CertPath;
    :catch_1
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 6

    .prologue
    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->params:Ljava/security/cert/PKIXParameters;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    .end local p0
    :goto_0
    return-object v5

    .restart local p0
    :cond_0
    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplTrustManager;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    .local v0, anchors:Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    new-array v1, v5, [Ljava/security/cert/X509Certificate;

    .local v1, certs:[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local p0
    .local v4, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/TrustAnchor;

    invoke-virtual {p0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    aput-object v5, v1, v2

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_1

    :cond_1
    move-object v5, v1

    goto :goto_0
.end method
