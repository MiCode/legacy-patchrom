.class public Lcom/android/providers/calendar/Utils$lunarInfo;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "lunarInfo"
.end annotation


# static fields
.field static final LUNAR_TYPE_FESTIVAL:I = 0x2

.field static final LUNAR_TYPE_NORMAL:I = 0x0

.field static final LUNAR_TYPE_SOLAR_TEAM:I = 0x1

.field static final SOLAR_TYPE_HOLIDAY:I = 0x3


# instance fields
.field public lunarStr:Ljava/lang/String;

.field public lunarType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method
