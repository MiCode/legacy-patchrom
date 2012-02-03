.class public final Lcom/android/settings/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BatteryHistoryChart:[I

.field public static final ButtonPreference:[I

.field public static final IconPreferenceScreen:[I

.field public static final WifiEncryptionState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14529
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/R$styleable;->BatteryHistoryChart:[I

    .line 14618
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/R$styleable;->ButtonPreference:[I

    .line 14659
    new-array v0, v3, [I

    const v1, 0x7f010001

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/R$styleable;->IconPreferenceScreen:[I

    .line 14682
    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/R$styleable;->WifiEncryptionState:[I

    return-void

    .line 14529
    nop

    :array_0
    .array-data 0x4
        0x34t 0x0t 0x1t 0x1t
        0x95t 0x0t 0x1t 0x1t
        0x96t 0x0t 0x1t 0x1t
        0x97t 0x0t 0x1t 0x1t
        0x98t 0x0t 0x1t 0x1t
        0x61t 0x1t 0x1t 0x1t
        0x62t 0x1t 0x1t 0x1t
        0x63t 0x1t 0x1t 0x1t
        0x64t 0x1t 0x1t 0x1t
    .end array-data

    .line 14618
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
