.class Lcom/android/server/ConnectivityService$NetworkAttributes;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkAttributes"
.end annotation


# instance fields
.field public mLastState:Landroid/net/NetworkInfo$State;

.field public mName:Ljava/lang/String;

.field public mPriority:I

.field public mRadio:I

.field public mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "init"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, fragments:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mName:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v1, p0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mLastState:Landroid/net/NetworkInfo$State;

    return-void
.end method


# virtual methods
.method public isDefault()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
