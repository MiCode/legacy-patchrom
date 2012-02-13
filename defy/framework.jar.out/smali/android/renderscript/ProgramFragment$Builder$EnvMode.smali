.class public final enum Landroid/renderscript/ProgramFragment$Builder$EnvMode;
.super Ljava/lang/Enum;
.source "ProgramFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragment$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnvMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/ProgramFragment$Builder$EnvMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/ProgramFragment$Builder$EnvMode;

.field public static final enum DECAL:Landroid/renderscript/ProgramFragment$Builder$EnvMode;

.field public static final enum MODULATE:Landroid/renderscript/ProgramFragment$Builder$EnvMode;

.field public static final enum REPLACE:Landroid/renderscript/ProgramFragment$Builder$EnvMode;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    const-string v1, "REPLACE"

    invoke-direct {v0, v1, v4, v2}, Landroid/renderscript/ProgramFragment$Builder$EnvMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramFragment$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    new-instance v0, Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    const-string v1, "MODULATE"

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramFragment$Builder$EnvMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramFragment$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    new-instance v0, Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    const-string v1, "DECAL"

    invoke-direct {v0, v1, v3, v5}, Landroid/renderscript/ProgramFragment$Builder$EnvMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramFragment$Builder$EnvMode;->DECAL:Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    new-array v0, v5, [Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    sget-object v1, Landroid/renderscript/ProgramFragment$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/renderscript/ProgramFragment$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/renderscript/ProgramFragment$Builder$EnvMode;->DECAL:Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    aput-object v1, v0, v3

    sput-object v0, Landroid/renderscript/ProgramFragment$Builder$EnvMode;->$VALUES:[Landroid/renderscript/ProgramFragment$Builder$EnvMode;

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

    iput p3, p0, Landroid/renderscript/ProgramFragment$Builder$EnvMode;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramFragment$Builder$EnvMode;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/ProgramFragment$Builder$EnvMode;
    .locals 1

    .prologue
    sget-object v0, Landroid/renderscript/ProgramFragment$Builder$EnvMode;->$VALUES:[Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramFragment$Builder$EnvMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    return-object v0
.end method
