.class public Landroid/os/Build$VERSION;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VERSION"
.end annotation


# static fields
.field public static final CODENAME:Ljava/lang/String;

.field public static final INCREMENTAL:Ljava/lang/String;

.field public static final RELEASE:Ljava/lang/String;

.field public static final SDK:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SDK_INT:I

.field public static final SYSTEM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v1, "ro.build.version.sdk"

    const-string v0, "ro.build.version.incremental"

    #calls: Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v0, "ro.build.version.release"

    #calls: Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v0, "ro.build.version.full"

    #calls: Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->SYSTEM:Ljava/lang/String;

    const-string v0, "ro.build.version.sdk"

    #calls: Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v0, "ro.build.version.sdk"

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "ro.build.version.codename"

    #calls: Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
