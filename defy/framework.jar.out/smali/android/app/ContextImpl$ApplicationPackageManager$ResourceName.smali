.class final Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;
.super Ljava/lang/Object;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl$ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResourceName"
.end annotation


# instance fields
.field final iconId:I

.field final packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 1
    .parameter "aInfo"
    .parameter "_iconId"

    .prologue
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/pm/ComponentInfo;I)V
    .locals 1
    .parameter "cInfo"
    .parameter "_iconId"

    .prologue
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/pm/ResolveInfo;I)V
    .locals 1
    .parameter "rInfo"
    .parameter "_iconId"

    .prologue
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "_packageName"
    .parameter "_iconId"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    iput p2, p0, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;->iconId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    move v2, v5

    :goto_0
    return v2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;

    move-object v1, v0

    .local v1, that:Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;
    iget v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;->iconId:I

    iget v3, v1, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;->iconId:I

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    iget-object v2, v1, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_6
    move v2, v5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;->iconId:I

    add-int v0, v1, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ResourceName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;->iconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
