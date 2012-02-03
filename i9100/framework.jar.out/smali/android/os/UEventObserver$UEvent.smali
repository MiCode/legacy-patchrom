.class public Landroid/os/UEventObserver$UEvent;
.super Ljava/lang/Object;
.source "UEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UEvent"
.end annotation


# instance fields
.field public mMap:Ljava/util/HashMap;
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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter "message"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/os/UEventObserver$UEvent;->mMap:Ljava/util/HashMap;

    .line 50
    const/4 v3, 0x0

    .line 51
    .local v3, offset:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 53
    .local v2, length:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 54
    const/16 v4, 0x3d

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 55
    .local v1, equals:I
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 56
    .local v0, at:I
    if-gez v0, :cond_1

    .line 66
    .end local v0           #at:I
    .end local v1           #equals:I
    :cond_0
    return-void

    .line 58
    .restart local v0       #at:I
    .restart local v1       #equals:I
    :cond_1
    if-le v1, v3, :cond_2

    if-ge v1, v0, :cond_2

    .line 60
    iget-object v4, p0, Landroid/os/UEventObserver$UEvent;->mMap:Ljava/util/HashMap;

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_2
    add-int/lit8 v3, v0, 0x1

    .line 65
    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/os/UEventObserver$UEvent;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 73
    iget-object v1, p0, Landroid/os/UEventObserver$UEvent;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p2

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/os/UEventObserver$UEvent;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
