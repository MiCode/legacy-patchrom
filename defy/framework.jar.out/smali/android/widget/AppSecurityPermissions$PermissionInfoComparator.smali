.class Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/PermissionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mPm:Landroid/content/pm/PackageManager;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter "pm"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;->sCollator:Ljava/text/Collator;

    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, sa:Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, sb:Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Landroid/content/pm/PermissionInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/PermissionInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;->compare(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)I

    move-result v0

    return v0
.end method
