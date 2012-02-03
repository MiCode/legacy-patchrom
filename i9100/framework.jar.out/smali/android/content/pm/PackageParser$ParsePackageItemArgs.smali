.class Landroid/content/pm/PackageParser$ParsePackageItemArgs;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParsePackageItemArgs"
.end annotation


# instance fields
.field final iconRes:I

.field final labelRes:I

.field final logoRes:I

.field final nameRes:I

.field final outError:[Ljava/lang/String;

.field final owner:Landroid/content/pm/PackageParser$Package;

.field sa:Landroid/content/res/TypedArray;

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII)V
    .locals 0
    .parameter "_owner"
    .parameter "_outError"
    .parameter "_nameRes"
    .parameter "_labelRes"
    .parameter "_iconRes"
    .parameter "_logoRes"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->owner:Landroid/content/pm/PackageParser$Package;

    .line 117
    iput-object p2, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    .line 118
    iput p3, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->nameRes:I

    .line 119
    iput p4, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->labelRes:I

    .line 120
    iput p5, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->iconRes:I

    .line 121
    iput p6, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->logoRes:I

    .line 122
    return-void
.end method
