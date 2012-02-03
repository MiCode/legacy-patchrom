.class public Landroid/net/MailTo;
.super Ljava/lang/Object;
.source "MailTo.java"


# static fields
.field private static final BODY:Ljava/lang/String; = "body"

.field private static final CC:Ljava/lang/String; = "cc"

.field public static final MAILTO_SCHEME:Ljava/lang/String; = "mailto:"

.field private static final SUBJECT:Ljava/lang/String; = "subject"

.field private static final TO:Ljava/lang/String; = "to"


# instance fields
.field private mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    .line 171
    return-void
.end method

.method public static isMailTo(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 51
    if-eqz p0, :cond_0

    const-string/jumbo v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Landroid/net/MailTo;
    .locals 9
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ParseException;
        }
    .end annotation

    .prologue
    .line 65
    if-nez p0, :cond_0

    .line 66
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 68
    .restart local p0
    :cond_0
    invoke-static {p0}, Landroid/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    new-instance p0, Landroid/net/ParseException;

    .end local p0
    const-string v0, "Not a mailto scheme"

    invoke-direct {p0, v0}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    .restart local p0
    :cond_1
    const-string/jumbo v0, "mailto:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 73
    .local p0, noScheme:Ljava/lang/String;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 74
    .local v0, email:Landroid/net/Uri;
    new-instance v3, Landroid/net/MailTo;

    invoke-direct {v3}, Landroid/net/MailTo;-><init>()V

    .line 77
    .local v3, m:Landroid/net/MailTo;
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p0

    .line 78
    .local p0, query:Ljava/lang/String;
    if-eqz p0, :cond_4

    .line 79
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 80
    .local p0, queries:[Ljava/lang/String;
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/String;
    array-length v2, p0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v4, p0, v1

    .line 81
    .local v4, q:Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, nameval:[Ljava/lang/String;
    array-length v5, v4

    if-nez v5, :cond_2

    .line 80
    .end local v4           #nameval:[Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .restart local v4       #nameval:[Ljava/lang/String;
    :cond_2
    iget-object v5, v3, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    array-length v7, v4

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    const/4 v7, 0x1

    aget-object v4, v4, v7

    .end local v4           #nameval:[Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .restart local v4       #nameval:[Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 94
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #nameval:[Ljava/lang/String;
    .end local p0           #arr$:[Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 96
    invoke-virtual {v3}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object p0

    .line 97
    .local p0, addr:Ljava/lang/String;
    if-eqz p0, :cond_5

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #address:Ljava/lang/String;
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #addr:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 100
    .local p0, address:Ljava/lang/String;
    :goto_3
    iget-object v0, v3, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    const-string/jumbo v1, "to"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_4
    return-object v3

    .restart local v0       #address:Ljava/lang/String;
    .local p0, addr:Ljava/lang/String;
    :cond_5
    move-object p0, v0

    .end local v0           #address:Ljava/lang/String;
    .local p0, address:Ljava/lang/String;
    goto :goto_3

    .end local p0           #address:Ljava/lang/String;
    .restart local v0       #address:Ljava/lang/String;
    :cond_6
    move-object p0, v0

    .end local v0           #address:Ljava/lang/String;
    .restart local p0       #address:Ljava/lang/String;
    goto :goto_4
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    const-string v1, "cc"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    const-string/jumbo v1, "to"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mailto:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, sb:Ljava/lang/StringBuilder;
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    iget-object v3, p0, Landroid/net/MailTo;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    .local v0, header:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 162
    .end local v0           #header:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
