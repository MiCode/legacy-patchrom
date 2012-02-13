.class public final enum Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;
.super Ljava/lang/Enum;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenTimeoutDuration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

.field public static final enum DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

.field public static final enum MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

.field public static final enum SHORT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 291
    new-instance v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->SHORT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 292
    new-instance v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 293
    new-instance v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 290
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->SHORT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->$VALUES:[Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

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
    .line 290
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;
    .locals 1
    .parameter "name"

    .prologue
    .line 290
    const-class v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->$VALUES:[Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0}, [Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    return-object v0
.end method
