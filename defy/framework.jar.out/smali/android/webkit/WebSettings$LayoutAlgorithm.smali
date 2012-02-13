.class public final enum Landroid/webkit/WebSettings$LayoutAlgorithm;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/WebSettings$LayoutAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/WebSettings$LayoutAlgorithm;

.field public static final enum NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field public static final enum NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field public static final enum SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    new-instance v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    const-string v1, "SINGLE_COLUMN"

    invoke-direct {v0, v1, v3}, Landroid/webkit/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    new-instance v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    const-string v1, "NARROW_COLUMNS"

    invoke-direct {v0, v1, v4}, Landroid/webkit/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/webkit/WebSettings$LayoutAlgorithm;

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    aput-object v1, v0, v4

    sput-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->$VALUES:[Landroid/webkit/WebSettings$LayoutAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    return-object p0
.end method

.method public static values()[Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->$VALUES:[Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0}, [Landroid/webkit/WebSettings$LayoutAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebSettings$LayoutAlgorithm;

    return-object v0
.end method
