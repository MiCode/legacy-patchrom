.class public final Landroid/webkit/CookieManager;
.super Ljava/lang/Object;
.source "CookieManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CookieManager$CookieComparator;,
        Landroid/webkit/CookieManager$Cookie;
    }
.end annotation


# static fields
.field private static final BAD_COUNTRY_2LDS:[Ljava/lang/String; = null

.field private static final COMMA:C = ','

.field private static final COMPARATOR:Landroid/webkit/CookieManager$CookieComparator; = null

.field private static final DOMAIN:Ljava/lang/String; = "domain"

.field private static final EQUAL:C = '='

.field private static final EXPIRES:Ljava/lang/String; = "expires"

.field private static final HTTPS:Ljava/lang/String; = "https"

.field private static final HTTP_ONLY:Ljava/lang/String; = "httponly"

#the value of this static final field might be set in the static constructor
.field private static final HTTP_ONLY_LENGTH:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MAX_AGE:Ljava/lang/String; = "max-age"

.field private static final MAX_COOKIE_COUNT_PER_BASE_DOMAIN:I = 0x32

.field private static final MAX_COOKIE_LENGTH:I = 0x1000

.field private static final MAX_DOMAIN_COUNT:I = 0xc8

.field private static final MAX_RAM_COOKIES_COUNT:I = 0x3e8

.field private static final MAX_RAM_DOMAIN_COUNT:I = 0xf

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PATH_DELIM:C = '/'

.field private static final PERIOD:C = '.'

.field private static final QUESTION_MARK:C = '?'

.field private static final QUOTATION:C = '\"'

.field private static final SECURE:Ljava/lang/String; = "secure"

#the value of this static final field might be set in the static constructor
.field private static final SECURE_LENGTH:I = 0x0

.field private static final SEMICOLON:C = ';'

.field private static final WHITE_SPACE:C = ' '

.field private static sRef:Landroid/webkit/CookieManager;


# instance fields
.field private mAcceptCookie:Z

.field private mCookieMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "secure"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    const-string v0, "httponly"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ac"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "co"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "edu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "go"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gouv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "org"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/CookieManager;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    sget-object v0, Landroid/webkit/CookieManager;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v0, Landroid/webkit/CookieManager$CookieComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/webkit/CookieManager$CookieComparator;-><init>(Landroid/webkit/CookieManager$1;)V

    sput-object v0, Landroid/webkit/CookieManager;->COMPARATOR:Landroid/webkit/CookieManager$CookieComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc8

    const/high16 v2, 0x3f40

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    iput-boolean v3, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/CookieManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Landroid/webkit/CookieManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    return-object p1
.end method

.method private getBaseDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "host"

    .prologue
    const/16 v3, 0x2e

    const/4 v2, 0x0

    .local v2, startIndex:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, nextIndex:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, lastIndex:I
    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    move-object v3, p1

    goto :goto_1
.end method

.method private getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v3, 0x2e

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p1, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .local v1, ret:[Ljava/lang/String;
    iget-object v2, p1, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p1, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    aput-object v2, v1, v5

    aget-object v2, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, index:I
    if-ne v0, v6, :cond_1

    iget-object v2, p1, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "localhost"

    aput-object v2, v1, v4

    :cond_0
    :goto_0
    aget-object v2, v1, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_2

    move-object v2, v7

    .end local v0           #index:I
    .end local v1           #ret:[Ljava/lang/String;
    :goto_1
    return-object v2

    .restart local v0       #index:I
    .restart local v1       #ret:[Ljava/lang/String;
    :cond_1
    aget-object v2, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    :cond_2
    aget-object v2, v1, v5

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v6, :cond_3

    aget-object v2, v1, v5

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    :cond_3
    move-object v2, v1

    goto :goto_1

    .end local v0           #index:I
    .end local v1           #ret:[Ljava/lang/String;
    :cond_4
    move-object v2, v7

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Landroid/webkit/CookieManager;
    .locals 2

    .prologue
    const-class v0, Landroid/webkit/CookieManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/CookieManager;->sRef:Landroid/webkit/CookieManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/webkit/CookieManager;

    invoke-direct {v1}, Landroid/webkit/CookieManager;-><init>()V

    sput-object v1, Landroid/webkit/CookieManager;->sRef:Landroid/webkit/CookieManager;

    :cond_0
    sget-object v1, Landroid/webkit/CookieManager;->sRef:Landroid/webkit/CookieManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private parseCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 26
    .parameter "host"
    .parameter "path"
    .parameter "cookieString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .local v16, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    const/4 v11, 0x0

    .local v11, isMaxAgePresent:Z
    const/4 v10, 0x0

    .local v10, index:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    .local v14, length:I
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .local v5, cookie:Landroid/webkit/CookieManager$Cookie;
    if-ltz v10, :cond_1

    if-lt v10, v14, :cond_2

    :cond_1
    return-object v16

    :cond_2
    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    const/16 v20, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v20

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v18

    .local v18, semicolonIndex:I
    const/16 v20, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v20

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .local v7, equalIndex:I
    new-instance v5, Landroid/webkit/CookieManager$Cookie;

    .end local v5           #cookie:Landroid/webkit/CookieManager$Cookie;
    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/webkit/CookieManager$Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5       #cookie:Landroid/webkit/CookieManager$Cookie;
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move/from16 v0, v18

    move v1, v7

    if-lt v0, v1, :cond_5

    :cond_4
    const/16 v20, -0x1

    move v0, v7

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    :cond_5
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    move/from16 v18, v14

    :cond_6
    move-object/from16 v0, p3

    move v1, v10

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    :goto_1
    move/from16 v10, v18

    :cond_7
    :goto_2
    if-ltz v10, :cond_8

    if-lt v10, v14, :cond_f

    :cond_8
    :goto_3
    if-eqz v5, :cond_0

    move-object v0, v5

    iget-object v0, v0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    move-object/from16 v0, p3

    move v1, v10

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    const/16 v20, 0x1

    sub-int v20, v14, v20

    move v0, v7

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    add-int/lit8 v20, v7, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/16 v20, 0x22

    add-int/lit8 v21, v7, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    const/16 v20, -0x1

    move v0, v10

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    :cond_a
    const/16 v20, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v20

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v18

    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move/from16 v18, v14

    :cond_b
    sub-int v20, v18, v7

    const/16 v21, 0x1000

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    add-int/lit8 v20, v7, 0x1

    add-int/lit8 v21, v7, 0x1

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x1000

    move/from16 v21, v0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v20, v7, 0x1

    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    move/from16 v0, v18

    move v1, v7

    if-ge v0, v1, :cond_e

    :cond_d
    const-string v20, ""

    move-object/from16 v0, v20

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v20, v7, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2c

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_12
    sub-int v20, v14, v10

    sget v21, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_13

    sget v20, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    add-int v20, v20, v10

    move-object/from16 v0, p3

    move v1, v10

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string v21, "secure"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    sget v20, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    add-int v10, v10, v20

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v5

    iput-boolean v0, v1, Landroid/webkit/CookieManager$Cookie;->secure:Z

    if-eq v10, v14, :cond_8

    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_13
    sub-int v20, v14, v10

    sget v21, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_14

    sget v20, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    add-int v20, v20, v10

    move-object/from16 v0, p3

    move v1, v10

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string v21, "httponly"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_14

    sget v20, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    add-int v10, v10, v20

    if-eq v10, v14, :cond_8

    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_14
    const/16 v20, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v20

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-lez v7, :cond_22

    move-object/from16 v0, p3

    move v1, v10

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .local v15, name:Ljava/lang/String;
    const-string v20, "expires"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    const/16 v20, 0x2c

    move-object/from16 v0, p3

    move/from16 v1, v20

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .local v3, comaIndex:I
    const/16 v20, -0x1

    move v0, v3

    move/from16 v1, v20

    if-eq v0, v1, :cond_15

    sub-int v20, v3, v7

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_15

    add-int/lit8 v10, v3, 0x1

    .end local v3           #comaIndex:I
    :cond_15
    const/16 v20, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v20

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v18

    const/16 v20, 0x2c

    move-object/from16 v0, p3

    move/from16 v1, v20

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .local v4, commaIndex:I
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    const/16 v20, -0x1

    move v0, v4

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    move v10, v14

    :goto_4
    add-int/lit8 v20, v7, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .local v19, value:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_16

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    const/16 v20, 0x22

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .local v6, endQuote:I
    if-lez v6, :cond_16

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .end local v6           #endQuote:I
    :cond_16
    const-string v20, "expires"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    if-nez v11, :cond_1a

    :try_start_0
    invoke-static/range {v19 .. v19}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object v2, v5

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->expires:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v20

    move-object/from16 v8, v20

    .local v8, ex:Ljava/lang/IllegalArgumentException;
    const-string v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "illegal format for expires: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    .end local v19           #value:Ljava/lang/String;
    :cond_17
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    move v10, v4

    goto :goto_4

    :cond_18
    const/16 v20, -0x1

    move v0, v4

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    move/from16 v10, v18

    goto/16 :goto_4

    :cond_19
    move/from16 v0, v18

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_4

    .restart local v19       #value:Ljava/lang/String;
    :cond_1a
    const-string v20, "max-age"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b

    const/4 v11, 0x1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    mul-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object v2, v5

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->expires:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v20

    move-object/from16 v8, v20

    .local v8, ex:Ljava/lang/NumberFormatException;
    const-string v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "illegal format for max-age: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v8           #ex:Ljava/lang/NumberFormatException;
    :cond_1b
    const-string v20, "path"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_7

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1c
    const-string v20, "domain"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x2e

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .local v12, lastPeriod:I
    if-nez v12, :cond_1d

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1d
    add-int/lit8 v20, v12, 0x1

    :try_start_2
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v20

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1e

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x2e

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v12, v12, 0x1

    :cond_1e
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_21

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v13

    .local v13, len:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .local v9, hostLen:I
    const/16 v20, 0x1

    sub-int v20, v13, v20

    move v0, v9

    move/from16 v1, v20

    if-le v0, v1, :cond_1f

    sub-int v20, v9, v13

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1f

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1f
    add-int/lit8 v20, v12, 0x3

    move v0, v13

    move/from16 v1, v20

    if-ne v0, v1, :cond_20

    const/16 v20, 0x6

    move v0, v13

    move/from16 v1, v20

    if-lt v0, v1, :cond_20

    const/16 v20, 0x8

    move v0, v13

    move/from16 v1, v20

    if-gt v0, v1, :cond_20

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .local v17, s:Ljava/lang/String;
    sget-object v20, Landroid/webkit/CookieManager;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v20

    if-ltz v20, :cond_20

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .end local v17           #s:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .end local v9           #hostLen:I
    .end local v13           #len:I
    :cond_21
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .end local v4           #commaIndex:I
    .end local v12           #lastPeriod:I
    .end local v15           #name:Ljava/lang/String;
    .end local v19           #value:Ljava/lang/String;
    :cond_22
    move v10, v14

    goto/16 :goto_2
.end method


# virtual methods
.method public declared-synchronized acceptCookie()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized deleteACookie(Landroid/webkit/CookieManager$Cookie;)V
    .locals 6
    .parameter "cookie"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-byte v4, p1, Landroid/webkit/CookieManager$Cookie;->mode:B

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/webkit/CookieManager;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, baseDomain:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :try_start_1
    iget-object v4, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1           #baseDomain:Ljava/lang/String;
    .end local v2           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .restart local v1       #baseDomain:Ljava/lang/String;
    .restart local v2       #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, ex:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v4, "webkit"

    const-string v5, "getCookie() caught Exception: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1           #baseDomain:Ljava/lang/String;
    .end local v2           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v3           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized deleteLRUDomain()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x3e8

    const/16 v12, 0xf

    monitor-enter p0

    const/4 v2, 0x0

    .local v2, count:I
    const/4 v0, 0x0

    .local v0, byteCount:I
    :try_start_0
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v7

    .local v7, mapSize:I
    if-ge v7, v12, :cond_0

    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .local v1, cookieLists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    if-ge v2, v13, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v2, v11

    goto :goto_0

    .end local v1           #cookieLists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v6           #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, retlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-ge v7, v12, :cond_1

    if-lt v2, v13, :cond_2

    :cond_1
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .local v4, domains:[Ljava/lang/Object;
    div-int/lit8 v11, v7, 0xa

    add-int/lit8 v9, v11, 0x1

    .local v9, toGo:I
    move v10, v9

    .end local v9           #toGo:I
    .local v10, toGo:I
    :goto_1
    add-int/lit8 v9, v10, -0x1

    .end local v10           #toGo:I
    .restart local v9       #toGo:I
    if-lez v10, :cond_2

    aget-object v11, v4, v9

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, domain:Ljava/lang/String;
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v9

    .end local v9           #toGo:I
    .restart local v10       #toGo:I
    goto :goto_1

    .end local v3           #domain:Ljava/lang/String;
    .end local v4           #domains:[Ljava/lang/Object;
    .end local v10           #toGo:I
    :cond_2
    monitor-exit p0

    return-object v8

    .end local v7           #mapSize:I
    .end local v8           #retlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method public declared-synchronized getCookie(Landroid/net/WebAddress;)Ljava/lang/String;
    .locals 18
    .parameter "uri"

    .prologue
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/CookieManager;->mAcceptCookie:Z

    move v14, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v14, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v14, 0x0

    :goto_0
    monitor-exit p0

    return-object v14

    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/webkit/CookieManager;->getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;

    move-result-object v7

    .local v7, hostAndPath:[Ljava/lang/String;
    if-nez v7, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    aget-object v14, v7, v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/webkit/CookieManager;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .local v2, baseDomain:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object v14, v0

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    if-nez v4, :cond_3

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/webkit/CookieSyncManager;->getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object v14, v0

    invoke-interface {v14, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .local v9, now:J
    const-string v14, "https"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .local v12, secure:Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    new-instance v5, Ljava/util/TreeSet;

    sget-object v14, Landroid/webkit/CookieManager;->COMPARATOR:Landroid/webkit/CookieManager$CookieComparator;

    invoke-direct {v5, v14}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .local v5, cookieSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/CookieManager$Cookie;

    .local v3, cookie:Landroid/webkit/CookieManager$Cookie;
    const/4 v14, 0x0

    aget-object v14, v7, v14

    invoke-virtual {v3, v14}, Landroid/webkit/CookieManager$Cookie;->domainMatch(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    aget-object v14, v7, v14

    invoke-virtual {v3, v14}, Landroid/webkit/CookieManager$Cookie;->pathMatch(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    iget-wide v14, v3, Landroid/webkit/CookieManager$Cookie;->expires:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_5

    iget-wide v14, v3, Landroid/webkit/CookieManager$Cookie;->expires:J

    cmp-long v14, v14, v9

    if-lez v14, :cond_4

    :cond_5
    iget-boolean v14, v3, Landroid/webkit/CookieManager$Cookie;->secure:Z

    if-eqz v14, :cond_6

    if-eqz v12, :cond_4

    :cond_6
    iget-byte v14, v3, Landroid/webkit/CookieManager$Cookie;->mode:B

    const/4 v15, 0x2

    if-eq v14, v15, :cond_4

    iput-wide v9, v3, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    invoke-interface {v5, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v2           #baseDomain:Ljava/lang/String;
    .end local v3           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v4           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v5           #cookieSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v7           #hostAndPath:[Ljava/lang/String;
    .end local v8           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v9           #now:J
    .end local v12           #secure:Z
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .restart local v2       #baseDomain:Ljava/lang/String;
    .restart local v4       #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v7       #hostAndPath:[Ljava/lang/String;
    :catch_0
    move-exception v14

    move-object v6, v14

    .local v6, ex:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v14, "webkit"

    const-string v15, "getCookie() caught Exception: "

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v6           #ex:Ljava/lang/RuntimeException;
    .restart local v5       #cookieSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v8       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v9       #now:J
    .restart local v12       #secure:Z
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v14, 0x100

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v11, ret:Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, setIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_8
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/CookieManager$Cookie;

    .restart local v3       #cookie:Landroid/webkit/CookieManager$Cookie;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_9

    const/16 v14, 0x3b

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v14, 0x20

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v14, v3, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v3, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    if-eqz v14, :cond_8

    const/16 v14, 0x3d

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v14, v3, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .end local v3           #cookie:Landroid/webkit/CookieManager$Cookie;
    :cond_a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_b

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v14

    goto/16 :goto_0

    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {p0, v1}, Landroid/webkit/CookieManager;->getCookie(Landroid/net/WebAddress;)Ljava/lang/String;

    move-result-object v2

    .end local v1           #uri:Landroid/net/WebAddress;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/net/ParseException;
    const-string v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method declared-synchronized getUpdatedCookiesSince(J)Ljava/util/ArrayList;
    .locals 8
    .parameter "last"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    iget-object v6, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .local v1, cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/CookieManager$Cookie;

    .local v0, cookie:Landroid/webkit/CookieManager$Cookie;
    iget-wide v6, v0, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    cmp-long v6, v6, p1

    if-lez v6, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v1           #cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .end local v2           #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v5           #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v1       #cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .restart local v2       #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v5       #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_2
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized hasCookies()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->hasCookies()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAllCookie()V
    .locals 2

    .prologue
    new-instance v0, Landroid/webkit/CookieManager$2;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManager$2;-><init>(Landroid/webkit/CookieManager;)V

    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public removeExpiredCookie()V
    .locals 2

    .prologue
    new-instance v0, Landroid/webkit/CookieManager$3;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManager$3;-><init>(Landroid/webkit/CookieManager;)V

    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public removeSessionCookie()V
    .locals 2

    .prologue
    new-instance v0, Landroid/webkit/CookieManager$1;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManager$1;-><init>(Landroid/webkit/CookieManager;)V

    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized setAcceptCookie(Z)V
    .locals 1
    .parameter "accept"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V
    .locals 25
    .parameter "uri"
    .parameter "value"

    .prologue
    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v21

    const/16 v22, 0x1000

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/CookieManager;->mAcceptCookie:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    if-eqz p1, :cond_0

    invoke-direct/range {p0 .. p1}, Landroid/webkit/CookieManager;->getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;

    move-result-object v12

    .local v12, hostAndPath:[Ljava/lang/String;
    if-eqz v12, :cond_0

    const/16 v21, 0x1

    aget-object v21, v12, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    const/16 v21, 0x1

    aget-object v21, v12, v21

    const/16 v22, 0x2f

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .local v14, index:I
    const/16 v21, 0x1

    const/16 v22, 0x1

    aget-object v22, v12, v22

    const/16 v23, 0x0

    if-lez v14, :cond_b

    move/from16 v24, v14

    :goto_0
    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v14           #index:I
    :cond_2
    const/4 v9, 0x0

    .local v9, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    const/16 v21, 0x0

    :try_start_2
    aget-object v21, v12, v21

    const/16 v22, 0x1

    aget-object v22, v12, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/CookieManager;->parseCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    :goto_1
    if-eqz v9, :cond_0

    :try_start_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-eqz v21, :cond_0

    const/16 v21, 0x0

    aget-object v21, v12, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/webkit/CookieManager;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .local v4, baseDomain:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    if-nez v8, :cond_3

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/webkit/CookieSyncManager;->getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .local v17, now:J
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, size:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    move v0, v13

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/CookieManager$Cookie;

    .local v5, cookie:Landroid/webkit/CookieManager$Cookie;
    const/4 v10, 0x0

    .local v10, done:Z
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/CookieManager$Cookie;

    .local v6, cookieEntry:Landroid/webkit/CookieManager$Cookie;
    invoke-virtual {v5, v6}, Landroid/webkit/CookieManager$Cookie;->exactMatch(Landroid/webkit/CookieManager$Cookie;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object v0, v5

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_5

    move-object v0, v5

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, v17

    if-lez v21, :cond_c

    :cond_5
    move-object v0, v6

    iget-boolean v0, v0, Landroid/webkit/CookieManager$Cookie;->secure:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    const-string v21, "https"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    :cond_6
    move-object v0, v5

    iget-object v0, v0, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v6

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    move-object v0, v5

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object v2, v6

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-object v0, v5

    iget-boolean v0, v0, Landroid/webkit/CookieManager$Cookie;->secure:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move-object v1, v6

    iput-boolean v0, v1, Landroid/webkit/CookieManager$Cookie;->secure:Z

    move-wide/from16 v0, v17

    move-object v2, v6

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    move-wide/from16 v0, v17

    move-object v2, v6

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    const/16 v21, 0x3

    move/from16 v0, v21

    move-object v1, v6

    iput-byte v0, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    :cond_7
    :goto_4
    const/4 v10, 0x1

    .end local v6           #cookieEntry:Landroid/webkit/CookieManager$Cookie;
    :cond_8
    if-nez v10, :cond_f

    move-object v0, v5

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_9

    move-object v0, v5

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, v17

    if-lez v21, :cond_f

    :cond_9
    move-wide/from16 v0, v17

    move-object v2, v5

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    move-wide/from16 v0, v17

    move-object v2, v5

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object v1, v5

    iput-byte v0, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x32

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_e

    new-instance v20, Landroid/webkit/CookieManager$Cookie;

    invoke-direct/range {v20 .. v20}, Landroid/webkit/CookieManager$Cookie;-><init>()V

    .local v20, toDelete:Landroid/webkit/CookieManager$Cookie;
    move-wide/from16 v0, v17

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_a
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/webkit/CookieManager$Cookie;

    .local v7, cookieEntry2:Landroid/webkit/CookieManager$Cookie;
    move-object v0, v7

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-gez v21, :cond_a

    move-object v0, v7

    iget-byte v0, v0, Landroid/webkit/CookieManager$Cookie;->mode:B

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    move-object/from16 v20, v7

    goto :goto_5

    .end local v4           #baseDomain:Ljava/lang/String;
    .end local v5           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v7           #cookieEntry2:Landroid/webkit/CookieManager$Cookie;
    .end local v8           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v9           #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v10           #done:Z
    .end local v13           #i:I
    .end local v15           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v16           #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v17           #now:J
    .end local v19           #size:I
    .end local v20           #toDelete:Landroid/webkit/CookieManager$Cookie;
    .restart local v14       #index:I
    :cond_b
    add-int/lit8 v24, v14, 0x1

    goto/16 :goto_0

    .end local v14           #index:I
    .restart local v9       #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :catch_0
    move-exception v21

    move-object/from16 v11, v21

    .local v11, ex:Ljava/lang/RuntimeException;
    const-string v21, "webkit"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parse cookie failed for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .end local v9           #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .end local v12           #hostAndPath:[Ljava/lang/String;
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .restart local v4       #baseDomain:Ljava/lang/String;
    .restart local v8       #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v9       #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v12       #hostAndPath:[Ljava/lang/String;
    :catch_1
    move-exception v21

    move-object/from16 v11, v21

    .restart local v11       #ex:Ljava/lang/RuntimeException;
    :try_start_6
    const-string v21, "webkit"

    const-string v22, "getCookie() caught Exception: "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .end local v11           #ex:Ljava/lang/RuntimeException;
    .restart local v5       #cookie:Landroid/webkit/CookieManager$Cookie;
    .restart local v6       #cookieEntry:Landroid/webkit/CookieManager$Cookie;
    .restart local v10       #done:Z
    .restart local v13       #i:I
    .restart local v15       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v17       #now:J
    .restart local v19       #size:I
    :cond_c
    move-wide/from16 v0, v17

    move-object v2, v6

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    const/16 v21, 0x2

    move/from16 v0, v21

    move-object v1, v6

    iput-byte v0, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    goto/16 :goto_4

    .end local v6           #cookieEntry:Landroid/webkit/CookieManager$Cookie;
    .restart local v16       #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v20       #toDelete:Landroid/webkit/CookieManager$Cookie;
    :cond_d
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-byte v0, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    .end local v16           #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v20           #toDelete:Landroid/webkit/CookieManager$Cookie;
    :cond_e
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "url"
    .parameter "value"

    .prologue
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {p0, v1, p2}, Landroid/webkit/CookieManager;->setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V

    .end local v1           #uri:Landroid/net/WebAddress;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/net/ParseException;
    const-string v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method declared-synchronized syncedACookie(Landroid/webkit/CookieManager$Cookie;)V
    .locals 1
    .parameter "cookie"

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-byte v0, p1, Landroid/webkit/CookieManager$Cookie;->mode:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
