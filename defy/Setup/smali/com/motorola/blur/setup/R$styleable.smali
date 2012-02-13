.class public final Lcom/motorola/blur/setup/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ContinueProgressBackLayout:[I = null

.field public static final ContinueProgressBackLayout_back_text:I = 0x3

.field public static final ContinueProgressBackLayout_back_visible:I = 0x4

.field public static final ContinueProgressBackLayout_forward_text:I = 0x2

.field public static final ContinueProgressBackLayout_num_positions:I = 0x1

.field public static final ContinueProgressBackLayout_position:I = 0x0

.field public static final ProgressBadge:[I = null

.field public static final ProgressBadge_step:I = 0x0

.field public static final ProgressBadge_text:I = 0x1

.field public static final ProgressOrbView:[I = null

.field public static final ProgressOrbView_num_positions:I = 0x1

.field public static final ProgressOrbView_position:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1126
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/blur/setup/R$styleable;->ContinueProgressBackLayout:[I

    .line 1212
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/motorola/blur/setup/R$styleable;->ProgressBadge:[I

    .line 1255
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/motorola/blur/setup/R$styleable;->ProgressOrbView:[I

    return-void

    .line 1126
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
    .end array-data

    .line 1212
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data

    .line 1255
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
