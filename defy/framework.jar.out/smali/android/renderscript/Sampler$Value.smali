.class public final enum Landroid/renderscript/Sampler$Value;
.super Ljava/lang/Enum;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Sampler$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Sampler$Value;

.field public static final enum CLAMP:Landroid/renderscript/Sampler$Value;

.field public static final enum LINEAR:Landroid/renderscript/Sampler$Value;

.field public static final enum LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

.field public static final enum NEAREST:Landroid/renderscript/Sampler$Value;

.field public static final enum WRAP:Landroid/renderscript/Sampler$Value;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "NEAREST"

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "LINEAR"

    invoke-direct {v0, v1, v3, v3}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "LINEAR_MIP_LINEAR"

    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "WRAP"

    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "CLAMP"

    invoke-direct {v0, v1, v6, v6}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/renderscript/Sampler$Value;

    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    aput-object v1, v0, v2

    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    aput-object v1, v0, v3

    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    aput-object v1, v0, v4

    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    aput-object v1, v0, v5

    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    aput-object v1, v0, v6

    sput-object v0, Landroid/renderscript/Sampler$Value;->$VALUES:[Landroid/renderscript/Sampler$Value;

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

    iput p3, p0, Landroid/renderscript/Sampler$Value;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Sampler$Value;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/renderscript/Sampler$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/renderscript/Sampler$Value;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Sampler$Value;
    .locals 1

    .prologue
    sget-object v0, Landroid/renderscript/Sampler$Value;->$VALUES:[Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0}, [Landroid/renderscript/Sampler$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Sampler$Value;

    return-object v0
.end method
