.class public Landroid/content/UriMatcher;
.super Ljava/lang/Object;
.source "UriMatcher.java"


# static fields
.field private static final EXACT:I = 0x0

.field public static final NO_MATCH:I = -0x1

.field private static final NUMBER:I = 0x1

.field static final PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final TEXT:I = 0x2


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UriMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCode:I

.field private mText:Ljava/lang/String;

.field private mWhich:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/content/UriMatcher;->PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput v0, p0, Landroid/content/UriMatcher;->mCode:I

    .line 136
    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Landroid/content/UriMatcher;->mCode:I

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 131
    return-void
.end method


# virtual methods
.method public addURI(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .parameter "authority"
    .parameter "path"
    .parameter "code"

    .prologue
    const/4 v10, 0x0

    .line 155
    if-gez p3, :cond_0

    .line 156
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is invalid: it must be positive"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 158
    :cond_0
    if-eqz p2, :cond_3

    sget-object v9, Landroid/content/UriMatcher;->PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 159
    .local v8, tokens:[Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_4

    array-length v9, v8

    move v6, v9

    .line 160
    .local v6, numTokens:I
    :goto_1
    move-object v4, p0

    .line 161
    .local v4, node:Landroid/content/UriMatcher;
    const/4 v2, -0x1

    .local v2, i:I
    :goto_2
    if-ge v2, v6, :cond_9

    .line 162
    if-gez v2, :cond_5

    move-object v7, p1

    .line 163
    .local v7, token:Ljava/lang/String;
    :goto_3
    iget-object v1, v4, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 164
    .local v1, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 167
    .local v5, numChildren:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_4
    if-ge v3, v5, :cond_1

    .line 168
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriMatcher;

    .line 169
    .local v0, child:Landroid/content/UriMatcher;
    iget-object v9, v0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 170
    move-object v4, v0

    .line 174
    .end local v0           #child:Landroid/content/UriMatcher;
    :cond_1
    if-ne v3, v5, :cond_2

    .line 176
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0}, Landroid/content/UriMatcher;-><init>()V

    .line 177
    .restart local v0       #child:Landroid/content/UriMatcher;
    const-string v9, "#"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 178
    const/4 v9, 0x1

    iput v9, v0, Landroid/content/UriMatcher;->mWhich:I

    .line 184
    :goto_5
    iput-object v7, v0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 185
    iget-object v9, v4, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    move-object v4, v0

    .line 161
    .end local v0           #child:Landroid/content/UriMatcher;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 158
    .end local v1           #children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #node:Landroid/content/UriMatcher;
    .end local v5           #numChildren:I
    .end local v6           #numTokens:I
    .end local v7           #token:Ljava/lang/String;
    .end local v8           #tokens:[Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    move-object v8, v9

    goto :goto_0

    .restart local v8       #tokens:[Ljava/lang/String;
    :cond_4
    move v6, v10

    .line 159
    goto :goto_1

    .line 162
    .restart local v2       #i:I
    .restart local v4       #node:Landroid/content/UriMatcher;
    .restart local v6       #numTokens:I
    :cond_5
    aget-object v9, v8, v2

    move-object v7, v9

    goto :goto_3

    .line 167
    .restart local v0       #child:Landroid/content/UriMatcher;
    .restart local v1       #children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .restart local v3       #j:I
    .restart local v5       #numChildren:I
    .restart local v7       #token:Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 179
    :cond_7
    const-string v9, "*"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 180
    const/4 v9, 0x2

    iput v9, v0, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_5

    .line 182
    :cond_8
    iput v10, v0, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_5

    .line 189
    .end local v0           #child:Landroid/content/UriMatcher;
    .end local v1           #children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .end local v3           #j:I
    .end local v5           #numChildren:I
    .end local v7           #token:Ljava/lang/String;
    :cond_9
    iput p3, v4, Landroid/content/UriMatcher;->mCode:I

    .line 190
    return-void
.end method

.method public match(Landroid/net/Uri;)I
    .locals 13
    .parameter "uri"

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    .line 205
    .local v10, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 207
    .local v4, li:I
    move-object v9, p0

    .line 209
    .local v9, node:Landroid/content/UriMatcher;
    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    .line 210
    iget v12, p0, Landroid/content/UriMatcher;->mCode:I

    .line 253
    .end local p0
    :goto_0
    return v12

    .line 213
    .restart local p0
    :cond_0
    const/4 v1, -0x1

    .end local p0
    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 214
    if-gez v1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 215
    .local v11, u:Ljava/lang/String;
    :goto_2
    iget-object v5, v9, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 216
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    if-nez v5, :cond_3

    .line 253
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .end local v11           #u:Ljava/lang/String;
    :cond_1
    iget v12, v9, Landroid/content/UriMatcher;->mCode:I

    goto :goto_0

    .line 214
    :cond_2
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v11, p0

    goto :goto_2

    .line 219
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .restart local v11       #u:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    .line 220
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 221
    .local v6, lj:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-ge v2, v6, :cond_5

    .line 222
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/UriMatcher;

    .line 224
    .local v8, n:Landroid/content/UriMatcher;
    iget v12, v8, Landroid/content/UriMatcher;->mWhich:I

    packed-switch v12, :pswitch_data_0

    .line 244
    :cond_4
    :goto_4
    if-eqz v9, :cond_7

    .line 248
    .end local v8           #n:Landroid/content/UriMatcher;
    :cond_5
    if-nez v9, :cond_8

    .line 249
    const/4 v12, -0x1

    goto :goto_0

    .line 226
    .restart local v8       #n:Landroid/content/UriMatcher;
    :pswitch_0
    iget-object v12, v8, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 227
    move-object v9, v8

    goto :goto_4

    .line 231
    :pswitch_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    .line 232
    .local v7, lk:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_5
    if-ge v3, v7, :cond_6

    .line 233
    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 234
    .local v0, c:C
    const/16 v12, 0x30

    if-lt v0, v12, :cond_4

    const/16 v12, 0x39

    if-gt v0, v12, :cond_4

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 238
    .end local v0           #c:C
    :cond_6
    move-object v9, v8

    .line 239
    goto :goto_4

    .line 241
    .end local v3           #k:I
    .end local v7           #lk:I
    :pswitch_2
    move-object v9, v8

    goto :goto_4

    .line 221
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 213
    .end local v8           #n:Landroid/content/UriMatcher;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
