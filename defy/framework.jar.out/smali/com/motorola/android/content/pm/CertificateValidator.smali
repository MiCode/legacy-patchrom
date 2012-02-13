.class public Lcom/motorola/android/content/pm/CertificateValidator;
.super Ljava/lang/Object;
.source "CertificateValidator.java"


# static fields
.field private static final MANUFACTURER_ROOTCERTS:Ljava/lang/String; = "/system/etc/security/mancacerts.zip"

.field private static final OPERATOR_ROOTCERTS:Ljava/lang/String; = "/system/etc/security/oprcacerts.zip"

.field public static final PKG_NON_PRIVILEGED:I = 0x0

.field public static final PKG_PRIVILEGED_MANUFACTURER:I = 0x1

.field public static final PKG_PRIVILEGED_OPERATOR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CertificateValidator"

.field private static mCertFactory:Ljava/security/cert/CertificateFactory;

.field private static mCertPathValidator:Ljava/security/cert/CertPathValidator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getArrayListFromArray([Ljava/security/cert/Certificate;)Ljava/util/ArrayList;
    .locals 5
    .parameter "certChain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/Certificate;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, certsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/security/cert/Certificate;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .local v1, c:Ljava/security/cert/Certificate;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #c:Ljava/security/cert/Certificate;
    :cond_0
    return-object v2
.end method

.method private static getValidatorParametersFromZip(Ljava/lang/String;)Ljava/security/cert/PKIXParameters;
    .locals 8
    .parameter "caCerts"

    .prologue
    const/4 v2, 0x0

    .local v2, validatorParams:Ljava/security/cert/PKIXParameters;
    const/4 v0, 0x0

    .local v0, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .end local v0           #zip:Ljava/util/zip/ZipFile;
    .local v4, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .local v1, trustAnchorsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v5, Lcom/motorola/android/content/pm/CertificateValidator;->mCertFactory:Ljava/security/cert/CertificateFactory;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .local v3, x509Cert:Ljava/security/cert/X509Certificate;
    invoke-static {v3}, Lcom/motorola/android/content/pm/CertificateValidator;->isCertValid(Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/security/cert/TrustAnchor;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_0

    .end local v0           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v1           #trustAnchorsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/TrustAnchor;>;"
    .end local v3           #x509Cert:Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .end local v2           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local v0, validatorParams:Ljava/security/cert/PKIXParameters;
    move-object v2, v4

    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .local v1, ze:Ljava/util/zip/ZipException;
    .local v2, zip:Ljava/util/zip/ZipFile;
    :goto_1
    :try_start_2
    const-string v1, "CertificateValidator"

    .end local v1           #ze:Ljava/util/zip/ZipException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string v3, " does not exist or is empty"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    move-object p0, v0

    .end local v0           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local p0, validatorParams:Ljava/security/cert/PKIXParameters;
    move-object v0, v2

    .end local v2           #zip:Ljava/util/zip/ZipFile;
    .local v0, zip:Ljava/util/zip/ZipFile;
    :goto_3
    return-object v1

    .local v0, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .local v1, trustAnchorsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/TrustAnchor;>;"
    .local v2, validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    .local p0, caCerts:Ljava/lang/String;
    :cond_2
    :try_start_4
    new-instance v0, Ljava/security/cert/PKIXParameters;

    .end local v0           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    invoke-direct {v0, v1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .end local v2           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local v0, validatorParams:Ljava/security/cert/PKIXParameters;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/util/zip/ZipException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .end local v1           #trustAnchorsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/TrustAnchor;>;"
    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .end local p0           #caCerts:Ljava/lang/String;
    :cond_3
    :goto_4
    move-object p0, v0

    .end local v0           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local p0, validatorParams:Ljava/security/cert/PKIXParameters;
    move-object v1, v0

    move-object v0, v4

    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .local v0, zip:Ljava/util/zip/ZipFile;
    goto :goto_3

    .local v0, validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    .local p0, caCerts:Ljava/lang/String;
    :catch_1
    move-exception p0

    .local p0, e:Ljava/lang/Exception;
    const-string v1, "CertificateValidator"

    const-string v2, "Zip closing exception: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .end local p0           #e:Ljava/lang/Exception;
    .local v2, zip:Ljava/util/zip/ZipFile;
    :catch_2
    move-exception p0

    .restart local p0       #e:Ljava/lang/Exception;
    const-string v3, "CertificateValidator"

    const-string v4, "Zip closing exception: "

    invoke-static {v3, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .local v0, zip:Ljava/util/zip/ZipFile;
    .local v2, validatorParams:Ljava/security/cert/PKIXParameters;
    .local p0, caCerts:Ljava/lang/String;
    :catch_3
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    .end local v2           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local v1, validatorParams:Ljava/security/cert/PKIXParameters;
    move-object v2, v0

    .end local v0           #zip:Ljava/util/zip/ZipFile;
    .local v2, zip:Ljava/util/zip/ZipFile;
    move-object v0, v7

    .local v0, iape:Ljava/security/InvalidAlgorithmParameterException;
    :goto_5
    :try_start_7
    const-string v0, "CertificateValidator"

    .end local v0           #iape:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #caCerts:Ljava/lang/String;
    const-string v3, " does not contain valid certs"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/4 v0, 0x0

    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_4
    :goto_6
    move-object p0, v1

    .end local v1           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local p0, validatorParams:Ljava/security/cert/PKIXParameters;
    move-object v1, v0

    move-object v0, v2

    .end local v2           #zip:Ljava/util/zip/ZipFile;
    .local v0, zip:Ljava/util/zip/ZipFile;
    goto :goto_3

    .end local v0           #zip:Ljava/util/zip/ZipFile;
    .end local p0           #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v1       #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v2       #zip:Ljava/util/zip/ZipFile;
    :catch_4
    move-exception p0

    .local p0, e:Ljava/lang/Exception;
    const-string v3, "CertificateValidator"

    const-string v4, "Zip closing exception: "

    invoke-static {v3, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .end local v1           #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v0       #zip:Ljava/util/zip/ZipFile;
    .local v2, validatorParams:Ljava/security/cert/PKIXParameters;
    .local p0, caCerts:Ljava/lang/String;
    :catch_5
    move-exception p0

    move-object v1, v0

    .end local v0           #zip:Ljava/util/zip/ZipFile;
    .local v1, zip:Ljava/util/zip/ZipFile;
    move-object v0, v2

    .end local v2           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local v0, validatorParams:Ljava/security/cert/PKIXParameters;
    .local p0, e:Ljava/lang/Exception;
    :goto_7
    :try_start_9
    const-string p0, "CertificateValidator"

    .end local p0           #e:Ljava/lang/Exception;
    const-string v2, "Cert reading exception: e"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    :try_start_a
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_5
    :goto_8
    move-object p0, v0

    .end local v0           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local p0, validatorParams:Ljava/security/cert/PKIXParameters;
    move-object v0, v1

    .end local v1           #zip:Ljava/util/zip/ZipFile;
    .local v0, zip:Ljava/util/zip/ZipFile;
    move-object v1, v2

    goto :goto_3

    .end local p0           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local v0, validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v1       #zip:Ljava/util/zip/ZipFile;
    :catch_6
    move-exception p0

    .local p0, e:Ljava/lang/Exception;
    const-string v3, "CertificateValidator"

    const-string v4, "Zip closing exception: "

    invoke-static {v3, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .end local v1           #zip:Ljava/util/zip/ZipFile;
    .local v0, zip:Ljava/util/zip/ZipFile;
    .restart local v2       #validatorParams:Ljava/security/cert/PKIXParameters;
    .local p0, caCerts:Ljava/lang/String;
    :catchall_0
    move-exception p0

    move-object v1, p0

    move-object p0, v2

    .end local v2           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local p0, validatorParams:Ljava/security/cert/PKIXParameters;
    :goto_9
    if-eqz v0, :cond_6

    :try_start_b
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .end local v0           #zip:Ljava/util/zip/ZipFile;
    .end local p0           #validatorParams:Ljava/security/cert/PKIXParameters;
    :cond_6
    :goto_a
    throw v1

    .restart local v0       #zip:Ljava/util/zip/ZipFile;
    .restart local p0       #validatorParams:Ljava/security/cert/PKIXParameters;
    :catch_7
    move-exception p0

    .local p0, e:Ljava/lang/Exception;
    const-string v0, "CertificateValidator"

    .end local v0           #zip:Ljava/util/zip/ZipFile;
    const-string v2, "Zip closing exception: "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .restart local v2       #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    .local p0, caCerts:Ljava/lang/String;
    :catchall_1
    move-exception p0

    move-object v1, p0

    move-object v0, v4

    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v0       #zip:Ljava/util/zip/ZipFile;
    move-object p0, v2

    .end local v2           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local p0, validatorParams:Ljava/security/cert/PKIXParameters;
    goto :goto_9

    .local v0, validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    .local p0, caCerts:Ljava/lang/String;
    :catchall_2
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    .end local v0           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local p0, validatorParams:Ljava/security/cert/PKIXParameters;
    move-object v0, v4

    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .local v0, zip:Ljava/util/zip/ZipFile;
    goto :goto_9

    .end local p0           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local v0, validatorParams:Ljava/security/cert/PKIXParameters;
    .local v2, zip:Ljava/util/zip/ZipFile;
    :catchall_3
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    .end local v0           #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local p0       #validatorParams:Ljava/security/cert/PKIXParameters;
    move-object v0, v2

    .end local v2           #zip:Ljava/util/zip/ZipFile;
    .local v0, zip:Ljava/util/zip/ZipFile;
    goto :goto_9

    .end local v0           #zip:Ljava/util/zip/ZipFile;
    .end local p0           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local v1, validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v2       #zip:Ljava/util/zip/ZipFile;
    :catchall_4
    move-exception p0

    move-object v0, v2

    .end local v2           #zip:Ljava/util/zip/ZipFile;
    .restart local v0       #zip:Ljava/util/zip/ZipFile;
    move-object v7, p0

    move-object p0, v1

    .end local v1           #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local p0       #validatorParams:Ljava/security/cert/PKIXParameters;
    move-object v1, v7

    goto :goto_9

    .end local p0           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local v0, validatorParams:Ljava/security/cert/PKIXParameters;
    .local v1, zip:Ljava/util/zip/ZipFile;
    :catchall_5
    move-exception p0

    move-object v7, p0

    move-object p0, v0

    .end local v0           #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local p0       #validatorParams:Ljava/security/cert/PKIXParameters;
    move-object v0, v1

    .end local v1           #zip:Ljava/util/zip/ZipFile;
    .local v0, zip:Ljava/util/zip/ZipFile;
    move-object v1, v7

    goto :goto_9

    .end local v0           #zip:Ljava/util/zip/ZipFile;
    .local v2, validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    .local p0, caCerts:Ljava/lang/String;
    :catch_8
    move-exception p0

    move-object v1, v4

    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #zip:Ljava/util/zip/ZipFile;
    move-object v0, v2

    .end local v2           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local v0, validatorParams:Ljava/security/cert/PKIXParameters;
    goto :goto_7

    .end local v1           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :catch_9
    move-exception p0

    move-object v1, v4

    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #zip:Ljava/util/zip/ZipFile;
    goto :goto_7

    .end local v0           #validatorParams:Ljava/security/cert/PKIXParameters;
    .end local v1           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local v1, validatorParams:Ljava/security/cert/PKIXParameters;
    move-object v2, v4

    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .local v2, zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_5

    .end local v1           #validatorParams:Ljava/security/cert/PKIXParameters;
    .end local v2           #zip:Ljava/util/zip/ZipFile;
    .restart local v0       #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :catch_b
    move-exception v1

    move-object v2, v4

    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #zip:Ljava/util/zip/ZipFile;
    move-object v7, v1

    move-object v1, v0

    .end local v0           #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v1       #validatorParams:Ljava/security/cert/PKIXParameters;
    move-object v0, v7

    goto/16 :goto_5

    .end local v1           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local v0, zip:Ljava/util/zip/ZipFile;
    .local v2, validatorParams:Ljava/security/cert/PKIXParameters;
    :catch_c
    move-exception v1

    move-object v7, v0

    .end local v0           #zip:Ljava/util/zip/ZipFile;
    .local v7, zip:Ljava/util/zip/ZipFile;
    move-object v0, v2

    .end local v2           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local v0, validatorParams:Ljava/security/cert/PKIXParameters;
    move-object v2, v7

    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .local v2, zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_1

    .end local v2           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :catch_d
    move-exception v1

    move-object v2, v4

    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_1
.end method

.method private static getZipEntryBytes(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)[B
    .locals 11
    .parameter "zip"
    .parameter "entry"

    .prologue
    const/4 v10, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v7, v10

    :goto_0
    return-object v7

    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    .local v1, entryLength:J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_2

    long-to-int v7, v1

    int-to-long v7, v7

    cmp-long v7, v1, v7

    if-eqz v7, :cond_3

    :cond_2
    move-object v7, v10

    goto :goto_0

    :cond_3
    long-to-int v7, v1

    new-array v6, v7, [B

    .local v6, out:[B
    const/4 v4, 0x0

    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    .local v5, offset:I
    :goto_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v7

    if-lez v7, :cond_5

    array-length v7, v6

    if-ge v5, v7, :cond_5

    array-length v7, v6

    sub-int/2addr v7, v5

    invoke-virtual {v4, v6, v5, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .local v3, iRead:I
    if-gtz v3, :cond_4

    const-string v7, "CertificateValidator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v7, v10

    goto :goto_0

    :cond_4
    add-int/2addr v5, v3

    goto :goto_1

    .end local v3           #iRead:I
    :cond_5
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object v7, v6

    goto :goto_0

    .end local v5           #offset:I
    :catch_0
    move-exception v7

    move-object v0, v7

    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    move-object v7, v10

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    throw v7

    .restart local v3       #iRead:I
    .restart local v5       #offset:I
    :catch_1
    move-exception v7

    goto :goto_2

    .end local v3           #iRead:I
    :catch_2
    move-exception v7

    goto :goto_3

    .end local v5           #offset:I
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_4

    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v8

    goto :goto_5
.end method

.method private static isCertChainValid([B)Z
    .locals 8
    .parameter "certChain"

    .prologue
    const/4 v7, 0x0

    :try_start_0
    sget-object v5, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    new-instance v6, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v6, p0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([B)V

    invoke-virtual {v5, v6}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .local v1, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v4

    .local v4, signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v4, :cond_0

    move v5, v7

    .end local v1           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .end local v4           #signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local p0
    :goto_0
    return v5

    .restart local v1       #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local v4       #signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local p0
    :cond_0
    invoke-virtual {v4}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v0

    .local v0, encCerts:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0
    .local v3, it:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v5, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-static {v5}, Lcom/motorola/android/content/pm/CertificateValidator;->isCertValid(Ljava/security/cert/X509Certificate;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    move v5, v7

    goto :goto_0

    .end local v0           #encCerts:Ljava/util/Collection;
    .end local v1           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .end local v3           #it:Ljava/util/Iterator;
    .end local v4           #signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    :catch_0
    move-exception v5

    move-object v2, v5

    .local v2, ioe:Ljava/io/IOException;
    const-string v5, "CertificateValidator"

    const-string v6, "Cannot obtain certificate from the cert chain"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    goto :goto_0

    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v0       #encCerts:Ljava/util/Collection;
    .restart local v1       #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local v3       #it:Ljava/util/Iterator;
    .restart local v4       #signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static isCertValid(Ljava/security/cert/X509Certificate;)Z
    .locals 5
    .parameter "cert"

    .prologue
    const/4 v3, 0x0

    const-string v4, "CertificateValidator"

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, cee:Ljava/security/cert/CertificateExpiredException;
    const-string v2, "CertificateValidator"

    const-string v2, "Signing certificate is expired"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    .end local v0           #cee:Ljava/security/cert/CertificateExpiredException;
    :catch_1
    move-exception v1

    .local v1, cnyve:Ljava/security/cert/CertificateNotYetValidException;
    const-string v2, "CertificateValidator"

    const-string v2, "Signing certificate is not yet valid"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0
.end method

.method private static isCertificate(Ljava/util/zip/ZipEntry;)Z
    .locals 6
    .parameter "entry"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, name:Ljava/lang/String;
    const-string v2, "META-INF/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    const-string v3, ".DSA"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    const-string v3, ".RSA"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v4

    goto :goto_0
.end method

.method private static tryVerifyingCertChainAgainstRoot(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/security/cert/PKIXParameters;)Z
    .locals 12
    .parameter "apk"
    .parameter "entry"
    .parameter "validatorParameters"

    .prologue
    const/4 v10, 0x0

    const-string v11, "CertificateValidator"

    invoke-static {p1}, Lcom/motorola/android/content/pm/CertificateValidator;->isCertificate(Ljava/util/zip/ZipEntry;)Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v10

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, certName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2e

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v2, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".SF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, sfName:Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/motorola/android/content/pm/CertificateValidator;->getZipEntryBytes(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)[B

    move-result-object v5

    .local v5, sfBytes:[B
    if-nez v5, :cond_1

    move v7, v10

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/motorola/android/content/pm/CertificateValidator;->getZipEntryBytes(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)[B

    move-result-object v0

    .local v0, certBytes:[B
    if-nez v0, :cond_2

    move v7, v10

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/motorola/android/content/pm/CertificateValidator;->isCertChainValid([B)Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v10

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .local v1, certChain:[Ljava/security/cert/Certificate;
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v7, v8}, Lorg/apache/harmony/security/utils/JarUtils;->verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;)[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_4

    const-string v7, "CertificateValidator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Empty cert chain in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v4, v7

    .local v4, e:Ljava/lang/Exception;
    const-string v7, "CertificateValidator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot verify signature for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    goto/16 :goto_0

    .end local v4           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    sget-object v7, Lcom/motorola/android/content/pm/CertificateValidator;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    sget-object v8, Lcom/motorola/android/content/pm/CertificateValidator;->mCertFactory:Ljava/security/cert/CertificateFactory;

    invoke-static {v1}, Lcom/motorola/android/content/pm/CertificateValidator;->getArrayListFromArray([Ljava/security/cert/Certificate;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v8

    invoke-virtual {v7, v8, p2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v7, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v7

    move-object v3, v7

    .local v3, cpve:Ljava/security/cert/CertPathValidatorException;
    const-string v7, "CertificateValidator"

    const-string v7, "Cannot validate certificate chain with the root cert."

    invoke-static {v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    goto/16 :goto_0

    .end local v3           #cpve:Ljava/security/cert/CertPathValidatorException;
    :catch_2
    move-exception v7

    move-object v4, v7

    .restart local v4       #e:Ljava/lang/Exception;
    const-string v7, "CertificateValidator"

    const-string v7, "Exception "

    invoke-static {v11, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v10

    goto/16 :goto_0
.end method

.method private static verifySigner(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "archiveSourcePath"
    .parameter "caCerts"

    .prologue
    const/4 v9, 0x0

    const-string v8, "Apk closing exception: "

    const-string v7, "CertificateValidator"

    invoke-static {p1}, Lcom/motorola/android/content/pm/CertificateValidator;->getValidatorParametersFromZip(Ljava/lang/String;)Ljava/security/cert/PKIXParameters;

    move-result-object v4

    .local v4, validatorParameters:Ljava/security/cert/PKIXParameters;
    if-nez v4, :cond_0

    const-string v5, "CertificateValidator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No root cert found in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .end local p0
    :goto_0
    return v5

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    .local v0, apk:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0           #apk:Ljava/util/zip/ZipFile;
    .local v1, apk:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .end local p0
    .local v3, ee:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/zip/ZipEntry;

    invoke-static {v1, p0, v4}, Lcom/motorola/android/content/pm/CertificateValidator;->tryVerifyingCertChainAgainstRoot(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/security/cert/PKIXParameters;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v6, "CertificateValidator"

    const-string v6, "Apk closing exception: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    const-string v5, "CertificateValidator"

    const-string v5, "Signer is not trusted"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    goto :goto_0

    :catch_1
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    const-string v5, "CertificateValidator"

    const-string v5, "Apk closing exception: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1           #apk:Ljava/util/zip/ZipFile;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ee:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v0       #apk:Ljava/util/zip/ZipFile;
    .restart local p0
    :catch_2
    move-exception v5

    move-object v2, v5

    .end local p0
    .restart local v2       #e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v5, "CertificateValidator"

    const-string v6, "Apk parsing exception: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    move v5, v9

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v5, "CertificateValidator"

    const-string v5, "Apk closing exception: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :goto_5
    throw v5

    :catch_4
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "CertificateValidator"

    const-string v6, "Apk closing exception: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v0           #apk:Ljava/util/zip/ZipFile;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #apk:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #apk:Ljava/util/zip/ZipFile;
    .restart local v0       #apk:Ljava/util/zip/ZipFile;
    goto :goto_4

    .end local v0           #apk:Ljava/util/zip/ZipFile;
    .restart local v1       #apk:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v5

    move-object v2, v5

    move-object v0, v1

    .end local v1           #apk:Ljava/util/zip/ZipFile;
    .restart local v0       #apk:Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method public static verifySigners(Ljava/lang/String;)I
    .locals 3
    .parameter "archiveSourcePath"

    .prologue
    const/4 v2, 0x0

    sget-object v1, Lcom/motorola/android/content/pm/CertificateValidator;->mCertFactory:Ljava/security/cert/CertificateFactory;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    sput-object v1, Lcom/motorola/android/content/pm/CertificateValidator;->mCertFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v1, Lcom/motorola/android/content/pm/CertificateValidator;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    if-nez v1, :cond_1

    :try_start_1
    const-string v1, "PKIX"

    invoke-static {v1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v1

    sput-object v1, Lcom/motorola/android/content/pm/CertificateValidator;->mCertPathValidator:Ljava/security/cert/CertPathValidator;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    const-string v1, "/system/etc/security/mancacerts.zip"

    invoke-static {p0, v1}, Lcom/motorola/android/content/pm/CertificateValidator;->verifySigner(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/security/cert/CertificateException;
    move v1, v2

    goto :goto_0

    .end local v0           #e:Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    move v1, v2

    goto :goto_0

    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_2
    const-string v1, "/system/etc/security/oprcacerts.zip"

    invoke-static {p0, v1}, Lcom/motorola/android/content/pm/CertificateValidator;->verifySigner(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method
