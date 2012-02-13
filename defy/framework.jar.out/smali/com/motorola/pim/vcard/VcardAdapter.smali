.class public Lcom/motorola/pim/vcard/VcardAdapter;
.super Ljava/lang/Object;
.source "VcardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/pim/vcard/VcardAdapter$ActualExport;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VcardAdapter"


# instance fields
.field composer:Landroid/pim/vcard/VCardComposer;

.field private mContext:Landroid/content/Context;

.field private mVCardTypeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/pim/vcard/VcardAdapter;->composer:Landroid/pim/vcard/VCardComposer;

    const-string v0, "v21_generic"

    iput-object v0, p0, Lcom/motorola/pim/vcard/VcardAdapter;->mVCardTypeStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/pim/vcard/VcardAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/pim/vcard/VcardAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/pim/vcard/VcardAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/pim/vcard/VcardAdapter;->mVCardTypeStr:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public MakeNameCards(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter
    .parameter "Version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, ContactValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, mOutputStream:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, mReadedvCard:Ljava/lang/String;
    new-instance v0, Lcom/motorola/pim/vcard/VcardAdapter$ActualExport;

    invoke-direct {v0, p0}, Lcom/motorola/pim/vcard/VcardAdapter$ActualExport;-><init>(Lcom/motorola/pim/vcard/VcardAdapter;)V

    .local v0, mActualExport:Lcom/motorola/pim/vcard/VcardAdapter$ActualExport;
    iput-object p1, p0, Lcom/motorola/pim/vcard/VcardAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/motorola/pim/vcard/VcardAdapter;->mVCardTypeStr:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/motorola/pim/vcard/VcardAdapter$ActualExport;->runningEX(Ljava/util/Map;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v2

    :cond_1
    const-string v3, "VcardAdapter"

    const-string v4, "vCard String null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public MakeNameCards(Landroid/content/Context;[JLjava/lang/String;I)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "IdentityID"
    .parameter "Version"
    .parameter "NumOfVcards"

    .prologue
    const-string v10, " "

    const-string v9, "VcardAdapter"

    array-length v6, p2

    if-gtz v6, :cond_0

    const-string v6, "VcardAdapter"

    const-string v6, "IdentityID size error!"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_0
    const/4 v3, 0x0

    .local v3, mReadedvCard:Ljava/lang/String;
    array-length v6, p2

    new-array v4, v6, [Ljava/lang/String;

    .local v4, mStrIdentityID:[Ljava/lang/String;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v2, mOutputStream:Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .local v0, i:I
    iput-object p1, p0, Lcom/motorola/pim/vcard/VcardAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/motorola/pim/vcard/VcardAdapter;->mVCardTypeStr:Ljava/lang/String;

    const-string v5, "("

    .local v5, mStrIdentityIDs:Ljava/lang/String;
    :goto_1
    array-length v6, p2

    if-ge v0, v6, :cond_2

    array-length v6, p2

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v0, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v7, p2, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v7, p2, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/motorola/pim/vcard/VcardAdapter$ActualExport;

    invoke-direct {v1, p0}, Lcom/motorola/pim/vcard/VcardAdapter$ActualExport;-><init>(Lcom/motorola/pim/vcard/VcardAdapter;)V

    .local v1, mActualExport:Lcom/motorola/pim/vcard/VcardAdapter$ActualExport;
    invoke-virtual {v1, v5}, Lcom/motorola/pim/vcard/VcardAdapter$ActualExport;->running(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    move-object v6, v3

    goto/16 :goto_0

    :cond_3
    const-string v6, "VcardAdapter"

    const-string v6, "Don\'t get vCard String"

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-string v6, "VcardAdapter"

    const-string v6, "vCard String null"

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
