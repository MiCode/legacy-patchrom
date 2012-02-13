.class public final enum Landroid/renderscript/ProgramStore$DepthFunc;
.super Ljava/lang/Enum;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DepthFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/ProgramStore$DepthFunc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum GEQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum GREATER:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum LEQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum LESS:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum NOTEQUAL:Landroid/renderscript/ProgramStore$DepthFunc;


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

    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "LESS"

    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "LEQUAL"

    invoke-direct {v0, v1, v6, v6}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->LEQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "GREATER"

    invoke-direct {v0, v1, v7, v7}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->GREATER:Landroid/renderscript/ProgramStore$DepthFunc;

    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "GEQUAL"

    invoke-direct {v0, v1, v8, v8}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->GEQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "EQUAL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "NOTEQUAL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->NOTEQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/renderscript/ProgramStore$DepthFunc;

    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    aput-object v1, v0, v4

    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    aput-object v1, v0, v5

    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->LEQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    aput-object v1, v0, v6

    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->GREATER:Landroid/renderscript/ProgramStore$DepthFunc;

    aput-object v1, v0, v7

    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->GEQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/renderscript/ProgramStore$DepthFunc;->EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/renderscript/ProgramStore$DepthFunc;->NOTEQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    aput-object v2, v0, v1

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->$VALUES:[Landroid/renderscript/ProgramStore$DepthFunc;

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

    iput p3, p0, Landroid/renderscript/ProgramStore$DepthFunc;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramStore$DepthFunc;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/renderscript/ProgramStore$DepthFunc;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/ProgramStore$DepthFunc;
    .locals 1

    .prologue
    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->$VALUES:[Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramStore$DepthFunc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramStore$DepthFunc;

    return-object v0
.end method
