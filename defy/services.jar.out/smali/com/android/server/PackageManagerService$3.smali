.class final Lcom/android/server/PackageManagerService$3;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .parameter "r1"
    .parameter "r2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .local v0, v1:I
    iget v1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .local v1, v2:I
    if-eq v0, v1, :cond_1

    if-le v0, v1, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v1, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-eq v0, v1, :cond_3

    if-le v0, v1, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    iget-boolean v2, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v3, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v2, v3, :cond_5

    iget-boolean v2, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    move v2, v5

    goto :goto_0

    :cond_5
    iget v0, p1, Landroid/content/pm/ResolveInfo;->match:I

    iget v1, p2, Landroid/content/pm/ResolveInfo;->match:I

    if-le v0, v1, :cond_6

    move v2, v4

    goto :goto_0

    :cond_6
    if-ge v0, v1, :cond_7

    move v2, v5

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/PackageManagerService$3;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
