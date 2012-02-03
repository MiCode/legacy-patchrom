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
    .line 25
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/Smileys;->sIconIds:[I

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/widget/Smileys;->HAPPY:I

    .line 46
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/widget/Smileys;->SAD:I

    .line 47
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/widget/Smileys;->WINKING:I

    .line 48
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/widget/Smileys;->TONGUE_STICKING_OUT:I

    .line 49
    const/4 v0, 0x4

    sput v0, Lcom/android/internal/widget/Smileys;->SURPRISED:I

    .line 50
    const/4 v0, 0x5

    sput v0, Lcom/android/internal/widget/Smileys;->KISSING:I

    .line 51
    const/4 v0, 0x6

    sput v0, Lcom/android/internal/widget/Smileys;->YELLING:I

    .line 52
    const/4 v0, 0x7

    sput v0, Lcom/android/internal/widget/Smileys;->COOL:I

    .line 53
    const/16 v0, 0x8

    sput v0, Lcom/android/internal/widget/Smileys;->MONEY_MOUTH:I

    .line 54
    const/16 v0, 0x9

    sput v0, Lcom/android/internal/widget/Smileys;->FOOT_IN_MOUTH:I

    .line 55
    const/16 v0, 0xa

    sput v0, Lcom/android/internal/widget/Smileys;->EMBARRASSED:I

    .line 56
    const/16 v0, 0xb

    sput v0, Lcom/android/internal/widget/Smileys;->ANGEL:I

    .line 57
    const/16 v0, 0xc

    sput v0, Lcom/android/internal/widget/Smileys;->UNDECIDED:I

    .line 58
    const/16 v0, 0xd

    sput v0, Lcom/android/internal/widget/Smileys;->CRYING:I

    .line 59
    const/16 v0, 0xe

    sput v0, Lcom/android/internal/widget/Smileys;->LIPS_ARE_SEALED:I

    .line 60
    const/16 v0, 0xf

    sput v0, Lcom/android/internal/widget/Smileys;->LAUGHING:I

    .line 61
    const/16 v0, 0x10

    sput v0, Lcom/android/internal/widget/Smileys;->WTF:I

    return-void

    .line 25
    :array_0
    .array-data 0x4
        0x7et 0x1t 0x8t 0x1t
        0x83t 0x1t 0x8t 0x1t
        0x87t 0x1t 0x8t 0x1t
        0x85t 0x1t 0x8t 0x1t
        0x84t 0x1t 0x8t 0x1t
        0x7ft 0x1t 0x8t 0x1t
        0x89t 0x1t 0x8t 0x1t
        0x7at 0x1t 0x8t 0x1t
        0x82t 0x1t 0x8t 0x1t
        0x7dt 0x1t 0x8t 0x1t
        0x7ct 0x1t 0x8t 0x1t
        0x79t 0x1t 0x8t 0x1t
        0x86t 0x1t 0x8t 0x1t
        0x7bt 0x1t 0x8t 0x1t
        0x81t 0x1t 0x8t 0x1t
        0x80t 0x1t 0x8t 0x1t
        0x88t 0x1t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmileyResource(I)I
    .locals 1
    .parameter "which"

    .prologue
    .line 64
    sget-object v0, Lcom/android/internal/widget/Smileys;->sIconIds:[I

    aget v0, v0, p0

    return v0
.end method
