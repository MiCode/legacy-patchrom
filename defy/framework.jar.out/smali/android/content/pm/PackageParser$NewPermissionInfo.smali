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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    iput p2, p0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    iput p3, p0, Landroid/content/pm/PackageParser$NewPermissionInfo;->fileVersion:I

    return-void
.end method
