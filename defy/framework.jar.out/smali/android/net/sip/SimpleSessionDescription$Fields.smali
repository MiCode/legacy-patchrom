.class Landroid/net/sip/SimpleSessionDescription$Fields;
.super Ljava/lang/Object;
.source "SimpleSessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SimpleSessionDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Fields"
.end annotation


# instance fields
.field private final mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrder:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "order"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mOrder:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->parse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->write(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method

.method private cut(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 6
    .parameter "prefix"
    .parameter "delimiter"

    .prologue
    iget-object v5, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .local v4, names:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, length:I
    iget-object v5, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, line:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, i:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v3           #line:Ljava/lang/String;
    :cond_2
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private find(Ljava/lang/String;C)I
    .locals 5
    .parameter "key"
    .parameter "delimiter"

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, line:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p2, :cond_1

    :cond_0
    move v3, v0

    .end local v2           #line:Ljava/lang/String;
    :goto_1
    return v3

    .restart local v2       #line:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2           #line:Ljava/lang/String;
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private get(Ljava/lang/String;C)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "delimiter"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->find(Ljava/lang/String;C)I

    move-result v0

    .local v0, index:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, line:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v1, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private parse(Ljava/lang/String;)V
    .locals 6
    .parameter "line"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .local v2, type:C
    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mOrder:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x3d

    .local v0, delimiter:C
    const-string v3, "a=rtpmap:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "a=fmtp:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/16 v0, 0x20

    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, i:I
    if-ne v1, v4, :cond_5

    const-string v3, ""

    invoke-direct {p0, p1, v0, v3}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    goto :goto_0

    .end local v1           #i:I
    :cond_3
    const/16 v3, 0x62

    if-eq v2, v3, :cond_4

    const/16 v3, 0x61

    if-ne v2, v3, :cond_2

    :cond_4
    const/16 v0, 0x3a

    goto :goto_1

    .restart local v1       #i:I
    :cond_5
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    goto :goto_0
.end method

.method private set(Ljava/lang/String;CLjava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "delimiter"
    .parameter "value"

    .prologue
    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->find(Ljava/lang/String;C)I

    move-result v0

    .local v0, index:I
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-ne v0, v2, :cond_2

    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eq v0, v2, :cond_1

    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private write(Ljava/lang/StringBuilder;)V
    .locals 6
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mOrder:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mOrder:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .local v3, type:C
    iget-object v4, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, line:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v2           #line:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #type:C
    :cond_2
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const-string v3, "c"

    const/16 v4, 0x3d

    invoke-direct {p0, v3, v4}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v3, v6

    :goto_0
    return-object v3

    :cond_0
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, parts:[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    move-object v3, v6

    goto :goto_0

    :cond_1
    aget-object v3, v1, v5

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, slash:I
    if-gez v2, :cond_2

    aget-object v3, v1, v5

    goto :goto_0

    :cond_2
    aget-object v3, v1, v5

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "a="

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->cut(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBandwidth(Ljava/lang/String;)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-direct {p0, v1, v2}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    invoke-virtual {p0, p1, v3}, Landroid/net/sip/SimpleSessionDescription$Fields;->setBandwidth(Ljava/lang/String;I)V

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public getBandwidthTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "b="

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->cut(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionKey()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v2, "k"

    const/16 v3, 0x3d

    invoke-direct {p0, v2, v3}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .local v1, encryption:Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v2, v4

    :goto_0
    return-object v2

    :cond_0
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, colon:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getEncryptionMethod()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v2, "k"

    const/16 v3, 0x3d

    invoke-direct {p0, v2, v3}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .local v1, encryption:Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, colon:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    const-string v1, "IN IP4 "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "c"

    const/16 v1, 0x3d

    invoke-direct {p0, v0, v1, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "IN IP6 "

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method

.method public setBandwidth(Ljava/lang/String;I)V
    .locals 3
    .parameter "type"
    .parameter "value"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    if-gez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public setEncryption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "method"
    .parameter "key"

    .prologue
    const-string v0, "k"

    const/16 v1, 0x3d

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
