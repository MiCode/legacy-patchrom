.class public Lcom/android/internal/net/DomainNameValidator;
.super Ljava/lang/Object;
.source "DomainNameValidator.java"


# static fields
.field private static final ALT_DNS_NAME:I = 0x2

.field private static final ALT_IPA_NAME:I = 0x7

.field private static final DEBUG:Z = false

.field private static final LOG_ENABLED:Z = false

.field private static QUICK_IP_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final TAG:Ljava/lang/String; = "DomainNameValidator"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    :try_start_0
    const-string v0, "^[a-f0-9\\.:]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/DomainNameValidator;->QUICK_IP_PATTERN:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static domainTokenMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "thisDomainToken"
    .parameter "thatDomainToken"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 263
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 264
    const/16 v3, 0x2a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 265
    .local v1, starIndex:I
    if-ltz v1, :cond_1

    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 267
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, prefix:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, suffix:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    .line 275
    .end local v0           #prefix:Ljava/lang/String;
    .end local v1           #starIndex:I
    .end local v2           #suffix:Ljava/lang/String;
    :goto_0
    return v3

    .restart local v0       #prefix:Ljava/lang/String;
    .restart local v1       #starIndex:I
    .restart local v2       #suffix:Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 270
    goto :goto_0

    .end local v0           #prefix:Ljava/lang/String;
    .end local v1           #starIndex:I
    .end local v2           #suffix:Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 275
    goto :goto_0
.end method

.method private static isIpAddress(Ljava/lang/String;)Z
    .locals 4
    .parameter "domain"

    .prologue
    .line 74
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .line 75
    .local v2, rval:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 78
    :try_start_0
    sget-object v3, Lcom/android/internal/net/DomainNameValidator;->QUICK_IP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 79
    if-eqz v2, :cond_0

    .line 80
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 97
    :cond_0
    :goto_1
    return v2

    .line 74
    .end local v2           #rval:Z
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 83
    .restart local v2       #rval:Z
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 84
    .local v0, e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, errorMessage:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 86
    const-string/jumbo v1, "unknown host exception"

    .line 93
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 1
    .parameter "certificate"
    .parameter "thisDomain"

    .prologue
    .line 58
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    .line 62
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/android/internal/net/DomainNameValidator;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    invoke-static {p0, p1}, Lcom/android/internal/net/DomainNameValidator;->matchDns(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {p0, p1}, Lcom/android/internal/net/DomainNameValidator;->matchIpAddress(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static matchDns(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "thisDomain"
    .parameter "thatDomain"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "\\."

    .line 209
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v6, v8

    .line 252
    :goto_0
    return v6

    .line 214
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 218
    .local v1, rval:Z
    if-nez v1, :cond_2

    .line 219
    const-string v6, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, thisDomainTokens:[Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, thatDomainTokens:[Ljava/lang/String;
    array-length v5, v4

    .line 223
    .local v5, thisDomainTokensNum:I
    array-length v3, v2

    .line 226
    .local v3, thatDomainTokensNum:I
    if-lt v5, v3, :cond_5

    .line 227
    sub-int v0, v3, v9

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 228
    aget-object v6, v4, v0

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 229
    if-nez v1, :cond_4

    .line 232
    if-nez v0, :cond_3

    if-ne v5, v3, :cond_3

    move v1, v9

    .line 233
    :goto_2
    if-eqz v1, :cond_2

    .line 234
    aget-object v6, v2, v8

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 235
    if-nez v1, :cond_2

    .line 238
    aget-object v6, v4, v8

    aget-object v7, v2, v8

    invoke-static {v6, v7}, Lcom/android/internal/net/DomainNameValidator;->domainTokenMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .end local v0           #i:I
    .end local v2           #thatDomainTokens:[Ljava/lang/String;
    .end local v3           #thatDomainTokensNum:I
    .end local v4           #thisDomainTokens:[Ljava/lang/String;
    .end local v5           #thisDomainTokensNum:I
    :cond_2
    :goto_3
    move v6, v1

    .line 252
    goto :goto_0

    .restart local v0       #i:I
    .restart local v2       #thatDomainTokens:[Ljava/lang/String;
    .restart local v3       #thatDomainTokensNum:I
    .restart local v4       #thisDomainTokens:[Ljava/lang/String;
    .restart local v5       #thisDomainTokensNum:I
    :cond_3
    move v1, v8

    .line 232
    goto :goto_2

    .line 227
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 248
    .end local v0           #i:I
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method private static matchDns(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 14
    .parameter "certificate"
    .parameter "thisDomain"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 147
    const/4 v7, 0x0

    .line 149
    .local v7, hasDns:Z
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v9

    .line 150
    .local v9, subjectAltNames:Ljava/util/Collection;
    if-eqz v9, :cond_2

    .line 151
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 152
    .local v8, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 153
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 154
    .local v2, altNameEntry:Ljava/util/List;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-gt v12, v10, :cond_0

    .line 155
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move-object v0, v10

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 156
    .local v3, altNameType:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 157
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v12, :cond_0

    .line 158
    const/4 v7, 0x1

    .line 159
    const/4 v10, 0x1

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 160
    .local v1, altName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 161
    invoke-static {p1, v1}, Lcom/android/internal/net/DomainNameValidator;->matchDns(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    move v10, v11

    .line 193
    .end local v1           #altName:Ljava/lang/String;
    .end local v2           #altNameEntry:Ljava/util/List;
    .end local v3           #altNameType:Ljava/lang/Integer;
    .end local v8           #i:Ljava/util/Iterator;
    .end local v9           #subjectAltNames:Ljava/util/Collection;
    :goto_0
    return v10

    .line 170
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 171
    .local v5, e:Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v5}, Ljava/security/cert/CertificateParsingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, errorMessage:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 173
    const-string v6, "failed to parse certificate"

    .line 176
    :cond_1
    const-string v10, "DomainNameValidator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DomainNameValidator.matchDns(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v13

    .line 177
    goto :goto_0

    .line 180
    .end local v5           #e:Ljava/security/cert/CertificateParsingException;
    .end local v6           #errorMessage:Ljava/lang/String;
    .restart local v9       #subjectAltNames:Ljava/util/Collection;
    :cond_2
    if-nez v7, :cond_3

    .line 181
    new-instance v10, Lcom/android/internal/net/DNParser;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/net/DNParser;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string v11, "cn"

    invoke-virtual {v10, v11}, Lcom/android/internal/net/DNParser;->find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, cn:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 189
    invoke-static {p1, v4}, Lcom/android/internal/net/DomainNameValidator;->matchDns(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto :goto_0

    .end local v4           #cn:Ljava/lang/String;
    :cond_3
    move v10, v13

    .line 193
    goto :goto_0
.end method

.method private static matchIpAddress(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 10
    .parameter "certificate"
    .parameter "thisDomain"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v5

    .line 113
    .local v5, subjectAltNames:Ljava/util/Collection;
    if-eqz v5, :cond_1

    .line 114
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 115
    .end local p0
    .local v4, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 116
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 117
    .local v2, altNameEntry:Ljava/util/List;
    if-eqz v2, :cond_0

    const/4 v6, 0x2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 118
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 119
    .local v3, altNameType:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_0

    .line 121
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 122
    .local v1, altName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    move v6, v9

    .line 137
    .end local v1           #altName:Ljava/lang/String;
    .end local v2           #altNameEntry:Ljava/util/List;
    .end local v3           #altNameType:Ljava/lang/Integer;
    .end local v4           #i:Ljava/util/Iterator;
    .end local v5           #subjectAltNames:Ljava/util/Collection;
    :goto_0
    return v6

    .line 135
    :catch_0
    move-exception v6

    :cond_1
    move v6, v8

    .line 137
    goto :goto_0
.end method
