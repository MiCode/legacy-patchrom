.class public Lcom/android/providers/calendar/Utils$lunarDateInfo;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "lunarDateInfo"
.end annotation


# instance fields
.field public lDay:I

.field public lMonth:I

.field public lYear:I

.field public leap:Z

.field public lessSpanFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/android/providers/calendar/Utils$lunarDateInfo;->leap:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lessSpanFlag:Z

    return-void
.end method
