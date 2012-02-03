.class abstract Landroid/net/Uri$AbstractHierarchicalUri;
.super Landroid/net/Uri;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractHierarchicalUri"
.end annotation


# instance fields
.field private volatile host:Ljava/lang/String;

.field private volatile port:I

.field private userInfo:Landroid/net/Uri$Part;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 982
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/Uri;-><init>(Landroid/net/Uri$1;)V

    .line 1021
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    .line 1047
    const/4 v0, -0x2

    iput v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 982
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;-><init>()V

    return-void
.end method

.method private getUserInfoPart()Landroid/net/Uri$Part;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->userInfo:Landroid/net/Uri$Part;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->parseUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->userInfo:Landroid/net/Uri$Part;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->userInfo:Landroid/net/Uri$Part;

    goto :goto_0
.end method

.method private parseHost()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1031
    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, authority:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1033
    const/4 v4, 0x0

    .line 1044
    :goto_0
    return-object v4

    .line 1037
    :cond_0
    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1038
    .local v3, userInfoSeparator:I
    const/16 v4, 0x3a

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1040
    .local v2, portSeparator:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1044
    .local v1, encodedHost:Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/net/Uri$AbstractHierarchicalUri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1040
    .end local v1           #encodedHost:Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_1
.end method

.method private parsePort()I
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 1056
    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, authority:Ljava/lang/String;
    if-nez v0, :cond_0

    move v5, v7

    .line 1075
    :goto_0
    return v5

    .line 1063
    :cond_0
    const/16 v5, 0x40

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1064
    .local v4, userInfoSeparator:I
    const/16 v5, 0x3a

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1066
    .local v2, portSeparator:I
    if-ne v2, v7, :cond_1

    move v5, v7

    .line 1067
    goto :goto_0

    .line 1070
    :cond_1
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri$AbstractHierarchicalUri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1072
    .local v3, portString:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 1073
    :catch_0
    move-exception v1

    .line 1074
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Landroid/net/Uri;->access$600()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error parsing port string."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v7

    .line 1075
    goto :goto_0
.end method

.method private parseUserInfo()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1008
    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, authority:Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v2, v3

    .line 1014
    :goto_0
    return-object v2

    .line 1013
    :cond_0
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1014
    .local v1, end:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 982
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-super {p0, p1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public final getEncodedUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getUserInfoPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1025
    iget-object v1, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 1026
    .local v0, cached:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    :goto_1
    return-object v1

    .line 1025
    .end local v0           #cached:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 1026
    .restart local v0       #cached:Z
    :cond_1
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->parseHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    goto :goto_1
.end method

.method public getLastPathSegment()Ljava/lang/String;
    .locals 3

    .prologue
    .line 988
    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 989
    .local v0, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 990
    .local v1, size:I
    if-nez v1, :cond_0

    .line 991
    const/4 v2, 0x0

    .line 993
    .end local p0
    :goto_0
    return-object v2

    .restart local p0
    :cond_0
    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    goto :goto_0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 1050
    iget v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->parsePort()I

    move-result v0

    iput v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    goto :goto_0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1018
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getUserInfoPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
