.class final enum Lcom/android/providers/media/MediaThumbRequest$State;
.super Ljava/lang/Enum;
.source "MediaThumbRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaThumbRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/providers/media/MediaThumbRequest$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/providers/media/MediaThumbRequest$State;

.field public static final enum CANCEL:Lcom/android/providers/media/MediaThumbRequest$State;

.field public static final enum DONE:Lcom/android/providers/media/MediaThumbRequest$State;

.field public static final enum WAIT:Lcom/android/providers/media/MediaThumbRequest$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/android/providers/media/MediaThumbRequest$State;

    const-string v1, "WAIT"

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaThumbRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/media/MediaThumbRequest$State;->WAIT:Lcom/android/providers/media/MediaThumbRequest$State;

    new-instance v0, Lcom/android/providers/media/MediaThumbRequest$State;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v3}, Lcom/android/providers/media/MediaThumbRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    new-instance v0, Lcom/android/providers/media/MediaThumbRequest$State;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/android/providers/media/MediaThumbRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/media/MediaThumbRequest$State;->CANCEL:Lcom/android/providers/media/MediaThumbRequest$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/providers/media/MediaThumbRequest$State;

    sget-object v1, Lcom/android/providers/media/MediaThumbRequest$State;->WAIT:Lcom/android/providers/media/MediaThumbRequest$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/providers/media/MediaThumbRequest$State;->CANCEL:Lcom/android/providers/media/MediaThumbRequest$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaThumbRequest$State;->$VALUES:[Lcom/android/providers/media/MediaThumbRequest$State;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/providers/media/MediaThumbRequest$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 54
    const-class v0, Lcom/android/providers/media/MediaThumbRequest$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/providers/media/MediaThumbRequest$State;

    return-object p0
.end method

.method public static values()[Lcom/android/providers/media/MediaThumbRequest$State;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/providers/media/MediaThumbRequest$State;->$VALUES:[Lcom/android/providers/media/MediaThumbRequest$State;

    invoke-virtual {v0}, [Lcom/android/providers/media/MediaThumbRequest$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/providers/media/MediaThumbRequest$State;

    return-object v0
.end method
