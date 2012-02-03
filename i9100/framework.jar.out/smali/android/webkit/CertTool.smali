.class Landroid/webkit/CertTool;
.super Ljava/lang/Object;
.source "CertTool.java"


# static fields
.field static final CERT:Ljava/lang/String; = "CERT"

.field private static final LOGTAG:Ljava/lang/String; = "CertTool"

.field private static final MD5_WITH_RSA:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier; = null

.field static final PKCS12:Ljava/lang/String; = "PKCS12"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;)V

    sput-object v0, Landroid/webkit/CertTool;->MD5_WITH_RSA:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addCertificate(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 66
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/security/Credentials;->install(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 67
    return-void
.end method

.method static getKeyStrengthList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "High Grade"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Medium Grade"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static getSignedPublicKey(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "index"
    .parameter "challenge"

    .prologue
    .line 48
    :try_start_0
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 49
    .local v1, generator:Ljava/security/KeyPairGenerator;
    if-nez p1, :cond_0

    const/16 v5, 0x800

    :goto_0
    invoke-virtual {v1, v5}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 50
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    .line 52
    .local v2, pair:Ljava/security/KeyPair;
    new-instance v3, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;

    sget-object v5, Landroid/webkit/CertTool;->MD5_WITH_RSA:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v6

    invoke-direct {v3, p2, v5, v6}, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V

    .line 54
    .local v3, request:Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->sign(Ljava/security/PrivateKey;)V

    .line 55
    invoke-virtual {v3}, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v4

    .line 57
    .local v4, signed:[B
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v5

    invoke-virtual {v5, p0, v2}, Landroid/security/Credentials;->install(Landroid/content/Context;Ljava/security/KeyPair;)V

    .line 58
    new-instance v5, Ljava/lang/String;

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1           #generator:Ljava/security/KeyPairGenerator;
    .end local v2           #pair:Ljava/security/KeyPair;
    .end local v3           #request:Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;
    .end local v4           #signed:[B
    :goto_1
    return-object v5

    .line 49
    .restart local v1       #generator:Ljava/security/KeyPairGenerator;
    :cond_0
    const/16 v5, 0x400

    goto :goto_0

    .line 59
    .end local v1           #generator:Ljava/security/KeyPairGenerator;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 60
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CertTool"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    const/4 v5, 0x0

    goto :goto_1
.end method
