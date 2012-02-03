.class Lcom/android/settings/ZoneList$MyComparator;
.super Ljava/lang/Object;
.source "ZoneList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ZoneList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/HashMap;",
        ">;"
    }
.end annotation


# instance fields
.field private mSortingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "sortingKey"

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/android/settings/ZoneList$MyComparator;->mSortingKey:Ljava/lang/String;

    .line 261
    return-void
.end method

.method private isComparable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 285
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    check-cast p1, Ljava/util/HashMap;

    .end local p1
    check-cast p2, Ljava/util/HashMap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ZoneList$MyComparator;->compare(Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/HashMap;Ljava/util/HashMap;)I
    .locals 3
    .parameter "map1"
    .parameter "map2"

    .prologue
    .line 268
    iget-object v2, p0, Lcom/android/settings/ZoneList$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, value1:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/ZoneList$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 275
    .local v1, value2:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/settings/ZoneList$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 276
    invoke-direct {p0, v1}, Lcom/android/settings/ZoneList$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 281
    .end local v0           #value1:Ljava/lang/Object;
    :goto_0
    return v2

    .line 276
    .restart local v0       #value1:Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 277
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/ZoneList$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 278
    const/4 v2, -0x1

    goto :goto_0

    .line 281
    :cond_2
    check-cast v0, Ljava/lang/Comparable;

    .end local v0           #value1:Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0
.end method

.method public setSortingKey(Ljava/lang/String;)V
    .locals 0
    .parameter "sortingKey"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings/ZoneList$MyComparator;->mSortingKey:Ljava/lang/String;

    .line 265
    return-void
.end method
