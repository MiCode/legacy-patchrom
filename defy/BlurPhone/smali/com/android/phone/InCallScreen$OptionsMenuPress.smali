.class final enum Lcom/android/phone/InCallScreen$OptionsMenuPress;
.super Ljava/lang/Enum;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OptionsMenuPress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InCallScreen$OptionsMenuPress;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InCallScreen$OptionsMenuPress;

.field public static final enum BLUETOOTH_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

.field public static final enum NO_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

.field public static final enum SPEAKER_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 344
    new-instance v0, Lcom/android/phone/InCallScreen$OptionsMenuPress;

    const-string v1, "BLUETOOTH_MENU_PRESS"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$OptionsMenuPress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$OptionsMenuPress;->BLUETOOTH_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    .line 345
    new-instance v0, Lcom/android/phone/InCallScreen$OptionsMenuPress;

    const-string v1, "SPEAKER_MENU_PRESS"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InCallScreen$OptionsMenuPress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$OptionsMenuPress;->SPEAKER_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    .line 346
    new-instance v0, Lcom/android/phone/InCallScreen$OptionsMenuPress;

    const-string v1, "NO_MENU_PRESS"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InCallScreen$OptionsMenuPress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$OptionsMenuPress;->NO_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    .line 343
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/InCallScreen$OptionsMenuPress;

    sget-object v1, Lcom/android/phone/InCallScreen$OptionsMenuPress;->BLUETOOTH_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/InCallScreen$OptionsMenuPress;->SPEAKER_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InCallScreen$OptionsMenuPress;->NO_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/InCallScreen$OptionsMenuPress;->$VALUES:[Lcom/android/phone/InCallScreen$OptionsMenuPress;

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
    .line 343
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InCallScreen$OptionsMenuPress;
    .locals 1
    .parameter "name"

    .prologue
    .line 343
    const-class v0, Lcom/android/phone/InCallScreen$OptionsMenuPress;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/InCallScreen$OptionsMenuPress;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/InCallScreen$OptionsMenuPress;
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/android/phone/InCallScreen$OptionsMenuPress;->$VALUES:[Lcom/android/phone/InCallScreen$OptionsMenuPress;

    invoke-virtual {v0}, [Lcom/android/phone/InCallScreen$OptionsMenuPress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InCallScreen$OptionsMenuPress;

    return-object v0
.end method
