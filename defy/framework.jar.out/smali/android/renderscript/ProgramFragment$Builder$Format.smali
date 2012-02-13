.class public final enum Landroid/renderscript/ProgramFragment$Builder$Format;
.super Ljava/lang/Enum;
.source "ProgramFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragment$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/ProgramFragment$Builder$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/ProgramFragment$Builder$Format;

.field public static final enum ALPHA:Landroid/renderscript/ProgramFragment$Builder$Format;

.field public static final enum LUMINANCE_ALPHA:Landroid/renderscript/ProgramFragment$Builder$Format;

.field public static final enum RGB:Landroid/renderscript/ProgramFragment$Builder$Format;

.field public static final enum RGBA:Landroid/renderscript/ProgramFragment$Builder$Format;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Landroid/renderscript/ProgramFragment$Builder$Format;

    const-string v1, "ALPHA"

    invoke-direct {v0, v1, v5, v2}, Landroid/renderscript/ProgramFragment$Builder$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramFragment$Builder$Format;->ALPHA:Landroid/renderscript/ProgramFragment$Builder$Format;

    new-instance v0, Landroid/renderscript/ProgramFragment$Builder$Format;

    const-string v1, "LUMINANCE_ALPHA"

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramFragment$Builder$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramFragment$Builder$Format;->LUMINANCE_ALPHA:Landroid/renderscript/ProgramFragment$Builder$Format;

    new-instance v0, Landroid/renderscript/ProgramFragment$Builder$Format;

    const-string v1, "RGB"

    invoke-direct {v0, v1, v3, v4}, Landroid/renderscript/ProgramFragment$Builder$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramFragment$Builder$Format;->RGB:Landroid/renderscript/ProgramFragment$Builder$Format;

    new-instance v0, Landroid/renderscript/ProgramFragment$Builder$Format;

    const-string v1, "RGBA"

    invoke-direct {v0, v1, v4, v6}, Landroid/renderscript/ProgramFragment$Builder$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramFragment$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragment$Builder$Format;

    new-array v0, v6, [Landroid/renderscript/ProgramFragment$Builder$Format;

    sget-object v1, Landroid/renderscript/ProgramFragment$Builder$Format;->ALPHA:Landroid/renderscript/ProgramFragment$Builder$Format;

    aput-object v1, v0, v5

    sget-object v1, Landroid/renderscript/ProgramFragment$Builder$Format;->LUMINANCE_ALPHA:Landroid/renderscript/ProgramFragment$Builder$Format;

    aput-object v1, v0, v2

    sget-object v1, Landroid/renderscript/ProgramFragment$Builder$Format;->RGB:Landroid/renderscript/ProgramFragment$Builder$Format;

    aput-object v1, v0, v3

    sget-object v1, Landroid/renderscript/ProgramFragment$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragment$Builder$Format;

    aput-object v1, v0, v4

    sput-object v0, Landroid/renderscript/ProgramFragment$Builder$Format;->$VALUES:[Landroid/renderscript/ProgramFragment$Builder$Format;

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

    iput p3, p0, Landroid/renderscript/ProgramFragment$Builder$Format;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramFragment$Builder$Format;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/renderscript/ProgramFragment$Builder$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/renderscript/ProgramFragment$Builder$Format;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/ProgramFragment$Builder$Format;
    .locals 1

    .prologue
    sget-object v0, Landroid/renderscript/ProgramFragment$Builder$Format;->$VALUES:[Landroid/renderscript/ProgramFragment$Builder$Format;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramFragment$Builder$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramFragment$Builder$Format;

    return-object v0
.end method
