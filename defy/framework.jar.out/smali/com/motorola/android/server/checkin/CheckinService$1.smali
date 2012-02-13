.class final Lcom/motorola/android/server/checkin/CheckinService$1;
.super Ljava/lang/ThreadLocal;
.source "CheckinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/server/checkin/CheckinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private _value:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinService$1;->_value:I

    iget v0, p0, Lcom/motorola/android/server/checkin/CheckinService$1;->_value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinService$1;->initialValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
