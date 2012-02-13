.class final enum Lcom/android/phone/PhoneUtils$ScreenSize;
.super Ljava/lang/Enum;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScreenSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/PhoneUtils$ScreenSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/PhoneUtils$ScreenSize;

.field public static final enum HVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

.field public static final enum QVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

.field public static final enum UNKNOWN:Lcom/android/phone/PhoneUtils$ScreenSize;

.field public static final enum WVGA:Lcom/android/phone/PhoneUtils$ScreenSize;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 230
    new-instance v0, Lcom/android/phone/PhoneUtils$ScreenSize;

    const-string v1, "QVGA"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneUtils$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtils$ScreenSize;->QVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    .line 231
    new-instance v0, Lcom/android/phone/PhoneUtils$ScreenSize;

    const-string v1, "HVGA"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneUtils$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtils$ScreenSize;->HVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    .line 232
    new-instance v0, Lcom/android/phone/PhoneUtils$ScreenSize;

    const-string v1, "WVGA"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/PhoneUtils$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtils$ScreenSize;->WVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    .line 233
    new-instance v0, Lcom/android/phone/PhoneUtils$ScreenSize;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/PhoneUtils$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtils$ScreenSize;->UNKNOWN:Lcom/android/phone/PhoneUtils$ScreenSize;

    .line 229
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/PhoneUtils$ScreenSize;

    sget-object v1, Lcom/android/phone/PhoneUtils$ScreenSize;->QVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/PhoneUtils$ScreenSize;->HVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/PhoneUtils$ScreenSize;->WVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/PhoneUtils$ScreenSize;->UNKNOWN:Lcom/android/phone/PhoneUtils$ScreenSize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/PhoneUtils$ScreenSize;->$VALUES:[Lcom/android/phone/PhoneUtils$ScreenSize;

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
    .line 229
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/PhoneUtils$ScreenSize;
    .locals 1
    .parameter "name"

    .prologue
    .line 229
    const-class v0, Lcom/android/phone/PhoneUtils$ScreenSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/PhoneUtils$ScreenSize;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/PhoneUtils$ScreenSize;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/android/phone/PhoneUtils$ScreenSize;->$VALUES:[Lcom/android/phone/PhoneUtils$ScreenSize;

    invoke-virtual {v0}, [Lcom/android/phone/PhoneUtils$ScreenSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/PhoneUtils$ScreenSize;

    return-object v0
.end method
