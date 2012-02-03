.class Lcom/samsung/ThemeService$ThemePackageInfo;
.super Ljava/lang/Object;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemePackageInfo"
.end annotation


# instance fields
.field public colorCacheMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field public extendedPackageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public packageName:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public resPackagePathMapping:Ljava/util/HashMap;
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

.field public targetPackageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/ThemeService;


# direct methods
.method private constructor <init>(Lcom/samsung/ThemeService;)V
    .locals 0
    .parameter

    .prologue
    .line 1621
    iput-object p1, p0, Lcom/samsung/ThemeService$ThemePackageInfo;->this$0:Lcom/samsung/ThemeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/ThemeService;Lcom/samsung/ThemeService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1621
    invoke-direct {p0, p1}, Lcom/samsung/ThemeService$ThemePackageInfo;-><init>(Lcom/samsung/ThemeService;)V

    return-void
.end method
