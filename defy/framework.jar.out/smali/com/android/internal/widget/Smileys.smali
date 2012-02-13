.class public Lcom/android/internal/widget/Smileys;
.super Ljava/lang/Object;
.source "Smileys.java"


# static fields
.field public static ANGEL:I

.field public static COOL:I

.field public static CRYING:I

.field public static EMBARRASSED:I

.field public static FOOT_IN_MOUTH:I

.field public static HAPPY:I

.field public static KISSING:I

.field public static LAUGHING:I

.field public static LIPS_ARE_SEALED:I

.field public static MONEY_MOUTH:I

.field public static SAD:I

.field public static SURPRISED:I

.field public static TONGUE_STICKING_OUT:I

.field public static UNDECIDED:I

.field public static WINKING:I

.field public static WTF:I

.field public static YELLING:I

.field private static final sIconIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/Smileys;->sIconIds:[I

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/widget/Smileys;->HAPPY:I

    const/4 v0, 0x1

    sput v0, Lcom/android/internal/widget/Smileys;->SAD:I

    const/4 v0, 0x2

    sput v0, Lcom/android/internal/widget/Smileys;->WINKING:I

    const/4 v0, 0x3

    sput v0, Lcom/android/internal/widget/Smileys;->TONGUE_STICKING_OUT:I

    const/4 v0, 0x4

    sput v0, Lcom/android/internal/widget/Smileys;->SURPRISED:I

    const/4 v0, 0x5

    sput v0, Lcom/android/internal/widget/Smileys;->KISSING:I

    const/4 v0, 0x6

    sput v0, Lcom/android/internal/widget/Smileys;->YELLING:I

    const/4 v0, 0x7

    sput v0, Lcom/android/internal/widget/Smileys;->COOL:I

    const/16 v0, 0x8

    sput v0, Lcom/android/internal/widget/Smileys;->MONEY_MOUTH:I

    const/16 v0, 0x9

    sput v0, Lcom/android/internal/widget/Smileys;->FOOT_IN_MOUTH:I

    const/16 v0, 0xa

    sput v0, Lcom/android/internal/widget/Smileys;->EMBARRASSED:I

    const/16 v0, 0xb

    sput v0, Lcom/android/internal/widget/Smileys;->ANGEL:I

    const/16 v0, 0xc

    sput v0, Lcom/android/internal/widget/Smileys;->UNDECIDED:I

    const/16 v0, 0xd

    sput v0, Lcom/android/internal/widget/Smileys;->CRYING:I

    const/16 v0, 0xe

    sput v0, Lcom/android/internal/widget/Smileys;->LIPS_ARE_SEALED:I

    const/16 v0, 0xf

    sput v0, Lcom/android/internal/widget/Smileys;->LAUGHING:I

    const/16 v0, 0x10

    sput v0, Lcom/android/internal/widget/Smileys;->WTF:I

    return-void

    :array_0
    .array-data 0x4
        0x84t 0x1t 0x8t 0x1t
        0x89t 0x1t 0x8t 0x1t
        0x8dt 0x1t 0x8t 0x1t
        0x8bt 0x1t 0x8t 0x1t
        0x8at 0x1t 0x8t 0x1t
        0x85t 0x1t 0x8t 0x1t
        0x8ft 0x1t 0x8t 0x1t
        0x80t 0x1t 0x8t 0x1t
        0x88t 0x1t 0x8t 0x1t
        0x83t 0x1t 0x8t 0x1t
        0x82t 0x1t 0x8t 0x1t
        0x7ft 0x1t 0x8t 0x1t
        0x8ct 0x1t 0x8t 0x1t
        0x81t 0x1t 0x8t 0x1t
        0x87t 0x1t 0x8t 0x1t
        0x86t 0x1t 0x8t 0x1t
        0x8et 0x1t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmileyResource(I)I
    .locals 1
    .parameter "which"

    .prologue
    sget-object v0, Lcom/android/internal/widget/Smileys;->sIconIds:[I

    aget v0, v0, p0

    return v0
.end method
