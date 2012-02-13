.class public final enum Landroid/renderscript/Dimension;
.super Ljava/lang/Enum;
.source "Dimension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Dimension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Dimension;

.field public static final enum ARRAY_0:Landroid/renderscript/Dimension;

.field public static final enum FACE:Landroid/renderscript/Dimension;

.field public static final enum LOD:Landroid/renderscript/Dimension;

.field public static final enum X:Landroid/renderscript/Dimension;

.field public static final enum Y:Landroid/renderscript/Dimension;

.field public static final enum Z:Landroid/renderscript/Dimension;


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

    new-instance v0, Landroid/renderscript/Dimension;

    const-string v1, "X"

    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Dimension;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Dimension;->X:Landroid/renderscript/Dimension;

    new-instance v0, Landroid/renderscript/Dimension;

    const-string v1, "Y"

    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/Dimension;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Dimension;->Y:Landroid/renderscript/Dimension;

    new-instance v0, Landroid/renderscript/Dimension;

    const-string v1, "Z"

    invoke-direct {v0, v1, v6, v6}, Landroid/renderscript/Dimension;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Dimension;->Z:Landroid/renderscript/Dimension;

    new-instance v0, Landroid/renderscript/Dimension;

    const-string v1, "LOD"

    invoke-direct {v0, v1, v7, v7}, Landroid/renderscript/Dimension;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Dimension;->LOD:Landroid/renderscript/Dimension;

    new-instance v0, Landroid/renderscript/Dimension;

    const-string v1, "FACE"

    invoke-direct {v0, v1, v8, v8}, Landroid/renderscript/Dimension;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Dimension;->FACE:Landroid/renderscript/Dimension;

    new-instance v0, Landroid/renderscript/Dimension;

    const-string v1, "ARRAY_0"

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Dimension;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Dimension;->ARRAY_0:Landroid/renderscript/Dimension;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/renderscript/Dimension;

    sget-object v1, Landroid/renderscript/Dimension;->X:Landroid/renderscript/Dimension;

    aput-object v1, v0, v4

    sget-object v1, Landroid/renderscript/Dimension;->Y:Landroid/renderscript/Dimension;

    aput-object v1, v0, v5

    sget-object v1, Landroid/renderscript/Dimension;->Z:Landroid/renderscript/Dimension;

    aput-object v1, v0, v6

    sget-object v1, Landroid/renderscript/Dimension;->LOD:Landroid/renderscript/Dimension;

    aput-object v1, v0, v7

    sget-object v1, Landroid/renderscript/Dimension;->FACE:Landroid/renderscript/Dimension;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/renderscript/Dimension;->ARRAY_0:Landroid/renderscript/Dimension;

    aput-object v2, v0, v1

    sput-object v0, Landroid/renderscript/Dimension;->$VALUES:[Landroid/renderscript/Dimension;

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

    iput p3, p0, Landroid/renderscript/Dimension;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Dimension;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/renderscript/Dimension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/renderscript/Dimension;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Dimension;
    .locals 1

    .prologue
    sget-object v0, Landroid/renderscript/Dimension;->$VALUES:[Landroid/renderscript/Dimension;

    invoke-virtual {v0}, [Landroid/renderscript/Dimension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Dimension;

    return-object v0
.end method
