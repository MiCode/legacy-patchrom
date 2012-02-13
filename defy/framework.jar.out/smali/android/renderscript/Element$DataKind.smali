.class public final enum Landroid/renderscript/Element$DataKind;
.super Ljava/lang/Enum;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Element$DataKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Element$DataKind;

.field public static final enum COLOR:Landroid/renderscript/Element$DataKind;

.field public static final enum INDEX:Landroid/renderscript/Element$DataKind;

.field public static final enum NORMAL:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_A:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_L:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_LA:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_RGB:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

.field public static final enum POINT_SIZE:Landroid/renderscript/Element$DataKind;

.field public static final enum POSITION:Landroid/renderscript/Element$DataKind;

.field public static final enum TEXTURE:Landroid/renderscript/Element$DataKind;

.field public static final enum USER:Landroid/renderscript/Element$DataKind;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "USER"

    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->COLOR:Landroid/renderscript/Element$DataKind;

    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "POSITION"

    invoke-direct {v0, v1, v6, v6}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->POSITION:Landroid/renderscript/Element$DataKind;

    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "TEXTURE"

    invoke-direct {v0, v1, v7, v7}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->TEXTURE:Landroid/renderscript/Element$DataKind;

    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v8, v8}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->NORMAL:Landroid/renderscript/Element$DataKind;

    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "INDEX"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->INDEX:Landroid/renderscript/Element$DataKind;

    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "POINT_SIZE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->POINT_SIZE:Landroid/renderscript/Element$DataKind;

    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "PIXEL_L"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "PIXEL_A"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "PIXEL_LA"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "PIXEL_RGB"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "PIXEL_RGBA"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/renderscript/Element$DataKind;

    sget-object v1, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    aput-object v1, v0, v4

    sget-object v1, Landroid/renderscript/Element$DataKind;->COLOR:Landroid/renderscript/Element$DataKind;

    aput-object v1, v0, v5

    sget-object v1, Landroid/renderscript/Element$DataKind;->POSITION:Landroid/renderscript/Element$DataKind;

    aput-object v1, v0, v6

    sget-object v1, Landroid/renderscript/Element$DataKind;->TEXTURE:Landroid/renderscript/Element$DataKind;

    aput-object v1, v0, v7

    sget-object v1, Landroid/renderscript/Element$DataKind;->NORMAL:Landroid/renderscript/Element$DataKind;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/renderscript/Element$DataKind;->INDEX:Landroid/renderscript/Element$DataKind;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/renderscript/Element$DataKind;->POINT_SIZE:Landroid/renderscript/Element$DataKind;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    aput-object v2, v0, v1

    sput-object v0, Landroid/renderscript/Element$DataKind;->$VALUES:[Landroid/renderscript/Element$DataKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/renderscript/Element$DataKind;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Element$DataKind;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/renderscript/Element$DataKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/renderscript/Element$DataKind;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Element$DataKind;
    .locals 1

    .prologue
    sget-object v0, Landroid/renderscript/Element$DataKind;->$VALUES:[Landroid/renderscript/Element$DataKind;

    invoke-virtual {v0}, [Landroid/renderscript/Element$DataKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Element$DataKind;

    return-object v0
.end method
