.class public final enum Landroid/renderscript/Element$DataType;
.super Ljava/lang/Enum;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Element$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Element$DataType;

.field public static final enum FLOAT_32:Landroid/renderscript/Element$DataType;

.field public static final enum RS_ALLOCATION:Landroid/renderscript/Element$DataType;

.field public static final enum RS_ELEMENT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_MESH:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

.field public static final enum RS_SAMPLER:Landroid/renderscript/Element$DataType;

.field public static final enum RS_SCRIPT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_TYPE:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_16:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_32:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_8:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_16:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_32:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_8:Landroid/renderscript/Element$DataType;


# instance fields
.field mID:I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x4

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "FLOAT_32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "SIGNED_8"

    invoke-direct {v0, v1, v6, v4, v6}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "SIGNED_16"

    invoke-direct {v0, v1, v5, v7, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "SIGNED_32"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v8, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_8"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v4, v2, v6}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_16"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_32"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v8, v2, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_5_6_5"

    const/4 v2, 0x7

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_5_5_5_1"

    const/16 v2, 0x8

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_4_4_4_4"

    const/16 v2, 0x9

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_ELEMENT"

    const/16 v2, 0xa

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_TYPE"

    const/16 v2, 0xb

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_ALLOCATION"

    const/16 v2, 0xc

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_SAMPLER"

    const/16 v2, 0xd

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_SCRIPT"

    const/16 v2, 0xe

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_MESH"

    const/16 v2, 0xf

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_PROGRAM_FRAGMENT"

    const/16 v2, 0x10

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_PROGRAM_VERTEX"

    const/16 v2, 0x11

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_PROGRAM_RASTER"

    const/16 v2, 0x12

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_PROGRAM_STORE"

    const/16 v2, 0x13

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    const/16 v0, 0x14

    new-array v0, v0, [Landroid/renderscript/Element$DataType;

    const/4 v1, 0x0

    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    aput-object v1, v0, v8

    const/4 v1, 0x7

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/renderscript/Element$DataType;->$VALUES:[Landroid/renderscript/Element$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "id"
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/renderscript/Element$DataType;->mID:I

    iput p4, p0, Landroid/renderscript/Element$DataType;->mSize:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Element$DataType;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/renderscript/Element$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/renderscript/Element$DataType;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Element$DataType;
    .locals 1

    .prologue
    sget-object v0, Landroid/renderscript/Element$DataType;->$VALUES:[Landroid/renderscript/Element$DataType;

    invoke-virtual {v0}, [Landroid/renderscript/Element$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Element$DataType;

    return-object v0
.end method
