.class abstract Landroid/net/Uri$AbstractPart;
.super Ljava/lang/Object;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractPart"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$AbstractPart$Representation;
    }
.end annotation


# instance fields
.field volatile decoded:Ljava/lang/String;

.field volatile encoded:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "encoded"
    .parameter "decoded"

    .prologue
    .line 1905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1906
    iput-object p1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    .line 1907
    iput-object p2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    .line 1908
    return-void
.end method


# virtual methods
.method final getDecoded()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1914
    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 1915
    .local v0, hasDecoded:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    :goto_1
    return-object v1

    .line 1914
    .end local v0           #hasDecoded:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 1915
    .restart local v0       #hasDecoded:Z
    :cond_1
    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    goto :goto_1
.end method

.method abstract getEncoded()Ljava/lang/String;
.end method

.method final writeTo(Landroid/os/Parcel;)V
    .locals 6
    .parameter "parcel"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1920
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_0

    move v1, v5

    .line 1923
    .local v1, hasEncoded:Z
    :goto_0
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move v0, v5

    .line 1925
    .local v0, hasDecoded:Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1926
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1927
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1928
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1938
    :goto_2
    return-void

    .end local v0           #hasDecoded:Z
    .end local v1           #hasEncoded:Z
    :cond_0
    move v1, v4

    .line 1920
    goto :goto_0

    .restart local v1       #hasEncoded:Z
    :cond_1
    move v0, v4

    .line 1923
    goto :goto_1

    .line 1929
    .restart local v0       #hasDecoded:Z
    :cond_2
    if-eqz v1, :cond_3

    .line 1930
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1931
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 1932
    :cond_3
    if-eqz v0, :cond_4

    .line 1933
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1934
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 1936
    :cond_4
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method
