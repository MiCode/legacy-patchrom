.class public final enum Landroid/renderscript/Primitive;
.super Ljava/lang/Enum;
.source "Primitive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Primitive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Primitive;

.field public static final enum LINE:Landroid/renderscript/Primitive;

.field public static final enum LINE_STRIP:Landroid/renderscript/Primitive;

.field public static final enum POINT:Landroid/renderscript/Primitive;

.field public static final enum TRIANGLE:Landroid/renderscript/Primitive;

.field public static final enum TRIANGLE_FAN:Landroid/renderscript/Primitive;

.field public static final enum TRIANGLE_STRIP:Landroid/renderscript/Primitive;


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

    new-instance v0, Landroid/renderscript/Primitive;

    const-string v1, "POINT"

    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Primitive;->POINT:Landroid/renderscript/Primitive;

    new-instance v0, Landroid/renderscript/Primitive;

    const-string v1, "LINE"

    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Primitive;->LINE:Landroid/renderscript/Primitive;

    new-instance v0, Landroid/renderscript/Primitive;

    const-string v1, "LINE_STRIP"

    invoke-direct {v0, v1, v6, v6}, Landroid/renderscript/Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Primitive;->LINE_STRIP:Landroid/renderscript/Primitive;

    new-instance v0, Landroid/renderscript/Primitive;

    const-string v1, "TRIANGLE"

    invoke-direct {v0, v1, v7, v7}, Landroid/renderscript/Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Primitive;->TRIANGLE:Landroid/renderscript/Primitive;

    new-instance v0, Landroid/renderscript/Primitive;

    const-string v1, "TRIANGLE_STRIP"

    invoke-direct {v0, v1, v8, v8}, Landroid/renderscript/Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Primitive;->TRIANGLE_STRIP:Landroid/renderscript/Primitive;

    new-instance v0, Landroid/renderscript/Primitive;

    const-string v1, "TRIANGLE_FAN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Primitive;->TRIANGLE_FAN:Landroid/renderscript/Primitive;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/renderscript/Primitive;

    sget-object v1, Landroid/renderscript/Primitive;->POINT:Landroid/renderscript/Primitive;

    aput-object v1, v0, v4

    sget-object v1, Landroid/renderscript/Primitive;->LINE:Landroid/renderscript/Primitive;

    aput-object v1, v0, v5

    sget-object v1, Landroid/renderscript/Primitive;->LINE_STRIP:Landroid/renderscript/Primitive;

    aput-object v1, v0, v6

    sget-object v1, Landroid/renderscript/Primitive;->TRIANGLE:Landroid/renderscript/Primitive;

    aput-object v1, v0, v7

    sget-object v1, Landroid/renderscript/Primitive;->TRIANGLE_STRIP:Landroid/renderscript/Primitive;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/renderscript/Primitive;->TRIANGLE_FAN:Landroid/renderscript/Primitive;

    aput-object v2, v0, v1

    sput-object v0, Landroid/renderscript/Primitive;->$VALUES:[Landroid/renderscript/Primitive;

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

    iput p3, p0, Landroid/renderscript/Primitive;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Primitive;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/renderscript/Primitive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/renderscript/Primitive;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Primitive;
    .locals 1

    .prologue
    sget-object v0, Landroid/renderscript/Primitive;->$VALUES:[Landroid/renderscript/Primitive;

    invoke-virtual {v0}, [Landroid/renderscript/Primitive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Primitive;

    return-object v0
.end method
