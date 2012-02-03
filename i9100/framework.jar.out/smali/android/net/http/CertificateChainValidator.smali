.class Landroid/net/http/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# static fields
.field private static final sInstance:Landroid/net/http/CertificateChainValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Landroid/net/http/CertificateChainValidator;

    invoke-direct {v0}, Landroid/net/http/CertificateChainValidator;-><init>()V

    sput-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2
    .parameter "socket"
    .parameter "errorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 227
    .local v0, session:Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 231
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 234
    .end local v0           #session:Ljavax/net/ssl/SSLSession;
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "socket"
    .parameter "errorMessage"
    .parameter "defaultErrorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 217
    return-void

    :cond_0
    move-object v0, p3

    .line 215
    goto :goto_0
.end method

.method public static getInstance()Landroid/net/http/CertificateChainValidator;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    return-object v0
.end method


# virtual methods
.method public doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 20
    .parameter "connection"
    .parameter "sslSocket"
    .parameter "domain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/16 v16, 0x0

    .line 85
    .local v16, serverCertificates:[Ljava/security/cert/X509Certificate;
    const/16 v18, 0x1

    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v15

    .line 97
    .local v15, peerCertificates:[Ljava/security/cert/Certificate;
    if-eqz v15, :cond_0

    move-object v0, v15

    array-length v0, v0

    move/from16 v18, v0

    if-gtz v18, :cond_6

    .line 98
    :cond_0
    const-string v18, "failed to retrieve peer certificates"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 118
    :cond_1
    :goto_1
    const/16 v18, 0x0

    aget-object v5, v16, v18

    .line 119
    .local v5, currCertificate:Ljava/security/cert/X509Certificate;
    if-nez v5, :cond_8

    .line 120
    const-string v18, "certificate for this site is null"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 140
    :cond_2
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    .line 141
    .local v4, chainLength:I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 148
    const/4 v6, 0x0

    .local v6, currIndex:I
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move v0, v6

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 149
    const/4 v9, 0x0

    .line 150
    .local v9, foundNext:Z
    add-int/lit8 v13, v6, 0x1

    .line 151
    .local v13, nextIndex:I
    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move v0, v13

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 153
    aget-object v18, v16, v6

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v18

    aget-object v19, v16, v13

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 155
    const/4 v9, 0x1

    .line 157
    add-int/lit8 v18, v6, 0x1

    move v0, v13

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 158
    aget-object v17, v16, v13

    .line 159
    .local v17, tempCertificate:Ljava/security/cert/X509Certificate;
    add-int/lit8 v18, v6, 0x1

    aget-object v18, v16, v18

    aput-object v18, v16, v13

    .line 160
    add-int/lit8 v18, v6, 0x1

    aput-object v17, v16, v18

    .line 165
    .end local v17           #tempCertificate:Ljava/security/cert/X509Certificate;
    :cond_3
    if-nez v9, :cond_a

    .line 171
    .end local v9           #foundNext:Z
    .end local v13           #nextIndex:I
    :cond_4
    add-int/lit8 v4, v6, 0x1

    .line 172
    const/16 v18, 0x1

    sub-int v18, v4, v18

    aget-object v11, v16, v18

    .line 173
    .local v11, lastCertificate:Ljava/security/cert/X509Certificate;
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 174
    .local v14, now:Ljava/util/Date;
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v18

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 176
    add-int/lit8 v4, v4, -0x1

    .line 181
    .end local v6           #currIndex:I
    .end local v11           #lastCertificate:Ljava/security/cert/X509Certificate;
    .end local v14           #now:Ljava/util/Date;
    :cond_5
    const/4 v12, 0x0

    .line 182
    .local v12, newServerCertificates:[Ljava/security/cert/X509Certificate;
    new-array v12, v4, [Ljava/security/cert/X509Certificate;

    .line 183
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4
    if-ge v10, v4, :cond_b

    .line 184
    aget-object v18, v16, v10

    aput-object v18, v12, v10

    .line 183
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 87
    .end local v4           #chainLength:I
    .end local v5           #currCertificate:Ljava/security/cert/X509Certificate;
    .end local v10           #i:I
    .end local v12           #newServerCertificates:[Ljava/security/cert/X509Certificate;
    .end local v15           #peerCertificates:[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v18

    move-object/from16 v7, v18

    .line 88
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    const-string v19, "failed to perform SSL handshake"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    .end local v7           #e:Ljava/io/IOException;
    .restart local v15       #peerCertificates:[Ljava/security/cert/Certificate;
    :cond_6
    move-object v0, v15

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    move-object/from16 v16, v0

    .line 103
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_5
    move-object v0, v15

    array-length v0, v0

    move/from16 v18, v0

    move v0, v10

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 104
    aget-object v4, v15, v10

    check-cast v4, Ljava/security/cert/X509Certificate;

    check-cast v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v16, v10

    .line 103
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 109
    :cond_7
    if-eqz p1, :cond_1

    .line 110
    const/16 v18, 0x0

    aget-object v18, v16, v18

    if-eqz v18, :cond_1

    .line 111
    new-instance v18, Landroid/net/http/SslCertificate;

    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-direct/range {v18 .. v19}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/http/HttpsConnection;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_1

    .line 123
    .end local v10           #i:I
    .restart local v5       #currCertificate:Ljava/security/cert/X509Certificate;
    :cond_8
    move-object v0, v5

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/internal/net/DomainNameValidator;->match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 124
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "certificate not for this host: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, errorMessage:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 131
    new-instance v18, Landroid/net/http/SslError;

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 207
    .end local v8           #errorMessage:Ljava/lang/String;
    :goto_6
    return-object v18

    .line 152
    .restart local v4       #chainLength:I
    .restart local v6       #currIndex:I
    .restart local v9       #foundNext:Z
    .restart local v13       #nextIndex:I
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 148
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 194
    .end local v6           #currIndex:I
    .end local v9           #foundNext:Z
    .end local v13           #nextIndex:I
    .restart local v10       #i:I
    .restart local v12       #newServerCertificates:[Ljava/security/cert/X509Certificate;
    :cond_b
    :try_start_1
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v18

    const-string v19, "RSA"

    move-object/from16 v0, v18

    move-object v1, v12

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    const/16 v18, 0x0

    goto :goto_6

    .line 199
    :catch_1
    move-exception v18

    move-object/from16 v7, v18

    .line 200
    .local v7, e:Ljava/security/cert/CertificateException;
    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 207
    new-instance v18, Landroid/net/http/SslError;

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_6
.end method
