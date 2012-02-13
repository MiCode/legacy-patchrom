.class final enum Lcom/android/phone/ChangeSimPinScreen$EntryState;
.super Ljava/lang/Enum;
.source "ChangeSimPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ChangeSimPinScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EntryState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/ChangeSimPinScreen$EntryState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/ChangeSimPinScreen$EntryState;

.field public static final enum ES_PIN:Lcom/android/phone/ChangeSimPinScreen$EntryState;

.field public static final enum ES_PUK:Lcom/android/phone/ChangeSimPinScreen$EntryState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/android/phone/ChangeSimPinScreen$EntryState;

    const-string v1, "ES_PIN"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/ChangeSimPinScreen$EntryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ChangeSimPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeSimPinScreen$EntryState;

    .line 62
    new-instance v0, Lcom/android/phone/ChangeSimPinScreen$EntryState;

    const-string v1, "ES_PUK"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/ChangeSimPinScreen$EntryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ChangeSimPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeSimPinScreen$EntryState;

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/ChangeSimPinScreen$EntryState;

    sget-object v1, Lcom/android/phone/ChangeSimPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeSimPinScreen$EntryState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/ChangeSimPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeSimPinScreen$EntryState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/ChangeSimPinScreen$EntryState;->$VALUES:[Lcom/android/phone/ChangeSimPinScreen$EntryState;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/ChangeSimPinScreen$EntryState;
    .locals 1
    .parameter "name"

    .prologue
    .line 60
    const-class v0, Lcom/android/phone/ChangeSimPinScreen$EntryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/ChangeSimPinScreen$EntryState;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/ChangeSimPinScreen$EntryState;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/phone/ChangeSimPinScreen$EntryState;->$VALUES:[Lcom/android/phone/ChangeSimPinScreen$EntryState;

    invoke-virtual {v0}, [Lcom/android/phone/ChangeSimPinScreen$EntryState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/ChangeSimPinScreen$EntryState;

    return-object v0
.end method
