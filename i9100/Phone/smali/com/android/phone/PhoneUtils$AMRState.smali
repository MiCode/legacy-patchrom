.class public final enum Lcom/android/phone/PhoneUtils$AMRState;
.super Ljava/lang/Enum;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AMRState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/PhoneUtils$AMRState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/PhoneUtils$AMRState;

.field public static final enum NB:Lcom/android/phone/PhoneUtils$AMRState;

.field public static final enum WB:Lcom/android/phone/PhoneUtils$AMRState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    new-instance v0, Lcom/android/phone/PhoneUtils$AMRState;

    const-string v1, "NB"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneUtils$AMRState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtils$AMRState;->NB:Lcom/android/phone/PhoneUtils$AMRState;

    new-instance v0, Lcom/android/phone/PhoneUtils$AMRState;

    const-string v1, "WB"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneUtils$AMRState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtils$AMRState;->WB:Lcom/android/phone/PhoneUtils$AMRState;

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/PhoneUtils$AMRState;

    sget-object v1, Lcom/android/phone/PhoneUtils$AMRState;->NB:Lcom/android/phone/PhoneUtils$AMRState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/PhoneUtils$AMRState;->WB:Lcom/android/phone/PhoneUtils$AMRState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/PhoneUtils$AMRState;->$VALUES:[Lcom/android/phone/PhoneUtils$AMRState;

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
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/PhoneUtils$AMRState;
    .locals 1
    .parameter

    .prologue
    .line 112
    const-class v0, Lcom/android/phone/PhoneUtils$AMRState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/phone/PhoneUtils$AMRState;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/PhoneUtils$AMRState;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/phone/PhoneUtils$AMRState;->$VALUES:[Lcom/android/phone/PhoneUtils$AMRState;

    invoke-virtual {v0}, [Lcom/android/phone/PhoneUtils$AMRState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/PhoneUtils$AMRState;

    return-object v0
.end method
