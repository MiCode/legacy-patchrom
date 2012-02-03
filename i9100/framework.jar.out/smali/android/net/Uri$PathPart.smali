.class Landroid/net/Uri$PathPart;
.super Landroid/net/Uri$AbstractPart;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathPart"
.end annotation


# static fields
.field static final EMPTY:Landroid/net/Uri$PathPart;

.field static final NULL:Landroid/net/Uri$PathPart;


# instance fields
.field private pathSegments:Landroid/net/Uri$PathSegments;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, ""

    .line 2052
    new-instance v0, Landroid/net/Uri$PathPart;

    invoke-direct {v0, v1, v1}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    .line 2055
    new-instance v0, Landroid/net/Uri$PathPart;

    const-string v1, ""

    const-string v1, ""

    invoke-direct {v0, v2, v2}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "encoded"
    .parameter "decoded"

    .prologue
    .line 2058
    invoke-direct {p0, p1, p2}, Landroid/net/Uri$AbstractPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    return-void
.end method

.method static appendDecodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .locals 2
    .parameter "oldPart"
    .parameter "decoded"

    .prologue
    .line 2145
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2148
    .local v0, encoded:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/net/Uri$PathPart;->appendEncodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v1

    return-object v1
.end method

.method static appendEncodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .locals 6
    .parameter "oldPart"
    .parameter "newSegment"

    .prologue
    const-string v5, "/"

    .line 2119
    if-nez p0, :cond_0

    .line 2121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v3

    .line 2141
    :goto_0
    return-object v3

    .line 2124
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    move-result-object v1

    .line 2126
    .local v1, oldPath:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2127
    const-string v1, ""

    .line 2130
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2132
    .local v2, oldPathLength:I
    if-nez v2, :cond_2

    .line 2134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2141
    .local v0, newPath:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v3

    goto :goto_0

    .line 2135
    .end local v0           #newPath:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    sub-int v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_3

    .line 2136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #newPath:Ljava/lang/String;
    goto :goto_1

    .line 2138
    .end local v0           #newPath:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #newPath:Ljava/lang/String;
    goto :goto_1
.end method

.method static from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .locals 1
    .parameter "encoded"
    .parameter "decoded"

    .prologue
    .line 2190
    if-nez p0, :cond_0

    .line 2191
    sget-object v0, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    .line 2198
    :goto_0
    return-object v0

    .line 2194
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2195
    sget-object v0, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    goto :goto_0

    .line 2198
    :cond_1
    new-instance v0, Landroid/net/Uri$PathPart;

    invoke-direct {v0, p0, p1}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .locals 1
    .parameter "decoded"

    .prologue
    .line 2180
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri$PathPart;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    return-object v0
.end method

.method static fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .locals 1
    .parameter "encoded"

    .prologue
    .line 2171
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/Uri$PathPart;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    return-object v0
.end method

.method static makeAbsolute(Landroid/net/Uri$PathPart;)Landroid/net/Uri$PathPart;
    .locals 10
    .parameter "oldPart"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "/"

    .line 2207
    iget-object v5, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_1

    move v1, v9

    .line 2211
    .local v1, encodedCached:Z
    :goto_0
    if-eqz v1, :cond_2

    iget-object v5, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    move-object v4, v5

    .line 2213
    .local v4, oldPath:Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    move-object v5, p0

    .line 2229
    :goto_2
    return-object v5

    .end local v1           #encodedCached:Z
    .end local v4           #oldPath:Ljava/lang/String;
    :cond_1
    move v1, v8

    .line 2207
    goto :goto_0

    .line 2211
    .restart local v1       #encodedCached:Z
    :cond_2
    iget-object v5, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    move-object v4, v5

    goto :goto_1

    .line 2219
    .restart local v4       #oldPath:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 2224
    .local v3, newEncoded:Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_5

    move v0, v9

    .line 2225
    .local v0, decodedCached:Z
    :goto_4
    if-eqz v0, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 2229
    .local v2, newDecoded:Ljava/lang/String;
    :goto_5
    new-instance v5, Landroid/net/Uri$PathPart;

    invoke-direct {v5, v3, v2}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2219
    .end local v0           #decodedCached:Z
    .end local v2           #newDecoded:Ljava/lang/String;
    .end local v3           #newEncoded:Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_3

    .restart local v3       #newEncoded:Ljava/lang/String;
    :cond_5
    move v0, v8

    .line 2224
    goto :goto_4

    .line 2225
    .restart local v0       #decodedCached:Z
    :cond_6
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    goto :goto_5
.end method

.method static readFrom(Landroid/os/Parcel;)Landroid/net/Uri$PathPart;
    .locals 3
    .parameter "parcel"

    .prologue
    .line 2152
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2153
    .local v0, representation:I
    packed-switch v0, :pswitch_data_0

    .line 2161
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2155
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri$PathPart;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v1

    .line 2159
    :goto_0
    return-object v1

    .line 2157
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v1

    goto :goto_0

    .line 2159
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri$PathPart;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v1

    goto :goto_0

    .line 2153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method getEncoded()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2063
    iget-object v1, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 2066
    .local v0, hasEncoded:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    :goto_1
    return-object v1

    .line 2063
    .end local v0           #hasEncoded:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 2066
    .restart local v0       #hasEncoded:Z
    :cond_1
    iget-object v1, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    const-string v2, "/"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    goto :goto_1
.end method

.method getPathSegments()Landroid/net/Uri$PathSegments;
    .locals 6

    .prologue
    .line 2082
    iget-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    if-eqz v5, :cond_0

    .line 2083
    iget-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    .line 2111
    :goto_0
    return-object v5

    .line 2086
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    move-result-object v2

    .line 2087
    .local v2, path:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 2088
    sget-object v5, Landroid/net/Uri$PathSegments;->EMPTY:Landroid/net/Uri$PathSegments;

    iput-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    goto :goto_0

    .line 2091
    :cond_1
    new-instance v4, Landroid/net/Uri$PathSegmentsBuilder;

    invoke-direct {v4}, Landroid/net/Uri$PathSegmentsBuilder;-><init>()V

    .line 2093
    .local v4, segmentBuilder:Landroid/net/Uri$PathSegmentsBuilder;
    const/4 v3, 0x0

    .line 2095
    .local v3, previous:I
    :goto_1
    const/16 v5, 0x2f

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, current:I
    const/4 v5, -0x1

    if-le v0, v5, :cond_3

    .line 2098
    if-ge v3, v0, :cond_2

    .line 2099
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2101
    .local v1, decodedSegment:Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/net/Uri$PathSegmentsBuilder;->add(Ljava/lang/String;)V

    .line 2103
    .end local v1           #decodedSegment:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v0, 0x1

    goto :goto_1

    .line 2107
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 2108
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$PathSegmentsBuilder;->add(Ljava/lang/String;)V

    .line 2111
    :cond_4
    invoke-virtual {v4}, Landroid/net/Uri$PathSegmentsBuilder;->build()Landroid/net/Uri$PathSegments;

    move-result-object v5

    iput-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    goto :goto_0
.end method
