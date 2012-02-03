.class public Landroid/content/pm/PackageParser$NewPermissionInfo;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewPermissionInfo"
.end annotation


# instance fields
.field public final fileVersion:I

.field public final name:Ljava/lang/String;

.field public final sdkVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "name"
    .parameter "sdkVersion"
    .parameter "fileVersion"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    .line 70
    iput p2, p0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    .line 71
    iput p3, p0, Landroid/content/pm/PackageParser$NewPermissionInfo;->fileVersion:I

    .line 72
    return-void
.end method
