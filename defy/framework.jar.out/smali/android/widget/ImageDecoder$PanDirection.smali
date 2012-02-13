.class public final enum Landroid/widget/ImageDecoder$PanDirection;
.super Ljava/lang/Enum;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PanDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/ImageDecoder$PanDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/ImageDecoder$PanDirection;

.field public static final enum PAN_DOWN:Landroid/widget/ImageDecoder$PanDirection;

.field public static final enum PAN_LEFT:Landroid/widget/ImageDecoder$PanDirection;

.field public static final enum PAN_RIGHT:Landroid/widget/ImageDecoder$PanDirection;

.field public static final enum PAN_UP:Landroid/widget/ImageDecoder$PanDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageDecoder$PanDirection;

    const-string v1, "PAN_UP"

    invoke-direct {v0, v1, v2}, Landroid/widget/ImageDecoder$PanDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/ImageDecoder$PanDirection;->PAN_UP:Landroid/widget/ImageDecoder$PanDirection;

    new-instance v0, Landroid/widget/ImageDecoder$PanDirection;

    const-string v1, "PAN_DOWN"

    invoke-direct {v0, v1, v3}, Landroid/widget/ImageDecoder$PanDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/ImageDecoder$PanDirection;->PAN_DOWN:Landroid/widget/ImageDecoder$PanDirection;

    new-instance v0, Landroid/widget/ImageDecoder$PanDirection;

    const-string v1, "PAN_LEFT"

    invoke-direct {v0, v1, v4}, Landroid/widget/ImageDecoder$PanDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/ImageDecoder$PanDirection;->PAN_LEFT:Landroid/widget/ImageDecoder$PanDirection;

    new-instance v0, Landroid/widget/ImageDecoder$PanDirection;

    const-string v1, "PAN_RIGHT"

    invoke-direct {v0, v1, v5}, Landroid/widget/ImageDecoder$PanDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/ImageDecoder$PanDirection;->PAN_RIGHT:Landroid/widget/ImageDecoder$PanDirection;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageDecoder$PanDirection;

    sget-object v1, Landroid/widget/ImageDecoder$PanDirection;->PAN_UP:Landroid/widget/ImageDecoder$PanDirection;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageDecoder$PanDirection;->PAN_DOWN:Landroid/widget/ImageDecoder$PanDirection;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ImageDecoder$PanDirection;->PAN_LEFT:Landroid/widget/ImageDecoder$PanDirection;

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ImageDecoder$PanDirection;->PAN_RIGHT:Landroid/widget/ImageDecoder$PanDirection;

    aput-object v1, v0, v5

    sput-object v0, Landroid/widget/ImageDecoder$PanDirection;->$VALUES:[Landroid/widget/ImageDecoder$PanDirection;

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

.method public static valueOf(Ljava/lang/String;)Landroid/widget/ImageDecoder$PanDirection;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/widget/ImageDecoder$PanDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageDecoder$PanDirection;

    return-object p0
.end method

.method public static values()[Landroid/widget/ImageDecoder$PanDirection;
    .locals 1

    .prologue
    sget-object v0, Landroid/widget/ImageDecoder$PanDirection;->$VALUES:[Landroid/widget/ImageDecoder$PanDirection;

    invoke-virtual {v0}, [Landroid/widget/ImageDecoder$PanDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/ImageDecoder$PanDirection;

    return-object v0
.end method
