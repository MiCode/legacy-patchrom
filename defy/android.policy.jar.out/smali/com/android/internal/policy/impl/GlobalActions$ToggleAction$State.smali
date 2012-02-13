.class final enum Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
.super Ljava/lang/Enum;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field public static final enum Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field public static final enum On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field public static final enum TurningOff:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field public static final enum TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;


# instance fields
.field private final inTransition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    const-string v1, "Off"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    const-string v1, "TurningOn"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    const-string v1, "TurningOff"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    const-string v1, "On"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->$VALUES:[Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "intermediate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->$VALUES:[Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method


# virtual methods
.method public inTransition()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition:Z

    return v0
.end method
