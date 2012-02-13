.class public final enum Lcom/android/phone/PhoneApp$WakeState;
.super Ljava/lang/Enum;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WakeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/PhoneApp$WakeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/PhoneApp$WakeState;

.field public static final enum FULL:Lcom/android/phone/PhoneApp$WakeState;

.field public static final enum PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

.field public static final enum SLEEP:Lcom/android/phone/PhoneApp$WakeState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 303
    new-instance v0, Lcom/android/phone/PhoneApp$WakeState;

    const-string v1, "SLEEP"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneApp$WakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    .line 304
    new-instance v0, Lcom/android/phone/PhoneApp$WakeState;

    const-string v1, "PARTIAL"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneApp$WakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    .line 305
    new-instance v0, Lcom/android/phone/PhoneApp$WakeState;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/PhoneApp$WakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    .line 302
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/PhoneApp$WakeState;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/PhoneApp$WakeState;->$VALUES:[Lcom/android/phone/PhoneApp$WakeState;

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
    .line 302
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/PhoneApp$WakeState;
    .locals 1
    .parameter "name"

    .prologue
    .line 302
    const-class v0, Lcom/android/phone/PhoneApp$WakeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/PhoneApp$WakeState;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/PhoneApp$WakeState;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->$VALUES:[Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0}, [Lcom/android/phone/PhoneApp$WakeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/PhoneApp$WakeState;

    return-object v0
.end method
