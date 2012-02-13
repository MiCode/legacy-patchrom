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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/http/HttpDateTime$TimeOfDay;->hour:I

    iput p2, p0, Lcom/android/internal/http/HttpDateTime$TimeOfDay;->minute:I

    iput p3, p0, Lcom/android/internal/http/HttpDateTime$TimeOfDay;->second:I

    return-void
.end method
