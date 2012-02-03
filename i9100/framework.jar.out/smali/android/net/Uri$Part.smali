.class Landroid/net/Uri$Part;
.super Landroid/net/Uri$AbstractPart;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$Part$EmptyPart;
    }
.end annotation


# static fields
.field static final EMPTY:Landroid/net/Uri$Part;

.field static final NULL:Landroid/net/Uri$Part;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1948
    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    .line 1951
    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "encoded"
    .parameter "decoded"

    .prologue
    .line 1954
    invoke-direct {p0, p1, p2}, Landroid/net/Uri$AbstractPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1945
    invoke-direct {p0, p1, p2}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;
    .locals 1
    .parameter "encoded"
    .parameter "decoded"

    .prologue
    .line 2016
    if-nez p0, :cond_0

    .line 2017
    sget-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    .line 2030
    :goto_0
    return-object v0

    .line 2019
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2020
    sget-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    goto :goto_0

    .line 2023
    :cond_1
    if-nez p1, :cond_2

    .line 2024
    sget-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    goto :goto_0

    .line 2026
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 2027
    sget-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    goto :goto_0

    .line 2030
    :cond_3
    new-instance v0, Landroid/net/Uri$Part;

    invoke-direct {v0, p0, p1}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .locals 1
    .parameter "decoded"

    .prologue
    .line 2003
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    return-object v0
.end method

.method static fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .locals 1
    .parameter "encoded"

    .prologue
    .line 1994
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    return-object v0
.end method

.method static nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;
    .locals 1
    .parameter "part"

    .prologue
    .line 1985
    if-nez p0, :cond_0

    sget-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method static readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;
    .locals 3
    .parameter "parcel"

    .prologue
    .line 1968
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1969
    .local v0, representation:I
    packed-switch v0, :pswitch_data_0

    .line 1977
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1971
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    .line 1975
    :goto_0
    return-object v1

    .line 1973
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    goto :goto_0

    .line 1975
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    goto :goto_0

    .line 1969
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
    .line 1963
    iget-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 1964
    .local v0, hasEncoded:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    :goto_1
    return-object v1

    .line 1963
    .end local v0           #hasEncoded:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 1964
    .restart local v0       #hasEncoded:Z
    :cond_1
    iget-object v1, p0, Landroid/net/Uri$Part;->decoded:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    goto :goto_1
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 1958
    const/4 v0, 0x0

    return v0
.end method
