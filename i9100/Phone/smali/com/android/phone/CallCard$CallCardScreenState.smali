.class final enum Lcom/android/phone/CallCard$CallCardScreenState;
.super Ljava/lang/Enum;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CallCardScreenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CallCard$CallCardScreenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CallCard$CallCardScreenState;

.field public static final enum LANDSCAPE:Lcom/android/phone/CallCard$CallCardScreenState;

.field public static final enum LANDSCAPE_INCOMING:Lcom/android/phone/CallCard$CallCardScreenState;

.field public static final enum PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    new-instance v0, Lcom/android/phone/CallCard$CallCardScreenState;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard$CallCardScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    new-instance v0, Lcom/android/phone/CallCard$CallCardScreenState;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CallCard$CallCardScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE:Lcom/android/phone/CallCard$CallCardScreenState;

    new-instance v0, Lcom/android/phone/CallCard$CallCardScreenState;

    const-string v1, "LANDSCAPE_INCOMING"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CallCard$CallCardScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE_INCOMING:Lcom/android/phone/CallCard$CallCardScreenState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v1, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE:Lcom/android/phone/CallCard$CallCardScreenState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE_INCOMING:Lcom/android/phone/CallCard$CallCardScreenState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->$VALUES:[Lcom/android/phone/CallCard$CallCardScreenState;

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
    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CallCard$CallCardScreenState;
    .locals 1
    .parameter

    .prologue
    .line 149
    const-class v0, Lcom/android/phone/CallCard$CallCardScreenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/phone/CallCard$CallCardScreenState;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/CallCard$CallCardScreenState;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->$VALUES:[Lcom/android/phone/CallCard$CallCardScreenState;

    invoke-virtual {v0}, [Lcom/android/phone/CallCard$CallCardScreenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CallCard$CallCardScreenState;

    return-object v0
.end method
