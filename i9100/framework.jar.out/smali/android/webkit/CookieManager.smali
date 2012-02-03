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
    .line 74
    const-string/jumbo v0, "secure"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    .line 76
    const-string v0, "httponly"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    .line 105
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

    const-string/jumbo v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "org"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/CookieManager;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    .line 110
    sget-object v0, Landroid/webkit/CookieManager;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 203
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

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc8

    const/high16 v2, 0x3f40

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    .line 99
    iput-boolean v3, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z

    .line 239
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/CookieManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Landroid/webkit/CookieManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    return-object p1
.end method

.method private getBaseDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "host"

    .prologue
    const/16 v3, 0x2e

    .line 753
    const/4 v2, 0x0

    .line 754
    .local v2, startIndex:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 755
    .local v1, nextIndex:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 756
    .local v0, lastIndex:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 757
    add-int/lit8 v2, v1, 0x1

    .line 758
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    .line 760
    :cond_0
    if-lez v2, :cond_1

    .line 761
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 763
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

    .line 695
    iget-object v2, p1, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 705
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 706
    .local v1, ret:[Ljava/lang/String;
    iget-object v2, p1, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 707
    iget-object v2, p1, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 709
    aget-object v2, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 710
    .local v0, index:I
    if-ne v0, v6, :cond_1

    .line 711
    iget-object v2, p1, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 715
    const-string v2, "localhost"

    aput-object v2, v1, v4

    .line 722
    :cond_0
    :goto_0
    aget-object v2, v1, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_2

    move-object v2, v7

    .line 743
    .end local v0           #index:I
    .end local v1           #ret:[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 717
    .restart local v0       #index:I
    .restart local v1       #ret:[Ljava/lang/String;
    :cond_1
    aget-object v2, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 719
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

    .line 736
    :cond_2
    aget-object v2, v1, v5

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 737
    if-eq v0, v6, :cond_3

    .line 738
    aget-object v2, v1, v5

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    :cond_3
    move-object v2, v1

    .line 741
    goto :goto_1

    .end local v0           #index:I
    .end local v1           #ret:[Ljava/lang/String;
    :cond_4
    move-object v2, v7

    .line 743
    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Landroid/webkit/CookieManager;
    .locals 2

    .prologue
    .line 254
    const-class v0, Landroid/webkit/CookieManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/CookieManager;->sRef:Landroid/webkit/CookieManager;

    if-nez v1, :cond_0

    .line 255
    new-instance v1, Landroid/webkit/CookieManager;

    invoke-direct {v1}, Landroid/webkit/CookieManager;-><init>()V

    sput-object v1, Landroid/webkit/CookieManager;->sRef:Landroid/webkit/CookieManager;

    .line 257
    :cond_0
    sget-object v1, Landroid/webkit/CookieManager;->sRef:Landroid/webkit/CookieManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private parseCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 25
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
    .line 783
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v15, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    const/4 v10, 0x0

    .line 786
    .local v10, index:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    .line 788
    .local v13, length:I
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 791
    .local v5, cookie:Landroid/webkit/CookieManager$Cookie;
    if-ltz v10, :cond_1

    if-lt v10, v13, :cond_2

    .line 1017
    :cond_1
    return-object v15

    .line 796
    :cond_2
    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 797
    add-int/lit8 v10, v10, 0x1

    .line 798
    goto :goto_0

    .line 810
    :cond_3
    const/16 v19, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 811
    .local v17, semicolonIndex:I
    const/16 v19, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 812
    .local v7, equalIndex:I
    new-instance v5, Landroid/webkit/CookieManager$Cookie;

    .end local v5           #cookie:Landroid/webkit/CookieManager$Cookie;
    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/webkit/CookieManager$Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    .restart local v5       #cookie:Landroid/webkit/CookieManager$Cookie;
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    move/from16 v0, v17

    move v1, v7

    if-lt v0, v1, :cond_5

    :cond_4
    const/16 v19, -0x1

    move v0, v7

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 823
    :cond_5
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 824
    move/from16 v17, v13

    .line 826
    :cond_6
    move-object/from16 v0, p3

    move v1, v10

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    .line 827
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    .line 860
    :goto_1
    move/from16 v10, v17

    .line 863
    :cond_7
    :goto_2
    if-ltz v10, :cond_8

    if-lt v10, v13, :cond_f

    .line 1013
    :cond_8
    :goto_3
    if-eqz v5, :cond_0

    move-object v0, v5

    iget-object v0, v0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1014
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 829
    :cond_9
    move-object/from16 v0, p3

    move v1, v10

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    .line 832
    const/16 v19, 0x1

    sub-int v19, v13, v19

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 834
    const/16 v19, 0x22

    add-int/lit8 v20, v7, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 835
    const/16 v19, -0x1

    move v0, v10

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 842
    :cond_a
    const/16 v19, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 843
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 844
    move/from16 v17, v13

    .line 846
    :cond_b
    sub-int v19, v17, v7

    const/16 v20, 0x1000

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 848
    add-int/lit8 v19, v7, 0x1

    add-int/lit8 v20, v7, 0x1

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x1000

    move/from16 v20, v0

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    goto/16 :goto_1

    .line 850
    :cond_c
    add-int/lit8 v19, v7, 0x1

    move/from16 v0, v19

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    move/from16 v0, v17

    move v1, v7

    if-ge v0, v1, :cond_e

    .line 853
    :cond_d
    const-string v19, ""

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    goto/16 :goto_1

    .line 855
    :cond_e
    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    goto/16 :goto_1

    .line 868
    :cond_f
    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x3b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 870
    :cond_10
    add-int/lit8 v10, v10, 0x1

    .line 871
    goto/16 :goto_2

    .line 875
    :cond_11
    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 876
    add-int/lit8 v10, v10, 0x1

    .line 877
    goto/16 :goto_3

    .line 882
    :cond_12
    sub-int v19, v13, v10

    sget v20, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_13

    sget v19, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    add-int v19, v19, v10

    move-object/from16 v0, p3

    move v1, v10

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "secure"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 885
    sget v19, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    add-int v10, v10, v19

    .line 886
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object v1, v5

    iput-boolean v0, v1, Landroid/webkit/CookieManager$Cookie;->secure:Z

    .line 887
    if-eq v10, v13, :cond_8

    .line 888
    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x3d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 894
    :cond_13
    sub-int v19, v13, v10

    sget v20, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_14

    sget v19, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    add-int v19, v19, v10

    move-object/from16 v0, p3

    move v1, v10

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "httponly"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 898
    sget v19, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    add-int v10, v10, v19

    .line 899
    if-eq v10, v13, :cond_8

    .line 900
    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x3d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 904
    :cond_14
    const/16 v19, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 905
    if-lez v7, :cond_22

    .line 906
    move-object/from16 v0, p3

    move v1, v10

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 908
    .local v14, name:Ljava/lang/String;
    const-string v19, "expires"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 909
    const/16 v19, 0x2c

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 914
    .local v3, comaIndex:I
    const/16 v19, -0x1

    move v0, v3

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    sub-int v19, v3, v7

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_15

    .line 916
    add-int/lit8 v10, v3, 0x1

    .line 919
    .end local v3           #comaIndex:I
    :cond_15
    const/16 v19, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 920
    const/16 v19, 0x2c

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 921
    .local v4, commaIndex:I
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    const/16 v19, -0x1

    move v0, v4

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    .line 922
    move v10, v13

    .line 930
    :goto_4
    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 934
    .local v18, value:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_16

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 935
    const/16 v19, 0x22

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 936
    .local v6, endQuote:I
    if-lez v6, :cond_16

    .line 937
    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 940
    .end local v6           #endQuote:I
    :cond_16
    const-string v19, "expires"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 942
    :try_start_0
    invoke-static/range {v18 .. v18}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object v2, v5

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->expires:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 943
    :catch_0
    move-exception v19

    move-object/from16 v8, v19

    .line 944
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "illegal format for expires: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 923
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    .end local v18           #value:Ljava/lang/String;
    :cond_17
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 924
    move v10, v4

    goto :goto_4

    .line 925
    :cond_18
    const/16 v19, -0x1

    move v0, v4

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 926
    move/from16 v10, v17

    goto/16 :goto_4

    .line 928
    :cond_19
    move/from16 v0, v17

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_4

    .line 947
    .restart local v18       #value:Ljava/lang/String;
    :cond_1a
    const-string/jumbo v19, "max-age"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 949
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    mul-long v21, v21, v23

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    move-object v2, v5

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->expires:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 951
    :catch_1
    move-exception v19

    move-object/from16 v8, v19

    .line 952
    .local v8, ex:Ljava/lang/NumberFormatException;
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "illegal format for max-age: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 955
    .end local v8           #ex:Ljava/lang/NumberFormatException;
    :cond_1b
    const-string/jumbo v19, "path"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 957
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_7

    .line 958
    move-object/from16 v0, v18

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    goto/16 :goto_2

    .line 960
    :cond_1c
    const-string v19, "domain"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 961
    const/16 v19, 0x2e

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 962
    .local v11, lastPeriod:I
    if-nez v11, :cond_1d

    .line 964
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .line 968
    :cond_1d
    add-int/lit8 v19, v11, 0x1

    :try_start_2
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 970
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 972
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 975
    :catch_2
    move-exception v19

    .line 978
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 979
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2e

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1e

    .line 981
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x2e

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 982
    add-int/lit8 v11, v11, 0x1

    .line 984
    :cond_1e
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_21

    .line 985
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v12

    .line 986
    .local v12, len:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 987
    .local v9, hostLen:I
    const/16 v19, 0x1

    sub-int v19, v12, v19

    move v0, v9

    move/from16 v1, v19

    if-le v0, v1, :cond_1f

    sub-int v19, v9, v12

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2e

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1f

    .line 990
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .line 994
    :cond_1f
    add-int/lit8 v19, v11, 0x3

    move v0, v12

    move/from16 v1, v19

    if-ne v0, v1, :cond_20

    const/16 v19, 0x6

    move v0, v12

    move/from16 v1, v19

    if-lt v0, v1, :cond_20

    const/16 v19, 0x8

    move v0, v12

    move/from16 v1, v19

    if-gt v0, v1, :cond_20

    .line 996
    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 997
    .local v16, s:Ljava/lang/String;
    sget-object v19, Landroid/webkit/CookieManager;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    if-ltz v19, :cond_20

    .line 998
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .line 1002
    .end local v16           #s:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, v18

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .line 1005
    .end local v9           #hostLen:I
    .end local v12           #len:I
    :cond_21
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .line 1010
    .end local v4           #commaIndex:I
    .end local v11           #lastPeriod:I
    .end local v14           #name:Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    :cond_22
    move v10, v13

    goto/16 :goto_2
.end method


# virtual methods
.method public declared-synchronized acceptCookie()Z
    .locals 1

    .prologue
    .line 273
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
    .line 242
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized deleteACookie(Landroid/webkit/CookieManager$Cookie;)V
    .locals 4
    .parameter "cookie"

    .prologue
    .line 606
    monitor-enter p0

    :try_start_0
    iget-byte v2, p1, Landroid/webkit/CookieManager$Cookie;->mode:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 607
    iget-object v2, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/webkit/CookieManager;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, baseDomain:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 609
    .local v1, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-eqz v1, :cond_0

    .line 610
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 611
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    iget-object v2, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    .end local v0           #baseDomain:Ljava/lang/String;
    .end local v1           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 606
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized deleteLRUDomain()Ljava/util/ArrayList;
    .locals 17
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
    .line 636
    monitor-enter p0

    const/4 v4, 0x0

    .line 637
    .local v4, count:I
    const/4 v1, 0x0

    .line 638
    .local v1, byteCount:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v10

    .line 640
    .local v10, mapSize:I
    const/16 v14, 0xf

    if-ge v10, v14, :cond_3

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 642
    .local v3, cookieLists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 643
    .local v9, listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    const/16 v14, 0x3e8

    if-ge v4, v14, :cond_3

    .line 644
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 645
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    sget-boolean v14, Landroid/webkit/DebugFlags;->COOKIE_MANAGER:Z

    if-eqz v14, :cond_2

    .line 646
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 647
    .local v7, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x3e8

    if-ge v4, v14, :cond_0

    .line 648
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/CookieManager$Cookie;

    .line 651
    .local v2, cookie:Landroid/webkit/CookieManager$Cookie;
    iget-object v14, v2, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    iget-object v15, v2, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    iget-object v15, v2, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    iget-object v15, v2, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    if-eqz v15, :cond_1

    iget-object v15, v2, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    :goto_2
    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0xe

    add-int/2addr v1, v14

    .line 658
    add-int/lit8 v4, v4, 0x1

    .line 659
    goto :goto_1

    .line 651
    :cond_1
    const/4 v15, 0x0

    goto :goto_2

    .line 661
    .end local v2           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v7           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v4, v14

    goto :goto_0

    .line 666
    .end local v3           #cookieLists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v9           #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v11, retlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    const/16 v14, 0xf

    if-ge v10, v14, :cond_4

    const/16 v14, 0x3e8

    if-lt v4, v14, :cond_7

    .line 668
    :cond_4
    sget-boolean v14, Landroid/webkit/DebugFlags;->COOKIE_MANAGER:Z

    if-eqz v14, :cond_5

    .line 669
    const-string/jumbo v14, "webkit"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " cookies used "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bytes with "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " domains"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 673
    .local v6, domains:[Ljava/lang/Object;
    div-int/lit8 v14, v10, 0xa

    add-int/lit8 v12, v14, 0x1

    .local v12, toGo:I
    move v13, v12

    .line 674
    .end local v12           #toGo:I
    .local v13, toGo:I
    :goto_3
    add-int/lit8 v12, v13, -0x1

    .end local v13           #toGo:I
    .restart local v12       #toGo:I
    if-lez v13, :cond_7

    .line 675
    aget-object v14, v6, v12

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 676
    .local v5, domain:Ljava/lang/String;
    sget-boolean v14, Landroid/webkit/DebugFlags;->COOKIE_MANAGER:Z

    if-eqz v14, :cond_6

    .line 677
    const-string/jumbo v14, "webkit"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete domain: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " from RAM cache"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object v14, v0

    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object v14, v0

    invoke-interface {v14, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v13, v12

    .line 682
    .end local v12           #toGo:I
    .restart local v13       #toGo:I
    goto :goto_3

    .line 684
    .end local v5           #domain:Ljava/lang/String;
    .end local v6           #domains:[Ljava/lang/Object;
    .end local v13           #toGo:I
    :cond_7
    monitor-exit p0

    return-object v11

    .line 636
    .end local v10           #mapSize:I
    .end local v11           #retlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14
.end method

.method public declared-synchronized getCookie(Landroid/net/WebAddress;)Ljava/lang/String;
    .locals 17
    .parameter "uri"

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/CookieManager;->mAcceptCookie:Z

    move v13, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_0

    if-nez p1, :cond_1

    .line 430
    :cond_0
    const/4 v13, 0x0

    .line 493
    :goto_0
    monitor-exit p0

    return-object v13

    .line 433
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/webkit/CookieManager;->getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, hostAndPath:[Ljava/lang/String;
    if-nez v6, :cond_2

    .line 435
    const/4 v13, 0x0

    goto :goto_0

    .line 438
    :cond_2
    const/4 v13, 0x0

    aget-object v13, v6, v13

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Landroid/webkit/CookieManager;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, baseDomain:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object v13, v0

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 440
    .local v4, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-nez v4, :cond_3

    .line 441
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/webkit/CookieSyncManager;->getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object v13, v0

    invoke-interface {v13, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 447
    .local v8, now:J
    const-string v13, "https"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 448
    .local v11, secure:Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 450
    .local v7, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    new-instance v5, Ljava/util/TreeSet;

    sget-object v13, Landroid/webkit/CookieManager;->COMPARATOR:Landroid/webkit/CookieManager$CookieComparator;

    invoke-direct {v5, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 451
    .local v5, cookieSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 452
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/CookieManager$Cookie;

    .line 453
    .local v3, cookie:Landroid/webkit/CookieManager$Cookie;
    const/4 v13, 0x0

    aget-object v13, v6, v13

    invoke-virtual {v3, v13}, Landroid/webkit/CookieManager$Cookie;->domainMatch(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    aget-object v13, v6, v13

    invoke-virtual {v3, v13}, Landroid/webkit/CookieManager$Cookie;->pathMatch(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    iget-wide v13, v3, Landroid/webkit/CookieManager$Cookie;->expires:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-ltz v13, :cond_5

    iget-wide v13, v3, Landroid/webkit/CookieManager$Cookie;->expires:J

    cmp-long v13, v13, v8

    if-lez v13, :cond_4

    :cond_5
    iget-boolean v13, v3, Landroid/webkit/CookieManager$Cookie;->secure:Z

    if-eqz v13, :cond_6

    if-eqz v11, :cond_4

    :cond_6
    iget-byte v13, v3, Landroid/webkit/CookieManager$Cookie;->mode:B

    const/4 v14, 0x2

    if-eq v13, v14, :cond_4

    .line 460
    iput-wide v8, v3, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 461
    invoke-interface {v5, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 429
    .end local v2           #baseDomain:Ljava/lang/String;
    .end local v3           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v4           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v5           #cookieSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v6           #hostAndPath:[Ljava/lang/String;
    .end local v7           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v8           #now:J
    .end local v11           #secure:Z
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 465
    .restart local v2       #baseDomain:Ljava/lang/String;
    .restart local v4       #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v5       #cookieSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v6       #hostAndPath:[Ljava/lang/String;
    .restart local v7       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v8       #now:J
    .restart local v11       #secure:Z
    :cond_7
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v13, 0x100

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 466
    .local v10, ret:Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 467
    .local v12, setIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_8
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 468
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/CookieManager$Cookie;

    .line 469
    .restart local v3       #cookie:Landroid/webkit/CookieManager$Cookie;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_9

    .line 470
    const/16 v13, 0x3b

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    const/16 v13, 0x20

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    :cond_9
    iget-object v13, v3, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    iget-object v13, v3, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    if-eqz v13, :cond_8

    .line 478
    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    iget-object v13, v3, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 483
    .end local v3           #cookie:Landroid/webkit/CookieManager$Cookie;
    :cond_a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_c

    .line 484
    sget-boolean v13, Landroid/webkit/DebugFlags;->COOKIE_MANAGER:Z

    if-eqz v13, :cond_b

    .line 485
    const-string/jumbo v13, "webkit"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCookie: uri: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " value: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 489
    :cond_c
    sget-boolean v13, Landroid/webkit/DebugFlags;->COOKIE_MANAGER:Z

    if-eqz v13, :cond_d

    .line 490
    const-string/jumbo v13, "webkit"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCookie: uri: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " But can\'t find cookie."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 493
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    .line 412
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {p0, v1}, Landroid/webkit/CookieManager;->getCookie(Landroid/net/WebAddress;)Ljava/lang/String;

    move-result-object v2

    .end local v1           #uri:Landroid/net/WebAddress;
    :goto_0
    return-object v2

    .line 413
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 414
    .local v0, ex:Landroid/net/ParseException;
    const-string/jumbo v2, "webkit"

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

    .line 415
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
    .line 583
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v2, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    iget-object v6, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 585
    .local v1, cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 586
    .local v5, listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 587
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 588
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 589
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 590
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/CookieManager$Cookie;

    .line 591
    .local v0, cookie:Landroid/webkit/CookieManager$Cookie;
    iget-wide v6, v0, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    cmp-long v6, v6, p1

    if-lez v6, :cond_1

    .line 592
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 583
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

    .line 596
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
    .line 543
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
    .line 527
    new-instance v0, Landroid/webkit/CookieManager$2;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManager$2;-><init>(Landroid/webkit/CookieManager;)V

    .line 536
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 537
    return-void
.end method

.method public removeExpiredCookie()V
    .locals 2

    .prologue
    .line 550
    new-instance v0, Landroid/webkit/CookieManager$3;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManager$3;-><init>(Landroid/webkit/CookieManager;)V

    .line 572
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 573
    return-void
.end method

.method public removeSessionCookie()V
    .locals 2

    .prologue
    .line 501
    new-instance v0, Landroid/webkit/CookieManager$1;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManager$1;-><init>(Landroid/webkit/CookieManager;)V

    .line 520
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 521
    return-void
.end method

.method public declared-synchronized setAcceptCookie(Z)V
    .locals 1
    .parameter "accept"

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 265
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
    .line 304
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

    .line 401
    :cond_0
    monitor-exit p0

    return-void

    .line 307
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/CookieManager;->mAcceptCookie:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    if-eqz p1, :cond_0

    .line 310
    sget-boolean v21, Landroid/webkit/DebugFlags;->COOKIE_MANAGER:Z

    if-eqz v21, :cond_2

    .line 311
    const-string/jumbo v21, "webkit"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "setCookie: uri: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " value: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_2
    invoke-direct/range {p0 .. p1}, Landroid/webkit/CookieManager;->getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;

    move-result-object v12

    .line 315
    .local v12, hostAndPath:[Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 323
    const/16 v21, 0x1

    aget-object v21, v12, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 324
    const/16 v21, 0x1

    aget-object v21, v12, v21

    const/16 v22, 0x2f

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 325
    .local v14, index:I
    const/16 v21, 0x1

    const/16 v22, 0x1

    aget-object v22, v12, v22

    const/16 v23, 0x0

    if-lez v14, :cond_c

    move/from16 v24, v14

    :goto_0
    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    .end local v14           #index:I
    :cond_3
    const/4 v9, 0x0

    .line 331
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

    .line 336
    :goto_1
    if-eqz v9, :cond_0

    :try_start_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-eqz v21, :cond_0

    .line 340
    const/16 v21, 0x0

    aget-object v21, v12, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/webkit/CookieManager;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, baseDomain:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 342
    .local v8, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-nez v8, :cond_4

    .line 343
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/webkit/CookieSyncManager;->getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 349
    .local v17, now:J
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 350
    .local v19, size:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    move v0, v13

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 351
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/CookieManager$Cookie;

    .line 353
    .local v5, cookie:Landroid/webkit/CookieManager$Cookie;
    const/4 v10, 0x0

    .line 354
    .local v10, done:Z
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 355
    .local v15, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 356
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/CookieManager$Cookie;

    .line 357
    .local v6, cookieEntry:Landroid/webkit/CookieManager$Cookie;
    invoke-virtual {v5, v6}, Landroid/webkit/CookieManager$Cookie;->exactMatch(Landroid/webkit/CookieManager$Cookie;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 360
    move-object v0, v5

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_6

    move-object v0, v5

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, v17

    if-lez v21, :cond_d

    .line 362
    :cond_6
    move-object v0, v6

    iget-boolean v0, v0, Landroid/webkit/CookieManager$Cookie;->secure:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    const-string v21, "https"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 363
    :cond_7
    move-object v0, v5

    iget-object v0, v0, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v6

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    .line 364
    move-object v0, v5

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object v2, v6

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->expires:J

    .line 365
    move-object v0, v5

    iget-boolean v0, v0, Landroid/webkit/CookieManager$Cookie;->secure:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move-object v1, v6

    iput-boolean v0, v1, Landroid/webkit/CookieManager$Cookie;->secure:Z

    .line 366
    move-wide/from16 v0, v17

    move-object v2, v6

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 367
    move-wide/from16 v0, v17

    move-object v2, v6

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    .line 368
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object v1, v6

    iput-byte v0, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 374
    :cond_8
    :goto_3
    const/4 v10, 0x1

    .line 381
    .end local v6           #cookieEntry:Landroid/webkit/CookieManager$Cookie;
    :cond_9
    if-nez v10, :cond_10

    move-object v0, v5

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_a

    move-object v0, v5

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, v17

    if-lez v21, :cond_10

    .line 382
    :cond_a
    move-wide/from16 v0, v17

    move-object v2, v5

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 383
    move-wide/from16 v0, v17

    move-object v2, v5

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    .line 384
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object v1, v5

    iput-byte v0, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 385
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x32

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_f

    .line 386
    new-instance v20, Landroid/webkit/CookieManager$Cookie;

    invoke-direct/range {v20 .. v20}, Landroid/webkit/CookieManager$Cookie;-><init>()V

    .line 387
    .local v20, toDelete:Landroid/webkit/CookieManager$Cookie;
    move-wide/from16 v0, v17

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 388
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 389
    .local v16, iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_b
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 390
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/webkit/CookieManager$Cookie;

    .line 391
    .local v7, cookieEntry2:Landroid/webkit/CookieManager$Cookie;
    move-object v0, v7

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-gez v21, :cond_b

    move-object v0, v7

    iget-byte v0, v0, Landroid/webkit/CookieManager$Cookie;->mode:B

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 393
    move-object/from16 v20, v7

    goto :goto_4

    .line 325
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
    :cond_c
    add-int/lit8 v24, v14, 0x1

    goto/16 :goto_0

    .line 332
    .end local v14           #index:I
    .restart local v9       #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :catch_0
    move-exception v21

    move-object/from16 v11, v21

    .line 333
    .local v11, ex:Ljava/lang/RuntimeException;
    const-string/jumbo v21, "webkit"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "parse cookie failed for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 304
    .end local v9           #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .end local v12           #hostAndPath:[Ljava/lang/String;
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 371
    .restart local v4       #baseDomain:Ljava/lang/String;
    .restart local v5       #cookie:Landroid/webkit/CookieManager$Cookie;
    .restart local v6       #cookieEntry:Landroid/webkit/CookieManager$Cookie;
    .restart local v8       #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v9       #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v10       #done:Z
    .restart local v12       #hostAndPath:[Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v15       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v17       #now:J
    .restart local v19       #size:I
    :cond_d
    :try_start_4
    move-wide/from16 v0, v17

    move-object v2, v6

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    .line 372
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object v1, v6

    iput-byte v0, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    goto/16 :goto_3

    .line 396
    .end local v6           #cookieEntry:Landroid/webkit/CookieManager$Cookie;
    .restart local v16       #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v20       #toDelete:Landroid/webkit/CookieManager$Cookie;
    :cond_e
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-byte v0, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 398
    .end local v16           #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v20           #toDelete:Landroid/webkit/CookieManager$Cookie;
    :cond_f
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 350
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "url"
    .parameter "value"

    .prologue
    .line 286
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {p0, v1, p2}, Landroid/webkit/CookieManager;->setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V

    .line 292
    .end local v1           #uri:Landroid/net/WebAddress;
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 288
    .local v0, ex:Landroid/net/ParseException;
    const-string/jumbo v2, "webkit"

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
    .line 625
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-byte v0, p1, Landroid/webkit/CookieManager$Cookie;->mode:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    monitor-exit p0

    return-void

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
