.class final Landroid/webkit/CookieManager$CookieComparator;
.super Ljava/lang/Object;
.source "CookieManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CookieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CookieComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/webkit/CookieManager$Cookie;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/CookieManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/CookieManager$CookieComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/webkit/CookieManager$Cookie;Landroid/webkit/CookieManager$Cookie;)I
    .locals 3
    .parameter "cookie1"
    .parameter "cookie2"

    .prologue
    iget-object v1, p2, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .local v0, diff:I
    if-eqz v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p2, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p2, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    iget-object v2, p2, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Landroid/webkit/CookieManager$Cookie;

    .end local p1
    check-cast p2, Landroid/webkit/CookieManager$Cookie;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/webkit/CookieManager$CookieComparator;->compare(Landroid/webkit/CookieManager$Cookie;Landroid/webkit/CookieManager$Cookie;)I

    move-result v0

    return v0
.end method
