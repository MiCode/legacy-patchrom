.class Lcom/android/internal/http/HttpDateTime$TimeOfDay;
.super Ljava/lang/Object;
.source "HttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/http/HttpDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeOfDay"
.end annotation


# instance fields
.field hour:I

.field minute:I

.field second:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .parameter "h"
    .parameter "m"
    .parameter "s"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/android/internal/http/HttpDateTime$TimeOfDay;->hour:I

    .line 76
    iput p2, p0, Lcom/android/internal/http/HttpDateTime$TimeOfDay;->minute:I

    .line 77
    iput p3, p0, Lcom/android/internal/http/HttpDateTime$TimeOfDay;->second:I

    .line 78
    return-void
.end method
