.class final enum Lcom/android/phone/ChangeIccPinScreen$EntryState;
.super Ljava/lang/Enum;
.source "ChangeIccPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ChangeIccPinScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EntryState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/ChangeIccPinScreen$EntryState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/ChangeIccPinScreen$EntryState;

.field public static final enum ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

.field public static final enum ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$EntryState;

    const-string v1, "ES_PIN"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/ChangeIccPinScreen$EntryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 59
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$EntryState;

    const-string v1, "ES_PUK"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/ChangeIccPinScreen$EntryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v1, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/ChangeIccPinScreen$EntryState;->$VALUES:[Lcom/android/phone/ChangeIccPinScreen$EntryState;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/ChangeIccPinScreen$EntryState;
    .locals 1
    .parameter "name"

    .prologue
    .line 57
    const-class v0, Lcom/android/phone/ChangeIccPinScreen$EntryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/ChangeIccPinScreen$EntryState;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/ChangeIccPinScreen$EntryState;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/phone/ChangeIccPinScreen$EntryState;->$VALUES:[Lcom/android/phone/ChangeIccPinScreen$EntryState;

    invoke-virtual {v0}, [Lcom/android/phone/ChangeIccPinScreen$EntryState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/ChangeIccPinScreen$EntryState;

    return-object v0
.end method
