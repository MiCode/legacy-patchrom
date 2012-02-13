.class public final enum Landroid/webkit/WebSettings$TextSize;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/WebSettings$TextSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/WebSettings$TextSize;

.field public static final enum LARGER:Landroid/webkit/WebSettings$TextSize;

.field public static final enum LARGEST:Landroid/webkit/WebSettings$TextSize;

.field public static final enum NORMAL:Landroid/webkit/WebSettings$TextSize;

.field public static final enum SMALLER:Landroid/webkit/WebSettings$TextSize;

.field public static final enum SMALLEST:Landroid/webkit/WebSettings$TextSize;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    const-string v1, "SMALLEST"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v3, v2}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    const-string v1, "SMALLER"

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v4, v2}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    const-string v1, "NORMAL"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v5, v2}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    const-string v1, "LARGER"

    const/16 v2, 0x96

    invoke-direct {v0, v1, v6, v2}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    const-string v1, "LARGEST"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v7, v2}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/webkit/WebSettings$TextSize;

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    aput-object v1, v0, v3

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    aput-object v1, v0, v4

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    aput-object v1, v0, v5

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    aput-object v1, v0, v6

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    aput-object v1, v0, v7

    sput-object v0, Landroid/webkit/WebSettings$TextSize;->$VALUES:[Landroid/webkit/WebSettings$TextSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/webkit/WebSettings$TextSize;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/webkit/WebSettings$TextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebSettings$TextSize;

    return-object p0
.end method

.method public static values()[Landroid/webkit/WebSettings$TextSize;
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->$VALUES:[Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0}, [Landroid/webkit/WebSettings$TextSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebSettings$TextSize;

    return-object v0
.end method
