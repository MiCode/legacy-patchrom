.class Landroid/widget/DoubleDigitManager;
.super Ljava/lang/Object;
.source "DoubleDigitManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DoubleDigitManager$CallBack;
    }
.end annotation


# instance fields
.field private intermediateDigit:Ljava/lang/Integer;

.field private final mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

.field private final timeoutInMillis:J


# direct methods
.method public constructor <init>(JLandroid/widget/DoubleDigitManager$CallBack;)V
    .locals 0
    .parameter "timeoutInMillis"
    .parameter "callBack"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/widget/DoubleDigitManager;->timeoutInMillis:J

    iput-object p3, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/DoubleDigitManager;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/DoubleDigitManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Landroid/widget/DoubleDigitManager;)Landroid/widget/DoubleDigitManager$CallBack;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    return-object v0
.end method


# virtual methods
.method public reportDigit(I)V
    .locals 5
    .parameter "digit"

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/widget/DoubleDigitManager$1;

    invoke-direct {v1, p0}, Landroid/widget/DoubleDigitManager$1;-><init>(Landroid/widget/DoubleDigitManager;)V

    iget-wide v2, p0, Landroid/widget/DoubleDigitManager;->timeoutInMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    invoke-interface {v0, p1}, Landroid/widget/DoubleDigitManager$CallBack;->singleDigitIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v4, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    invoke-interface {v0, p1}, Landroid/widget/DoubleDigitManager$CallBack;->singleDigitFinal(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    iget-object v1, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/widget/DoubleDigitManager$CallBack;->twoDigitsFinal(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v4, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    goto :goto_0
.end method
