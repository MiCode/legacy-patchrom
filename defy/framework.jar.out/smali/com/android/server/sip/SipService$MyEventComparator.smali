.class Lcom/android/server/sip/SipService$MyEventComparator;
.super Ljava/lang/Object;
.source "SipService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyEventComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/sip/SipService$MyEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sip/SipService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/sip/SipService$MyEventComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/sip/SipService$MyEvent;Lcom/android/server/sip/SipService$MyEvent;)I
    .locals 3
    .parameter "e1"
    .parameter "e2"

    .prologue
    if-ne p1, p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, p1, Lcom/android/server/sip/SipService$MyEvent;->mMaxPeriod:I

    iget v2, p2, Lcom/android/server/sip/SipService$MyEvent;->mMaxPeriod:I

    sub-int v0, v1, v2

    .local v0, diff:I
    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Lcom/android/server/sip/SipService$MyEvent;

    .end local p1
    check-cast p2, Lcom/android/server/sip/SipService$MyEvent;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sip/SipService$MyEventComparator;->compare(Lcom/android/server/sip/SipService$MyEvent;Lcom/android/server/sip/SipService$MyEvent;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "that"

    .prologue
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
